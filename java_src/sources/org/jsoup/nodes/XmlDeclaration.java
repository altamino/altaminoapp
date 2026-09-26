package org.jsoup.nodes;

import java.io.IOException;
import org.jsoup.SerializationException;
import org.jsoup.helper.Validate;

/* JADX INFO: loaded from: classes11.dex */
public class XmlDeclaration extends LeafNode {
    private final boolean isProcessingInstruction;

    public XmlDeclaration(String str, boolean z6) {
        Validate.notNull(str);
        this.value = str;
        this.isProcessingInstruction = z6;
    }

    @Override // org.jsoup.nodes.LeafNode, org.jsoup.nodes.Node
    public /* bridge */ /* synthetic */ String attr(String str) {
        return super.attr(str);
    }

    public String getWholeDeclaration() {
        StringBuilder sb = new StringBuilder();
        try {
            getWholeDeclaration(sb, new Document.OutputSettings());
            return sb.toString().trim();
        } catch (IOException e) {
            throw new SerializationException(e);
        }
    }

    @Override // org.jsoup.nodes.Node
    public String nodeName() {
        return "#declaration";
    }

    @Override // org.jsoup.nodes.Node
    void outerHtmlTail(Appendable appendable, int i10, Document.OutputSettings outputSettings) {
    }

    @Override // org.jsoup.nodes.LeafNode, org.jsoup.nodes.Node
    public /* bridge */ /* synthetic */ Node attr(String str, String str2) {
        return super.attr(str, str2);
    }

    @Override // org.jsoup.nodes.Node
    void outerHtmlHead(Appendable appendable, int i10, Document.OutputSettings outputSettings) throws IOException {
        appendable.append("<").append(this.isProcessingInstruction ? "!" : "?").append(coreValue());
        getWholeDeclaration(appendable, outputSettings);
        appendable.append(this.isProcessingInstruction ? "!" : "?").append(">");
    }

    public XmlDeclaration(String str, String str2, boolean z6) {
        this(str, z6);
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

    @Override // org.jsoup.nodes.LeafNode, org.jsoup.nodes.Node
    public /* bridge */ /* synthetic */ boolean hasAttr(String str) {
        return super.hasAttr(str);
    }

    public String name() {
        return coreValue();
    }

    @Override // org.jsoup.nodes.LeafNode, org.jsoup.nodes.Node
    public /* bridge */ /* synthetic */ Node removeAttr(String str) {
        return super.removeAttr(str);
    }

    @Override // org.jsoup.nodes.Node
    public String toString() {
        return outerHtml();
    }

    private void getWholeDeclaration(Appendable appendable, Document.OutputSettings outputSettings) throws IOException {
        for (Attribute attribute : attributes()) {
            if (!attribute.getKey().equals(nodeName())) {
                appendable.append(' ');
                attribute.html(appendable, outputSettings);
            }
        }
    }
}
