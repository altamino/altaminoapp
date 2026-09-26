package org.jsoup.nodes;

import java.util.Collections;
import java.util.List;
import org.jsoup.helper.Validate;

/* JADX INFO: loaded from: classes6.dex */
abstract class LeafNode extends Node {
    private static final List<Node> EmptyNodes = Collections.emptyList();
    Object value;

    @Override // org.jsoup.nodes.Node
    public String attr(String str) {
        Validate.notNull(str);
        if (hasAttributes()) {
            return super.attr(str);
        }
        return str.equals(nodeName()) ? (String) this.value : "";
    }

    @Override // org.jsoup.nodes.Node
    public int childNodeSize() {
        return 0;
    }

    String coreValue() {
        return attr(nodeName());
    }

    @Override // org.jsoup.nodes.Node
    protected void doSetBaseUri(String str) {
    }

    @Override // org.jsoup.nodes.Node
    protected List<Node> ensureChildNodes() {
        return EmptyNodes;
    }

    void coreValue(String str) {
        attr(nodeName(), str);
    }

    @Override // org.jsoup.nodes.Node
    protected final boolean hasAttributes() {
        return this.value instanceof Attributes;
    }

    LeafNode() {
    }

    private void ensureAttributes() {
        if (!hasAttributes()) {
            Object obj = this.value;
            Attributes attributes = new Attributes();
            this.value = attributes;
            if (obj != null) {
                attributes.put(nodeName(), (String) obj);
            }
        }
    }

    @Override // org.jsoup.nodes.Node
    public String absUrl(String str) {
        ensureAttributes();
        return super.absUrl(str);
    }

    @Override // org.jsoup.nodes.Node
    public final Attributes attributes() {
        ensureAttributes();
        return (Attributes) this.value;
    }

    @Override // org.jsoup.nodes.Node
    public String baseUri() {
        if (hasParent()) {
            return parent().baseUri();
        }
        return "";
    }

    @Override // org.jsoup.nodes.Node
    public boolean hasAttr(String str) {
        ensureAttributes();
        return super.hasAttr(str);
    }

    @Override // org.jsoup.nodes.Node
    public Node removeAttr(String str) {
        ensureAttributes();
        return super.removeAttr(str);
    }

    @Override // org.jsoup.nodes.Node
    public Node attr(String str, String str2) {
        if (hasAttributes() || !str.equals(nodeName())) {
            ensureAttributes();
            super.attr(str, str2);
        } else {
            this.value = str2;
        }
        return this;
    }
}
