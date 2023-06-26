import java.io.*;
import java.util.*;
import org.apache.commons.lang3.StringUtils;
	
public class CreativeCommons {

	public static void main(String[] args) {
		String[] licenses = {	"Attribution",
								"Attribution-ShareAlike", 
								"Attribution-NoDerivs",
								"Attribution-NonCommericial",
								"Attribution-NonCommercial-ShareAlike",
								"Attribution-NonCommercial-NoDerivs"};
		
		try {
			String licenseChoice = readLicenseChoice();
			String userName = readUserName();
			String workTitle = readWorkTitle();
			String licenseUrl = generateUrl(licenseChoice, userName, workTitle);
			String licenseHtml = generateHtmlLicense(licenseChoice, licenseUrl);
			writeHtmlLicense(licenseHtml);
		}
		catch (IOException e) {
			System.err.println("Error reading user input.");
		}
		
		
		// Helper methods
		
		public static String readLicenseChoice() throws IOException {
			BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
			System.out.println("Choose a Creative Commons license:");
			for (int i=0; i<licenses.length; i++) {
				System.out.println(i + ": " + licenses[i]);
			}
			String choice = br.readLine();
			return licenses[Integer.parseInt(choice)];
		}
		
		public static String readUserName() throws IOException {
			BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
			System.out.println("Enter your name:");
			String name = br.readLine();
			return StringUtils.stripAccents(name);
		}
		
		public static String readWorkTitle() throws IOException {
			BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
			System.out.println("Enter the title of your work:");
			String work = br.readLine();
			return StringUtils.stripAccents(work);
		}
		
		public static String generateUrl(String licenseChoice, String userName, String workTitle) {
			String licenseStub = licenseChoice.replace(" ", "-");
			StringBuilder url = new StringBuilder("http://creativecommons.org/licenses/");
			url.append(licenseStub);
			url.append("/3.0/");
			url.append("?title=");
			url.append(workTitle);
			url.append("&author=");
			url.append(userName);
			return url.toString();
		}
		
		public static String generateHtmlLicense(String licenseChoice, String licenseUrl) {
			StringBuilder html = new StringBuilder("<a rel=\"license\" href=\"");
			html.append(licenseUrl);
			html.append("\"><img alt=\"Creative Commons License\" style=\"border-width:0\" src=\"http://i.creativecommons.org/l/");
			html.append(licenseChoice.replace(" ", "-"));
			html.append("/3.0/88x31.png\" /></a><br /><span xmlns:dct=\"http://purl.org/dc/terms/\" href=\"http://purl.org/dc/dcmitype/Text\" property=\"dct:title\" rel=\"dct:type\">My Work</span> by <a xmlns:cc=\"http://creativecommons.org/ns#\" href=\"http://www.example.com\" property=\"cc:attributionName\" rel=\"cc:attributionURL\">John Doe</a> is licensed under a <a rel=\"license\" href=\"http://creativecommons.org/licenses/by/3.0/\">Creative Commons Attribution 3.0 Unported License</a>.");
			return html.toString();
		}
		
		public static void writeHtmlLicense(String licenseHtml) throws IOException {
			PrintWriter writer = new PrintWriter("license.html", "UTF-8");
			writer.println(licenseHtml);
			writer.close();
		}
		
	}	

}