package main;

public class Demo {
    public static void main(String[] args) throws Exception {

        if (AgainstValidator.main(new String[]{"src/xml/Request.xsd", "src/xml/Request_4.xml"})){
            if(XSLTransform.main(new String[] {"src/xslt/Request.xsl", "src/xml/Request_4.xml", "src/xslt/Request.html"})){
                System.out.println("src/xml/Request.html is created");
            }
        }
        else System.out.println("html-file is not created");
    }
}
