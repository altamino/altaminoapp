package org.jsoup.nodes;

import java.io.IOException;

/* JADX INFO: loaded from: classes8.dex */
public class DataNode extends LeafNode {
    public DataNode(String str) {
        this.value = str;
    }

    @Override // org.jsoup.nodes.LeafNode, org.jsoup.nodes.Node
    public /* bridge */ /* synthetic */ String attr(String str) {
        return super.attr(str);
    }

    @Override // org.jsoup.nodes.Node
    public String nodeName() {
        return "#data";
    }

    @Override // org.jsoup.nodes.Node
    void outerHtmlTail(Appendable appendable, int i10, Document.OutputSettings outputSettings) {
    }

    public DataNode(String str, String str2) {
        this(str);
    }

    @Override // org.jsoup.nodes.LeafNode, org.jsoup.nodes.Node
    public /* bridge */ /* synthetic */ Node attr(String str, String str2) {
        return super.attr(str, str2);
    }

    public static DataNode createFromEncoded(String str, String str2) {
        return new DataNode(Entities.unescape(str));
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

    public String getWholeData() {
        return coreValue();
    }

    @Override // org.jsoup.nodes.LeafNode, org.jsoup.nodes.Node
    public /* bridge */ /* synthetic */ boolean hasAttr(String str) {
        return super.hasAttr(str);
    }

    @Override // org.jsoup.nodes.Node
    void outerHtmlHead(Appendable appendable, int i10, Document.OutputSettings outputSettings) throws IOException {
        appendable.append(getWholeData());
    }

    @Override // org.jsoup.nodes.LeafNode, org.jsoup.nodes.Node
    public /* bridge */ /* synthetic */ Node removeAttr(String str) {
        return super.removeAttr(str);
    }

    public DataNode setWholeData(String str) {
        coreValue(str);
        return this;
    }

    @Override // org.jsoup.nodes.Node
    public String toString() {
        return outerHtml();
    }
}
