package org.jsoup.parser;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.exoplayer.upstream.CmcdHeadersFactory;
import java.util.ArrayList;
import org.jsoup.helper.StringUtil;
import org.jsoup.nodes.Attribute;
import org.jsoup.nodes.Attributes;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.DocumentType;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.FormElement;
import org.jsoup.nodes.Node;

/* JADX INFO: loaded from: classes4.dex */
enum HtmlTreeBuilderState {
    Initial { // from class: org.jsoup.parser.HtmlTreeBuilderState.1
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (HtmlTreeBuilderState.isWhitespace(token)) {
                return true;
            }
            if (token.isComment()) {
                htmlTreeBuilder.insert(token.asComment());
            } else if (token.isDoctype()) {
                Token.Doctype doctypeAsDoctype = token.asDoctype();
                DocumentType documentType = new DocumentType(htmlTreeBuilder.settings.normalizeTag(doctypeAsDoctype.getName()), doctypeAsDoctype.getPublicIdentifier(), doctypeAsDoctype.getSystemIdentifier());
                documentType.setPubSysKey(doctypeAsDoctype.getPubSysKey());
                htmlTreeBuilder.getDocument().appendChild(documentType);
                if (doctypeAsDoctype.isForceQuirks()) {
                    htmlTreeBuilder.getDocument().quirksMode(Document.QuirksMode.quirks);
                }
                htmlTreeBuilder.transition(HtmlTreeBuilderState.BeforeHtml);
            } else {
                htmlTreeBuilder.transition(HtmlTreeBuilderState.BeforeHtml);
                return htmlTreeBuilder.process(token);
            }
            return true;
        }
    },
    BeforeHtml { // from class: org.jsoup.parser.HtmlTreeBuilderState.2
        private boolean anythingElse(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            htmlTreeBuilder.insertStartTag("html");
            htmlTreeBuilder.transition(HtmlTreeBuilderState.BeforeHead);
            return htmlTreeBuilder.process(token);
        }

        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.isDoctype()) {
                htmlTreeBuilder.error(this);
                return false;
            }
            if (token.isComment()) {
                htmlTreeBuilder.insert(token.asComment());
            } else {
                if (HtmlTreeBuilderState.isWhitespace(token)) {
                    return true;
                }
                if (token.isStartTag() && token.asStartTag().normalName().equals("html")) {
                    htmlTreeBuilder.insert(token.asStartTag());
                    htmlTreeBuilder.transition(HtmlTreeBuilderState.BeforeHead);
                } else {
                    if (token.isEndTag() && StringUtil.in(token.asEndTag().normalName(), "head", "body", "html", "br")) {
                        return anythingElse(token, htmlTreeBuilder);
                    }
                    if (token.isEndTag()) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    return anythingElse(token, htmlTreeBuilder);
                }
            }
            return true;
        }
    },
    BeforeHead { // from class: org.jsoup.parser.HtmlTreeBuilderState.3
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (HtmlTreeBuilderState.isWhitespace(token)) {
                return true;
            }
            if (token.isComment()) {
                htmlTreeBuilder.insert(token.asComment());
            } else {
                if (token.isDoctype()) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                if (token.isStartTag() && token.asStartTag().normalName().equals("html")) {
                    return HtmlTreeBuilderState.InBody.process(token, htmlTreeBuilder);
                }
                if (token.isStartTag() && token.asStartTag().normalName().equals("head")) {
                    htmlTreeBuilder.setHeadElement(htmlTreeBuilder.insert(token.asStartTag()));
                    htmlTreeBuilder.transition(HtmlTreeBuilderState.InHead);
                } else {
                    if (token.isEndTag() && StringUtil.in(token.asEndTag().normalName(), "head", "body", "html", "br")) {
                        htmlTreeBuilder.processStartTag("head");
                        return htmlTreeBuilder.process(token);
                    }
                    if (token.isEndTag()) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    htmlTreeBuilder.processStartTag("head");
                    return htmlTreeBuilder.process(token);
                }
            }
            return true;
        }
    },
    InHead { // from class: org.jsoup.parser.HtmlTreeBuilderState.4
        private boolean anythingElse(Token token, TreeBuilder treeBuilder) {
            treeBuilder.processEndTag("head");
            return treeBuilder.process(token);
        }

        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (HtmlTreeBuilderState.isWhitespace(token)) {
                htmlTreeBuilder.insert(token.asCharacter());
                return true;
            }
            int i10 = AnonymousClass24.$SwitchMap$org$jsoup$parser$Token$TokenType[token.type.ordinal()];
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 != 4) {
                            return anythingElse(token, htmlTreeBuilder);
                        }
                        String strNormalName = token.asEndTag().normalName();
                        if (strNormalName.equals("head")) {
                            htmlTreeBuilder.pop();
                            htmlTreeBuilder.transition(HtmlTreeBuilderState.AfterHead);
                        } else {
                            if (StringUtil.in(strNormalName, "body", "html", "br")) {
                                return anythingElse(token, htmlTreeBuilder);
                            }
                            htmlTreeBuilder.error(this);
                            return false;
                        }
                    } else {
                        Token.StartTag startTagAsStartTag = token.asStartTag();
                        String strNormalName2 = startTagAsStartTag.normalName();
                        if (strNormalName2.equals("html")) {
                            return HtmlTreeBuilderState.InBody.process(token, htmlTreeBuilder);
                        }
                        if (StringUtil.in(strNormalName2, "base", "basefont", "bgsound", "command", "link")) {
                            Element elementInsertEmpty = htmlTreeBuilder.insertEmpty(startTagAsStartTag);
                            if (strNormalName2.equals("base") && elementInsertEmpty.hasAttr("href")) {
                                htmlTreeBuilder.maybeSetBaseUri(elementInsertEmpty);
                            }
                        } else if (strNormalName2.equals("meta")) {
                            htmlTreeBuilder.insertEmpty(startTagAsStartTag);
                        } else if (strNormalName2.equals("title")) {
                            HtmlTreeBuilderState.handleRcData(startTagAsStartTag, htmlTreeBuilder);
                        } else if (StringUtil.in(strNormalName2, "noframes", "style")) {
                            HtmlTreeBuilderState.handleRawtext(startTagAsStartTag, htmlTreeBuilder);
                        } else if (strNormalName2.equals("noscript")) {
                            htmlTreeBuilder.insert(startTagAsStartTag);
                            htmlTreeBuilder.transition(HtmlTreeBuilderState.InHeadNoscript);
                        } else if (strNormalName2.equals("script")) {
                            htmlTreeBuilder.tokeniser.transition(TokeniserState.ScriptData);
                            htmlTreeBuilder.markInsertionMode();
                            htmlTreeBuilder.transition(HtmlTreeBuilderState.Text);
                            htmlTreeBuilder.insert(startTagAsStartTag);
                        } else {
                            if (strNormalName2.equals("head")) {
                                htmlTreeBuilder.error(this);
                                return false;
                            }
                            return anythingElse(token, htmlTreeBuilder);
                        }
                    }
                } else {
                    htmlTreeBuilder.error(this);
                    return false;
                }
            } else {
                htmlTreeBuilder.insert(token.asComment());
            }
            return true;
        }
    },
    InHeadNoscript { // from class: org.jsoup.parser.HtmlTreeBuilderState.5
        private boolean anythingElse(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            htmlTreeBuilder.error(this);
            htmlTreeBuilder.insert(new Token.Character().data(token.toString()));
            return true;
        }

        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.isDoctype()) {
                htmlTreeBuilder.error(this);
                return true;
            }
            if (token.isStartTag() && token.asStartTag().normalName().equals("html")) {
                return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InBody);
            }
            if (token.isEndTag() && token.asEndTag().normalName().equals("noscript")) {
                htmlTreeBuilder.pop();
                htmlTreeBuilder.transition(HtmlTreeBuilderState.InHead);
                return true;
            }
            if (!HtmlTreeBuilderState.isWhitespace(token) && !token.isComment() && (!token.isStartTag() || !StringUtil.in(token.asStartTag().normalName(), "basefont", "bgsound", "link", "meta", "noframes", "style"))) {
                if (token.isEndTag() && token.asEndTag().normalName().equals("br")) {
                    return anythingElse(token, htmlTreeBuilder);
                }
                if ((token.isStartTag() && StringUtil.in(token.asStartTag().normalName(), "head", "noscript")) || token.isEndTag()) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                return anythingElse(token, htmlTreeBuilder);
            }
            return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InHead);
        }
    },
    AfterHead { // from class: org.jsoup.parser.HtmlTreeBuilderState.6
        private boolean anythingElse(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            htmlTreeBuilder.processStartTag("body");
            htmlTreeBuilder.framesetOk(true);
            return htmlTreeBuilder.process(token);
        }

        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (HtmlTreeBuilderState.isWhitespace(token)) {
                htmlTreeBuilder.insert(token.asCharacter());
                return true;
            }
            if (token.isComment()) {
                htmlTreeBuilder.insert(token.asComment());
                return true;
            }
            if (token.isDoctype()) {
                htmlTreeBuilder.error(this);
                return true;
            }
            if (!token.isStartTag()) {
                if (!token.isEndTag()) {
                    anythingElse(token, htmlTreeBuilder);
                    return true;
                }
                if (StringUtil.in(token.asEndTag().normalName(), "body", "html")) {
                    anythingElse(token, htmlTreeBuilder);
                    return true;
                }
                htmlTreeBuilder.error(this);
                return false;
            }
            Token.StartTag startTagAsStartTag = token.asStartTag();
            String strNormalName = startTagAsStartTag.normalName();
            if (strNormalName.equals("html")) {
                return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InBody);
            }
            if (strNormalName.equals("body")) {
                htmlTreeBuilder.insert(startTagAsStartTag);
                htmlTreeBuilder.framesetOk(false);
                htmlTreeBuilder.transition(HtmlTreeBuilderState.InBody);
                return true;
            }
            if (strNormalName.equals("frameset")) {
                htmlTreeBuilder.insert(startTagAsStartTag);
                htmlTreeBuilder.transition(HtmlTreeBuilderState.InFrameset);
                return true;
            }
            if (!StringUtil.in(strNormalName, "base", "basefont", "bgsound", "link", "meta", "noframes", "script", "style", "title")) {
                if (strNormalName.equals("head")) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                anythingElse(token, htmlTreeBuilder);
                return true;
            }
            htmlTreeBuilder.error(this);
            Element headElement = htmlTreeBuilder.getHeadElement();
            htmlTreeBuilder.push(headElement);
            htmlTreeBuilder.process(token, HtmlTreeBuilderState.InHead);
            htmlTreeBuilder.removeFromStack(headElement);
            return true;
        }
    },
    InBody { // from class: org.jsoup.parser.HtmlTreeBuilderState.7
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            Element element;
            int i10 = AnonymousClass24.$SwitchMap$org$jsoup$parser$Token$TokenType[token.type.ordinal()];
            boolean z6 = true;
            if (i10 == 1) {
                htmlTreeBuilder.insert(token.asComment());
            } else {
                if (i10 == 2) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                if (i10 != 3) {
                    if (i10 == 4) {
                        Token.EndTag endTagAsEndTag = token.asEndTag();
                        String strNormalName = endTagAsEndTag.normalName();
                        if (StringUtil.inSorted(strNormalName, Constants.InBodyEndAdoptionFormatters)) {
                            int i11 = 0;
                            while (i11 < 8) {
                                Element activeFormattingElement = htmlTreeBuilder.getActiveFormattingElement(strNormalName);
                                if (activeFormattingElement == null) {
                                    return anyOtherEndTag(token, htmlTreeBuilder);
                                }
                                if (!htmlTreeBuilder.onStack(activeFormattingElement)) {
                                    htmlTreeBuilder.error(this);
                                    htmlTreeBuilder.removeFromActiveFormattingElements(activeFormattingElement);
                                    return z6;
                                }
                                if (!htmlTreeBuilder.inScope(activeFormattingElement.nodeName())) {
                                    htmlTreeBuilder.error(this);
                                    return false;
                                }
                                if (htmlTreeBuilder.currentElement() != activeFormattingElement) {
                                    htmlTreeBuilder.error(this);
                                }
                                ArrayList<Element> stack = htmlTreeBuilder.getStack();
                                int size = stack.size();
                                int i12 = 0;
                                boolean z10 = false;
                                Element element2 = null;
                                while (true) {
                                    if (i12 >= size || i12 >= 64) {
                                        element = null;
                                        break;
                                    }
                                    element = stack.get(i12);
                                    if (element != activeFormattingElement) {
                                        if (z10 && htmlTreeBuilder.isSpecial(element)) {
                                            break;
                                        }
                                    } else {
                                        element2 = stack.get(i12 - 1);
                                        z10 = z6;
                                    }
                                    i12++;
                                }
                                if (element == null) {
                                    htmlTreeBuilder.popStackToClose(activeFormattingElement.nodeName());
                                    htmlTreeBuilder.removeFromActiveFormattingElements(activeFormattingElement);
                                    return z6;
                                }
                                Element elementAboveOnStack = element;
                                Element element3 = elementAboveOnStack;
                                for (int i13 = 0; i13 < 3; i13++) {
                                    if (htmlTreeBuilder.onStack(elementAboveOnStack)) {
                                        elementAboveOnStack = htmlTreeBuilder.aboveOnStack(elementAboveOnStack);
                                    }
                                    if (!htmlTreeBuilder.isInActiveFormattingElements(elementAboveOnStack)) {
                                        htmlTreeBuilder.removeFromStack(elementAboveOnStack);
                                    } else {
                                        if (elementAboveOnStack == activeFormattingElement) {
                                            break;
                                        }
                                        Element element4 = new Element(Tag.valueOf(elementAboveOnStack.nodeName(), ParseSettings.preserveCase), htmlTreeBuilder.getBaseUri());
                                        htmlTreeBuilder.replaceActiveFormattingElement(elementAboveOnStack, element4);
                                        htmlTreeBuilder.replaceOnStack(elementAboveOnStack, element4);
                                        if (element3.parent() != null) {
                                            element3.remove();
                                        }
                                        element4.appendChild(element3);
                                        elementAboveOnStack = element4;
                                        element3 = elementAboveOnStack;
                                    }
                                }
                                if (StringUtil.inSorted(element2.nodeName(), Constants.InBodyEndTableFosters)) {
                                    if (element3.parent() != null) {
                                        element3.remove();
                                    }
                                    htmlTreeBuilder.insertInFosterParent(element3);
                                } else {
                                    if (element3.parent() != null) {
                                        element3.remove();
                                    }
                                    element2.appendChild(element3);
                                }
                                Element element5 = new Element(activeFormattingElement.tag(), htmlTreeBuilder.getBaseUri());
                                element5.attributes().addAll(activeFormattingElement.attributes());
                                for (Node node : (Node[]) element.childNodes().toArray(new Node[element.childNodeSize()])) {
                                    element5.appendChild(node);
                                }
                                element.appendChild(element5);
                                htmlTreeBuilder.removeFromActiveFormattingElements(activeFormattingElement);
                                htmlTreeBuilder.removeFromStack(activeFormattingElement);
                                htmlTreeBuilder.insertOnStackAfter(element, element5);
                                i11++;
                                z6 = true;
                            }
                        } else if (StringUtil.inSorted(strNormalName, Constants.InBodyEndClosers)) {
                            if (!htmlTreeBuilder.inScope(strNormalName)) {
                                htmlTreeBuilder.error(this);
                                return false;
                            }
                            htmlTreeBuilder.generateImpliedEndTags();
                            if (!htmlTreeBuilder.currentElement().nodeName().equals(strNormalName)) {
                                htmlTreeBuilder.error(this);
                            }
                            htmlTreeBuilder.popStackToClose(strNormalName);
                        } else {
                            if (strNormalName.equals("span")) {
                                return anyOtherEndTag(token, htmlTreeBuilder);
                            }
                            if (strNormalName.equals("li")) {
                                if (!htmlTreeBuilder.inListItemScope(strNormalName)) {
                                    htmlTreeBuilder.error(this);
                                    return false;
                                }
                                htmlTreeBuilder.generateImpliedEndTags(strNormalName);
                                if (!htmlTreeBuilder.currentElement().nodeName().equals(strNormalName)) {
                                    htmlTreeBuilder.error(this);
                                }
                                htmlTreeBuilder.popStackToClose(strNormalName);
                            } else if (strNormalName.equals("body")) {
                                if (!htmlTreeBuilder.inScope("body")) {
                                    htmlTreeBuilder.error(this);
                                    return false;
                                }
                                htmlTreeBuilder.transition(HtmlTreeBuilderState.AfterBody);
                            } else if (strNormalName.equals("html")) {
                                if (htmlTreeBuilder.processEndTag("body")) {
                                    return htmlTreeBuilder.process(endTagAsEndTag);
                                }
                            } else if (strNormalName.equals("form")) {
                                FormElement formElement = htmlTreeBuilder.getFormElement();
                                htmlTreeBuilder.setFormElement(null);
                                if (formElement == null || !htmlTreeBuilder.inScope(strNormalName)) {
                                    htmlTreeBuilder.error(this);
                                    return false;
                                }
                                htmlTreeBuilder.generateImpliedEndTags();
                                if (!htmlTreeBuilder.currentElement().nodeName().equals(strNormalName)) {
                                    htmlTreeBuilder.error(this);
                                }
                                htmlTreeBuilder.removeFromStack(formElement);
                            } else if (strNormalName.equals("p")) {
                                if (!htmlTreeBuilder.inButtonScope(strNormalName)) {
                                    htmlTreeBuilder.error(this);
                                    htmlTreeBuilder.processStartTag(strNormalName);
                                    return htmlTreeBuilder.process(endTagAsEndTag);
                                }
                                htmlTreeBuilder.generateImpliedEndTags(strNormalName);
                                if (!htmlTreeBuilder.currentElement().nodeName().equals(strNormalName)) {
                                    htmlTreeBuilder.error(this);
                                }
                                htmlTreeBuilder.popStackToClose(strNormalName);
                            } else if (!StringUtil.inSorted(strNormalName, Constants.DdDt)) {
                                String[] strArr = Constants.Headings;
                                if (StringUtil.inSorted(strNormalName, strArr)) {
                                    if (!htmlTreeBuilder.inScope(strArr)) {
                                        htmlTreeBuilder.error(this);
                                        return false;
                                    }
                                    htmlTreeBuilder.generateImpliedEndTags(strNormalName);
                                    if (!htmlTreeBuilder.currentElement().nodeName().equals(strNormalName)) {
                                        htmlTreeBuilder.error(this);
                                    }
                                    htmlTreeBuilder.popStackToClose(strArr);
                                } else {
                                    if (strNormalName.equals("sarcasm")) {
                                        return anyOtherEndTag(token, htmlTreeBuilder);
                                    }
                                    if (!StringUtil.inSorted(strNormalName, Constants.InBodyStartApplets)) {
                                        if (!strNormalName.equals("br")) {
                                            return anyOtherEndTag(token, htmlTreeBuilder);
                                        }
                                        htmlTreeBuilder.error(this);
                                        htmlTreeBuilder.processStartTag("br");
                                        return false;
                                    }
                                    if (!htmlTreeBuilder.inScope("name")) {
                                        if (!htmlTreeBuilder.inScope(strNormalName)) {
                                            htmlTreeBuilder.error(this);
                                            return false;
                                        }
                                        htmlTreeBuilder.generateImpliedEndTags();
                                        if (!htmlTreeBuilder.currentElement().nodeName().equals(strNormalName)) {
                                            htmlTreeBuilder.error(this);
                                        }
                                        htmlTreeBuilder.popStackToClose(strNormalName);
                                        htmlTreeBuilder.clearFormattingElementsToLastMarker();
                                    }
                                }
                            } else {
                                if (!htmlTreeBuilder.inScope(strNormalName)) {
                                    htmlTreeBuilder.error(this);
                                    return false;
                                }
                                htmlTreeBuilder.generateImpliedEndTags(strNormalName);
                                if (!htmlTreeBuilder.currentElement().nodeName().equals(strNormalName)) {
                                    htmlTreeBuilder.error(this);
                                }
                                htmlTreeBuilder.popStackToClose(strNormalName);
                            }
                        }
                    } else if (i10 == 5) {
                        Token.Character characterAsCharacter = token.asCharacter();
                        if (characterAsCharacter.getData().equals(HtmlTreeBuilderState.nullString)) {
                            htmlTreeBuilder.error(this);
                            return false;
                        }
                        if (htmlTreeBuilder.framesetOk() && HtmlTreeBuilderState.isWhitespace(characterAsCharacter)) {
                            htmlTreeBuilder.reconstructFormattingElements();
                            htmlTreeBuilder.insert(characterAsCharacter);
                        } else {
                            htmlTreeBuilder.reconstructFormattingElements();
                            htmlTreeBuilder.insert(characterAsCharacter);
                            htmlTreeBuilder.framesetOk(false);
                        }
                    }
                    return z6;
                }
                Token.StartTag startTagAsStartTag = token.asStartTag();
                String strNormalName2 = startTagAsStartTag.normalName();
                if (strNormalName2.equals(CmcdHeadersFactory.OBJECT_TYPE_AUDIO_ONLY)) {
                    if (htmlTreeBuilder.getActiveFormattingElement(CmcdHeadersFactory.OBJECT_TYPE_AUDIO_ONLY) != null) {
                        htmlTreeBuilder.error(this);
                        htmlTreeBuilder.processEndTag(CmcdHeadersFactory.OBJECT_TYPE_AUDIO_ONLY);
                        Element fromStack = htmlTreeBuilder.getFromStack(CmcdHeadersFactory.OBJECT_TYPE_AUDIO_ONLY);
                        if (fromStack != null) {
                            htmlTreeBuilder.removeFromActiveFormattingElements(fromStack);
                            htmlTreeBuilder.removeFromStack(fromStack);
                        }
                    }
                    htmlTreeBuilder.reconstructFormattingElements();
                    htmlTreeBuilder.pushActiveFormattingElements(htmlTreeBuilder.insert(startTagAsStartTag));
                } else if (StringUtil.inSorted(strNormalName2, Constants.InBodyStartEmptyFormatters)) {
                    htmlTreeBuilder.reconstructFormattingElements();
                    htmlTreeBuilder.insertEmpty(startTagAsStartTag);
                    htmlTreeBuilder.framesetOk(false);
                } else if (StringUtil.inSorted(strNormalName2, Constants.InBodyStartPClosers)) {
                    if (htmlTreeBuilder.inButtonScope("p")) {
                        htmlTreeBuilder.processEndTag("p");
                    }
                    htmlTreeBuilder.insert(startTagAsStartTag);
                } else if (strNormalName2.equals("span")) {
                    htmlTreeBuilder.reconstructFormattingElements();
                    htmlTreeBuilder.insert(startTagAsStartTag);
                } else if (strNormalName2.equals("li")) {
                    htmlTreeBuilder.framesetOk(false);
                    ArrayList<Element> stack2 = htmlTreeBuilder.getStack();
                    for (int size2 = stack2.size() - 1; size2 > 0; size2--) {
                        Element element6 = stack2.get(size2);
                        if (element6.nodeName().equals("li")) {
                            htmlTreeBuilder.processEndTag("li");
                            break;
                        }
                        if (htmlTreeBuilder.isSpecial(element6) && !StringUtil.inSorted(element6.nodeName(), Constants.InBodyStartLiBreakers)) {
                            break;
                        }
                    }
                    if (htmlTreeBuilder.inButtonScope("p")) {
                        htmlTreeBuilder.processEndTag("p");
                    }
                    htmlTreeBuilder.insert(startTagAsStartTag);
                } else if (strNormalName2.equals("html")) {
                    htmlTreeBuilder.error(this);
                    Element element7 = htmlTreeBuilder.getStack().get(0);
                    for (Attribute attribute : startTagAsStartTag.getAttributes()) {
                        if (!element7.hasAttr(attribute.getKey())) {
                            element7.attributes().put(attribute);
                        }
                    }
                } else {
                    if (StringUtil.inSorted(strNormalName2, Constants.InBodyStartToHead)) {
                        return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InHead);
                    }
                    if (strNormalName2.equals("body")) {
                        htmlTreeBuilder.error(this);
                        ArrayList<Element> stack3 = htmlTreeBuilder.getStack();
                        if (stack3.size() == 1 || (stack3.size() > 2 && !stack3.get(1).nodeName().equals("body"))) {
                            return false;
                        }
                        htmlTreeBuilder.framesetOk(false);
                        Element element8 = stack3.get(1);
                        for (Attribute attribute2 : startTagAsStartTag.getAttributes()) {
                            if (!element8.hasAttr(attribute2.getKey())) {
                                element8.attributes().put(attribute2);
                            }
                        }
                    } else if (strNormalName2.equals("frameset")) {
                        htmlTreeBuilder.error(this);
                        ArrayList<Element> stack4 = htmlTreeBuilder.getStack();
                        if (stack4.size() == 1 || ((stack4.size() > 2 && !stack4.get(1).nodeName().equals("body")) || !htmlTreeBuilder.framesetOk())) {
                            return false;
                        }
                        Element element9 = stack4.get(1);
                        if (element9.parent() != null) {
                            element9.remove();
                        }
                        for (int i14 = 1; stack4.size() > i14; i14 = 1) {
                            stack4.remove(stack4.size() - i14);
                        }
                        htmlTreeBuilder.insert(startTagAsStartTag);
                        htmlTreeBuilder.transition(HtmlTreeBuilderState.InFrameset);
                    } else {
                        String[] strArr2 = Constants.Headings;
                        if (StringUtil.inSorted(strNormalName2, strArr2)) {
                            if (htmlTreeBuilder.inButtonScope("p")) {
                                htmlTreeBuilder.processEndTag("p");
                            }
                            if (StringUtil.inSorted(htmlTreeBuilder.currentElement().nodeName(), strArr2)) {
                                htmlTreeBuilder.error(this);
                                htmlTreeBuilder.pop();
                            }
                            htmlTreeBuilder.insert(startTagAsStartTag);
                        } else if (StringUtil.inSorted(strNormalName2, Constants.InBodyStartPreListing)) {
                            if (htmlTreeBuilder.inButtonScope("p")) {
                                htmlTreeBuilder.processEndTag("p");
                            }
                            htmlTreeBuilder.insert(startTagAsStartTag);
                            htmlTreeBuilder.reader.matchConsume("\n");
                            htmlTreeBuilder.framesetOk(false);
                        } else {
                            if (strNormalName2.equals("form")) {
                                if (htmlTreeBuilder.getFormElement() != null) {
                                    htmlTreeBuilder.error(this);
                                    return false;
                                }
                                if (htmlTreeBuilder.inButtonScope("p")) {
                                    htmlTreeBuilder.processEndTag("p");
                                }
                                htmlTreeBuilder.insertForm(startTagAsStartTag, true);
                                return true;
                            }
                            if (StringUtil.inSorted(strNormalName2, Constants.DdDt)) {
                                htmlTreeBuilder.framesetOk(false);
                                ArrayList<Element> stack5 = htmlTreeBuilder.getStack();
                                for (int size3 = stack5.size() - 1; size3 > 0; size3--) {
                                    Element element10 = stack5.get(size3);
                                    if (StringUtil.inSorted(element10.nodeName(), Constants.DdDt)) {
                                        htmlTreeBuilder.processEndTag(element10.nodeName());
                                        break;
                                    }
                                    if (htmlTreeBuilder.isSpecial(element10) && !StringUtil.inSorted(element10.nodeName(), Constants.InBodyStartLiBreakers)) {
                                        break;
                                    }
                                }
                                if (htmlTreeBuilder.inButtonScope("p")) {
                                    htmlTreeBuilder.processEndTag("p");
                                }
                                htmlTreeBuilder.insert(startTagAsStartTag);
                            } else if (strNormalName2.equals("plaintext")) {
                                if (htmlTreeBuilder.inButtonScope("p")) {
                                    htmlTreeBuilder.processEndTag("p");
                                }
                                htmlTreeBuilder.insert(startTagAsStartTag);
                                htmlTreeBuilder.tokeniser.transition(TokeniserState.PLAINTEXT);
                            } else if (strNormalName2.equals("button")) {
                                if (htmlTreeBuilder.inButtonScope("button")) {
                                    htmlTreeBuilder.error(this);
                                    htmlTreeBuilder.processEndTag("button");
                                    htmlTreeBuilder.process(startTagAsStartTag);
                                } else {
                                    htmlTreeBuilder.reconstructFormattingElements();
                                    htmlTreeBuilder.insert(startTagAsStartTag);
                                    htmlTreeBuilder.framesetOk(false);
                                }
                            } else if (StringUtil.inSorted(strNormalName2, Constants.Formatters)) {
                                htmlTreeBuilder.reconstructFormattingElements();
                                htmlTreeBuilder.pushActiveFormattingElements(htmlTreeBuilder.insert(startTagAsStartTag));
                            } else if (strNormalName2.equals("nobr")) {
                                htmlTreeBuilder.reconstructFormattingElements();
                                if (htmlTreeBuilder.inScope("nobr")) {
                                    htmlTreeBuilder.error(this);
                                    htmlTreeBuilder.processEndTag("nobr");
                                    htmlTreeBuilder.reconstructFormattingElements();
                                }
                                htmlTreeBuilder.pushActiveFormattingElements(htmlTreeBuilder.insert(startTagAsStartTag));
                            } else if (StringUtil.inSorted(strNormalName2, Constants.InBodyStartApplets)) {
                                htmlTreeBuilder.reconstructFormattingElements();
                                htmlTreeBuilder.insert(startTagAsStartTag);
                                htmlTreeBuilder.insertMarkerToFormattingElements();
                                htmlTreeBuilder.framesetOk(false);
                            } else if (strNormalName2.equals("table")) {
                                if (htmlTreeBuilder.getDocument().quirksMode() != Document.QuirksMode.quirks && htmlTreeBuilder.inButtonScope("p")) {
                                    htmlTreeBuilder.processEndTag("p");
                                }
                                htmlTreeBuilder.insert(startTagAsStartTag);
                                htmlTreeBuilder.framesetOk(false);
                                htmlTreeBuilder.transition(HtmlTreeBuilderState.InTable);
                            } else if (strNormalName2.equals("input")) {
                                htmlTreeBuilder.reconstructFormattingElements();
                                if (!htmlTreeBuilder.insertEmpty(startTagAsStartTag).attr("type").equalsIgnoreCase("hidden")) {
                                    htmlTreeBuilder.framesetOk(false);
                                }
                            } else if (StringUtil.inSorted(strNormalName2, Constants.InBodyStartMedia)) {
                                htmlTreeBuilder.insertEmpty(startTagAsStartTag);
                            } else if (strNormalName2.equals("hr")) {
                                if (htmlTreeBuilder.inButtonScope("p")) {
                                    htmlTreeBuilder.processEndTag("p");
                                }
                                htmlTreeBuilder.insertEmpty(startTagAsStartTag);
                                htmlTreeBuilder.framesetOk(false);
                            } else if (strNormalName2.equals("image")) {
                                if (htmlTreeBuilder.getFromStack("svg") == null) {
                                    return htmlTreeBuilder.process(startTagAsStartTag.name("img"));
                                }
                                htmlTreeBuilder.insert(startTagAsStartTag);
                            } else if (strNormalName2.equals("isindex")) {
                                htmlTreeBuilder.error(this);
                                if (htmlTreeBuilder.getFormElement() != null) {
                                    return false;
                                }
                                htmlTreeBuilder.processStartTag("form");
                                if (startTagAsStartTag.attributes.hasKey("action")) {
                                    htmlTreeBuilder.getFormElement().attr("action", startTagAsStartTag.attributes.get("action"));
                                }
                                htmlTreeBuilder.processStartTag("hr");
                                htmlTreeBuilder.processStartTag("label");
                                htmlTreeBuilder.process(new Token.Character().data(startTagAsStartTag.attributes.hasKey("prompt") ? startTagAsStartTag.attributes.get("prompt") : "This is a searchable index. Enter search keywords: "));
                                Attributes attributes = new Attributes();
                                for (Attribute attribute3 : startTagAsStartTag.attributes) {
                                    if (!StringUtil.inSorted(attribute3.getKey(), Constants.InBodyStartInputAttribs)) {
                                        attributes.put(attribute3);
                                    }
                                }
                                attributes.put("name", "isindex");
                                htmlTreeBuilder.processStartTag("input", attributes);
                                htmlTreeBuilder.processEndTag("label");
                                htmlTreeBuilder.processStartTag("hr");
                                htmlTreeBuilder.processEndTag("form");
                            } else if (strNormalName2.equals("textarea")) {
                                htmlTreeBuilder.insert(startTagAsStartTag);
                                htmlTreeBuilder.tokeniser.transition(TokeniserState.Rcdata);
                                htmlTreeBuilder.markInsertionMode();
                                htmlTreeBuilder.framesetOk(false);
                                htmlTreeBuilder.transition(HtmlTreeBuilderState.Text);
                            } else if (strNormalName2.equals("xmp")) {
                                if (htmlTreeBuilder.inButtonScope("p")) {
                                    htmlTreeBuilder.processEndTag("p");
                                }
                                htmlTreeBuilder.reconstructFormattingElements();
                                htmlTreeBuilder.framesetOk(false);
                                HtmlTreeBuilderState.handleRawtext(startTagAsStartTag, htmlTreeBuilder);
                            } else if (strNormalName2.equals("iframe")) {
                                htmlTreeBuilder.framesetOk(false);
                                HtmlTreeBuilderState.handleRawtext(startTagAsStartTag, htmlTreeBuilder);
                            } else if (strNormalName2.equals("noembed")) {
                                HtmlTreeBuilderState.handleRawtext(startTagAsStartTag, htmlTreeBuilder);
                            } else if (strNormalName2.equals("select")) {
                                htmlTreeBuilder.reconstructFormattingElements();
                                htmlTreeBuilder.insert(startTagAsStartTag);
                                htmlTreeBuilder.framesetOk(false);
                                HtmlTreeBuilderState htmlTreeBuilderStateState = htmlTreeBuilder.state();
                                if (htmlTreeBuilderStateState.equals(HtmlTreeBuilderState.InTable) || htmlTreeBuilderStateState.equals(HtmlTreeBuilderState.InCaption) || htmlTreeBuilderStateState.equals(HtmlTreeBuilderState.InTableBody) || htmlTreeBuilderStateState.equals(HtmlTreeBuilderState.InRow) || htmlTreeBuilderStateState.equals(HtmlTreeBuilderState.InCell)) {
                                    htmlTreeBuilder.transition(HtmlTreeBuilderState.InSelectInTable);
                                } else {
                                    htmlTreeBuilder.transition(HtmlTreeBuilderState.InSelect);
                                }
                            } else if (StringUtil.inSorted(strNormalName2, Constants.InBodyStartOptions)) {
                                if (htmlTreeBuilder.currentElement().nodeName().equals("option")) {
                                    htmlTreeBuilder.processEndTag("option");
                                }
                                htmlTreeBuilder.reconstructFormattingElements();
                                htmlTreeBuilder.insert(startTagAsStartTag);
                            } else if (!StringUtil.inSorted(strNormalName2, Constants.InBodyStartRuby)) {
                                if (!strNormalName2.equals("math") && !strNormalName2.equals("svg") && StringUtil.inSorted(strNormalName2, Constants.InBodyStartDrop)) {
                                    htmlTreeBuilder.error(this);
                                    return false;
                                }
                                htmlTreeBuilder.reconstructFormattingElements();
                                htmlTreeBuilder.insert(startTagAsStartTag);
                            } else if (htmlTreeBuilder.inScope("ruby")) {
                                htmlTreeBuilder.generateImpliedEndTags();
                                if (!htmlTreeBuilder.currentElement().nodeName().equals("ruby")) {
                                    htmlTreeBuilder.error(this);
                                    htmlTreeBuilder.popStackToBefore("ruby");
                                }
                                htmlTreeBuilder.insert(startTagAsStartTag);
                            }
                        }
                    }
                }
            }
            return true;
        }

        boolean anyOtherEndTag(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            String strNormalizeTag = htmlTreeBuilder.settings.normalizeTag(token.asEndTag().name());
            ArrayList<Element> stack = htmlTreeBuilder.getStack();
            for (int size = stack.size() - 1; size >= 0; size--) {
                Element element = stack.get(size);
                if (element.nodeName().equals(strNormalizeTag)) {
                    htmlTreeBuilder.generateImpliedEndTags(strNormalizeTag);
                    if (!strNormalizeTag.equals(htmlTreeBuilder.currentElement().nodeName())) {
                        htmlTreeBuilder.error(this);
                    }
                    htmlTreeBuilder.popStackToClose(strNormalizeTag);
                    break;
                }
                if (htmlTreeBuilder.isSpecial(element)) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
            }
            return true;
        }
    },
    Text { // from class: org.jsoup.parser.HtmlTreeBuilderState.8
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.isCharacter()) {
                htmlTreeBuilder.insert(token.asCharacter());
                return true;
            }
            if (token.isEOF()) {
                htmlTreeBuilder.error(this);
                htmlTreeBuilder.pop();
                htmlTreeBuilder.transition(htmlTreeBuilder.originalState());
                return htmlTreeBuilder.process(token);
            }
            if (token.isEndTag()) {
                htmlTreeBuilder.pop();
                htmlTreeBuilder.transition(htmlTreeBuilder.originalState());
                return true;
            }
            return true;
        }
    },
    InTable { // from class: org.jsoup.parser.HtmlTreeBuilderState.9
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.isCharacter()) {
                htmlTreeBuilder.newPendingTableCharacters();
                htmlTreeBuilder.markInsertionMode();
                htmlTreeBuilder.transition(HtmlTreeBuilderState.InTableText);
                return htmlTreeBuilder.process(token);
            }
            if (token.isComment()) {
                htmlTreeBuilder.insert(token.asComment());
                return true;
            }
            if (token.isDoctype()) {
                htmlTreeBuilder.error(this);
                return false;
            }
            if (!token.isStartTag()) {
                if (!token.isEndTag()) {
                    if (!token.isEOF()) {
                        return anythingElse(token, htmlTreeBuilder);
                    }
                    if (htmlTreeBuilder.currentElement().nodeName().equals("html")) {
                        htmlTreeBuilder.error(this);
                    }
                    return true;
                }
                String strNormalName = token.asEndTag().normalName();
                if (!strNormalName.equals("table")) {
                    if (!StringUtil.in(strNormalName, "body", "caption", "col", "colgroup", "html", "tbody", "td", "tfoot", "th", "thead", "tr")) {
                        return anythingElse(token, htmlTreeBuilder);
                    }
                    htmlTreeBuilder.error(this);
                    return false;
                }
                if (!htmlTreeBuilder.inTableScope(strNormalName)) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                htmlTreeBuilder.popStackToClose("table");
                htmlTreeBuilder.resetInsertionMode();
                return true;
            }
            Token.StartTag startTagAsStartTag = token.asStartTag();
            String strNormalName2 = startTagAsStartTag.normalName();
            if (strNormalName2.equals("caption")) {
                htmlTreeBuilder.clearStackToTableContext();
                htmlTreeBuilder.insertMarkerToFormattingElements();
                htmlTreeBuilder.insert(startTagAsStartTag);
                htmlTreeBuilder.transition(HtmlTreeBuilderState.InCaption);
            } else if (strNormalName2.equals("colgroup")) {
                htmlTreeBuilder.clearStackToTableContext();
                htmlTreeBuilder.insert(startTagAsStartTag);
                htmlTreeBuilder.transition(HtmlTreeBuilderState.InColumnGroup);
            } else {
                if (strNormalName2.equals("col")) {
                    htmlTreeBuilder.processStartTag("colgroup");
                    return htmlTreeBuilder.process(token);
                }
                if (StringUtil.in(strNormalName2, "tbody", "tfoot", "thead")) {
                    htmlTreeBuilder.clearStackToTableContext();
                    htmlTreeBuilder.insert(startTagAsStartTag);
                    htmlTreeBuilder.transition(HtmlTreeBuilderState.InTableBody);
                } else {
                    if (StringUtil.in(strNormalName2, "td", "th", "tr")) {
                        htmlTreeBuilder.processStartTag("tbody");
                        return htmlTreeBuilder.process(token);
                    }
                    if (strNormalName2.equals("table")) {
                        htmlTreeBuilder.error(this);
                        if (htmlTreeBuilder.processEndTag("table")) {
                            return htmlTreeBuilder.process(token);
                        }
                    } else {
                        if (StringUtil.in(strNormalName2, "style", "script")) {
                            return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InHead);
                        }
                        if (strNormalName2.equals("input")) {
                            if (!startTagAsStartTag.attributes.get("type").equalsIgnoreCase("hidden")) {
                                return anythingElse(token, htmlTreeBuilder);
                            }
                            htmlTreeBuilder.insertEmpty(startTagAsStartTag);
                        } else {
                            if (!strNormalName2.equals("form")) {
                                return anythingElse(token, htmlTreeBuilder);
                            }
                            htmlTreeBuilder.error(this);
                            if (htmlTreeBuilder.getFormElement() != null) {
                                return false;
                            }
                            htmlTreeBuilder.insertForm(startTagAsStartTag, false);
                        }
                    }
                }
            }
            return true;
        }

        boolean anythingElse(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            htmlTreeBuilder.error(this);
            if (StringUtil.in(htmlTreeBuilder.currentElement().nodeName(), "table", "tbody", "tfoot", "thead", "tr")) {
                htmlTreeBuilder.setFosterInserts(true);
                boolean zProcess = htmlTreeBuilder.process(token, HtmlTreeBuilderState.InBody);
                htmlTreeBuilder.setFosterInserts(false);
                return zProcess;
            }
            return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InBody);
        }
    },
    InTableText { // from class: org.jsoup.parser.HtmlTreeBuilderState.10
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (AnonymousClass24.$SwitchMap$org$jsoup$parser$Token$TokenType[token.type.ordinal()] == 5) {
                Token.Character characterAsCharacter = token.asCharacter();
                if (characterAsCharacter.getData().equals(HtmlTreeBuilderState.nullString)) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                htmlTreeBuilder.getPendingTableCharacters().add(characterAsCharacter.getData());
                return true;
            }
            if (htmlTreeBuilder.getPendingTableCharacters().size() > 0) {
                for (String str : htmlTreeBuilder.getPendingTableCharacters()) {
                    if (HtmlTreeBuilderState.isWhitespace(str)) {
                        htmlTreeBuilder.insert(new Token.Character().data(str));
                    } else {
                        htmlTreeBuilder.error(this);
                        if (StringUtil.in(htmlTreeBuilder.currentElement().nodeName(), "table", "tbody", "tfoot", "thead", "tr")) {
                            htmlTreeBuilder.setFosterInserts(true);
                            htmlTreeBuilder.process(new Token.Character().data(str), HtmlTreeBuilderState.InBody);
                            htmlTreeBuilder.setFosterInserts(false);
                        } else {
                            htmlTreeBuilder.process(new Token.Character().data(str), HtmlTreeBuilderState.InBody);
                        }
                    }
                }
                htmlTreeBuilder.newPendingTableCharacters();
            }
            htmlTreeBuilder.transition(htmlTreeBuilder.originalState());
            return htmlTreeBuilder.process(token);
        }
    },
    InCaption { // from class: org.jsoup.parser.HtmlTreeBuilderState.11
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.isEndTag() && token.asEndTag().normalName().equals("caption")) {
                if (!htmlTreeBuilder.inTableScope(token.asEndTag().normalName())) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                htmlTreeBuilder.generateImpliedEndTags();
                if (!htmlTreeBuilder.currentElement().nodeName().equals("caption")) {
                    htmlTreeBuilder.error(this);
                }
                htmlTreeBuilder.popStackToClose("caption");
                htmlTreeBuilder.clearFormattingElementsToLastMarker();
                htmlTreeBuilder.transition(HtmlTreeBuilderState.InTable);
                return true;
            }
            if ((token.isStartTag() && StringUtil.in(token.asStartTag().normalName(), "caption", "col", "colgroup", "tbody", "td", "tfoot", "th", "thead", "tr")) || (token.isEndTag() && token.asEndTag().normalName().equals("table"))) {
                htmlTreeBuilder.error(this);
                if (htmlTreeBuilder.processEndTag("caption")) {
                    return htmlTreeBuilder.process(token);
                }
                return true;
            }
            if (token.isEndTag() && StringUtil.in(token.asEndTag().normalName(), "body", "col", "colgroup", "html", "tbody", "td", "tfoot", "th", "thead", "tr")) {
                htmlTreeBuilder.error(this);
                return false;
            }
            return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InBody);
        }
    },
    InColumnGroup { // from class: org.jsoup.parser.HtmlTreeBuilderState.12
        private boolean anythingElse(Token token, TreeBuilder treeBuilder) {
            if (treeBuilder.processEndTag("colgroup")) {
                return treeBuilder.process(token);
            }
            return true;
        }

        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (HtmlTreeBuilderState.isWhitespace(token)) {
                htmlTreeBuilder.insert(token.asCharacter());
                return true;
            }
            int i10 = AnonymousClass24.$SwitchMap$org$jsoup$parser$Token$TokenType[token.type.ordinal()];
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 != 4) {
                            if (i10 != 6) {
                                return anythingElse(token, htmlTreeBuilder);
                            }
                            if (htmlTreeBuilder.currentElement().nodeName().equals("html")) {
                                return true;
                            }
                            return anythingElse(token, htmlTreeBuilder);
                        }
                        if (token.asEndTag().normalName.equals("colgroup")) {
                            if (htmlTreeBuilder.currentElement().nodeName().equals("html")) {
                                htmlTreeBuilder.error(this);
                                return false;
                            }
                            htmlTreeBuilder.pop();
                            htmlTreeBuilder.transition(HtmlTreeBuilderState.InTable);
                        } else {
                            return anythingElse(token, htmlTreeBuilder);
                        }
                    } else {
                        Token.StartTag startTagAsStartTag = token.asStartTag();
                        String strNormalName = startTagAsStartTag.normalName();
                        strNormalName.hashCode();
                        if (!strNormalName.equals("col")) {
                            if (!strNormalName.equals("html")) {
                                return anythingElse(token, htmlTreeBuilder);
                            }
                            return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InBody);
                        }
                        htmlTreeBuilder.insertEmpty(startTagAsStartTag);
                    }
                } else {
                    htmlTreeBuilder.error(this);
                }
            } else {
                htmlTreeBuilder.insert(token.asComment());
            }
            return true;
        }
    },
    InTableBody { // from class: org.jsoup.parser.HtmlTreeBuilderState.13
        private boolean anythingElse(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InTable);
        }

        private boolean exitTableBody(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (!htmlTreeBuilder.inTableScope("tbody") && !htmlTreeBuilder.inTableScope("thead") && !htmlTreeBuilder.inScope("tfoot")) {
                htmlTreeBuilder.error(this);
                return false;
            }
            htmlTreeBuilder.clearStackToTableBodyContext();
            htmlTreeBuilder.processEndTag(htmlTreeBuilder.currentElement().nodeName());
            return htmlTreeBuilder.process(token);
        }

        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            int i10 = AnonymousClass24.$SwitchMap$org$jsoup$parser$Token$TokenType[token.type.ordinal()];
            if (i10 == 3) {
                Token.StartTag startTagAsStartTag = token.asStartTag();
                String strNormalName = startTagAsStartTag.normalName();
                if (strNormalName.equals("template")) {
                    htmlTreeBuilder.insert(startTagAsStartTag);
                    return true;
                }
                if (strNormalName.equals("tr")) {
                    htmlTreeBuilder.clearStackToTableBodyContext();
                    htmlTreeBuilder.insert(startTagAsStartTag);
                    htmlTreeBuilder.transition(HtmlTreeBuilderState.InRow);
                    return true;
                }
                if (!StringUtil.in(strNormalName, "th", "td")) {
                    return StringUtil.in(strNormalName, "caption", "col", "colgroup", "tbody", "tfoot", "thead") ? exitTableBody(token, htmlTreeBuilder) : anythingElse(token, htmlTreeBuilder);
                }
                htmlTreeBuilder.error(this);
                htmlTreeBuilder.processStartTag("tr");
                return htmlTreeBuilder.process(startTagAsStartTag);
            }
            if (i10 != 4) {
                return anythingElse(token, htmlTreeBuilder);
            }
            String strNormalName2 = token.asEndTag().normalName();
            if (!StringUtil.in(strNormalName2, "tbody", "tfoot", "thead")) {
                if (strNormalName2.equals("table")) {
                    return exitTableBody(token, htmlTreeBuilder);
                }
                if (!StringUtil.in(strNormalName2, "body", "caption", "col", "colgroup", "html", "td", "th", "tr")) {
                    return anythingElse(token, htmlTreeBuilder);
                }
                htmlTreeBuilder.error(this);
                return false;
            }
            if (!htmlTreeBuilder.inTableScope(strNormalName2)) {
                htmlTreeBuilder.error(this);
                return false;
            }
            htmlTreeBuilder.clearStackToTableBodyContext();
            htmlTreeBuilder.pop();
            htmlTreeBuilder.transition(HtmlTreeBuilderState.InTable);
            return true;
        }
    },
    InRow { // from class: org.jsoup.parser.HtmlTreeBuilderState.14
        private boolean anythingElse(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InTable);
        }

        private boolean handleMissingTr(Token token, TreeBuilder treeBuilder) {
            if (treeBuilder.processEndTag("tr")) {
                return treeBuilder.process(token);
            }
            return false;
        }

        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.isStartTag()) {
                Token.StartTag startTagAsStartTag = token.asStartTag();
                String strNormalName = startTagAsStartTag.normalName();
                if (strNormalName.equals("template")) {
                    htmlTreeBuilder.insert(startTagAsStartTag);
                    return true;
                }
                if (StringUtil.in(strNormalName, "th", "td")) {
                    htmlTreeBuilder.clearStackToTableRowContext();
                    htmlTreeBuilder.insert(startTagAsStartTag);
                    htmlTreeBuilder.transition(HtmlTreeBuilderState.InCell);
                    htmlTreeBuilder.insertMarkerToFormattingElements();
                    return true;
                }
                if (StringUtil.in(strNormalName, "caption", "col", "colgroup", "tbody", "tfoot", "thead", "tr")) {
                    return handleMissingTr(token, htmlTreeBuilder);
                }
                return anythingElse(token, htmlTreeBuilder);
            }
            if (token.isEndTag()) {
                String strNormalName2 = token.asEndTag().normalName();
                if (strNormalName2.equals("tr")) {
                    if (!htmlTreeBuilder.inTableScope(strNormalName2)) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    htmlTreeBuilder.clearStackToTableRowContext();
                    htmlTreeBuilder.pop();
                    htmlTreeBuilder.transition(HtmlTreeBuilderState.InTableBody);
                    return true;
                }
                if (strNormalName2.equals("table")) {
                    return handleMissingTr(token, htmlTreeBuilder);
                }
                if (StringUtil.in(strNormalName2, "tbody", "tfoot", "thead")) {
                    if (!htmlTreeBuilder.inTableScope(strNormalName2)) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    htmlTreeBuilder.processEndTag("tr");
                    return htmlTreeBuilder.process(token);
                }
                if (StringUtil.in(strNormalName2, "body", "caption", "col", "colgroup", "html", "td", "th")) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                return anythingElse(token, htmlTreeBuilder);
            }
            return anythingElse(token, htmlTreeBuilder);
        }
    },
    InCell { // from class: org.jsoup.parser.HtmlTreeBuilderState.15
        private boolean anythingElse(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InBody);
        }

        private void closeCell(HtmlTreeBuilder htmlTreeBuilder) {
            if (htmlTreeBuilder.inTableScope("td")) {
                htmlTreeBuilder.processEndTag("td");
            } else {
                htmlTreeBuilder.processEndTag("th");
            }
        }

        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.isEndTag()) {
                String strNormalName = token.asEndTag().normalName();
                if (StringUtil.in(strNormalName, "td", "th")) {
                    if (!htmlTreeBuilder.inTableScope(strNormalName)) {
                        htmlTreeBuilder.error(this);
                        htmlTreeBuilder.transition(HtmlTreeBuilderState.InRow);
                        return false;
                    }
                    htmlTreeBuilder.generateImpliedEndTags();
                    if (!htmlTreeBuilder.currentElement().nodeName().equals(strNormalName)) {
                        htmlTreeBuilder.error(this);
                    }
                    htmlTreeBuilder.popStackToClose(strNormalName);
                    htmlTreeBuilder.clearFormattingElementsToLastMarker();
                    htmlTreeBuilder.transition(HtmlTreeBuilderState.InRow);
                    return true;
                }
                if (StringUtil.in(strNormalName, "body", "caption", "col", "colgroup", "html")) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                if (StringUtil.in(strNormalName, "table", "tbody", "tfoot", "thead", "tr")) {
                    if (!htmlTreeBuilder.inTableScope(strNormalName)) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    closeCell(htmlTreeBuilder);
                    return htmlTreeBuilder.process(token);
                }
                return anythingElse(token, htmlTreeBuilder);
            }
            if (token.isStartTag() && StringUtil.in(token.asStartTag().normalName(), "caption", "col", "colgroup", "tbody", "td", "tfoot", "th", "thead", "tr")) {
                if (!htmlTreeBuilder.inTableScope("td") && !htmlTreeBuilder.inTableScope("th")) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                closeCell(htmlTreeBuilder);
                return htmlTreeBuilder.process(token);
            }
            return anythingElse(token, htmlTreeBuilder);
        }
    },
    InSelect { // from class: org.jsoup.parser.HtmlTreeBuilderState.16
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            switch (AnonymousClass24.$SwitchMap$org$jsoup$parser$Token$TokenType[token.type.ordinal()]) {
                case 1:
                    htmlTreeBuilder.insert(token.asComment());
                    return true;
                case 2:
                    htmlTreeBuilder.error(this);
                    return false;
                case 3:
                    Token.StartTag startTagAsStartTag = token.asStartTag();
                    String strNormalName = startTagAsStartTag.normalName();
                    if (strNormalName.equals("html")) {
                        return htmlTreeBuilder.process(startTagAsStartTag, HtmlTreeBuilderState.InBody);
                    }
                    if (strNormalName.equals("option")) {
                        if (htmlTreeBuilder.currentElement().nodeName().equals("option")) {
                            htmlTreeBuilder.processEndTag("option");
                        }
                        htmlTreeBuilder.insert(startTagAsStartTag);
                    } else {
                        if (!strNormalName.equals("optgroup")) {
                            if (strNormalName.equals("select")) {
                                htmlTreeBuilder.error(this);
                                return htmlTreeBuilder.processEndTag("select");
                            }
                            if (!StringUtil.in(strNormalName, "input", "keygen", "textarea")) {
                                return strNormalName.equals("script") ? htmlTreeBuilder.process(token, HtmlTreeBuilderState.InHead) : anythingElse(token, htmlTreeBuilder);
                            }
                            htmlTreeBuilder.error(this);
                            if (!htmlTreeBuilder.inSelectScope("select")) {
                                return false;
                            }
                            htmlTreeBuilder.processEndTag("select");
                            return htmlTreeBuilder.process(startTagAsStartTag);
                        }
                        if (htmlTreeBuilder.currentElement().nodeName().equals("option")) {
                            htmlTreeBuilder.processEndTag("option");
                        } else if (htmlTreeBuilder.currentElement().nodeName().equals("optgroup")) {
                            htmlTreeBuilder.processEndTag("optgroup");
                        }
                        htmlTreeBuilder.insert(startTagAsStartTag);
                    }
                    return true;
                case 4:
                    String strNormalName2 = token.asEndTag().normalName();
                    strNormalName2.hashCode();
                    switch (strNormalName2) {
                        case "option":
                            if (htmlTreeBuilder.currentElement().nodeName().equals("option")) {
                                htmlTreeBuilder.pop();
                            } else {
                                htmlTreeBuilder.error(this);
                            }
                            return true;
                        case "select":
                            if (!htmlTreeBuilder.inSelectScope(strNormalName2)) {
                                htmlTreeBuilder.error(this);
                                return false;
                            }
                            htmlTreeBuilder.popStackToClose(strNormalName2);
                            htmlTreeBuilder.resetInsertionMode();
                            return true;
                        case "optgroup":
                            if (htmlTreeBuilder.currentElement().nodeName().equals("option") && htmlTreeBuilder.aboveOnStack(htmlTreeBuilder.currentElement()) != null && htmlTreeBuilder.aboveOnStack(htmlTreeBuilder.currentElement()).nodeName().equals("optgroup")) {
                                htmlTreeBuilder.processEndTag("option");
                            }
                            if (htmlTreeBuilder.currentElement().nodeName().equals("optgroup")) {
                                htmlTreeBuilder.pop();
                            } else {
                                htmlTreeBuilder.error(this);
                            }
                            return true;
                        default:
                            return anythingElse(token, htmlTreeBuilder);
                    }
                case 5:
                    Token.Character characterAsCharacter = token.asCharacter();
                    if (characterAsCharacter.getData().equals(HtmlTreeBuilderState.nullString)) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    htmlTreeBuilder.insert(characterAsCharacter);
                    return true;
                case 6:
                    if (!htmlTreeBuilder.currentElement().nodeName().equals("html")) {
                        htmlTreeBuilder.error(this);
                    }
                    return true;
                default:
                    return anythingElse(token, htmlTreeBuilder);
            }
        }

        private boolean anythingElse(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            htmlTreeBuilder.error(this);
            return false;
        }
    },
    InSelectInTable { // from class: org.jsoup.parser.HtmlTreeBuilderState.17
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.isStartTag() && StringUtil.in(token.asStartTag().normalName(), "caption", "table", "tbody", "tfoot", "thead", "tr", "td", "th")) {
                htmlTreeBuilder.error(this);
                htmlTreeBuilder.processEndTag("select");
                return htmlTreeBuilder.process(token);
            }
            if (token.isEndTag() && StringUtil.in(token.asEndTag().normalName(), "caption", "table", "tbody", "tfoot", "thead", "tr", "td", "th")) {
                htmlTreeBuilder.error(this);
                if (htmlTreeBuilder.inTableScope(token.asEndTag().normalName())) {
                    htmlTreeBuilder.processEndTag("select");
                    return htmlTreeBuilder.process(token);
                }
                return false;
            }
            return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InSelect);
        }
    },
    AfterBody { // from class: org.jsoup.parser.HtmlTreeBuilderState.18
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (HtmlTreeBuilderState.isWhitespace(token)) {
                return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InBody);
            }
            if (token.isComment()) {
                htmlTreeBuilder.insert(token.asComment());
                return true;
            }
            if (token.isDoctype()) {
                htmlTreeBuilder.error(this);
                return false;
            }
            if (token.isStartTag() && token.asStartTag().normalName().equals("html")) {
                return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InBody);
            }
            if (token.isEndTag() && token.asEndTag().normalName().equals("html")) {
                if (htmlTreeBuilder.isFragmentParsing()) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                htmlTreeBuilder.transition(HtmlTreeBuilderState.AfterAfterBody);
                return true;
            }
            if (token.isEOF()) {
                return true;
            }
            htmlTreeBuilder.error(this);
            htmlTreeBuilder.transition(HtmlTreeBuilderState.InBody);
            return htmlTreeBuilder.process(token);
        }
    },
    InFrameset { // from class: org.jsoup.parser.HtmlTreeBuilderState.19
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (HtmlTreeBuilderState.isWhitespace(token)) {
                htmlTreeBuilder.insert(token.asCharacter());
            } else if (token.isComment()) {
                htmlTreeBuilder.insert(token.asComment());
            } else {
                if (token.isDoctype()) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                if (token.isStartTag()) {
                    Token.StartTag startTagAsStartTag = token.asStartTag();
                    String strNormalName = startTagAsStartTag.normalName();
                    strNormalName.hashCode();
                    switch (strNormalName) {
                        case "frameset":
                            htmlTreeBuilder.insert(startTagAsStartTag);
                            break;
                        case "html":
                            return htmlTreeBuilder.process(startTagAsStartTag, HtmlTreeBuilderState.InBody);
                        case "frame":
                            htmlTreeBuilder.insertEmpty(startTagAsStartTag);
                            break;
                        case "noframes":
                            return htmlTreeBuilder.process(startTagAsStartTag, HtmlTreeBuilderState.InHead);
                        default:
                            htmlTreeBuilder.error(this);
                            return false;
                    }
                } else if (token.isEndTag() && token.asEndTag().normalName().equals("frameset")) {
                    if (htmlTreeBuilder.currentElement().nodeName().equals("html")) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    htmlTreeBuilder.pop();
                    if (!htmlTreeBuilder.isFragmentParsing() && !htmlTreeBuilder.currentElement().nodeName().equals("frameset")) {
                        htmlTreeBuilder.transition(HtmlTreeBuilderState.AfterFrameset);
                    }
                } else if (token.isEOF()) {
                    if (!htmlTreeBuilder.currentElement().nodeName().equals("html")) {
                        htmlTreeBuilder.error(this);
                    }
                } else {
                    htmlTreeBuilder.error(this);
                    return false;
                }
            }
            return true;
        }
    },
    AfterFrameset { // from class: org.jsoup.parser.HtmlTreeBuilderState.20
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (HtmlTreeBuilderState.isWhitespace(token)) {
                htmlTreeBuilder.insert(token.asCharacter());
                return true;
            }
            if (token.isComment()) {
                htmlTreeBuilder.insert(token.asComment());
                return true;
            }
            if (token.isDoctype()) {
                htmlTreeBuilder.error(this);
                return false;
            }
            if (token.isStartTag() && token.asStartTag().normalName().equals("html")) {
                return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InBody);
            }
            if (token.isEndTag() && token.asEndTag().normalName().equals("html")) {
                htmlTreeBuilder.transition(HtmlTreeBuilderState.AfterAfterFrameset);
                return true;
            }
            if (token.isStartTag() && token.asStartTag().normalName().equals("noframes")) {
                return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InHead);
            }
            if (token.isEOF()) {
                return true;
            }
            htmlTreeBuilder.error(this);
            return false;
        }
    },
    AfterAfterBody { // from class: org.jsoup.parser.HtmlTreeBuilderState.21
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.isComment()) {
                htmlTreeBuilder.insert(token.asComment());
                return true;
            }
            if (!token.isDoctype() && !HtmlTreeBuilderState.isWhitespace(token) && (!token.isStartTag() || !token.asStartTag().normalName().equals("html"))) {
                if (token.isEOF()) {
                    return true;
                }
                htmlTreeBuilder.error(this);
                htmlTreeBuilder.transition(HtmlTreeBuilderState.InBody);
                return htmlTreeBuilder.process(token);
            }
            return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InBody);
        }
    },
    AfterAfterFrameset { // from class: org.jsoup.parser.HtmlTreeBuilderState.22
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.isComment()) {
                htmlTreeBuilder.insert(token.asComment());
                return true;
            }
            if (!token.isDoctype() && !HtmlTreeBuilderState.isWhitespace(token) && (!token.isStartTag() || !token.asStartTag().normalName().equals("html"))) {
                if (token.isEOF()) {
                    return true;
                }
                if (token.isStartTag() && token.asStartTag().normalName().equals("noframes")) {
                    return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InHead);
                }
                htmlTreeBuilder.error(this);
                return false;
            }
            return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InBody);
        }
    },
    ForeignContent { // from class: org.jsoup.parser.HtmlTreeBuilderState.23
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            return true;
        }
    };

    private static String nullString = String.valueOf((char) 0);

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isWhitespace(Token token) {
        if (token.isCharacter()) {
            return isWhitespace(token.asCharacter().getData());
        }
        return false;
    }

    abstract boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder);

    /* JADX INFO: renamed from: org.jsoup.parser.HtmlTreeBuilderState$24, reason: invalid class name */
    static /* synthetic */ class AnonymousClass24 {
        static final /* synthetic */ int[] $SwitchMap$org$jsoup$parser$Token$TokenType;

        static {
            int[] iArr = new int[Token.TokenType.values().length];
            $SwitchMap$org$jsoup$parser$Token$TokenType = iArr;
            try {
                iArr[Token.TokenType.Comment.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$jsoup$parser$Token$TokenType[Token.TokenType.Doctype.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$jsoup$parser$Token$TokenType[Token.TokenType.StartTag.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$jsoup$parser$Token$TokenType[Token.TokenType.EndTag.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$jsoup$parser$Token$TokenType[Token.TokenType.Character.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$jsoup$parser$Token$TokenType[Token.TokenType.EOF.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    static final class Constants {
        static final String[] InBodyStartToHead = {"base", "basefont", "bgsound", "command", "link", "meta", "noframes", "script", "style", "title"};
        static final String[] InBodyStartPClosers = {"address", "article", "aside", "blockquote", "center", "details", "dir", "div", "dl", "fieldset", "figcaption", "figure", "footer", "header", "hgroup", "menu", "nav", "ol", "p", "section", "summary", "ul"};
        static final String[] Headings = {"h1", "h2", "h3", "h4", "h5", "h6"};
        static final String[] InBodyStartPreListing = {"listing", "pre"};
        static final String[] InBodyStartLiBreakers = {"address", "div", "p"};
        static final String[] DdDt = {"dd", "dt"};
        static final String[] Formatters = {"b", "big", "code", "em", "font", CmcdHeadersFactory.OBJECT_TYPE_INIT_SEGMENT, CmcdHeadersFactory.STREAMING_FORMAT_SS, "small", "strike", "strong", "tt", "u"};
        static final String[] InBodyStartApplets = {"applet", "marquee", "object"};
        static final String[] InBodyStartEmptyFormatters = {"area", "br", "embed", "img", "keygen", "wbr"};
        static final String[] InBodyStartMedia = {"param", "source", "track"};
        static final String[] InBodyStartInputAttribs = {"action", "name", "prompt"};
        static final String[] InBodyStartOptions = {"optgroup", "option"};
        static final String[] InBodyStartRuby = {"rp", "rt"};
        static final String[] InBodyStartDrop = {"caption", "col", "colgroup", TypedValues.AttributesType.S_FRAME, "head", "tbody", "td", "tfoot", "th", "thead", "tr"};
        static final String[] InBodyEndClosers = {"address", "article", "aside", "blockquote", "button", "center", "details", "dir", "div", "dl", "fieldset", "figcaption", "figure", "footer", "header", "hgroup", "listing", "menu", "nav", "ol", "pre", "section", "summary", "ul"};
        static final String[] InBodyEndAdoptionFormatters = {CmcdHeadersFactory.OBJECT_TYPE_AUDIO_ONLY, "b", "big", "code", "em", "font", CmcdHeadersFactory.OBJECT_TYPE_INIT_SEGMENT, "nobr", CmcdHeadersFactory.STREAMING_FORMAT_SS, "small", "strike", "strong", "tt", "u"};
        static final String[] InBodyEndTableFosters = {"table", "tbody", "tfoot", "thead", "tr"};

        Constants() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void handleRawtext(Token.StartTag startTag, HtmlTreeBuilder htmlTreeBuilder) {
        htmlTreeBuilder.tokeniser.transition(TokeniserState.Rawtext);
        htmlTreeBuilder.markInsertionMode();
        htmlTreeBuilder.transition(Text);
        htmlTreeBuilder.insert(startTag);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void handleRcData(Token.StartTag startTag, HtmlTreeBuilder htmlTreeBuilder) {
        htmlTreeBuilder.tokeniser.transition(TokeniserState.Rcdata);
        htmlTreeBuilder.markInsertionMode();
        htmlTreeBuilder.transition(Text);
        htmlTreeBuilder.insert(startTag);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isWhitespace(String str) {
        return StringUtil.isBlank(str);
    }
}
