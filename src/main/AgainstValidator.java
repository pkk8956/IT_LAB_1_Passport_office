package main;

import java.io.File;

import javax.xml.XMLConstants;
import javax.xml.transform.Source;
import javax.xml.transform.stream.StreamSource;
import javax.xml.validation.Schema;
import javax.xml.validation.SchemaFactory;
import javax.xml.validation.Validator;

import org.xml.sax.SAXException;

public class AgainstValidator {

	public static boolean main(String[] args) throws Exception {
		if (args.length != 2) {
			usage();
			return false;
		}

		String xsd = args[0];
		String xml = args[1];

		SchemaFactory sf = SchemaFactory.newInstance(XMLConstants.W3C_XML_SCHEMA_NS_URI);

		Schema schema = null;
		if ("".equals(xsd)) {
			schema = sf.newSchema();
		} else {
			schema = sf.newSchema(new File(xsd));
		}
		
		Validator validator = schema.newValidator();
		Source source = new StreamSource(xml);

		try {
			validator.validate(source);
			System.out.println(xml + " is valid.");
			return true;
		} catch (SAXException ex) {
			System.out.println(xml + " is not valid because ");
			System.out.println(ex.getMessage());
			return false;
		}

	}

	private static void usage() {
		System.out.println("Usage:\n"
				+ "AgainstValidator <xsd file> <xml file>");
	}

}
