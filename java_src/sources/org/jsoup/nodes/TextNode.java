package org.jsoup.nodes;

import java.io.IOException;
import org.jsoup.helper.StringUtil;
import org.jsoup.helper.Validate;

/* JADX INFO: loaded from: classes9.dex */
public class TextNode extends LeafNode {
    public TextNode(String str) {
        this.value = str;
    }

    public static TextNode createFromEncoded(String str, String str2) {
        return new TextNode(Entities.unescape(str));
    }

    @Override // org.jsoup.nodes.LeafNode, org.jsoup.nodes.Node
    public /* bridge */ /* synthetic */ String attr(String str) {
        return super.attr(str);
    }

    @Override // org.jsoup.nodes.Node
    public String nodeName() {
        return "#text";
    }

    @Override // org.jsoup.nodes.Node
    void outerHtmlTail(Appendable appendable, int i10, Document.OutputSettings outputSettings) {
    }

    public String text() {
        return StringUtil.normaliseWhitespace(getWholeText());
    }

    public TextNode(String str, String str2) {
        this(str);
    }

    static String stripLeadingWhitespace(String str) {
        return str.replaceFirst("^\\s+", "");
    }

    @Override // org.jsoup.nodes.LeafNode, org.jsoup.nodes.Node
    public /* bridge */ /* synthetic */ Node attr(String str, String str2) {
        return super.attr(str, str2);
    }

    public TextNode text(String str) {
        coreValue(str);
        return this;
    }

    public static TextNode createFromEncoded(String str) {
        return new TextNode(Entities.unescape(str));
    }

    static boolean lastCharIsWhitespace(StringBuilder sb) {
        if (sb.length() != 0 && sb.charAt(sb.length() - 1) == ' ') {
            return true;
        }
        return false;
    }

    static String normaliseWhitespace(String str) {
        return StringUtil.normaliseWhitespace(str);
    }

    @Override // org.jsoup.nodes.LeafNode, org.jsoup.nodes.Node
    public /* bridge */ /* synthetic */ String absUrl(String str) {
        return super.absUrl(str);
    }

    @Override // org.jsoup.nodes.LeafNode, org.jsoup.nodes.Node
    public /* bridge */ /* synthetic */ String baseUri() {
        return super.baseUri();
    }

    @Override // org.jsoup.nodes.LeafNode, org.jsoup.nodes.Node
    public /* bridge */ /* synthetic */ int childNodeSize() {
        return super.childNodeSize();
    }

    public String getWholeText() {
        return coreValue();
    }

    @Override // org.jsoup.nodes.LeafNode, org.jsoup.nodes.Node
    public /* bridge */ /* synthetic */ boolean hasAttr(String str) {
        return super.hasAttr(str);
    }

    public boolean isBlank() {
        return StringUtil.isBlank(coreValue());
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0024  */
    /* JADX WARN: Code duplicated, block: B:18:0x003a  */
    @Override // org.jsoup.nodes.Node
    void outerHtmlHead(Appendable appendable, int i10, Document.OutputSettings outputSettings) throws IOException {
        boolean z6;
        if (outputSettings.prettyPrint()) {
            if (siblingIndex() == 0) {
                Node node = this.parentNode;
                if (!(node instanceof Element) || !((Element) node).tag().formatAsBlock() || isBlank()) {
                    if (outputSettings.outline() && siblingNodes().size() > 0 && !isBlank()) {
                        indent(appendable, i10, outputSettings);
                    }
                } else {
                    indent(appendable, i10, outputSettings);
                }
            } else if (outputSettings.outline()) {
                indent(appendable, i10, outputSettings);
            }
        }
        if (outputSettings.prettyPrint() && (parent() instanceof Element) && !Element.preserveWhitespace(parent())) {
            z6 = true;
        } else {
            z6 = false;
        }
        Entities.escape(appendable, coreValue(), outputSettings, false, z6, false);
    }

    @Override // org.jsoup.nodes.LeafNode, org.jsoup.nodes.Node
    public /* bridge */ /* synthetic */ Node removeAttr(String str) {
        return super.removeAttr(str);
    }

    public TextNode splitText(int i10) {
        boolean z6;
        boolean z10;
        String strCoreValue = coreValue();
        if (i10 >= 0) {
            z6 = true;
        } else {
            z6 = false;
        }
        Validate.isTrue(z6, "Split offset must be not be negative");
        if (i10 < strCoreValue.length()) {
            z10 = true;
        } else {
            z10 = false;
        }
        Validate.isTrue(z10, "Split offset must not be greater than current text length");
        String strSubstring = strCoreValue.substring(0, i10);
        String strSubstring2 = strCoreValue.substring(i10);
        text(strSubstring);
        TextNode textNode = new TextNode(strSubstring2);
        if (parent() != null) {
            parent().addChildren(siblingIndex() + 1, textNode);
        }
        return textNode;
    }

    @Override // org.jsoup.nodes.Node
    public String toString() {
        return outerHtml();
    }
}
