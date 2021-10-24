package com.it.test;

import org.apache.commons.util.MD5;
import org.hibernate.tool.hbm2ddl.SchemaExport;
import org.junit.Test;

import com.it.model.User;
import com.it.util.SystemUtils;

import junit.framework.TestCase;

public class JUnitTest extends TestCase {

	@Test
	public void testMD5() {
		MD5 md5 = new MD5();
		String str = "admin";
		String result = md5.getMD5ofStrs(str);
		System.out.println(result);
	}

	@Test
	public void testDb() {
		SchemaExport export = new SchemaExport(SystemUtils.getConfiguration());
		export.create(true, true);
		User util = new User();
		util.setS_0("admin");
		util.setS_1("admin");
		util.setS_2("admin");
		util.setS_11("admin");
		util.setS_16("Y");
		SystemUtils.saveUser(util);
	}

}
