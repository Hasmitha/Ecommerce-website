package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class cart_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=utf-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <title>Cart page</title>\n");
      out.write("    ");
      out.write("\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("<h1>Your cart</h1>\n");
      out.write("\n");
      out.write("<table>\n");
      out.write("  <tr>\n");
      out.write("      ");
      out.write("\n");
      out.write("    <th>Name</th>\n");
      out.write("    <th>Image</th>\n");
      out.write("    <th>Price</th>\n");
      out.write("    <th>Quantity</th>\n");
      out.write("    <th>Total</th>\n");
      out.write("  </tr>\n");
      out.write("\n");
      out.write("  ");
      out.write("\n");
      out.write("  <tr>\n");
      out.write("    <td>\n");
      out.write("      <form action=\"\" method=\"post\">\n");
      out.write("        <input type=\"hidden\" name=\"productCode\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${item.product.code}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\n");
      out.write("        <input type=text name=\"quantity\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${item.quantity}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" id=\"quantity\">\n");
      out.write("        <input type=\"submit\" value=\"Update\">\n");
      out.write("      </form>\n");
      out.write("    </td>\n");
      out.write("    <td>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${item.product.name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</td>\n");
      out.write("    <td>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${item.product.priceCurrencyFormat}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</td>\n");
      out.write("    <td>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${item.totalCurrencyFormat}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</td>\n");
      out.write("    <td>\n");
      out.write("      <form action=\"\" method=\"post\">\n");
      out.write("        <input type=\"hidden\" name=\"productCode\" \n");
      out.write("               value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${item.product.code}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\n");
      out.write("        <input type=\"hidden\" name=\"quantity\" \n");
      out.write("               value=\"0\">\n");
      out.write("        <input type=\"submit\" value=\"Remove Item\">\n");
      out.write("      </form>\n");
      out.write("    </td>\n");
      out.write("  </tr>\n");
      out.write("</c:forEach>\n");
      out.write("</table>\n");
      out.write("\n");
      out.write("<p><b>To change the quantity</b>, enter the new quantity \n");
      out.write("      and click on the Update button.</p>\n");
      out.write("  \n");
      out.write("<form action=\"\" method=\"post\">\n");
      out.write("  <input type=\"hidden\" name=\"action\" value=\"shop\">\n");
      out.write("  <input type=\"submit\" value=\"Continue Shopping\">\n");
      out.write("</form>\n");
      out.write("\n");
      out.write("<form action=\"\" method=\"post\">\n");
      out.write("  <input type=\"hidden\" name=\"action\" value=\"checkout\">\n");
      out.write("  <input type=\"submit\" value=\"Checkout\">\n");
      out.write("</form>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
