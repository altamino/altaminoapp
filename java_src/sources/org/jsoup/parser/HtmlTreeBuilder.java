package org.jsoup.parser;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.Reader;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.List;
import kotlinx.serialization.json.internal.b;
import org.jsoup.helper.StringUtil;
import org.jsoup.helper.Validate;
import org.jsoup.nodes.Attributes;
import org.jsoup.nodes.CDataNode;
import org.jsoup.nodes.Comment;
import org.jsoup.nodes.DataNode;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.FormElement;
import org.jsoup.nodes.Node;
import org.jsoup.nodes.TextNode;
import org.jsoup.select.Elements;

/* JADX INFO: loaded from: classes6.dex */
public class HtmlTreeBuilder extends TreeBuilder {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final int MaxScopeSearchDepth = 100;
    private boolean baseUriSetFromDoc;
    private Element contextElement;
    private Token.EndTag emptyEnd;
    private FormElement formElement;
    private ArrayList<Element> formattingElements;
    private boolean fosterInserts;
    private boolean fragmentParsing;
    private boolean framesetOk;
    private Element headElement;
    private HtmlTreeBuilderState originalState;
    private List<String> pendingTableCharacters;
    private String[] specificScopeTarget = {null};
    private HtmlTreeBuilderState state;
    static final String[] TagsSearchInScope = {"applet", "caption", "html", "marquee", "object", "table", "td", "th"};
    static final String[] TagSearchList = {"ol", "ul"};
    static final String[] TagSearchButton = {"button"};
    static final String[] TagSearchTableScope = {"html", "table"};
    static final String[] TagSearchSelectScope = {"optgroup", "option"};
    static final String[] TagSearchEndTags = {"dd", "dt", "li", "optgroup", "option", "p", "rp", "rt"};
    static final String[] TagSearchSpecial = {"address", "applet", "area", "article", "aside", "base", "basefont", "bgsound", "blockquote", "body", "br", "button", "caption", "center", "col", "colgroup", "command", "dd", "details", "dir", "div", "dl", "dt", "embed", "fieldset", "figcaption", "figure", "footer", "form", TypedValues.AttributesType.S_FRAME, "frameset", "h1", "h2", "h3", "h4", "h5", "h6", "head", "header", "hgroup", "hr", "html", "iframe", "img", "input", "isindex", "li", "link", "listing", "marquee", "menu", "meta", "nav", "noembed", "noframes", "noscript", "object", "ol", "p", "param", "plaintext", "pre", "script", "section", "select", "style", "summary", "table", "tbody", "td", "textarea", "tfoot", "th", "thead", "title", "tr", "ul", "wbr", "xmp"};

    private boolean inSpecificScope(String str, String[] strArr, String[] strArr2) {
        String[] strArr3 = this.specificScopeTarget;
        strArr3[0] = str;
        return inSpecificScope(strArr3, strArr, strArr2);
    }

    void framesetOk(boolean z6) {
        this.framesetOk = z6;
    }

    void generateImpliedEndTags(String str) {
        while (str != null && !currentElement().nodeName().equals(str) && StringUtil.inSorted(currentElement().nodeName(), TagSearchEndTags)) {
            pop();
        }
    }

    String getBaseUri() {
        return this.baseUri;
    }

    Document getDocument() {
        return this.doc;
    }

    FormElement getFormElement() {
        return this.formElement;
    }

    Element getHeadElement() {
        return this.headElement;
    }

    List<String> getPendingTableCharacters() {
        return this.pendingTableCharacters;
    }

    ArrayList<Element> getStack() {
        return this.stack;
    }

    boolean inScope(String[] strArr) {
        return inSpecificScope(strArr, TagsSearchInScope, (String[]) null);
    }

    Element insert(Token.StartTag startTag) {
        if (!startTag.isSelfClosing()) {
            Element element = new Element(Tag.valueOf(startTag.name(), this.settings), this.baseUri, this.settings.normalizeAttributes(startTag.attributes));
            insert(element);
            return element;
        }
        Element elementInsertEmpty = insertEmpty(startTag);
        this.stack.add(elementInsertEmpty);
        this.tokeniser.transition(TokeniserState.Data);
        this.tokeniser.emit(this.emptyEnd.reset().name(elementInsertEmpty.tagName()));
        return elementInsertEmpty;
    }

    boolean isFosterInserts() {
        return this.fosterInserts;
    }

    boolean isFragmentParsing() {
        return this.fragmentParsing;
    }

    void markInsertionMode() {
        this.originalState = this.state;
    }

    HtmlTreeBuilderState originalState() {
        return this.originalState;
    }

    void popStackToClose(String str) {
        for (int size = this.stack.size() - 1; size >= 0; size--) {
            Element element = this.stack.get(size);
            this.stack.remove(size);
            if (element.nodeName().equals(str)) {
                return;
            }
        }
    }

    @Override // org.jsoup.parser.TreeBuilder
    protected boolean process(Token token) {
        this.currentToken = token;
        return this.state.process(token, this);
    }

    void setFormElement(FormElement formElement) {
        this.formElement = formElement;
    }

    void setFosterInserts(boolean z6) {
        this.fosterInserts = z6;
    }

    void setHeadElement(Element element) {
        this.headElement = element;
    }

    void setPendingTableCharacters(List<String> list) {
        this.pendingTableCharacters = list;
    }

    HtmlTreeBuilderState state() {
        return this.state;
    }

    void transition(HtmlTreeBuilderState htmlTreeBuilderState) {
        this.state = htmlTreeBuilderState;
    }

    private void clearStackToContext(String... strArr) {
        for (int size = this.stack.size() - 1; size >= 0; size--) {
            Element element = this.stack.get(size);
            if (StringUtil.in(element.nodeName(), strArr) || element.nodeName().equals("html")) {
                return;
            }
            this.stack.remove(size);
        }
    }

    private void insertNode(Node node) {
        FormElement formElement;
        if (this.stack.size() == 0) {
            this.doc.appendChild(node);
        } else if (isFosterInserts()) {
            insertInFosterParent(node);
        } else {
            currentElement().appendChild(node);
        }
        if (node instanceof Element) {
            Element element = (Element) node;
            if (!element.tag().isFormListed() || (formElement = this.formElement) == null) {
                return;
            }
            formElement.addElement(element);
        }
    }

    Element aboveOnStack(Element element) {
        for (int size = this.stack.size() - 1; size >= 0; size--) {
            if (this.stack.get(size) == element) {
                return this.stack.get(size - 1);
            }
        }
        return null;
    }

    void clearFormattingElementsToLastMarker() {
        while (!this.formattingElements.isEmpty() && removeLastFormattingElement() != null) {
        }
    }

    void clearStackToTableBodyContext() {
        clearStackToContext("tbody", "tfoot", "thead", "template");
    }

    void clearStackToTableContext() {
        clearStackToContext("table");
    }

    void clearStackToTableRowContext() {
        clearStackToContext("tr", "template");
    }

    @Override // org.jsoup.parser.TreeBuilder
    ParseSettings defaultSettings() {
        return ParseSettings.htmlDefault;
    }

    void error(HtmlTreeBuilderState htmlTreeBuilderState) {
        if (this.errors.canAddError()) {
            this.errors.add(new ParseError(this.reader.pos(), "Unexpected token [%s] when in state [%s]", this.currentToken.tokenType(), htmlTreeBuilderState));
        }
    }

    boolean framesetOk() {
        return this.framesetOk;
    }

    Element getActiveFormattingElement(String str) {
        for (int size = this.formattingElements.size() - 1; size >= 0; size--) {
            Element element = this.formattingElements.get(size);
            if (element == null) {
                return null;
            }
            if (element.nodeName().equals(str)) {
                return element;
            }
        }
        return null;
    }

    Element getFromStack(String str) {
        for (int size = this.stack.size() - 1; size >= 0; size--) {
            Element element = this.stack.get(size);
            if (element.nodeName().equals(str)) {
                return element;
            }
        }
        return null;
    }

    boolean inButtonScope(String str) {
        return inScope(str, TagSearchButton);
    }

    boolean inListItemScope(String str) {
        return inScope(str, TagSearchList);
    }

    boolean inScope(String str) {
        return inScope(str, null);
    }

    boolean inSelectScope(String str) {
        for (int size = this.stack.size() - 1; size >= 0; size--) {
            String strNodeName = this.stack.get(size).nodeName();
            if (strNodeName.equals(str)) {
                return true;
            }
            if (!StringUtil.inSorted(strNodeName, TagSearchSelectScope)) {
                return false;
            }
        }
        Validate.fail("Should not be reachable");
        return false;
    }

    boolean inTableScope(String str) {
        return inSpecificScope(str, TagSearchTableScope, (String[]) null);
    }

    void insertInFosterParent(Node node) {
        Element elementAboveOnStack;
        Element fromStack = getFromStack("table");
        boolean z6 = false;
        if (fromStack == null) {
            elementAboveOnStack = this.stack.get(0);
        } else if (fromStack.parent() != null) {
            elementAboveOnStack = fromStack.parent();
            z6 = true;
        } else {
            elementAboveOnStack = aboveOnStack(fromStack);
        }
        if (!z6) {
            elementAboveOnStack.appendChild(node);
        } else {
            Validate.notNull(fromStack);
            fromStack.before(node);
        }
    }

    void insertMarkerToFormattingElements() {
        this.formattingElements.add(null);
    }

    void insertOnStackAfter(Element element, Element element2) {
        int iLastIndexOf = this.stack.lastIndexOf(element);
        Validate.isTrue(iLastIndexOf != -1);
        this.stack.add(iLastIndexOf + 1, element2);
    }

    Element insertStartTag(String str) {
        Element element = new Element(Tag.valueOf(str, this.settings), this.baseUri);
        insert(element);
        return element;
    }

    boolean isInActiveFormattingElements(Element element) {
        return isElementInQueue(this.formattingElements, element);
    }

    Element lastFormattingElement() {
        if (this.formattingElements.size() <= 0) {
            return null;
        }
        ArrayList<Element> arrayList = this.formattingElements;
        return arrayList.get(arrayList.size() - 1);
    }

    void maybeSetBaseUri(Element element) {
        if (this.baseUriSetFromDoc) {
            return;
        }
        String strAbsUrl = element.absUrl("href");
        if (strAbsUrl.length() != 0) {
            this.baseUri = strAbsUrl;
            this.baseUriSetFromDoc = true;
            this.doc.setBaseUri(strAbsUrl);
        }
    }

    void newPendingTableCharacters() {
        this.pendingTableCharacters = new ArrayList();
    }

    boolean onStack(Element element) {
        return isElementInQueue(this.stack, element);
    }

    List<Node> parseFragment(String str, Element element, String str2, ParseErrorList parseErrorList, ParseSettings parseSettings) {
        Element element2;
        this.state = HtmlTreeBuilderState.Initial;
        initialiseParse(new StringReader(str), str2, parseErrorList, parseSettings);
        this.contextElement = element;
        this.fragmentParsing = true;
        if (element != null) {
            if (element.ownerDocument() != null) {
                this.doc.quirksMode(element.ownerDocument().quirksMode());
            }
            String strTagName = element.tagName();
            if (StringUtil.in(strTagName, "title", "textarea")) {
                this.tokeniser.transition(TokeniserState.Rcdata);
            } else if (StringUtil.in(strTagName, "iframe", "noembed", "noframes", "style", "xmp")) {
                this.tokeniser.transition(TokeniserState.Rawtext);
            } else if (strTagName.equals("script")) {
                this.tokeniser.transition(TokeniserState.ScriptData);
            } else if (!strTagName.equals("noscript") && strTagName.equals("plaintext")) {
                this.tokeniser.transition(TokeniserState.Data);
            } else {
                this.tokeniser.transition(TokeniserState.Data);
            }
            element2 = new Element(Tag.valueOf("html", parseSettings), str2);
            this.doc.appendChild(element2);
            this.stack.add(element2);
            resetInsertionMode();
            Elements elementsParents = element.parents();
            elementsParents.add(0, element);
            for (Element element3 : elementsParents) {
                if (element3 instanceof FormElement) {
                    this.formElement = (FormElement) element3;
                    break;
                }
            }
        } else {
            element2 = null;
        }
        runParser();
        return element != null ? element2.childNodes() : this.doc.childNodes();
    }

    Element pop() {
        return this.stack.remove(this.stack.size() - 1);
    }

    void popStackToBefore(String str) {
        for (int size = this.stack.size() - 1; size >= 0 && !this.stack.get(size).nodeName().equals(str); size--) {
            this.stack.remove(size);
        }
    }

    boolean process(Token token, HtmlTreeBuilderState htmlTreeBuilderState) {
        this.currentToken = token;
        return htmlTreeBuilderState.process(token, this);
    }

    void push(Element element) {
        this.stack.add(element);
    }

    void pushActiveFormattingElements(Element element) {
        int i10 = 0;
        for (int size = this.formattingElements.size() - 1; size >= 0; size--) {
            Element element2 = this.formattingElements.get(size);
            if (element2 == null) {
                break;
            }
            if (isSameFormattingElement(element, element2)) {
                i10++;
            }
            if (i10 == 3) {
                this.formattingElements.remove(size);
                break;
            }
        }
        this.formattingElements.add(element);
    }

    void removeFromActiveFormattingElements(Element element) {
        for (int size = this.formattingElements.size() - 1; size >= 0; size--) {
            if (this.formattingElements.get(size) == element) {
                this.formattingElements.remove(size);
                return;
            }
        }
    }

    boolean removeFromStack(Element element) {
        for (int size = this.stack.size() - 1; size >= 0; size--) {
            if (this.stack.get(size) == element) {
                this.stack.remove(size);
                return true;
            }
        }
        return false;
    }

    Element removeLastFormattingElement() {
        int size = this.formattingElements.size();
        if (size > 0) {
            return this.formattingElements.remove(size - 1);
        }
        return null;
    }

    void replaceActiveFormattingElement(Element element, Element element2) {
        replaceInQueue(this.formattingElements, element, element2);
    }

    void replaceOnStack(Element element, Element element2) {
        replaceInQueue(this.stack, element, element2);
    }

    void resetInsertionMode() {
        boolean z6 = false;
        for (int size = this.stack.size() - 1; size >= 0; size--) {
            Element element = this.stack.get(size);
            if (size == 0) {
                element = this.contextElement;
                z6 = true;
            }
            String strNodeName = element.nodeName();
            if ("select".equals(strNodeName)) {
                transition(HtmlTreeBuilderState.InSelect);
                return;
            }
            if ("td".equals(strNodeName) || ("th".equals(strNodeName) && !z6)) {
                transition(HtmlTreeBuilderState.InCell);
                return;
            }
            if ("tr".equals(strNodeName)) {
                transition(HtmlTreeBuilderState.InRow);
                return;
            }
            if ("tbody".equals(strNodeName) || "thead".equals(strNodeName) || "tfoot".equals(strNodeName)) {
                transition(HtmlTreeBuilderState.InTableBody);
                return;
            }
            if ("caption".equals(strNodeName)) {
                transition(HtmlTreeBuilderState.InCaption);
                return;
            }
            if ("colgroup".equals(strNodeName)) {
                transition(HtmlTreeBuilderState.InColumnGroup);
                return;
            }
            if ("table".equals(strNodeName)) {
                transition(HtmlTreeBuilderState.InTable);
                return;
            }
            if ("head".equals(strNodeName)) {
                transition(HtmlTreeBuilderState.InBody);
                return;
            }
            if ("body".equals(strNodeName)) {
                transition(HtmlTreeBuilderState.InBody);
                return;
            }
            if ("frameset".equals(strNodeName)) {
                transition(HtmlTreeBuilderState.InFrameset);
                return;
            } else if ("html".equals(strNodeName)) {
                transition(HtmlTreeBuilderState.BeforeHead);
                return;
            } else {
                if (z6) {
                    transition(HtmlTreeBuilderState.InBody);
                    return;
                }
            }
        }
    }

    public String toString() {
        return "TreeBuilder{currentToken=" + this.currentToken + ", state=" + this.state + ", currentElement=" + currentElement() + b.END_OBJ;
    }

    private boolean inSpecificScope(String[] strArr, String[] strArr2, String[] strArr3) {
        int size = this.stack.size();
        int i10 = size - 1;
        int i11 = i10 > 100 ? size - 101 : 0;
        while (i10 >= i11) {
            String strNodeName = this.stack.get(i10).nodeName();
            if (StringUtil.inSorted(strNodeName, strArr)) {
                return true;
            }
            if (StringUtil.inSorted(strNodeName, strArr2)) {
                return false;
            }
            if (strArr3 != null && StringUtil.inSorted(strNodeName, strArr3)) {
                return false;
            }
            i10--;
        }
        return false;
    }

    private boolean isElementInQueue(ArrayList<Element> arrayList, Element element) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size) == element) {
                return true;
            }
        }
        return false;
    }

    private boolean isSameFormattingElement(Element element, Element element2) {
        if (element.nodeName().equals(element2.nodeName()) && element.attributes().equals(element2.attributes())) {
            return true;
        }
        return false;
    }

    private void replaceInQueue(ArrayList<Element> arrayList, Element element, Element element2) {
        boolean z6;
        int iLastIndexOf = arrayList.lastIndexOf(element);
        if (iLastIndexOf != -1) {
            z6 = true;
        } else {
            z6 = false;
        }
        Validate.isTrue(z6);
        arrayList.set(iLastIndexOf, element2);
    }

    boolean inScope(String str, String[] strArr) {
        return inSpecificScope(str, TagsSearchInScope, strArr);
    }

    @Override // org.jsoup.parser.TreeBuilder
    protected void initialiseParse(Reader reader, String str, ParseErrorList parseErrorList, ParseSettings parseSettings) {
        super.initialiseParse(reader, str, parseErrorList, parseSettings);
        this.state = HtmlTreeBuilderState.Initial;
        this.originalState = null;
        this.baseUriSetFromDoc = false;
        this.headElement = null;
        this.formElement = null;
        this.contextElement = null;
        this.formattingElements = new ArrayList<>();
        this.pendingTableCharacters = new ArrayList();
        this.emptyEnd = new Token.EndTag();
        this.framesetOk = true;
        this.fosterInserts = false;
        this.fragmentParsing = false;
    }

    Element insertEmpty(Token.StartTag startTag) {
        Tag tagValueOf = Tag.valueOf(startTag.name(), this.settings);
        Element element = new Element(tagValueOf, this.baseUri, startTag.attributes);
        insertNode(element);
        if (startTag.isSelfClosing()) {
            if (tagValueOf.isKnownTag()) {
                if (!tagValueOf.isEmpty()) {
                    this.tokeniser.error("Tag cannot be self closing; not a void tag");
                }
            } else {
                tagValueOf.setSelfClosing();
            }
        }
        return element;
    }

    FormElement insertForm(Token.StartTag startTag, boolean z6) {
        FormElement formElement = new FormElement(Tag.valueOf(startTag.name(), this.settings), this.baseUri, startTag.attributes);
        setFormElement(formElement);
        insertNode(formElement);
        if (z6) {
            this.stack.add(formElement);
        }
        return formElement;
    }

    boolean isSpecial(Element element) {
        return StringUtil.inSorted(element.nodeName(), TagSearchSpecial);
    }

    @Override // org.jsoup.parser.TreeBuilder
    public /* bridge */ /* synthetic */ boolean processStartTag(String str, Attributes attributes) {
        return super.processStartTag(str, attributes);
    }

    void reconstructFormattingElements() {
        Element elementLastFormattingElement = lastFormattingElement();
        if (elementLastFormattingElement != null && !onStack(elementLastFormattingElement)) {
            boolean z6 = true;
            int size = this.formattingElements.size() - 1;
            int i10 = size;
            while (i10 != 0) {
                i10--;
                elementLastFormattingElement = this.formattingElements.get(i10);
                if (elementLastFormattingElement == null || onStack(elementLastFormattingElement)) {
                    z6 = false;
                    break;
                }
            }
            while (true) {
                if (!z6) {
                    i10++;
                    elementLastFormattingElement = this.formattingElements.get(i10);
                }
                Validate.notNull(elementLastFormattingElement);
                Element elementInsertStartTag = insertStartTag(elementLastFormattingElement.nodeName());
                elementInsertStartTag.attributes().addAll(elementLastFormattingElement.attributes());
                this.formattingElements.set(i10, elementInsertStartTag);
                if (i10 != size) {
                    z6 = false;
                } else {
                    return;
                }
            }
        }
    }

    void generateImpliedEndTags() {
        generateImpliedEndTags(null);
    }

    void popStackToClose(String... strArr) {
        for (int size = this.stack.size() - 1; size >= 0; size--) {
            Element element = this.stack.get(size);
            this.stack.remove(size);
            if (StringUtil.inSorted(element.nodeName(), strArr)) {
                return;
            }
        }
    }

    void insert(Element element) {
        insertNode(element);
        this.stack.add(element);
    }

    void insert(Token.Comment comment) {
        insertNode(new Comment(comment.getData()));
    }

    void insert(Token.Character character) {
        Node dataNode;
        String strTagName = currentElement().tagName();
        String data = character.getData();
        if (character.isCData()) {
            dataNode = new CDataNode(data);
        } else if (!strTagName.equals("script") && !strTagName.equals("style")) {
            dataNode = new TextNode(data);
        } else {
            dataNode = new DataNode(data);
        }
        currentElement().appendChild(dataNode);
    }
}
