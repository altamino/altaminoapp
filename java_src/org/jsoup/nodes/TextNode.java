package org.jsoup.nodes;

import org.jsoup.helper.StringUtil;
import org.jsoup.helper.Validate;
import org.jsoup.nodes.Document;

/* loaded from: classes4.dex */
public class TextNode extends LeafNode {
    @Override // org.jsoup.nodes.Node
    public String nodeName() {
        return "#text";
    }

    @Override // org.jsoup.nodes.Node
    void outerHtmlTail(Appendable appendable, int i, Document.OutputSettings outputSettings) {
    }

    @Override // org.jsoup.nodes.LeafNode, org.jsoup.nodes.Node
    public /* bridge */ /* synthetic */ String absUrl(String str) {
        return super.absUrl(str);
    }

    @Override // org.jsoup.nodes.LeafNode, org.jsoup.nodes.Node
    public /* bridge */ /* synthetic */ String attr(String str) {
        return super.attr(str);
    }

    @Override // org.jsoup.nodes.LeafNode, org.jsoup.nodes.Node
    public /* bridge */ /* synthetic */ Node attr(String str, String str2) {
        return super.attr(str, str2);
    }

    @Override // org.jsoup.nodes.LeafNode, org.jsoup.nodes.Node
    public /* bridge */ /* synthetic */ String baseUri() {
        return super.baseUri();
    }

    @Override // org.jsoup.nodes.LeafNode, org.jsoup.nodes.Node
    public /* bridge */ /* synthetic */ int childNodeSize() {
        return super.childNodeSize();
    }

    @Override // org.jsoup.nodes.LeafNode, org.jsoup.nodes.Node
    public /* bridge */ /* synthetic */ boolean hasAttr(String str) {
        return super.hasAttr(str);
    }

    @Override // org.jsoup.nodes.LeafNode, org.jsoup.nodes.Node
    public /* bridge */ /* synthetic */ Node removeAttr(String str) {
        return super.removeAttr(str);
    }

    public TextNode(String str) {
        this.value = str;
    }

    public TextNode(String str, String str2) {
        this(str);
    }

    public String text() {
        return StringUtil.normaliseWhitespace(getWholeText());
    }

    public TextNode text(String str) {
        coreValue(str);
        return this;
    }

    public String getWholeText() {
        return coreValue();
    }

    public boolean isBlank() {
        return StringUtil.isBlank(coreValue());
    }

    public TextNode splitText(int i) {
        String strCoreValue = coreValue();
        Validate.isTrue(i >= 0, "Split offset must be not be negative");
        Validate.isTrue(i < strCoreValue.length(), "Split offset must not be greater than current text length");
        String strSubstring = strCoreValue.substring(0, i);
        String strSubstring2 = strCoreValue.substring(i);
        text(strSubstring);
        TextNode textNode = new TextNode(strSubstring2);
        if (parent() != null) {
            parent().addChildren(siblingIndex() + 1, textNode);
        }
        return textNode;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003a  */
    @Override // org.jsoup.nodes.Node
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void outerHtmlHead(java.lang.Appendable r7, int r8, org.jsoup.nodes.Document.OutputSettings r9) throws java.io.IOException {
        /*
            r6 = this;
            boolean r0 = r9.prettyPrint()
            if (r0 == 0) goto L3d
            int r0 = r6.siblingIndex()
            if (r0 != 0) goto L24
            org.jsoup.nodes.Node r0 = r6.parentNode
            boolean r1 = r0 instanceof org.jsoup.nodes.Element
            if (r1 == 0) goto L24
            org.jsoup.nodes.Element r0 = (org.jsoup.nodes.Element) r0
            org.jsoup.parser.Tag r0 = r0.tag()
            boolean r0 = r0.formatAsBlock()
            if (r0 == 0) goto L24
            boolean r0 = r6.isBlank()
            if (r0 == 0) goto L3a
        L24:
            boolean r0 = r9.outline()
            if (r0 == 0) goto L3d
            java.util.List r0 = r6.siblingNodes()
            int r0 = r0.size()
            if (r0 <= 0) goto L3d
            boolean r0 = r6.isBlank()
            if (r0 != 0) goto L3d
        L3a:
            r6.indent(r7, r8, r9)
        L3d:
            boolean r8 = r9.prettyPrint()
            if (r8 == 0) goto L58
            org.jsoup.nodes.Node r8 = r6.parent()
            boolean r8 = r8 instanceof org.jsoup.nodes.Element
            if (r8 == 0) goto L58
            org.jsoup.nodes.Node r8 = r6.parent()
            boolean r8 = org.jsoup.nodes.Element.preserveWhitespace(r8)
            if (r8 != 0) goto L58
            r8 = 1
            r4 = 1
            goto L5a
        L58:
            r8 = 0
            r4 = 0
        L5a:
            java.lang.String r1 = r6.coreValue()
            r3 = 0
            r5 = 0
            r0 = r7
            r2 = r9
            org.jsoup.nodes.Entities.escape(r0, r1, r2, r3, r4, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.nodes.TextNode.outerHtmlHead(java.lang.Appendable, int, org.jsoup.nodes.Document$OutputSettings):void");
    }

    @Override // org.jsoup.nodes.Node
    public String toString() {
        return outerHtml();
    }

    public static TextNode createFromEncoded(String str, String str2) {
        return new TextNode(Entities.unescape(str));
    }

    public static TextNode createFromEncoded(String str) {
        return new TextNode(Entities.unescape(str));
    }

    static String normaliseWhitespace(String str) {
        return StringUtil.normaliseWhitespace(str);
    }

    static String stripLeadingWhitespace(String str) {
        return str.replaceFirst("^\\s+", "");
    }

    static boolean lastCharIsWhitespace(StringBuilder sb) {
        return sb.length() != 0 && sb.charAt(sb.length() - 1) == ' ';
    }
}
