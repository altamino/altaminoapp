package org.jsoup.nodes;

import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
import kotlinx.serialization.json.internal.b;
import org.jsoup.helper.ChangeNotifyingArrayList;
import org.jsoup.helper.StringUtil;
import org.jsoup.helper.Validate;
import org.jsoup.internal.Normalizer;
import org.jsoup.parser.ParseSettings;
import org.jsoup.parser.Parser;
import org.jsoup.parser.Tag;
import org.jsoup.select.Collector;
import org.jsoup.select.Elements;
import org.jsoup.select.Evaluator;
import org.jsoup.select.NodeTraversor;
import org.jsoup.select.NodeVisitor;
import org.jsoup.select.QueryParser;
import org.jsoup.select.Selector;

/* JADX INFO: loaded from: classes5.dex */
public class Element extends Node {
    private static final List<Node> EMPTY_NODES = Collections.emptyList();
    private static final Pattern classSplit = Pattern.compile("\\s+");
    private Attributes attributes;
    private String baseUri;
    List<Node> childNodes;
    private WeakReference<List<Element>> shadowChildrenRef;
    private Tag tag;

    private static final class NodeList extends ChangeNotifyingArrayList<Node> {
        private final Element owner;

        @Override // org.jsoup.helper.ChangeNotifyingArrayList
        public void onContentsChanged() {
            this.owner.nodelistChanged();
        }

        NodeList(Element element, int i10) {
            super(i10);
            this.owner = element;
        }
    }

    public Element(String str) {
        this(Tag.valueOf(str), "", new Attributes());
    }

    private static <E extends Element> int indexInList(Element element, List<E> list) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            if (list.get(i10) == element) {
                return i10;
            }
        }
        return 0;
    }

    static boolean preserveWhitespace(Node node) {
        if (node != null && (node instanceof Element)) {
            Element elementParent = (Element) node;
            int i10 = 0;
            while (!elementParent.tag.preserveWhitespace()) {
                elementParent = elementParent.parent();
                i10++;
                if (i10 >= 6 || elementParent == null) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // org.jsoup.nodes.Node
    public String baseUri() {
        return this.baseUri;
    }

    public Set<String> classNames() {
        LinkedHashSet linkedHashSet = new LinkedHashSet(Arrays.asList(classSplit.split(className())));
        linkedHashSet.remove("");
        return linkedHashSet;
    }

    @Override // org.jsoup.nodes.Node
    protected void doSetBaseUri(String str) {
        this.baseUri = str;
    }

    public Elements getElementsByAttributeValueMatching(String str, Pattern pattern) {
        return Collector.collect(new Evaluator.AttributeWithValueMatching(str, pattern), this);
    }

    public Elements getElementsMatchingOwnText(Pattern pattern) {
        return Collector.collect(new Evaluator.MatchesOwn(pattern), this);
    }

    public Elements getElementsMatchingText(Pattern pattern) {
        return Collector.collect(new Evaluator.Matches(pattern), this);
    }

    @Override // org.jsoup.nodes.Node
    protected boolean hasAttributes() {
        return this.attributes != null;
    }

    public String html() {
        StringBuilder sbStringBuilder = StringUtil.stringBuilder();
        html(sbStringBuilder);
        boolean zPrettyPrint = getOutputSettings().prettyPrint();
        String string = sbStringBuilder.toString();
        return zPrettyPrint ? string.trim() : string;
    }

    public Element insertChildren(int i10, Collection<? extends Node> collection) {
        Validate.notNull(collection, "Children collection to be inserted must not be null.");
        int iChildNodeSize = childNodeSize();
        if (i10 < 0) {
            i10 += iChildNodeSize + 1;
        }
        Validate.isTrue(i10 >= 0 && i10 <= iChildNodeSize, "Insert position out of bounds.");
        ArrayList arrayList = new ArrayList(collection);
        addChildren(i10, (Node[]) arrayList.toArray(new Node[arrayList.size()]));
        return this;
    }

    public boolean is(String str) {
        return is(QueryParser.parse(str));
    }

    public String ownText() {
        StringBuilder sb = new StringBuilder();
        ownText(sb);
        return sb.toString().trim();
    }

    public Tag tag() {
        return this.tag;
    }

    public String tagName() {
        return this.tag.getName();
    }

    public String text() {
        final StringBuilder sb = new StringBuilder();
        NodeTraversor.traverse(new NodeVisitor() { // from class: org.jsoup.nodes.Element.1
            @Override // org.jsoup.select.NodeVisitor
            public void head(Node node, int i10) {
                if (node instanceof TextNode) {
                    Element.appendNormalisedText(sb, (TextNode) node);
                } else if (node instanceof Element) {
                    Element element = (Element) node;
                    if (sb.length() > 0) {
                        if ((element.isBlock() || element.tag.getName().equals("br")) && !TextNode.lastCharIsWhitespace(sb)) {
                            sb.append(' ');
                        }
                    }
                }
            }

            @Override // org.jsoup.select.NodeVisitor
            public void tail(Node node, int i10) {
                if ((node instanceof Element) && ((Element) node).isBlock() && (node.nextSibling() instanceof TextNode) && !TextNode.lastCharIsWhitespace(sb)) {
                    sb.append(' ');
                }
            }
        }, this);
        return sb.toString().trim();
    }

    public String val() {
        return tagName().equals("textarea") ? text() : attr("value");
    }

    public Element(Tag tag, String str, Attributes attributes) {
        Validate.notNull(tag);
        Validate.notNull(str);
        this.childNodes = EMPTY_NODES;
        this.baseUri = str;
        this.attributes = attributes;
        this.tag = tag;
    }

    private static void appendWhitespaceIfBr(Element element, StringBuilder sb) {
        if (!element.tag.getName().equals("br") || TextNode.lastCharIsWhitespace(sb)) {
            return;
        }
        sb.append(" ");
    }

    private List<Element> childElementsList() {
        List<Element> list;
        WeakReference<List<Element>> weakReference = this.shadowChildrenRef;
        if (weakReference != null && (list = weakReference.get()) != null) {
            return list;
        }
        int size = this.childNodes.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i10 = 0; i10 < size; i10++) {
            Node node = this.childNodes.get(i10);
            if (node instanceof Element) {
                arrayList.add((Element) node);
            }
        }
        this.shadowChildrenRef = new WeakReference<>(arrayList);
        return arrayList;
    }

    public Element appendElement(String str) {
        Element element = new Element(Tag.valueOf(str), baseUri());
        appendChild(element);
        return element;
    }

    @Override // org.jsoup.nodes.Node
    public Element attr(String str, String str2) {
        super.attr(str, str2);
        return this;
    }

    @Override // org.jsoup.nodes.Node
    public int childNodeSize() {
        return this.childNodes.size();
    }

    public Elements children() {
        return new Elements(childElementsList());
    }

    public String className() {
        return attr("class").trim();
    }

    public String data() {
        StringBuilder sb = new StringBuilder();
        for (Node node : this.childNodes) {
            if (node instanceof DataNode) {
                sb.append(((DataNode) node).getWholeData());
            } else if (node instanceof Comment) {
                sb.append(((Comment) node).getData());
            } else if (node instanceof Element) {
                sb.append(((Element) node).data());
            } else if (node instanceof CDataNode) {
                sb.append(((CDataNode) node).getWholeText());
            }
        }
        return sb.toString();
    }

    public List<DataNode> dataNodes() {
        ArrayList arrayList = new ArrayList();
        for (Node node : this.childNodes) {
            if (node instanceof DataNode) {
                arrayList.add((DataNode) node);
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.jsoup.nodes.Node
    public Element doClone(Node node) {
        Element element = (Element) super.doClone(node);
        Attributes attributes = this.attributes;
        element.attributes = attributes != null ? attributes.clone() : null;
        element.baseUri = this.baseUri;
        NodeList nodeList = new NodeList(element, this.childNodes.size());
        element.childNodes = nodeList;
        nodeList.addAll(this.childNodes);
        return element;
    }

    public Element empty() {
        this.childNodes.clear();
        return this;
    }

    @Override // org.jsoup.nodes.Node
    protected List<Node> ensureChildNodes() {
        if (this.childNodes == EMPTY_NODES) {
            this.childNodes = new NodeList(this, 4);
        }
        return this.childNodes;
    }

    public Elements getAllElements() {
        return Collector.collect(new Evaluator.AllElements(), this);
    }

    public Elements getElementsByAttributeValue(String str, String str2) {
        return Collector.collect(new Evaluator.AttributeWithValue(str, str2), this);
    }

    public Elements getElementsByAttributeValueContaining(String str, String str2) {
        return Collector.collect(new Evaluator.AttributeWithValueContaining(str, str2), this);
    }

    public Elements getElementsByAttributeValueEnding(String str, String str2) {
        return Collector.collect(new Evaluator.AttributeWithValueEnding(str, str2), this);
    }

    public Elements getElementsByAttributeValueMatching(String str, String str2) {
        try {
            return getElementsByAttributeValueMatching(str, Pattern.compile(str2));
        } catch (PatternSyntaxException e) {
            throw new IllegalArgumentException("Pattern syntax error: " + str2, e);
        }
    }

    public Elements getElementsByAttributeValueNot(String str, String str2) {
        return Collector.collect(new Evaluator.AttributeWithValueNot(str, str2), this);
    }

    public Elements getElementsByAttributeValueStarting(String str, String str2) {
        return Collector.collect(new Evaluator.AttributeWithValueStarting(str, str2), this);
    }

    public Elements getElementsByIndexEquals(int i10) {
        return Collector.collect(new Evaluator.IndexEquals(i10), this);
    }

    public Elements getElementsByIndexGreaterThan(int i10) {
        return Collector.collect(new Evaluator.IndexGreaterThan(i10), this);
    }

    public Elements getElementsByIndexLessThan(int i10) {
        return Collector.collect(new Evaluator.IndexLessThan(i10), this);
    }

    public Elements getElementsContainingOwnText(String str) {
        return Collector.collect(new Evaluator.ContainsOwnText(str), this);
    }

    public Elements getElementsContainingText(String str) {
        return Collector.collect(new Evaluator.ContainsText(str), this);
    }

    public Elements getElementsMatchingOwnText(String str) {
        try {
            return getElementsMatchingOwnText(Pattern.compile(str));
        } catch (PatternSyntaxException e) {
            throw new IllegalArgumentException("Pattern syntax error: " + str, e);
        }
    }

    public Elements getElementsMatchingText(String str) {
        try {
            return getElementsMatchingText(Pattern.compile(str));
        } catch (PatternSyntaxException e) {
            throw new IllegalArgumentException("Pattern syntax error: " + str, e);
        }
    }

    public boolean hasText() {
        for (Node node : this.childNodes) {
            if (node instanceof TextNode) {
                if (!((TextNode) node).isBlank()) {
                    return true;
                }
            } else if ((node instanceof Element) && ((Element) node).hasText()) {
                return true;
            }
        }
        return false;
    }

    public boolean is(Evaluator evaluator) {
        return evaluator.matches((Element) root(), this);
    }

    public boolean isBlock() {
        return this.tag.isBlock();
    }

    public Element nextElementSibling() {
        if (this.parentNode == null) {
            return null;
        }
        List<Element> listChildElementsList = parent().childElementsList();
        Integer numValueOf = Integer.valueOf(indexInList(this, listChildElementsList));
        Validate.notNull(numValueOf);
        if (listChildElementsList.size() > numValueOf.intValue() + 1) {
            return listChildElementsList.get(numValueOf.intValue() + 1);
        }
        return null;
    }

    @Override // org.jsoup.nodes.Node
    public String nodeName() {
        return this.tag.getName();
    }

    @Override // org.jsoup.nodes.Node
    void outerHtmlTail(Appendable appendable, int i10, Document.OutputSettings outputSettings) throws IOException {
        if (this.childNodes.isEmpty() && this.tag.isSelfClosing()) {
            return;
        }
        if (outputSettings.prettyPrint() && !this.childNodes.isEmpty() && (this.tag.formatAsBlock() || (outputSettings.outline() && (this.childNodes.size() > 1 || (this.childNodes.size() == 1 && !(this.childNodes.get(0) instanceof TextNode)))))) {
            indent(appendable, i10, outputSettings);
        }
        appendable.append("</").append(tagName()).append('>');
    }

    @Override // org.jsoup.nodes.Node
    public final Element parent() {
        return (Element) this.parentNode;
    }

    public Elements parents() {
        Elements elements = new Elements();
        accumulateParents(this, elements);
        return elements;
    }

    public Element prependElement(String str) {
        Element element = new Element(Tag.valueOf(str), baseUri());
        prependChild(element);
        return element;
    }

    public Element previousElementSibling() {
        if (this.parentNode == null) {
            return null;
        }
        List<Element> listChildElementsList = parent().childElementsList();
        Integer numValueOf = Integer.valueOf(indexInList(this, listChildElementsList));
        Validate.notNull(numValueOf);
        if (numValueOf.intValue() > 0) {
            return listChildElementsList.get(numValueOf.intValue() - 1);
        }
        return null;
    }

    @Override // org.jsoup.nodes.Node
    public Element shallowClone() {
        return new Element(this.tag, this.baseUri, this.attributes);
    }

    public Elements siblingElements() {
        if (this.parentNode == null) {
            return new Elements(0);
        }
        List<Element> listChildElementsList = parent().childElementsList();
        Elements elements = new Elements(listChildElementsList.size() - 1);
        for (Element element : listChildElementsList) {
            if (element != this) {
                elements.add(element);
            }
        }
        return elements;
    }

    public Element tagName(String str) {
        Validate.notEmpty(str, "Tag name must not be empty.");
        this.tag = Tag.valueOf(str, ParseSettings.preserveCase);
        return this;
    }

    public List<TextNode> textNodes() {
        ArrayList arrayList = new ArrayList();
        for (Node node : this.childNodes) {
            if (node instanceof TextNode) {
                arrayList.add((TextNode) node);
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    public String wholeText() {
        final StringBuilder sb = new StringBuilder();
        NodeTraversor.traverse(new NodeVisitor() { // from class: org.jsoup.nodes.Element.2
            @Override // org.jsoup.select.NodeVisitor
            public void tail(Node node, int i10) {
            }

            @Override // org.jsoup.select.NodeVisitor
            public void head(Node node, int i10) {
                if (node instanceof TextNode) {
                    sb.append(((TextNode) node).getWholeText());
                }
            }
        }, this);
        return sb.toString();
    }

    @Override // org.jsoup.nodes.Node
    public Element wrap(String str) {
        return (Element) super.wrap(str);
    }

    private static void accumulateParents(Element element, Elements elements) {
        Element elementParent = element.parent();
        if (elementParent != null && !elementParent.tagName().equals("#root")) {
            elements.add(elementParent);
            accumulateParents(elementParent, elements);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void appendNormalisedText(StringBuilder sb, TextNode textNode) {
        String wholeText = textNode.getWholeText();
        if (!preserveWhitespace(textNode.parentNode) && !(textNode instanceof CDataNode)) {
            StringUtil.appendNormalisedWhitespace(sb, wholeText, TextNode.lastCharIsWhitespace(sb));
        } else {
            sb.append(wholeText);
        }
    }

    public Element addClass(String str) {
        Validate.notNull(str);
        Set<String> setClassNames = classNames();
        setClassNames.add(str);
        classNames(setClassNames);
        return this;
    }

    @Override // org.jsoup.nodes.Node
    public Element after(String str) {
        return (Element) super.after(str);
    }

    public Element append(String str) {
        Validate.notNull(str);
        List<Node> fragment = Parser.parseFragment(str, this, baseUri());
        addChildren((Node[]) fragment.toArray(new Node[fragment.size()]));
        return this;
    }

    public Element appendChild(Node node) {
        Validate.notNull(node);
        reparentChild(node);
        ensureChildNodes();
        this.childNodes.add(node);
        node.setSiblingIndex(this.childNodes.size() - 1);
        return this;
    }

    public Element appendText(String str) {
        Validate.notNull(str);
        appendChild(new TextNode(str));
        return this;
    }

    public Element appendTo(Element element) {
        Validate.notNull(element);
        element.appendChild(this);
        return this;
    }

    public Element attr(String str, boolean z6) {
        attributes().put(str, z6);
        return this;
    }

    @Override // org.jsoup.nodes.Node
    public Attributes attributes() {
        if (!hasAttributes()) {
            this.attributes = new Attributes();
        }
        return this.attributes;
    }

    @Override // org.jsoup.nodes.Node
    public Element before(String str) {
        return (Element) super.before(str);
    }

    public Element child(int i10) {
        return childElementsList().get(i10);
    }

    @Override // org.jsoup.nodes.Node
    /* JADX INFO: renamed from: clone */
    public Element mo1806clone() {
        return (Element) super.mo1806clone();
    }

    public String cssSelector() {
        if (id().length() > 0) {
            return "#" + id();
        }
        StringBuilder sb = new StringBuilder(tagName().replace(b.COLON, '|'));
        String strJoin = StringUtil.join(classNames(), ".");
        if (strJoin.length() > 0) {
            sb.append('.');
            sb.append(strJoin);
        }
        if (parent() != null && !(parent() instanceof Document)) {
            sb.insert(0, " > ");
            if (parent().select(sb.toString()).size() > 1) {
                sb.append(String.format(":nth-child(%d)", Integer.valueOf(elementSiblingIndex() + 1)));
            }
            return parent().cssSelector() + sb.toString();
        }
        return sb.toString();
    }

    public Map<String, String> dataset() {
        return attributes().dataset();
    }

    public int elementSiblingIndex() {
        if (parent() == null) {
            return 0;
        }
        return indexInList(this, parent().childElementsList());
    }

    public Element firstElementSibling() {
        List<Element> listChildElementsList = parent().childElementsList();
        if (listChildElementsList.size() > 1) {
            return listChildElementsList.get(0);
        }
        return null;
    }

    public Element getElementById(String str) {
        Validate.notEmpty(str);
        Elements elementsCollect = Collector.collect(new Evaluator.Id(str), this);
        if (elementsCollect.size() > 0) {
            return elementsCollect.get(0);
        }
        return null;
    }

    public Elements getElementsByAttribute(String str) {
        Validate.notEmpty(str);
        return Collector.collect(new Evaluator.Attribute(str.trim()), this);
    }

    public Elements getElementsByAttributeStarting(String str) {
        Validate.notEmpty(str);
        return Collector.collect(new Evaluator.AttributeStarting(str.trim()), this);
    }

    public Elements getElementsByClass(String str) {
        Validate.notEmpty(str);
        return Collector.collect(new Evaluator.Class(str), this);
    }

    public Elements getElementsByTag(String str) {
        Validate.notEmpty(str);
        return Collector.collect(new Evaluator.Tag(Normalizer.normalize(str)), this);
    }

    public boolean hasClass(String str) {
        String ignoreCase = attributes().getIgnoreCase("class");
        int length = ignoreCase.length();
        int length2 = str.length();
        if (length != 0 && length >= length2) {
            if (length == length2) {
                return str.equalsIgnoreCase(ignoreCase);
            }
            boolean z6 = false;
            int i10 = 0;
            for (int i11 = 0; i11 < length; i11++) {
                if (Character.isWhitespace(ignoreCase.charAt(i11))) {
                    if (!z6) {
                        continue;
                    } else {
                        if (i11 - i10 == length2 && ignoreCase.regionMatches(true, i10, str, 0, length2)) {
                            return true;
                        }
                        z6 = false;
                    }
                } else if (!z6) {
                    i10 = i11;
                    z6 = true;
                }
            }
            if (z6 && length - i10 == length2) {
                return ignoreCase.regionMatches(true, i10, str, 0, length2);
            }
        }
        return false;
    }

    public String id() {
        return attributes().getIgnoreCase("id");
    }

    public Element lastElementSibling() {
        List<Element> listChildElementsList = parent().childElementsList();
        if (listChildElementsList.size() > 1) {
            return listChildElementsList.get(listChildElementsList.size() - 1);
        }
        return null;
    }

    @Override // org.jsoup.nodes.Node
    void nodelistChanged() {
        super.nodelistChanged();
        this.shadowChildrenRef = null;
    }

    @Override // org.jsoup.nodes.Node
    void outerHtmlHead(Appendable appendable, int i10, Document.OutputSettings outputSettings) throws IOException {
        if (outputSettings.prettyPrint() && ((this.tag.formatAsBlock() || ((parent() != null && parent().tag().formatAsBlock()) || outputSettings.outline())) && (!(appendable instanceof StringBuilder) || ((StringBuilder) appendable).length() > 0))) {
            indent(appendable, i10, outputSettings);
        }
        appendable.append('<').append(tagName());
        Attributes attributes = this.attributes;
        if (attributes != null) {
            attributes.html(appendable, outputSettings);
        }
        if (this.childNodes.isEmpty() && this.tag.isSelfClosing()) {
            if (outputSettings.syntax() == Document.OutputSettings.Syntax.html && this.tag.isEmpty()) {
                appendable.append('>');
                return;
            } else {
                appendable.append(" />");
                return;
            }
        }
        appendable.append('>');
    }

    public Element prepend(String str) {
        Validate.notNull(str);
        List<Node> fragment = Parser.parseFragment(str, this, baseUri());
        addChildren(0, (Node[]) fragment.toArray(new Node[fragment.size()]));
        return this;
    }

    public Element prependChild(Node node) {
        Validate.notNull(node);
        addChildren(0, node);
        return this;
    }

    public Element prependText(String str) {
        Validate.notNull(str);
        prependChild(new TextNode(str));
        return this;
    }

    public Element removeClass(String str) {
        Validate.notNull(str);
        Set<String> setClassNames = classNames();
        setClassNames.remove(str);
        classNames(setClassNames);
        return this;
    }

    public Elements select(String str) {
        return Selector.select(str, this);
    }

    public Element selectFirst(String str) {
        return Selector.selectFirst(str, this);
    }

    @Override // org.jsoup.nodes.Node
    public String toString() {
        return outerHtml();
    }

    public Element toggleClass(String str) {
        Validate.notNull(str);
        Set<String> setClassNames = classNames();
        if (setClassNames.contains(str)) {
            setClassNames.remove(str);
        } else {
            setClassNames.add(str);
        }
        classNames(setClassNames);
        return this;
    }

    private void html(StringBuilder sb) {
        Iterator<Node> it = this.childNodes.iterator();
        while (it.hasNext()) {
            it.next().outerHtml(sb);
        }
    }

    private void ownText(StringBuilder sb) {
        for (Node node : this.childNodes) {
            if (node instanceof TextNode) {
                appendNormalisedText(sb, (TextNode) node);
            } else if (node instanceof Element) {
                appendWhitespaceIfBr((Element) node, sb);
            }
        }
    }

    @Override // org.jsoup.nodes.Node
    public Element after(Node node) {
        return (Element) super.after(node);
    }

    @Override // org.jsoup.nodes.Node
    public Element before(Node node) {
        return (Element) super.before(node);
    }

    public Element classNames(Set<String> set) {
        Validate.notNull(set);
        if (set.isEmpty()) {
            attributes().remove("class");
        } else {
            attributes().put("class", StringUtil.join(set, " "));
        }
        return this;
    }

    public Element text(String str) {
        Validate.notNull(str);
        empty();
        appendChild(new TextNode(str));
        return this;
    }

    public Element val(String str) {
        if (tagName().equals("textarea")) {
            text(str);
        } else {
            attr("value", str);
        }
        return this;
    }

    public Element(Tag tag, String str) {
        this(tag, str, null);
    }

    @Override // org.jsoup.nodes.Node
    public <T extends Appendable> T html(T t5) {
        Iterator<Node> it = this.childNodes.iterator();
        while (it.hasNext()) {
            it.next().outerHtml(t5);
        }
        return t5;
    }

    public Element insertChildren(int i10, Node... nodeArr) {
        Validate.notNull(nodeArr, "Children collection to be inserted must not be null.");
        int iChildNodeSize = childNodeSize();
        if (i10 < 0) {
            i10 += iChildNodeSize + 1;
        }
        Validate.isTrue(i10 >= 0 && i10 <= iChildNodeSize, "Insert position out of bounds.");
        addChildren(i10, nodeArr);
        return this;
    }

    public Element html(String str) {
        empty();
        append(str);
        return this;
    }
}
