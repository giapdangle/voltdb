/* This file is part of VoltDB.
 * Copyright (C) 2008-2012 VoltDB Inc.
 *
 * Permission is hereby granted, free of charge, to any person obtaining
 * a copy of this software and associated documentation files (the
 * "Software"), to deal in the Software without restriction, including
 * without limitation the rights to use, copy, modify, merge, publish,
 * distribute, sublicense, and/or sell copies of the Software, and to
 * permit persons to whom the Software is furnished to do so, subject to
 * the following conditions:
 *
 * The above copyright notice and this permission notice shall be
 * included in all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
 * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
 * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
 * IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
 * OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
 * ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
 * OTHER DEALINGS IN THE SOFTWARE.
 */

package org.voltdb.utils;

import static org.junit.Assert.*;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
//import java.lang.management.ManagementFactory;
//import java.lang.management.RuntimeMXBean;
import java.util.List;
//import java.util.Random;
import java.util.Scanner;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

//import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

import com.google.common.base.Joiner;

public class TestSqlCmdInterface
{
    //private	int randomNum = -1;
    private static boolean noBlockComment = true;
    private int ID = -1;
	private final static String sqlFile = "./tests/frontend/org/voltdb/utils/localQry.txt";
	private static int numOfQueries = -1;
	private static String qryFrmFile = "";
	private final static String[] firstKeyQryWord = 
			new String[]{"select", "insert", "delete", "update", "exec", "execute", "create"};
	
	@BeforeClass
	public static void prepare() throws FileNotFoundException {
		//String mySb = new IOUtils.copyToString(sqlFile);
		File fh = new File(sqlFile);		
		if(fh.exists()) {
			String contents = readFile2String(fh);
			String cleanContents = null; // = contents.replaceAll("/\\*.*?\\*/", "");
			//System.out.println("Before readFile2String, noBlockComment = #" + noBlockComment + "#");
			//if(contents.matches("/\\*.*?\\*/") == true) {
			//if(contents.matches("(?:/\\*[^;].*?\\*/)") == true) {
				//noBlockComment = true;
			//}
			try {
			    //Pattern regex = Pattern.compile("(?:/\\*[^;]*?\\*/)|(?:--[^;]*?$)", Pattern.DOTALL | Pattern.MULTILINE);
			    Pattern regex = Pattern.compile("(?:/\\*[^;]*?\\*/)", Pattern.DOTALL | Pattern.MULTILINE);

			    Matcher regexMatcher = regex.matcher(contents);
			    StringBuffer sb = new StringBuffer();
			    while (regexMatcher.find()) {
			    	regexMatcher.appendReplacement(sb, "");
			    	noBlockComment = false;
			        // matched text: regexMatcher.group()
			        // match start: regexMatcher.start()
			        // match end: regexMatcher.end()
			    } 
			    // Add the last segment of input to 
		        // the new String
			    regexMatcher.appendTail(sb);
		        //System.out.println(sb.toString());
		        cleanContents = sb.toString();
			} catch (PatternSyntaxException ex) {
			    // Syntax error in the regular expression
			}
			//System.out.println("After readFile2String, noBlockComment = #" + noBlockComment + "#");
			//System.out.println("File exist!! ==-->> " + sqlFile);
			//System.out.println("\n\ncontents = \n#\n" + contents + "#\n\n");
			//System.out.println("cleanContents = \n#\n" + cleanContents + "#\n\n");
			// To set two private members first: (int) numOfQueries & (String) qryFrmFile
			setQryString(fh);
		}
	}
	
	// To read the contents of the fileHandle into a string
	private static String readFile2String(File fileHandle) {
		//InputStream is = null;
		String buf = null;
		try {
			InputStream is = new FileInputStream(fileHandle);
			buf = new java.util.Scanner(is).useDelimiter("\\A").next();
		}
		catch (FileNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		return buf;		
	}

	// 1) To test a single select copyement
    @Test
    public void testParseQuery1() {
    //	SQLCommand.mockVoltDBForTest(new ClientForTest());
        String raw = "select * from dummy";
        ID = 1;       
        assertThis(raw, 1, ID);
    }
     
	// 2) To test 2 select statements which are separated by one or more white spaces
    @Test
    public void testParseQuery2() {
        String raw = "   select * From dummy      select * from    dummy2        ";        
        ID = 2;        
        String expected = trimKeyWordsLeadingSpaces(raw);
        //expected = expected.replaceAll("\\s+", " ");
        assertThis(raw, expected, 2, ID);
    }
    
    // 3) To test 2 select statements which are separated by one or more colons
    //    and zero or more white spaces
    @Test
    public void testParseQuery3() {
        String raw = "   select * from Dummy where id  =    1;;;;    " +
        		      "   select * from          dummy2;        ";
        ID = 3;        
        String expected = raw.replaceAll("\\;+", "");
        expected = trimKeyWordsLeadingSpaces(expected);
        assertThis(raw, expected, 2, ID);
    }
    
    // 4) To test 2 select statements separated by a comma which is illegal
    //    The sqlcmd parser can still separate two statements
    @Test
    public void testParseQuery4() {
        String raw = "   select * from dummy,    select * frOm dummy2,";
        ID = 4;
        String expected = trimKeyWordsLeadingSpaces(raw);        
        assertThis(raw, expected, 2, ID);
    }
    
    // 5) To test 2 select statements in which one of them is incomplete
    @Test
    public void testParseQuery5() {
        String raw = "select * fRom dummy;;;;select *";
        ID = 5;
        String expected = raw.replaceAll("\\;+", " ");
        assertThis(raw, expected, 2, ID);
    }
    
    // 6) To test 2 select statements in which one of them is incomplete
    @Test
    public void testParseQuery6() {
        String raw = "     INSERT INTO      Dummy " + 
                      "            vALUES (value1, NULL, null, '', ...)";
        ID = 6;
        String expected = trimKeyWordsLeadingSpaces(raw);
        assertThis(raw, expected, 1, ID);
    }
   
    // 7) To test 2 select statements with union
    //    VoltDB has not supported UNION, yet. 
    //    So this is a negative test.
    @Test
    public void testParseQuery7() {
        String raw = "SELECT * FROM table UNION SELECT * FROM table2";
        String expected = raw;
        ID = 7;
        notAssertThis(raw, expected, 1, ID);    
    }


        
    // 8) To test 2 select statements with --union
    //    Everything after --union should be ignored
    //    ENG-3354
    @Test
    public void testParseQuery8() {
        String raw = "SELECT * FROM table --UNION SELECT * FROM table2";
        ID = 8;
        String expected = raw;
        assertThis(raw, expected, 1, ID);
    }
    
    // 9) To test 2 select statements with --union
    //    Slightly different from test case 8 - there is '--' directly 
    //    in front of the key word 'select'. So the 2nd select statement
    //    is treated as a comment. This test should pass.
    @Test
    public void testParseQuery9() {
        String raw = "SELECT * FROM table --UNION --SELECT * FROM table2";
        ID = 9;
        String expected = raw;
        assertThis(raw, expected, 1, ID);
    }
    
    // 10) To test 2 select statements with --
    //     Slightly different from test case 9 - there is a space " " in between 
    //     '--' and the 2nd select statement. In theory, this test should pass.
    @Test
    public void testParseQuery10() {
        String raw = "SELECT * FROM table -- SELECT * FROM table2";
        ID = 10;
        String expected = raw;
        assertThis(raw, expected, 1, ID);
    }
    
    // As of today, 07/13/2012, sqlcmd does not support create, yet.
    // Just to check what's got returned.
    // 11) create table xxx (col1_name type(), col2_name type());
    @Test
    public void testParseQuery11() {
    	String raw = "  create tAble xxx   (col1_name type(), col2_name type());";
    	ID = 11;        
    	String expected = raw.replaceAll("\\;+", " ");
        expected = trimKeyWordsLeadingSpaces(expected);
        expected = expected.replaceAll("\\;+", " ");        
        assertThis(raw, expected, 1, ID);    
    }
    
    // 12) To test 2 sql statements starting with different key words
    //     which are separated by one or more white spaces.
    //     This test case is derived from case 2 & 11.
    //     However, this is a negative test 'cause we have not supported 
    //     create feature at sqlcmd prompt, yet.
    @Test
    public void testParseQuery12() {
        String raw = " select * From dummy   create tAble xxx  (col1_name type(), col2_name type()) ;  ";        
        ID = 2;    
        String expected = raw.replaceAll("\\;+", " ");
        expected = trimKeyWordsLeadingSpaces(expected);        
        notAssertThis(raw, expected, 2, ID);
    }
    
    // 13) To test 2 sql statements starting with different key words
    //     which are separated by a semicolon.
    //     This test case is derived from case 12.
    @Test
    public void testParseQuery13() {
        String raw = " select * From dummy;   create tAble xxx  (col1_name type(), col2_name type()) ;  ";        
        ID = 2;    
        String expected = raw.replaceAll("\\;+", " ");
        expected = trimKeyWordsLeadingSpaces(expected);        
        assertThis(raw, expected, 2, ID);
    }
    
    
    
    // 14) To test a bogus string containing semicolon(s).
    @Test
    public void testParseQuery14() {
        // SQLCommand.mockVoltDBForTest(new ClientForTest());
        String raw = "   ssldgjdsgjdsjjg dskfkdskeevnskdh   ;   ksjghtrewoito dsfharw  ; ";
        ID = 14;
        String expected = raw;
        // sqlcmd always replace semicolons with ONE space
        expected = expected.replaceAll("\\s+\\;+\\s+", " ");
        // sqlcmd always trims the input string
        expected = expected.trim();         
        assertThis(raw, expected, 2, ID);
    }
           
    // 15) select/delete/update/insert
    @Test
    public void testParseQuery15() {
    	ID = 15;
    	// raw1 contains two select statements separated by a space
    	String raw1 = "select * from votes limit 10 select count(*) from votes ";
    	String raw2 = "delete from votes where   PHONE_NUMBER = 3082086134      ";
    	// raw3 contains two select statements separated by multiple spaces
    	String raw3 = "select count(*) from votes   select count(*) from votes;";
    	// The combination of raw5 & raw6 is just one sql statement
    	String raw4 = "update votes set CONTESTANT_NUMBER = 7 ";
    	String raw5 = "where PHONE_NUMBER = 2150002906 ";
    	String raw6 = "insert into votes vAlues (2150000000, 'PA', 6)";
    	String raw = raw1 + raw2 + raw3 + raw4 + raw5 + raw6;
    	String copy = raw;
    	copy = copy.replaceAll("\\s*\\;+\\s*", " ");
    	copy = trimKeyWordsLeadingSpaces(copy);
    	assertThis(raw, copy, 7, ID);
    }
    
    // The function 'alter table' is not supported, yet. Therefore, the
    // key word 'alter' is unrecognized. This test is kind of like test
    // case 8. More test cases are derived from this one.
    @Test
    public void testParseQuery16() {
    	ID = 16;
      	String raw1 = "select * from votes limit 12 ;";
    	String raw2 = "delete from votes where PHONE_NUMBER = 3082086134 ";
    	String raw3 = "alter table xxxx rename to new_tbl_name ";
    	String raw4 = "select cOunt(*) from dummy ";
    	String raw = raw1 + raw2 + raw3 + raw4;
    	String expected = raw.replaceAll("\\s*\\;+\\s*", " ");
    	expected = trimKeyWordsLeadingSpaces(expected);
    	// Since 'alter table' is not supported, yet. We expect only three valid queries
    	// returned, although they will not be processed by the VoltDB engine.
    	notAssertThis(raw, expected, 4, ID);    	
    }
    
    // This is derived from test case 16.
    // The only difference is that there is a semicolon in the end of 'raw2'.
    // So, should we expect 3 or 4 queries returned?
    @Test
    public void testParseQuery17() {
    	ID = 17;
      	String raw1 = "select * from votes limit 12 ;";
    	String raw2 = "delete from votes where PHONE_NUMBER = 3082086134;";
    	String raw3 = "alter table xxxx rename to new_tbl_name ";
    	String raw4 = "select cOunt(*) from dummy ";
    	String raw = raw1 + raw2 + raw3 + raw4;
    	String expected = raw.replaceAll("\\s*\\;+\\s*", " ");
    	expected = trimKeyWordsLeadingSpaces(expected);
    	// Let's expect it returns 3 queries, just as we expected 3 in test case 16!!
    	// But, unfortunately, it is not the case!!
    	assertThis(raw, expected, 4, ID);
    } // end of testParseQuery17()
    
    // Starting to test stored procedures
    @Test
    public void testParseQuery18() {
    	ID = 18;
      	String raw = "select * from dummy       exec @SystemCatalog   tables;";
      	String expected = raw.replaceAll("\\s*\\;+\\s*", " ");
      	expected = trimKeyWordsLeadingSpaces(expected);
    	assertThis(raw, expected, 2, ID);
    }    
    
    // insert white spaces
    @Test
    public void testParseQuery19() {
    	ID = 19;
      	String raw = " insert into tablename (col1, col2) values ('   1st 2nd 3rd  ', '   ')";
      	//String expected = raw.replaceAll("\\s*\\;+\\s*", " ");
      	String expected = trimKeyWordsLeadingSpaces(raw);
    	assertThis(raw, expected, 1, ID);    	
    }
    
    // insert NULLs
    @Test
    public void testParseQuery20() {
    	ID = 20;
      	String raw = " insert into votes (phone-number, state, CONTESTANT_NUMBER) ";
      	raw += "values (978-475-      0001, 'MA', null)";
      	//String expected = raw.replaceAll("\\s*\\;+\\s*", " ");
      	String expected = trimKeyWordsLeadingSpaces(raw);
    	assertThis(raw, expected, 1, ID);    	
    }
    
    // to get queries from a local file, which contains some line comments
    // starting with '--', and possibly block comments '/* ... *\/'
    @Test
    public void testParseQuery21() throws FileNotFoundException {
    	ID = 21;
    	//numOfQueries = 9; // test only
    	String raw = SQLCommand.parseSQLFile(sqlFile);
    	assertThis(raw, qryFrmFile, numOfQueries, ID);    	
    }
    
    // To test parseQueryProcedureCallParameters()
    // To test a valid query: 'select * from dummy'
    @Test
    public void testParseQueryProcedureCallParameters22() {
    	ID = 22;
    	String query = "select * from dummy";
    	//System.out.println("\n1 Test ID = " + ID + ", query = \n#" + query + "#\n");
    	String expected = query.replaceAll("\\s+", "");
    	assertThis2(query, expected, 4, ID);    	
    }
    
    // To test parseQueryProcedureCallParameters()
    // To test a valid query: 'exec @SystemCatalog,      tables'
    @Test
    public void testParseQueryProcedureCallParameters23() {
    	ID = 23;
    	String query = "exec @SystemCatalog,     tables";
    	//String query = "exec , @Statistics management,,   ,,0; exec @SystemCatalog tables";
    	//List<String> parsed = SQLCommand.parseQuery(query);
		//err1 += "Actual # of queries: " + parsed.size() + "\n";
        //assertEquals(msg+err1, numOfQry, parsed.size());
        //String parsedString = Joiner.on("|").join(parsed);
        //String result = parsed.get(0);
        //String err2 = "\nExpected queries: \n#" + cleanQryStr + "#\n";
        //String err2 = "Actual queries: \n#" + parsedString + "#\n";
    	//System.out.println("\n1 Test ID = " + ID + ", query = \n#" + query + "#\n");
    	//System.out.println("\n1 Test ID = " + ID + ", parsedString = \n#" + parsedString + "#\n");

    	String expected = query.replace("exec", "");
    	expected = expected.replaceAll(",", "");
    	expected = expected.replaceAll("\\s+", "");

    	assertThis2(query, expected, 2, ID);    	
    }
    
    // To test parseQueryProcedureCallParameters()
    // To test a valid query: 'exec ,, @SystemCatalog,,,,tables'
    // This test case is PASSED, which is kind of a surprise and shows that syntax could be too loose
    @Test
    public void testParseQueryProcedureCallParameters24() {
    	ID = 24;
    	String query = "exec ,, @SystemCatalog,,,,tables";
    	String expected = query.replace("exec", "");
    	expected = expected.replaceAll(",", "");
    	expected = expected.replaceAll("\\s+", "");
    	assertThis2(query, expected, 2, ID);    	
    }
    
    // To test parseQueryProcedureCallParameters()
    // To test a valid query: 'exec,, @SystemCatalog,,,,tables'
    // This test case is FAILED, which is also a surprise, because test case 23 is PASSED.
    // This further demonstrates that syntax is too loose, but NOT flexible.
    // Bug 3422
    @Test
    public void testParseQueryProcedureCallParameters25() {
    	ID = 25;
    	String query = "exec,, @SystemCatalog,,,,tables";
    	String expected = query.replace("exec", "");
    	expected = expected.replaceAll(",", "");
    	expected = expected.replaceAll("\\s+", "");
    	assertThis2(query, expected, 2, ID);    	
    }
    
    private static void setQryString(File QryFileHandle) throws FileNotFoundException {
    	// Prepare a Scanner that will "scan" the document
        Scanner opnScanner = new Scanner(QryFileHandle);
        // Read each line in the file
        while(opnScanner.hasNext()) {
	        String line = opnScanner.nextLine();
	        String str1 = "^--num=\\d+$";	        
	        // To filter out sql comments starting with '--'
	        // Note that currently, we only filter out the comments lines with 
	        // leading '--'. For instance:
	        // 1) --this commenting line will be filtered out
	        String str2 = "-{2,}.*";	        
	        boolean result = line.matches(str2);
	        if(result == true) {
	        	if(line.matches(str1)) {
	        		numOfQueries = Integer.parseInt(line.replaceAll("\\D+", ""));
	        		//System.out.println("numOfQueries = " + numOfQueries);
	        	}
	        	else {
	        		//System.out.println("Comments Line: " + line);
	        	}
	        }
	        else {
	        	qryFrmFile = qryFrmFile.concat(line).concat(" ");
	        }	        
	    }
        qryFrmFile = qryFrmFile.replaceAll("\\;+", " ");
        qryFrmFile = trimKeyWordsLeadingSpaces(qryFrmFile);
        //qryFrmFile += " #cyan#"; // For testing only    	
        //System.out.println("Final string:\n" + qryFrmFile);
	}
	
    private static String trimKeyWordsLeadingSpaces(String str) {
    	str = str.toLowerCase();
		for(String keyWord :  firstKeyQryWord) {
			String raw = "\\s+" + keyWord;
			String cleaned = " " + keyWord;
			str = str.replaceAll(raw, cleaned);
			//System.out.println("In trimKeyWordsLeadingSpaces(), keyWord = " + keyWord);
		}
		return str.trim();
	}

	private void assertThis(String qryStr, int numOfQry, int testID) {
		List<String> parsed = SQLCommand.parseQuery(qryStr);
		String msg = "Test ID: " + testID + ". ";
        assertNotNull(msg + "SQLCommand.parseQuery returned a NULL obj!!", parsed);
        assertEquals(msg, numOfQry, parsed.size());        
        String parsedString = Joiner.on(" ").join(parsed);
        if(noBlockComment == true)
            assertTrue(msg, qryStr.equalsIgnoreCase(parsedString));
	}
	
	private void assertThis(String qryStr, String cleanQryStr, int numOfQry, int testID) {
		System.out.println("Raw Input before parseQuery:\n" + qryStr);
		List<String> parsed = SQLCommand.parseQuery(qryStr);
		String msg = "\nTest ID: " + testID + ". ";
		String err1 = "\nExpected # of queries: " + numOfQry + "\n";
		err1 += "Actual # of queries: " + parsed.size() + "\n";
        assertEquals(msg+err1, numOfQry, parsed.size());
        String parsedString = Joiner.on(" ").join(parsed);
        //String result = parsed.get(0);
        String err2 = "\nExpected queries: \n#" + cleanQryStr + "#\n";
        err2 += "Actual queries: \n#" + parsedString + "#\n";
        System.out.println("\n" + err2 + "\n");
        if(ID == 21)
        	if(noBlockComment == true)
        		// If there is sql comments in block(s), then skip the assertion below
        		assertTrue(msg+err2, cleanQryStr.equalsIgnoreCase(parsedString));
        	else
        		assertFalse(msg+err2, cleanQryStr.equalsIgnoreCase(parsedString));
        else
           	assertTrue(msg+err2, cleanQryStr.equalsIgnoreCase(parsedString));
	}
	
	private void assertThis2(String query, String cleanQryStr, int num, int testID) {
		//System.out.println("Raw Input before parseQuery:\n" + qryStr);
		
    	Pattern ExecuteCall = SQLCommand.getExecuteCall();
    	query = ExecuteCall.matcher(query).replaceFirst("");
    	//System.out.println("2 Test ID = " + ID + ", query = \n#" + query + "#\n");
    	List<String> params = SQLCommand.parseQueryProcedureCallParameters(query);
    	int size = params.size();
    	String parsedString = Joiner.on("").join(params);
        //String procedure = params.remove(0);
        System.out.println("\n3 procedure = \n#" + parsedString + "#, list size = " + size + "\n\n");
		String msg = "\nTest ID: " + testID + ". ";
		String err1 = "\nExpected # of queries: " + num + "\n";
		err1 += "Actual # of queries: " + params.size() + "\n";
        assertEquals(msg+err1, num, params.size());
        
        //String result = parsed.get(0);
        String err2 = "\nExpected queries: \n#" + cleanQryStr + "#\n";
        err2 += "Actual queries: \n#" + parsedString + "#\n";
        if(ID == 18)
        	if(noBlockComment == true)
        		// If there is sql comments in block(s), then skip the assertion below
        		assertTrue(msg+err2, cleanQryStr.equalsIgnoreCase(parsedString));
        	else
        		assertFalse(msg+err2, cleanQryStr.equalsIgnoreCase(parsedString));
        else
           	assertTrue(msg+err2, cleanQryStr.equalsIgnoreCase(parsedString));
	}
	
	private void notAssertThis(String qryStr, String cleanQryStr, int numOfQry, int testID) {
		System.out.println("Raw Input before parseQuery:\n" + qryStr);
		List<String> parsed = SQLCommand.parseQuery(qryStr);
		String msg = "\nTest ID: " + testID + ". ";
		String err1 = "\nExpected # of queries: " + numOfQry + "\n";
		err1 += "Actual # of queries: " + parsed.size() + "\n";
        assertNotSame(msg+err1, numOfQry, parsed.size());
//        String parsedString = Joiner.on(" ").join(parsed);
//        //String result = parsed.get(0);
//        String err2 = "\nExpected queries: \n#" + cleanQryStr + "#\n";
//        err2 += "Actual queries: \n#" + parsedString + "#\n";
//        System.out.println("\n" + err2 + "\n");
//        if(ID == 18)
//        	if(noBlockComment == true)
//        		// If there is sql comments in block(s), then skip the assertion below
//        		assertTrue(msg+err2, cleanQryStr.equalsIgnoreCase(parsedString));
//        	else
//        		assertFalse(msg+err2, cleanQryStr.equalsIgnoreCase(parsedString));
//        else
//           	assertTrue(msg+err2, cleanQryStr.equalsIgnoreCase(parsedString));
	}
    /*
    private String getMultipleSemiColonSeparatedQry() {
    	long seed = getASeed();
    	Random rnd=new Random(seed);
    	//System.out.println("rnd = " + rnd);
    	randomNum = rnd.nextInt(20);
    	return null;
	}

	private long getASeed() {
		RuntimeMXBean bean = ManagementFactory.getRuntimeMXBean();
        //
        // Get name representing the running Java virtual machine.
        // It returns something like {PID}@{HOSTNAME}. Where the value
        // before the @ symbol is the PID.
        //
        String jvmName = bean.getName();
        // System.out.println("Name = " + jvmName);
 
        //
        // Extract the PID by splitting the string returned by the
        // bean.getName() method.
        //
        long pid = Long.valueOf(jvmName.split("@")[0]);
        System.out.println("PID  = " + pid);
        // To use this PID as a seed
		return pid;
	}
	
	private void getQryList() {
		// TODO Auto-generated method stub
		System.out.println("In getQryList");
	}
	*/   
}
