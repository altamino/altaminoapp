package org.jsoup.nodes;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.jsoup.SerializationException;
import org.jsoup.helper.StringUtil;
import org.jsoup.helper.Validate;
import org.jsoup.parser.Parser;
import org.jsoup.select.Elements;
import org.jsoup.select.NodeFilter;
import org.jsoup.select.NodeTraversor;
import org.jsoup.select.NodeVisitor;

/* JADX INFO: loaded from: classes6.dex */
public abstract class Node implements Cloneable {
    static final String EmptyString = "";
    Node parentNode;
    int siblingIndex;

    private static class OuterHtmlVisitor implements NodeVisitor {
        private Appendable accum;
        private Document.OutputSettings out;

        @Override // org.jsoup.select.NodeVisitor
        public void head(Node node, int i10) {
            try {
                node.outerHtmlHead(this.accum, i10, this.out);
            } catch (IOException e) {
                throw new SerializationException(e);
            }
        }

        OuterHtmlVisitor(Appendable appendable, Document.OutputSettings outputSettings) {
            this.accum = appendable;
            this.out = outputSettings;
            outputSettings.prepareEncoder();
        }

        @Override // org.jsoup.select.NodeVisitor
        public void tail(Node node, int i10) {
            if (!node.nodeName().equals("#text")) {
                try {
                    node.outerHtmlTail(this.accum, i10, this.out);
                } catch (IOException e) {
                    throw new SerializationException(e);
                }
            }
        }
    }

    protected void addChildren(Node... nodeArr) {
        List<Node> listEnsureChildNodes = ensureChildNodes();
        for (Node node : nodeArr) {
            reparentChild(node);
            listEnsureChildNodes.add(node);
            node.setSiblingIndex(listEnsureChildNodes.size() - 1);
        }
    }

    public Node after(String str) {
        addSiblingHtml(this.siblingIndex + 1, str);
        return this;
    }

    public String attr(String str) {
        Validate.notNull(str);
        if (!hasAttributes()) {
            return "";
        }
        String ignoreCase = attributes().getIgnoreCase(str);
        if (ignoreCase.length() > 0) {
            return ignoreCase;
        }
        return str.startsWith("abs:") ? absUrl(str.substring(4)) : "";
    }

    public abstract Attributes attributes();

    public abstract String baseUri();

    public Node before(String str) {
        addSiblingHtml(this.siblingIndex, str);
        return this;
    }

    public abstract int childNodeSize();

    protected abstract void doSetBaseUri(String str);

    protected abstract List<Node> ensureChildNodes();

    public boolean equals(Object obj) {
        return this == obj;
    }

    protected abstract boolean hasAttributes();

    public boolean hasParent() {
        return this.parentNode != null;
    }

    public abstract String nodeName();

    void nodelistChanged() {
    }

    public String outerHtml() {
        StringBuilder sb = new StringBuilder(128);
        outerHtml(sb);
        return sb.toString();
    }

    abstract void outerHtmlHead(Appendable appendable, int i10, Document.OutputSettings outputSettings) throws IOException;

    abstract void outerHtmlTail(Appendable appendable, int i10, Document.OutputSettings outputSettings) throws IOException;

    public Node parent() {
        return this.parentNode;
    }

    public final Node parentNode() {
        return this.parentNode;
    }

    public Node root() {
        Node node = this;
        while (true) {
            Node node2 = node.parentNode;
            if (node2 == null) {
                return node;
            }
            node = node2;
        }
    }

    protected void setSiblingIndex(int i10) {
        this.siblingIndex = i10;
    }

    public Node shallowClone() {
        return doClone(null);
    }

    public int siblingIndex() {
        return this.siblingIndex;
    }

    public Node after(Node node) {
        Validate.notNull(node);
        Validate.notNull(this.parentNode);
        this.parentNode.addChildren(this.siblingIndex + 1, node);
        return this;
    }

    public Node before(Node node) {
        Validate.notNull(node);
        Validate.notNull(this.parentNode);
        this.parentNode.addChildren(this.siblingIndex, node);
        return this;
    }

    @Override // 
    /* JADX INFO: renamed from: clone */
    public Node mo1806clone() {
        Node nodeDoClone = doClone(null);
        LinkedList linkedList = new LinkedList();
        linkedList.add(nodeDoClone);
        while (!linkedList.isEmpty()) {
            Node node = (Node) linkedList.remove();
            int iChildNodeSize = node.childNodeSize();
            for (int i10 = 0; i10 < iChildNodeSize; i10++) {
                List<Node> listEnsureChildNodes = node.ensureChildNodes();
                Node nodeDoClone2 = listEnsureChildNodes.get(i10).doClone(node);
                listEnsureChildNodes.set(i10, nodeDoClone2);
                linkedList.add(nodeDoClone2);
            }
        }
        return nodeDoClone;
    }

    public boolean hasSameValue(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return outerHtml().equals(((Node) obj).outerHtml());
    }

    protected void indent(Appendable appendable, int i10, Document.OutputSettings outputSettings) throws IOException {
        appendable.append('\n').append(StringUtil.padding(i10 * outputSettings.indentAmount()));
    }

    public Node nextSibling() {
        Node node = this.parentNode;
        if (node == null) {
            return null;
        }
        List<Node> listEnsureChildNodes = node.ensureChildNodes();
        int i10 = this.siblingIndex + 1;
        if (listEnsureChildNodes.size() > i10) {
            return listEnsureChildNodes.get(i10);
        }
        return null;
    }

    public Node previousSibling() {
        Node node = this.parentNode;
        if (node != null && this.siblingIndex > 0) {
            return node.ensureChildNodes().get(this.siblingIndex - 1);
        }
        return null;
    }

    public void remove() {
        Validate.notNull(this.parentNode);
        this.parentNode.removeChild(this);
    }

    protected void removeChild(Node node) {
        Validate.isTrue(node.parentNode == this);
        int i10 = node.siblingIndex;
        ensureChildNodes().remove(i10);
        reindexChildren(i10);
        node.parentNode = null;
    }

    protected void replaceChild(Node node, Node node2) {
        Validate.isTrue(node.parentNode == this);
        Validate.notNull(node2);
        Node node3 = node2.parentNode;
        if (node3 != null) {
            node3.removeChild(node2);
        }
        int i10 = node.siblingIndex;
        ensureChildNodes().set(i10, node2);
        node2.parentNode = this;
        node2.setSiblingIndex(i10);
        node.parentNode = null;
    }

    public List<Node> siblingNodes() {
        Node node = this.parentNode;
        if (node == null) {
            return Collections.emptyList();
        }
        List<Node> listEnsureChildNodes = node.ensureChildNodes();
        ArrayList arrayList = new ArrayList(listEnsureChildNodes.size() - 1);
        for (Node node2 : listEnsureChildNodes) {
            if (node2 != this) {
                arrayList.add(node2);
            }
        }
        return arrayList;
    }

    public Node unwrap() {
        Validate.notNull(this.parentNode);
        List<Node> listEnsureChildNodes = ensureChildNodes();
        Node node = listEnsureChildNodes.size() > 0 ? listEnsureChildNodes.get(0) : null;
        this.parentNode.addChildren(this.siblingIndex, childNodesAsArray());
        remove();
        return node;
    }

    protected Node() {
    }

    private void addSiblingHtml(int i10, String str) {
        Element element;
        Validate.notNull(str);
        Validate.notNull(this.parentNode);
        if (parent() instanceof Element) {
            element = (Element) parent();
        } else {
            element = null;
        }
        List<Node> fragment = Parser.parseFragment(str, element, baseUri());
        this.parentNode.addChildren(i10, (Node[]) fragment.toArray(new Node[fragment.size()]));
    }

    private Element getDeepChild(Element element) {
        Elements elementsChildren = element.children();
        if (elementsChildren.size() > 0) {
            return getDeepChild(elementsChildren.get(0));
        }
        return element;
    }

    private void reindexChildren(int i10) {
        List<Node> listEnsureChildNodes = ensureChildNodes();
        while (i10 < listEnsureChildNodes.size()) {
            listEnsureChildNodes.get(i10).setSiblingIndex(i10);
            i10++;
        }
    }

    public String absUrl(String str) {
        Validate.notEmpty(str);
        if (!hasAttr(str)) {
            return "";
        }
        return StringUtil.resolve(baseUri(), attr(str));
    }

    public Node childNode(int i10) {
        return ensureChildNodes().get(i10);
    }

    public List<Node> childNodes() {
        return Collections.unmodifiableList(ensureChildNodes());
    }

    protected Node[] childNodesAsArray() {
        return (Node[]) ensureChildNodes().toArray(new Node[childNodeSize()]);
    }

    public List<Node> childNodesCopy() {
        List<Node> listEnsureChildNodes = ensureChildNodes();
        ArrayList arrayList = new ArrayList(listEnsureChildNodes.size());
        Iterator<Node> it = listEnsureChildNodes.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().mo1806clone());
        }
        return arrayList;
    }

    public Node clearAttributes() {
        Iterator<Attribute> it = attributes().iterator();
        while (it.hasNext()) {
            it.next();
            it.remove();
        }
        return this;
    }

    protected Node doClone(Node node) {
        int i10;
        try {
            Node node2 = (Node) super.clone();
            node2.parentNode = node;
            if (node == null) {
                i10 = 0;
            } else {
                i10 = this.siblingIndex;
            }
            node2.siblingIndex = i10;
            return node2;
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    public Node filter(NodeFilter nodeFilter) {
        Validate.notNull(nodeFilter);
        NodeTraversor.filter(nodeFilter, this);
        return this;
    }

    Document.OutputSettings getOutputSettings() {
        Document documentOwnerDocument = ownerDocument();
        if (documentOwnerDocument == null) {
            documentOwnerDocument = new Document("");
        }
        return documentOwnerDocument.outputSettings();
    }

    public boolean hasAttr(String str) {
        Validate.notNull(str);
        if (str.startsWith("abs:")) {
            String strSubstring = str.substring(4);
            if (attributes().hasKeyIgnoreCase(strSubstring) && !absUrl(strSubstring).equals("")) {
                return true;
            }
        }
        return attributes().hasKeyIgnoreCase(str);
    }

    public <T extends Appendable> T html(T t5) {
        outerHtml(t5);
        return t5;
    }

    public Document ownerDocument() {
        Node nodeRoot = root();
        if (nodeRoot instanceof Document) {
            return (Document) nodeRoot;
        }
        return null;
    }

    public Node removeAttr(String str) {
        Validate.notNull(str);
        attributes().removeIgnoreCase(str);
        return this;
    }

    protected void reparentChild(Node node) {
        node.setParentNode(this);
    }

    public void replaceWith(Node node) {
        Validate.notNull(node);
        Validate.notNull(this.parentNode);
        this.parentNode.replaceChild(this, node);
    }

    public void setBaseUri(final String str) {
        Validate.notNull(str);
        traverse(new NodeVisitor() { // from class: org.jsoup.nodes.Node.1
            @Override // org.jsoup.select.NodeVisitor
            public void tail(Node node, int i10) {
            }

            @Override // org.jsoup.select.NodeVisitor
            public void head(Node node, int i10) {
                node.doSetBaseUri(str);
            }
        });
    }

    protected void setParentNode(Node node) {
        Validate.notNull(node);
        Node node2 = this.parentNode;
        if (node2 != null) {
            node2.removeChild(this);
        }
        this.parentNode = node;
    }

    public String toString() {
        return outerHtml();
    }

    public Node traverse(NodeVisitor nodeVisitor) {
        Validate.notNull(nodeVisitor);
        NodeTraversor.traverse(nodeVisitor, this);
        return this;
    }

    public Node wrap(String str) {
        Element element;
        Validate.notEmpty(str);
        if (parent() instanceof Element) {
            element = (Element) parent();
        } else {
            element = null;
        }
        List<Node> fragment = Parser.parseFragment(str, element, baseUri());
        Node node = fragment.get(0);
        if (node == null || !(node instanceof Element)) {
            return null;
        }
        Element element2 = (Element) node;
        Element deepChild = getDeepChild(element2);
        this.parentNode.replaceChild(this, element2);
        deepChild.addChildren(this);
        if (fragment.size() > 0) {
            for (int i10 = 0; i10 < fragment.size(); i10++) {
                Node node2 = fragment.get(i10);
                node2.parentNode.removeChild(node2);
                element2.appendChild(node2);
            }
        }
        return this;
    }

    protected void outerHtml(Appendable appendable) {
        NodeTraversor.traverse(new OuterHtmlVisitor(appendable, getOutputSettings()), this);
    }

    protected void addChildren(int i10, Node... nodeArr) {
        Validate.noNullElements(nodeArr);
        List<Node> listEnsureChildNodes = ensureChildNodes();
        for (Node node : nodeArr) {
            reparentChild(node);
        }
        listEnsureChildNodes.addAll(i10, Arrays.asList(nodeArr));
        reindexChildren(i10);
    }

    public Node attr(String str, String str2) {
        attributes().putIgnoreCase(str, str2);
        return this;
    }
}
