package org.jsoup.parser;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.narvii.comment.list.CommentListFragment;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import org.jsoup.helper.StringUtil;
import org.jsoup.nodes.Attribute;
import org.jsoup.nodes.Attributes;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.DocumentType;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.FormElement;
import org.jsoup.nodes.Node;
import org.jsoup.parser.Token;

/* loaded from: classes4.dex */
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
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.isDoctype()) {
                htmlTreeBuilder.error(this);
                return false;
            }
            if (!token.isComment()) {
                if (HtmlTreeBuilderState.isWhitespace(token)) {
                    return true;
                }
                if (token.isStartTag() && token.asStartTag().normalName().equals("html")) {
                    htmlTreeBuilder.insert(token.asStartTag());
                    htmlTreeBuilder.transition(HtmlTreeBuilderState.BeforeHead);
                } else {
                    if (token.isEndTag() && StringUtil.in(token.asEndTag().normalName(), TtmlNode.TAG_HEAD, TtmlNode.TAG_BODY, "html", TtmlNode.TAG_BR)) {
                        return anythingElse(token, htmlTreeBuilder);
                    }
                    if (token.isEndTag()) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    return anythingElse(token, htmlTreeBuilder);
                }
            } else {
                htmlTreeBuilder.insert(token.asComment());
            }
            return true;
        }

        private boolean anythingElse(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            htmlTreeBuilder.insertStartTag("html");
            htmlTreeBuilder.transition(HtmlTreeBuilderState.BeforeHead);
            return htmlTreeBuilder.process(token);
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
                if (token.isStartTag() && token.asStartTag().normalName().equals(TtmlNode.TAG_HEAD)) {
                    htmlTreeBuilder.setHeadElement(htmlTreeBuilder.insert(token.asStartTag()));
                    htmlTreeBuilder.transition(HtmlTreeBuilderState.InHead);
                } else {
                    if (token.isEndTag() && StringUtil.in(token.asEndTag().normalName(), TtmlNode.TAG_HEAD, TtmlNode.TAG_BODY, "html", TtmlNode.TAG_BR)) {
                        htmlTreeBuilder.processStartTag(TtmlNode.TAG_HEAD);
                        return htmlTreeBuilder.process(token);
                    }
                    if (token.isEndTag()) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    htmlTreeBuilder.processStartTag(TtmlNode.TAG_HEAD);
                    return htmlTreeBuilder.process(token);
                }
            }
            return true;
        }
    },
    InHead { // from class: org.jsoup.parser.HtmlTreeBuilderState.4
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (HtmlTreeBuilderState.isWhitespace(token)) {
                htmlTreeBuilder.insert(token.asCharacter());
                return true;
            }
            int i = AnonymousClass24.$SwitchMap$org$jsoup$parser$Token$TokenType[token.type.ordinal()];
            if (i == 1) {
                htmlTreeBuilder.insert(token.asComment());
            } else {
                if (i == 2) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                if (i == 3) {
                    Token.StartTag startTagAsStartTag = token.asStartTag();
                    String strNormalName = startTagAsStartTag.normalName();
                    if (strNormalName.equals("html")) {
                        return HtmlTreeBuilderState.InBody.process(token, htmlTreeBuilder);
                    }
                    if (StringUtil.in(strNormalName, "base", "basefont", "bgsound", "command", "link")) {
                        Element elementInsertEmpty = htmlTreeBuilder.insertEmpty(startTagAsStartTag);
                        if (strNormalName.equals("base") && elementInsertEmpty.hasAttr("href")) {
                            htmlTreeBuilder.maybeSetBaseUri(elementInsertEmpty);
                        }
                    } else if (strNormalName.equals("meta")) {
                        htmlTreeBuilder.insertEmpty(startTagAsStartTag);
                    } else if (strNormalName.equals("title")) {
                        HtmlTreeBuilderState.handleRcData(startTagAsStartTag, htmlTreeBuilder);
                    } else if (StringUtil.in(strNormalName, "noframes", TtmlNode.TAG_STYLE)) {
                        HtmlTreeBuilderState.handleRawtext(startTagAsStartTag, htmlTreeBuilder);
                    } else if (strNormalName.equals("noscript")) {
                        htmlTreeBuilder.insert(startTagAsStartTag);
                        htmlTreeBuilder.transition(HtmlTreeBuilderState.InHeadNoscript);
                    } else if (strNormalName.equals("script")) {
                        htmlTreeBuilder.tokeniser.transition(TokeniserState.ScriptData);
                        htmlTreeBuilder.markInsertionMode();
                        htmlTreeBuilder.transition(HtmlTreeBuilderState.Text);
                        htmlTreeBuilder.insert(startTagAsStartTag);
                    } else {
                        if (strNormalName.equals(TtmlNode.TAG_HEAD)) {
                            htmlTreeBuilder.error(this);
                            return false;
                        }
                        return anythingElse(token, htmlTreeBuilder);
                    }
                } else if (i == 4) {
                    String strNormalName2 = token.asEndTag().normalName();
                    if (strNormalName2.equals(TtmlNode.TAG_HEAD)) {
                        htmlTreeBuilder.pop();
                        htmlTreeBuilder.transition(HtmlTreeBuilderState.AfterHead);
                    } else {
                        if (StringUtil.in(strNormalName2, TtmlNode.TAG_BODY, "html", TtmlNode.TAG_BR)) {
                            return anythingElse(token, htmlTreeBuilder);
                        }
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                } else {
                    return anythingElse(token, htmlTreeBuilder);
                }
            }
            return true;
        }

        private boolean anythingElse(Token token, TreeBuilder treeBuilder) {
            treeBuilder.processEndTag(TtmlNode.TAG_HEAD);
            return treeBuilder.process(token);
        }
    },
    InHeadNoscript { // from class: org.jsoup.parser.HtmlTreeBuilderState.5
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.isDoctype()) {
                htmlTreeBuilder.error(this);
            } else {
                if (token.isStartTag() && token.asStartTag().normalName().equals("html")) {
                    return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InBody);
                }
                if (!token.isEndTag() || !token.asEndTag().normalName().equals("noscript")) {
                    if (HtmlTreeBuilderState.isWhitespace(token) || token.isComment() || (token.isStartTag() && StringUtil.in(token.asStartTag().normalName(), "basefont", "bgsound", "link", "meta", "noframes", TtmlNode.TAG_STYLE))) {
                        return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InHead);
                    }
                    if (token.isEndTag() && token.asEndTag().normalName().equals(TtmlNode.TAG_BR)) {
                        return anythingElse(token, htmlTreeBuilder);
                    }
                    if ((token.isStartTag() && StringUtil.in(token.asStartTag().normalName(), TtmlNode.TAG_HEAD, "noscript")) || token.isEndTag()) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    return anythingElse(token, htmlTreeBuilder);
                }
                htmlTreeBuilder.pop();
                htmlTreeBuilder.transition(HtmlTreeBuilderState.InHead);
            }
            return true;
        }

        private boolean anythingElse(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            htmlTreeBuilder.error(this);
            htmlTreeBuilder.insert(new Token.Character().data(token.toString()));
            return true;
        }
    },
    AfterHead { // from class: org.jsoup.parser.HtmlTreeBuilderState.6
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (HtmlTreeBuilderState.isWhitespace(token)) {
                htmlTreeBuilder.insert(token.asCharacter());
            } else if (token.isComment()) {
                htmlTreeBuilder.insert(token.asComment());
            } else if (token.isDoctype()) {
                htmlTreeBuilder.error(this);
            } else if (token.isStartTag()) {
                Token.StartTag startTagAsStartTag = token.asStartTag();
                String strNormalName = startTagAsStartTag.normalName();
                if (strNormalName.equals("html")) {
                    return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InBody);
                }
                if (strNormalName.equals(TtmlNode.TAG_BODY)) {
                    htmlTreeBuilder.insert(startTagAsStartTag);
                    htmlTreeBuilder.framesetOk(false);
                    htmlTreeBuilder.transition(HtmlTreeBuilderState.InBody);
                } else if (strNormalName.equals("frameset")) {
                    htmlTreeBuilder.insert(startTagAsStartTag);
                    htmlTreeBuilder.transition(HtmlTreeBuilderState.InFrameset);
                } else if (StringUtil.in(strNormalName, "base", "basefont", "bgsound", "link", "meta", "noframes", "script", TtmlNode.TAG_STYLE, "title")) {
                    htmlTreeBuilder.error(this);
                    Element headElement = htmlTreeBuilder.getHeadElement();
                    htmlTreeBuilder.push(headElement);
                    htmlTreeBuilder.process(token, HtmlTreeBuilderState.InHead);
                    htmlTreeBuilder.removeFromStack(headElement);
                } else {
                    if (strNormalName.equals(TtmlNode.TAG_HEAD)) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    anythingElse(token, htmlTreeBuilder);
                }
            } else if (!token.isEndTag() || StringUtil.in(token.asEndTag().normalName(), TtmlNode.TAG_BODY, "html")) {
                anythingElse(token, htmlTreeBuilder);
            } else {
                htmlTreeBuilder.error(this);
                return false;
            }
            return true;
        }

        private boolean anythingElse(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            htmlTreeBuilder.processStartTag(TtmlNode.TAG_BODY);
            htmlTreeBuilder.framesetOk(true);
            return htmlTreeBuilder.process(token);
        }
    },
    InBody { // from class: org.jsoup.parser.HtmlTreeBuilderState.7
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) throws IOException {
            Element element;
            int i = AnonymousClass24.$SwitchMap$org$jsoup$parser$Token$TokenType[token.type.ordinal()];
            boolean z = true;
            if (i == 1) {
                htmlTreeBuilder.insert(token.asComment());
            } else {
                if (i == 2) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                int i2 = 3;
                if (i == 3) {
                    Token.StartTag startTagAsStartTag = token.asStartTag();
                    String strNormalName = startTagAsStartTag.normalName();
                    if (strNormalName.equals("a")) {
                        if (htmlTreeBuilder.getActiveFormattingElement("a") != null) {
                            htmlTreeBuilder.error(this);
                            htmlTreeBuilder.processEndTag("a");
                            Element fromStack = htmlTreeBuilder.getFromStack("a");
                            if (fromStack != null) {
                                htmlTreeBuilder.removeFromActiveFormattingElements(fromStack);
                                htmlTreeBuilder.removeFromStack(fromStack);
                            }
                        }
                        htmlTreeBuilder.reconstructFormattingElements();
                        htmlTreeBuilder.pushActiveFormattingElements(htmlTreeBuilder.insert(startTagAsStartTag));
                    } else if (StringUtil.inSorted(strNormalName, Constants.InBodyStartEmptyFormatters)) {
                        htmlTreeBuilder.reconstructFormattingElements();
                        htmlTreeBuilder.insertEmpty(startTagAsStartTag);
                        htmlTreeBuilder.framesetOk(false);
                    } else if (StringUtil.inSorted(strNormalName, Constants.InBodyStartPClosers)) {
                        if (htmlTreeBuilder.inButtonScope(TtmlNode.TAG_P)) {
                            htmlTreeBuilder.processEndTag(TtmlNode.TAG_P);
                        }
                        htmlTreeBuilder.insert(startTagAsStartTag);
                    } else if (strNormalName.equals(TtmlNode.TAG_SPAN)) {
                        htmlTreeBuilder.reconstructFormattingElements();
                        htmlTreeBuilder.insert(startTagAsStartTag);
                    } else if (strNormalName.equals("li")) {
                        htmlTreeBuilder.framesetOk(false);
                        ArrayList<Element> stack = htmlTreeBuilder.getStack();
                        int size = stack.size() - 1;
                        while (true) {
                            if (size <= 0) {
                                break;
                            }
                            Element element2 = stack.get(size);
                            if (element2.nodeName().equals("li")) {
                                htmlTreeBuilder.processEndTag("li");
                                break;
                            }
                            if (htmlTreeBuilder.isSpecial(element2) && !StringUtil.inSorted(element2.nodeName(), Constants.InBodyStartLiBreakers)) {
                                break;
                            }
                            size--;
                        }
                        if (htmlTreeBuilder.inButtonScope(TtmlNode.TAG_P)) {
                            htmlTreeBuilder.processEndTag(TtmlNode.TAG_P);
                        }
                        htmlTreeBuilder.insert(startTagAsStartTag);
                    } else if (strNormalName.equals("html")) {
                        htmlTreeBuilder.error(this);
                        Element element3 = htmlTreeBuilder.getStack().get(0);
                        Iterator<Attribute> it = startTagAsStartTag.getAttributes().iterator();
                        while (it.hasNext()) {
                            Attribute next = it.next();
                            if (!element3.hasAttr(next.getKey())) {
                                element3.attributes().put(next);
                            }
                        }
                    } else {
                        if (StringUtil.inSorted(strNormalName, Constants.InBodyStartToHead)) {
                            return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InHead);
                        }
                        if (strNormalName.equals(TtmlNode.TAG_BODY)) {
                            htmlTreeBuilder.error(this);
                            ArrayList<Element> stack2 = htmlTreeBuilder.getStack();
                            if (stack2.size() == 1 || (stack2.size() > 2 && !stack2.get(1).nodeName().equals(TtmlNode.TAG_BODY))) {
                                return false;
                            }
                            htmlTreeBuilder.framesetOk(false);
                            Element element4 = stack2.get(1);
                            Iterator<Attribute> it2 = startTagAsStartTag.getAttributes().iterator();
                            while (it2.hasNext()) {
                                Attribute next2 = it2.next();
                                if (!element4.hasAttr(next2.getKey())) {
                                    element4.attributes().put(next2);
                                }
                            }
                        } else if (strNormalName.equals("frameset")) {
                            htmlTreeBuilder.error(this);
                            ArrayList<Element> stack3 = htmlTreeBuilder.getStack();
                            if (stack3.size() == 1 || ((stack3.size() > 2 && !stack3.get(1).nodeName().equals(TtmlNode.TAG_BODY)) || !htmlTreeBuilder.framesetOk())) {
                                return false;
                            }
                            Element element5 = stack3.get(1);
                            if (element5.parent() != null) {
                                element5.remove();
                            }
                            for (int i3 = 1; stack3.size() > i3; i3 = 1) {
                                stack3.remove(stack3.size() - i3);
                            }
                            htmlTreeBuilder.insert(startTagAsStartTag);
                            htmlTreeBuilder.transition(HtmlTreeBuilderState.InFrameset);
                        } else if (StringUtil.inSorted(strNormalName, Constants.Headings)) {
                            if (htmlTreeBuilder.inButtonScope(TtmlNode.TAG_P)) {
                                htmlTreeBuilder.processEndTag(TtmlNode.TAG_P);
                            }
                            if (StringUtil.inSorted(htmlTreeBuilder.currentElement().nodeName(), Constants.Headings)) {
                                htmlTreeBuilder.error(this);
                                htmlTreeBuilder.pop();
                            }
                            htmlTreeBuilder.insert(startTagAsStartTag);
                        } else if (StringUtil.inSorted(strNormalName, Constants.InBodyStartPreListing)) {
                            if (htmlTreeBuilder.inButtonScope(TtmlNode.TAG_P)) {
                                htmlTreeBuilder.processEndTag(TtmlNode.TAG_P);
                            }
                            htmlTreeBuilder.insert(startTagAsStartTag);
                            htmlTreeBuilder.reader.matchConsume("\n");
                            htmlTreeBuilder.framesetOk(false);
                        } else {
                            if (strNormalName.equals("form")) {
                                if (htmlTreeBuilder.getFormElement() != null) {
                                    htmlTreeBuilder.error(this);
                                    return false;
                                }
                                if (htmlTreeBuilder.inButtonScope(TtmlNode.TAG_P)) {
                                    htmlTreeBuilder.processEndTag(TtmlNode.TAG_P);
                                }
                                htmlTreeBuilder.insertForm(startTagAsStartTag, true);
                                return true;
                            }
                            if (StringUtil.inSorted(strNormalName, Constants.DdDt)) {
                                htmlTreeBuilder.framesetOk(false);
                                ArrayList<Element> stack4 = htmlTreeBuilder.getStack();
                                int size2 = stack4.size() - 1;
                                while (true) {
                                    if (size2 <= 0) {
                                        break;
                                    }
                                    Element element6 = stack4.get(size2);
                                    if (StringUtil.inSorted(element6.nodeName(), Constants.DdDt)) {
                                        htmlTreeBuilder.processEndTag(element6.nodeName());
                                        break;
                                    }
                                    if (htmlTreeBuilder.isSpecial(element6) && !StringUtil.inSorted(element6.nodeName(), Constants.InBodyStartLiBreakers)) {
                                        break;
                                    }
                                    size2--;
                                }
                                if (htmlTreeBuilder.inButtonScope(TtmlNode.TAG_P)) {
                                    htmlTreeBuilder.processEndTag(TtmlNode.TAG_P);
                                }
                                htmlTreeBuilder.insert(startTagAsStartTag);
                            } else if (strNormalName.equals("plaintext")) {
                                if (htmlTreeBuilder.inButtonScope(TtmlNode.TAG_P)) {
                                    htmlTreeBuilder.processEndTag(TtmlNode.TAG_P);
                                }
                                htmlTreeBuilder.insert(startTagAsStartTag);
                                htmlTreeBuilder.tokeniser.transition(TokeniserState.PLAINTEXT);
                            } else if (strNormalName.equals("button")) {
                                if (htmlTreeBuilder.inButtonScope("button")) {
                                    htmlTreeBuilder.error(this);
                                    htmlTreeBuilder.processEndTag("button");
                                    htmlTreeBuilder.process(startTagAsStartTag);
                                } else {
                                    htmlTreeBuilder.reconstructFormattingElements();
                                    htmlTreeBuilder.insert(startTagAsStartTag);
                                    htmlTreeBuilder.framesetOk(false);
                                }
                            } else if (StringUtil.inSorted(strNormalName, Constants.Formatters)) {
                                htmlTreeBuilder.reconstructFormattingElements();
                                htmlTreeBuilder.pushActiveFormattingElements(htmlTreeBuilder.insert(startTagAsStartTag));
                            } else if (strNormalName.equals("nobr")) {
                                htmlTreeBuilder.reconstructFormattingElements();
                                if (htmlTreeBuilder.inScope("nobr")) {
                                    htmlTreeBuilder.error(this);
                                    htmlTreeBuilder.processEndTag("nobr");
                                    htmlTreeBuilder.reconstructFormattingElements();
                                }
                                htmlTreeBuilder.pushActiveFormattingElements(htmlTreeBuilder.insert(startTagAsStartTag));
                            } else if (StringUtil.inSorted(strNormalName, Constants.InBodyStartApplets)) {
                                htmlTreeBuilder.reconstructFormattingElements();
                                htmlTreeBuilder.insert(startTagAsStartTag);
                                htmlTreeBuilder.insertMarkerToFormattingElements();
                                htmlTreeBuilder.framesetOk(false);
                            } else if (strNormalName.equals("table")) {
                                if (htmlTreeBuilder.getDocument().quirksMode() != Document.QuirksMode.quirks && htmlTreeBuilder.inButtonScope(TtmlNode.TAG_P)) {
                                    htmlTreeBuilder.processEndTag(TtmlNode.TAG_P);
                                }
                                htmlTreeBuilder.insert(startTagAsStartTag);
                                htmlTreeBuilder.framesetOk(false);
                                htmlTreeBuilder.transition(HtmlTreeBuilderState.InTable);
                            } else if (strNormalName.equals("input")) {
                                htmlTreeBuilder.reconstructFormattingElements();
                                if (!htmlTreeBuilder.insertEmpty(startTagAsStartTag).attr("type").equalsIgnoreCase("hidden")) {
                                    htmlTreeBuilder.framesetOk(false);
                                }
                            } else if (StringUtil.inSorted(strNormalName, Constants.InBodyStartMedia)) {
                                htmlTreeBuilder.insertEmpty(startTagAsStartTag);
                            } else if (strNormalName.equals("hr")) {
                                if (htmlTreeBuilder.inButtonScope(TtmlNode.TAG_P)) {
                                    htmlTreeBuilder.processEndTag(TtmlNode.TAG_P);
                                }
                                htmlTreeBuilder.insertEmpty(startTagAsStartTag);
                                htmlTreeBuilder.framesetOk(false);
                            } else if (strNormalName.equals("image")) {
                                if (htmlTreeBuilder.getFromStack("svg") == null) {
                                    return htmlTreeBuilder.process(startTagAsStartTag.name("img"));
                                }
                                htmlTreeBuilder.insert(startTagAsStartTag);
                            } else if (strNormalName.equals("isindex")) {
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
                                Iterator<Attribute> it3 = startTagAsStartTag.attributes.iterator();
                                while (it3.hasNext()) {
                                    Attribute next3 = it3.next();
                                    if (!StringUtil.inSorted(next3.getKey(), Constants.InBodyStartInputAttribs)) {
                                        attributes.put(next3);
                                    }
                                }
                                attributes.put(AppMeasurementSdk.ConditionalUserProperty.NAME, "isindex");
                                htmlTreeBuilder.processStartTag("input", attributes);
                                htmlTreeBuilder.processEndTag("label");
                                htmlTreeBuilder.processStartTag("hr");
                                htmlTreeBuilder.processEndTag("form");
                            } else if (strNormalName.equals("textarea")) {
                                htmlTreeBuilder.insert(startTagAsStartTag);
                                htmlTreeBuilder.tokeniser.transition(TokeniserState.Rcdata);
                                htmlTreeBuilder.markInsertionMode();
                                htmlTreeBuilder.framesetOk(false);
                                htmlTreeBuilder.transition(HtmlTreeBuilderState.Text);
                            } else if (strNormalName.equals("xmp")) {
                                if (htmlTreeBuilder.inButtonScope(TtmlNode.TAG_P)) {
                                    htmlTreeBuilder.processEndTag(TtmlNode.TAG_P);
                                }
                                htmlTreeBuilder.reconstructFormattingElements();
                                htmlTreeBuilder.framesetOk(false);
                                HtmlTreeBuilderState.handleRawtext(startTagAsStartTag, htmlTreeBuilder);
                            } else if (strNormalName.equals("iframe")) {
                                htmlTreeBuilder.framesetOk(false);
                                HtmlTreeBuilderState.handleRawtext(startTagAsStartTag, htmlTreeBuilder);
                            } else if (strNormalName.equals("noembed")) {
                                HtmlTreeBuilderState.handleRawtext(startTagAsStartTag, htmlTreeBuilder);
                            } else if (strNormalName.equals("select")) {
                                htmlTreeBuilder.reconstructFormattingElements();
                                htmlTreeBuilder.insert(startTagAsStartTag);
                                htmlTreeBuilder.framesetOk(false);
                                HtmlTreeBuilderState htmlTreeBuilderStateState = htmlTreeBuilder.state();
                                if (htmlTreeBuilderStateState.equals(HtmlTreeBuilderState.InTable) || htmlTreeBuilderStateState.equals(HtmlTreeBuilderState.InCaption) || htmlTreeBuilderStateState.equals(HtmlTreeBuilderState.InTableBody) || htmlTreeBuilderStateState.equals(HtmlTreeBuilderState.InRow) || htmlTreeBuilderStateState.equals(HtmlTreeBuilderState.InCell)) {
                                    htmlTreeBuilder.transition(HtmlTreeBuilderState.InSelectInTable);
                                } else {
                                    htmlTreeBuilder.transition(HtmlTreeBuilderState.InSelect);
                                }
                            } else if (StringUtil.inSorted(strNormalName, Constants.InBodyStartOptions)) {
                                if (htmlTreeBuilder.currentElement().nodeName().equals("option")) {
                                    htmlTreeBuilder.processEndTag("option");
                                }
                                htmlTreeBuilder.reconstructFormattingElements();
                                htmlTreeBuilder.insert(startTagAsStartTag);
                            } else if (StringUtil.inSorted(strNormalName, Constants.InBodyStartRuby)) {
                                if (htmlTreeBuilder.inScope("ruby")) {
                                    htmlTreeBuilder.generateImpliedEndTags();
                                    if (!htmlTreeBuilder.currentElement().nodeName().equals("ruby")) {
                                        htmlTreeBuilder.error(this);
                                        htmlTreeBuilder.popStackToBefore("ruby");
                                    }
                                    htmlTreeBuilder.insert(startTagAsStartTag);
                                }
                            } else {
                                if (!strNormalName.equals("math") && !strNormalName.equals("svg") && StringUtil.inSorted(strNormalName, Constants.InBodyStartDrop)) {
                                    htmlTreeBuilder.error(this);
                                    return false;
                                }
                                htmlTreeBuilder.reconstructFormattingElements();
                                htmlTreeBuilder.insert(startTagAsStartTag);
                            }
                        }
                    }
                } else if (i == 4) {
                    Token.EndTag endTagAsEndTag = token.asEndTag();
                    String strNormalName2 = endTagAsEndTag.normalName();
                    if (StringUtil.inSorted(strNormalName2, Constants.InBodyEndAdoptionFormatters)) {
                        int i4 = 0;
                        while (i4 < 8) {
                            Element activeFormattingElement = htmlTreeBuilder.getActiveFormattingElement(strNormalName2);
                            if (activeFormattingElement == null) {
                                return anyOtherEndTag(token, htmlTreeBuilder);
                            }
                            if (!htmlTreeBuilder.onStack(activeFormattingElement)) {
                                htmlTreeBuilder.error(this);
                                htmlTreeBuilder.removeFromActiveFormattingElements(activeFormattingElement);
                                return z;
                            }
                            if (!htmlTreeBuilder.inScope(activeFormattingElement.nodeName())) {
                                htmlTreeBuilder.error(this);
                                return false;
                            }
                            if (htmlTreeBuilder.currentElement() != activeFormattingElement) {
                                htmlTreeBuilder.error(this);
                            }
                            ArrayList<Element> stack5 = htmlTreeBuilder.getStack();
                            int size3 = stack5.size();
                            Element element7 = null;
                            boolean z2 = false;
                            for (int i5 = 0; i5 < size3 && i5 < 64; i5++) {
                                element = stack5.get(i5);
                                if (element == activeFormattingElement) {
                                    element7 = stack5.get(i5 - 1);
                                    z2 = true;
                                } else if (z2 && htmlTreeBuilder.isSpecial(element)) {
                                    break;
                                }
                            }
                            element = null;
                            if (element == null) {
                                htmlTreeBuilder.popStackToClose(activeFormattingElement.nodeName());
                                htmlTreeBuilder.removeFromActiveFormattingElements(activeFormattingElement);
                                return z;
                            }
                            Element elementAboveOnStack = element;
                            Element element8 = elementAboveOnStack;
                            int i6 = 0;
                            while (i6 < i2) {
                                if (htmlTreeBuilder.onStack(elementAboveOnStack)) {
                                    elementAboveOnStack = htmlTreeBuilder.aboveOnStack(elementAboveOnStack);
                                }
                                if (!htmlTreeBuilder.isInActiveFormattingElements(elementAboveOnStack)) {
                                    htmlTreeBuilder.removeFromStack(elementAboveOnStack);
                                } else {
                                    if (elementAboveOnStack == activeFormattingElement) {
                                        break;
                                    }
                                    Element element9 = new Element(Tag.valueOf(elementAboveOnStack.nodeName(), ParseSettings.preserveCase), htmlTreeBuilder.getBaseUri());
                                    htmlTreeBuilder.replaceActiveFormattingElement(elementAboveOnStack, element9);
                                    htmlTreeBuilder.replaceOnStack(elementAboveOnStack, element9);
                                    if (element8.parent() != null) {
                                        element8.remove();
                                    }
                                    element9.appendChild(element8);
                                    elementAboveOnStack = element9;
                                    element8 = elementAboveOnStack;
                                }
                                i6++;
                                i2 = 3;
                            }
                            if (StringUtil.inSorted(element7.nodeName(), Constants.InBodyEndTableFosters)) {
                                if (element8.parent() != null) {
                                    element8.remove();
                                }
                                htmlTreeBuilder.insertInFosterParent(element8);
                            } else {
                                if (element8.parent() != null) {
                                    element8.remove();
                                }
                                element7.appendChild(element8);
                            }
                            Element element10 = new Element(activeFormattingElement.tag(), htmlTreeBuilder.getBaseUri());
                            element10.attributes().addAll(activeFormattingElement.attributes());
                            for (Node node : (Node[]) element.childNodes().toArray(new Node[element.childNodeSize()])) {
                                element10.appendChild(node);
                            }
                            element.appendChild(element10);
                            htmlTreeBuilder.removeFromActiveFormattingElements(activeFormattingElement);
                            htmlTreeBuilder.removeFromStack(activeFormattingElement);
                            htmlTreeBuilder.insertOnStackAfter(element, element10);
                            i4++;
                            z = true;
                            i2 = 3;
                        }
                    } else if (StringUtil.inSorted(strNormalName2, Constants.InBodyEndClosers)) {
                        if (!htmlTreeBuilder.inScope(strNormalName2)) {
                            htmlTreeBuilder.error(this);
                            return false;
                        }
                        htmlTreeBuilder.generateImpliedEndTags();
                        if (!htmlTreeBuilder.currentElement().nodeName().equals(strNormalName2)) {
                            htmlTreeBuilder.error(this);
                        }
                        htmlTreeBuilder.popStackToClose(strNormalName2);
                    } else {
                        if (strNormalName2.equals(TtmlNode.TAG_SPAN)) {
                            return anyOtherEndTag(token, htmlTreeBuilder);
                        }
                        if (strNormalName2.equals("li")) {
                            if (!htmlTreeBuilder.inListItemScope(strNormalName2)) {
                                htmlTreeBuilder.error(this);
                                return false;
                            }
                            htmlTreeBuilder.generateImpliedEndTags(strNormalName2);
                            if (!htmlTreeBuilder.currentElement().nodeName().equals(strNormalName2)) {
                                htmlTreeBuilder.error(this);
                            }
                            htmlTreeBuilder.popStackToClose(strNormalName2);
                        } else if (strNormalName2.equals(TtmlNode.TAG_BODY)) {
                            if (!htmlTreeBuilder.inScope(TtmlNode.TAG_BODY)) {
                                htmlTreeBuilder.error(this);
                                return false;
                            }
                            htmlTreeBuilder.transition(HtmlTreeBuilderState.AfterBody);
                        } else if (strNormalName2.equals("html")) {
                            if (htmlTreeBuilder.processEndTag(TtmlNode.TAG_BODY)) {
                                return htmlTreeBuilder.process(endTagAsEndTag);
                            }
                        } else if (strNormalName2.equals("form")) {
                            FormElement formElement = htmlTreeBuilder.getFormElement();
                            htmlTreeBuilder.setFormElement(null);
                            if (formElement == null || !htmlTreeBuilder.inScope(strNormalName2)) {
                                htmlTreeBuilder.error(this);
                                return false;
                            }
                            htmlTreeBuilder.generateImpliedEndTags();
                            if (!htmlTreeBuilder.currentElement().nodeName().equals(strNormalName2)) {
                                htmlTreeBuilder.error(this);
                            }
                            htmlTreeBuilder.removeFromStack(formElement);
                        } else if (strNormalName2.equals(TtmlNode.TAG_P)) {
                            if (!htmlTreeBuilder.inButtonScope(strNormalName2)) {
                                htmlTreeBuilder.error(this);
                                htmlTreeBuilder.processStartTag(strNormalName2);
                                return htmlTreeBuilder.process(endTagAsEndTag);
                            }
                            htmlTreeBuilder.generateImpliedEndTags(strNormalName2);
                            if (!htmlTreeBuilder.currentElement().nodeName().equals(strNormalName2)) {
                                htmlTreeBuilder.error(this);
                            }
                            htmlTreeBuilder.popStackToClose(strNormalName2);
                        } else if (StringUtil.inSorted(strNormalName2, Constants.DdDt)) {
                            if (!htmlTreeBuilder.inScope(strNormalName2)) {
                                htmlTreeBuilder.error(this);
                                return false;
                            }
                            htmlTreeBuilder.generateImpliedEndTags(strNormalName2);
                            if (!htmlTreeBuilder.currentElement().nodeName().equals(strNormalName2)) {
                                htmlTreeBuilder.error(this);
                            }
                            htmlTreeBuilder.popStackToClose(strNormalName2);
                        } else if (StringUtil.inSorted(strNormalName2, Constants.Headings)) {
                            if (!htmlTreeBuilder.inScope(Constants.Headings)) {
                                htmlTreeBuilder.error(this);
                                return false;
                            }
                            htmlTreeBuilder.generateImpliedEndTags(strNormalName2);
                            if (!htmlTreeBuilder.currentElement().nodeName().equals(strNormalName2)) {
                                htmlTreeBuilder.error(this);
                            }
                            htmlTreeBuilder.popStackToClose(Constants.Headings);
                        } else {
                            if (strNormalName2.equals("sarcasm")) {
                                return anyOtherEndTag(token, htmlTreeBuilder);
                            }
                            if (StringUtil.inSorted(strNormalName2, Constants.InBodyStartApplets)) {
                                if (!htmlTreeBuilder.inScope(AppMeasurementSdk.ConditionalUserProperty.NAME)) {
                                    if (!htmlTreeBuilder.inScope(strNormalName2)) {
                                        htmlTreeBuilder.error(this);
                                        return false;
                                    }
                                    htmlTreeBuilder.generateImpliedEndTags();
                                    if (!htmlTreeBuilder.currentElement().nodeName().equals(strNormalName2)) {
                                        htmlTreeBuilder.error(this);
                                    }
                                    htmlTreeBuilder.popStackToClose(strNormalName2);
                                    htmlTreeBuilder.clearFormattingElementsToLastMarker();
                                }
                            } else {
                                if (strNormalName2.equals(TtmlNode.TAG_BR)) {
                                    htmlTreeBuilder.error(this);
                                    htmlTreeBuilder.processStartTag(TtmlNode.TAG_BR);
                                    return false;
                                }
                                return anyOtherEndTag(token, htmlTreeBuilder);
                            }
                        }
                    }
                } else if (i == 5) {
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
            }
            return true;
        }

        /* JADX WARN: Code restructure failed: missing block: B:15:0x0050, code lost:
        
            return true;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        boolean anyOtherEndTag(org.jsoup.parser.Token r6, org.jsoup.parser.HtmlTreeBuilder r7) {
            /*
                r5 = this;
                org.jsoup.parser.ParseSettings r0 = r7.settings
                org.jsoup.parser.Token$EndTag r6 = r6.asEndTag()
                java.lang.String r6 = r6.name()
                java.lang.String r6 = r0.normalizeTag(r6)
                java.util.ArrayList r0 = r7.getStack()
                int r1 = r0.size()
                r2 = 1
                int r1 = r1 - r2
            L18:
                if (r1 < 0) goto L50
                java.lang.Object r3 = r0.get(r1)
                org.jsoup.nodes.Element r3 = (org.jsoup.nodes.Element) r3
                java.lang.String r4 = r3.nodeName()
                boolean r4 = r4.equals(r6)
                if (r4 == 0) goto L42
                r7.generateImpliedEndTags(r6)
                org.jsoup.nodes.Element r0 = r7.currentElement()
                java.lang.String r0 = r0.nodeName()
                boolean r0 = r6.equals(r0)
                if (r0 != 0) goto L3e
                r7.error(r5)
            L3e:
                r7.popStackToClose(r6)
                goto L50
            L42:
                boolean r3 = r7.isSpecial(r3)
                if (r3 == 0) goto L4d
                r7.error(r5)
                r6 = 0
                return r6
            L4d:
                int r1 = r1 + (-1)
                goto L18
            L50:
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: org.jsoup.parser.HtmlTreeBuilderState.AnonymousClass7.anyOtherEndTag(org.jsoup.parser.Token, org.jsoup.parser.HtmlTreeBuilder):boolean");
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
            if (!token.isEndTag()) {
                return true;
            }
            htmlTreeBuilder.pop();
            htmlTreeBuilder.transition(htmlTreeBuilder.originalState());
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
            if (token.isStartTag()) {
                Token.StartTag startTagAsStartTag = token.asStartTag();
                String strNormalName = startTagAsStartTag.normalName();
                if (strNormalName.equals("caption")) {
                    htmlTreeBuilder.clearStackToTableContext();
                    htmlTreeBuilder.insertMarkerToFormattingElements();
                    htmlTreeBuilder.insert(startTagAsStartTag);
                    htmlTreeBuilder.transition(HtmlTreeBuilderState.InCaption);
                    return true;
                }
                if (strNormalName.equals("colgroup")) {
                    htmlTreeBuilder.clearStackToTableContext();
                    htmlTreeBuilder.insert(startTagAsStartTag);
                    htmlTreeBuilder.transition(HtmlTreeBuilderState.InColumnGroup);
                    return true;
                }
                if (strNormalName.equals("col")) {
                    htmlTreeBuilder.processStartTag("colgroup");
                    return htmlTreeBuilder.process(token);
                }
                if (StringUtil.in(strNormalName, "tbody", "tfoot", "thead")) {
                    htmlTreeBuilder.clearStackToTableContext();
                    htmlTreeBuilder.insert(startTagAsStartTag);
                    htmlTreeBuilder.transition(HtmlTreeBuilderState.InTableBody);
                    return true;
                }
                if (StringUtil.in(strNormalName, "td", "th", "tr")) {
                    htmlTreeBuilder.processStartTag("tbody");
                    return htmlTreeBuilder.process(token);
                }
                if (strNormalName.equals("table")) {
                    htmlTreeBuilder.error(this);
                    if (htmlTreeBuilder.processEndTag("table")) {
                        return htmlTreeBuilder.process(token);
                    }
                    return true;
                }
                if (StringUtil.in(strNormalName, TtmlNode.TAG_STYLE, "script")) {
                    return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InHead);
                }
                if (strNormalName.equals("input")) {
                    if (!startTagAsStartTag.attributes.get("type").equalsIgnoreCase("hidden")) {
                        return anythingElse(token, htmlTreeBuilder);
                    }
                    htmlTreeBuilder.insertEmpty(startTagAsStartTag);
                    return true;
                }
                if (strNormalName.equals("form")) {
                    htmlTreeBuilder.error(this);
                    if (htmlTreeBuilder.getFormElement() != null) {
                        return false;
                    }
                    htmlTreeBuilder.insertForm(startTagAsStartTag, false);
                    return true;
                }
                return anythingElse(token, htmlTreeBuilder);
            }
            if (token.isEndTag()) {
                String strNormalName2 = token.asEndTag().normalName();
                if (strNormalName2.equals("table")) {
                    if (!htmlTreeBuilder.inTableScope(strNormalName2)) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    htmlTreeBuilder.popStackToClose("table");
                    htmlTreeBuilder.resetInsertionMode();
                    return true;
                }
                if (StringUtil.in(strNormalName2, TtmlNode.TAG_BODY, "caption", "col", "colgroup", "html", "tbody", "td", "tfoot", "th", "thead", "tr")) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                return anythingElse(token, htmlTreeBuilder);
            }
            if (token.isEOF()) {
                if (!htmlTreeBuilder.currentElement().nodeName().equals("html")) {
                    return true;
                }
                htmlTreeBuilder.error(this);
                return true;
            }
            return anythingElse(token, htmlTreeBuilder);
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
                    if (!HtmlTreeBuilderState.isWhitespace(str)) {
                        htmlTreeBuilder.error(this);
                        if (StringUtil.in(htmlTreeBuilder.currentElement().nodeName(), "table", "tbody", "tfoot", "thead", "tr")) {
                            htmlTreeBuilder.setFosterInserts(true);
                            htmlTreeBuilder.process(new Token.Character().data(str), HtmlTreeBuilderState.InBody);
                            htmlTreeBuilder.setFosterInserts(false);
                        } else {
                            htmlTreeBuilder.process(new Token.Character().data(str), HtmlTreeBuilderState.InBody);
                        }
                    } else {
                        htmlTreeBuilder.insert(new Token.Character().data(str));
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
            } else if ((token.isStartTag() && StringUtil.in(token.asStartTag().normalName(), "caption", "col", "colgroup", "tbody", "td", "tfoot", "th", "thead", "tr")) || (token.isEndTag() && token.asEndTag().normalName().equals("table"))) {
                htmlTreeBuilder.error(this);
                if (htmlTreeBuilder.processEndTag("caption")) {
                    return htmlTreeBuilder.process(token);
                }
            } else {
                if (token.isEndTag() && StringUtil.in(token.asEndTag().normalName(), TtmlNode.TAG_BODY, "col", "colgroup", "html", "tbody", "td", "tfoot", "th", "thead", "tr")) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InBody);
            }
            return true;
        }
    },
    InColumnGroup { // from class: org.jsoup.parser.HtmlTreeBuilderState.12
        /* JADX WARN: Removed duplicated region for block: B:43:0x009a  */
        /* JADX WARN: Removed duplicated region for block: B:45:0x009d  */
        /* JADX WARN: Removed duplicated region for block: B:49:0x00a8  */
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        boolean process(org.jsoup.parser.Token r9, org.jsoup.parser.HtmlTreeBuilder r10) {
            /*
                r8 = this;
                boolean r0 = org.jsoup.parser.HtmlTreeBuilderState.access$100(r9)
                r1 = 1
                if (r0 == 0) goto Lf
                org.jsoup.parser.Token$Character r9 = r9.asCharacter()
                r10.insert(r9)
                return r1
            Lf:
                int[] r0 = org.jsoup.parser.HtmlTreeBuilderState.AnonymousClass24.$SwitchMap$org$jsoup$parser$Token$TokenType
                org.jsoup.parser.Token$TokenType r2 = r9.type
                int r2 = r2.ordinal()
                r0 = r0[r2]
                if (r0 == r1) goto Lb3
                r2 = 2
                if (r0 == r2) goto Laf
                r2 = 3
                r3 = 0
                java.lang.String r4 = "html"
                if (r0 == r2) goto L71
                r2 = 4
                if (r0 == r2) goto L43
                r2 = 6
                if (r0 == r2) goto L2f
                boolean r9 = r8.anythingElse(r9, r10)
                return r9
            L2f:
                org.jsoup.nodes.Element r0 = r10.currentElement()
                java.lang.String r0 = r0.nodeName()
                boolean r0 = r0.equals(r4)
                if (r0 == 0) goto L3e
                return r1
            L3e:
                boolean r9 = r8.anythingElse(r9, r10)
                return r9
            L43:
                org.jsoup.parser.Token$EndTag r0 = r9.asEndTag()
                java.lang.String r0 = r0.normalName
                java.lang.String r2 = "colgroup"
                boolean r0 = r0.equals(r2)
                if (r0 == 0) goto L6c
                org.jsoup.nodes.Element r9 = r10.currentElement()
                java.lang.String r9 = r9.nodeName()
                boolean r9 = r9.equals(r4)
                if (r9 == 0) goto L63
                r10.error(r8)
                return r3
            L63:
                r10.pop()
                org.jsoup.parser.HtmlTreeBuilderState r9 = org.jsoup.parser.HtmlTreeBuilderState.InTable
                r10.transition(r9)
                goto Lba
            L6c:
                boolean r9 = r8.anythingElse(r9, r10)
                return r9
            L71:
                org.jsoup.parser.Token$StartTag r0 = r9.asStartTag()
                java.lang.String r2 = r0.normalName()
                r5 = -1
                int r6 = r2.hashCode()
                r7 = 98688(0x18180, float:1.38291E-40)
                if (r6 == r7) goto L90
                r7 = 3213227(0x3107ab, float:4.50269E-39)
                if (r6 == r7) goto L89
                goto L9a
            L89:
                boolean r2 = r2.equals(r4)
                if (r2 == 0) goto L9a
                goto L9b
            L90:
                java.lang.String r3 = "col"
                boolean r2 = r2.equals(r3)
                if (r2 == 0) goto L9a
                r3 = 1
                goto L9b
            L9a:
                r3 = -1
            L9b:
                if (r3 == 0) goto La8
                if (r3 == r1) goto La4
                boolean r9 = r8.anythingElse(r9, r10)
                return r9
            La4:
                r10.insertEmpty(r0)
                goto Lba
            La8:
                org.jsoup.parser.HtmlTreeBuilderState r0 = org.jsoup.parser.HtmlTreeBuilderState.InBody
                boolean r9 = r10.process(r9, r0)
                return r9
            Laf:
                r10.error(r8)
                goto Lba
            Lb3:
                org.jsoup.parser.Token$Comment r9 = r9.asComment()
                r10.insert(r9)
            Lba:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: org.jsoup.parser.HtmlTreeBuilderState.AnonymousClass12.process(org.jsoup.parser.Token, org.jsoup.parser.HtmlTreeBuilder):boolean");
        }

        private boolean anythingElse(Token token, TreeBuilder treeBuilder) {
            if (treeBuilder.processEndTag("colgroup")) {
                return treeBuilder.process(token);
            }
            return true;
        }
    },
    InTableBody { // from class: org.jsoup.parser.HtmlTreeBuilderState.13
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            int i = AnonymousClass24.$SwitchMap$org$jsoup$parser$Token$TokenType[token.type.ordinal()];
            if (i == 3) {
                Token.StartTag startTagAsStartTag = token.asStartTag();
                String strNormalName = startTagAsStartTag.normalName();
                if (strNormalName.equals("template")) {
                    htmlTreeBuilder.insert(startTagAsStartTag);
                } else if (strNormalName.equals("tr")) {
                    htmlTreeBuilder.clearStackToTableBodyContext();
                    htmlTreeBuilder.insert(startTagAsStartTag);
                    htmlTreeBuilder.transition(HtmlTreeBuilderState.InRow);
                } else {
                    if (StringUtil.in(strNormalName, "th", "td")) {
                        htmlTreeBuilder.error(this);
                        htmlTreeBuilder.processStartTag("tr");
                        return htmlTreeBuilder.process(startTagAsStartTag);
                    }
                    if (StringUtil.in(strNormalName, "caption", "col", "colgroup", "tbody", "tfoot", "thead")) {
                        return exitTableBody(token, htmlTreeBuilder);
                    }
                    return anythingElse(token, htmlTreeBuilder);
                }
            } else if (i == 4) {
                String strNormalName2 = token.asEndTag().normalName();
                if (StringUtil.in(strNormalName2, "tbody", "tfoot", "thead")) {
                    if (!htmlTreeBuilder.inTableScope(strNormalName2)) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    htmlTreeBuilder.clearStackToTableBodyContext();
                    htmlTreeBuilder.pop();
                    htmlTreeBuilder.transition(HtmlTreeBuilderState.InTable);
                } else {
                    if (strNormalName2.equals("table")) {
                        return exitTableBody(token, htmlTreeBuilder);
                    }
                    if (StringUtil.in(strNormalName2, TtmlNode.TAG_BODY, "caption", "col", "colgroup", "html", "td", "th", "tr")) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    return anythingElse(token, htmlTreeBuilder);
                }
            } else {
                return anythingElse(token, htmlTreeBuilder);
            }
            return true;
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

        private boolean anythingElse(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InTable);
        }
    },
    InRow { // from class: org.jsoup.parser.HtmlTreeBuilderState.14
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.isStartTag()) {
                Token.StartTag startTagAsStartTag = token.asStartTag();
                String strNormalName = startTagAsStartTag.normalName();
                if (strNormalName.equals("template")) {
                    htmlTreeBuilder.insert(startTagAsStartTag);
                } else if (StringUtil.in(strNormalName, "th", "td")) {
                    htmlTreeBuilder.clearStackToTableRowContext();
                    htmlTreeBuilder.insert(startTagAsStartTag);
                    htmlTreeBuilder.transition(HtmlTreeBuilderState.InCell);
                    htmlTreeBuilder.insertMarkerToFormattingElements();
                } else {
                    if (StringUtil.in(strNormalName, "caption", "col", "colgroup", "tbody", "tfoot", "thead", "tr")) {
                        return handleMissingTr(token, htmlTreeBuilder);
                    }
                    return anythingElse(token, htmlTreeBuilder);
                }
            } else if (token.isEndTag()) {
                String strNormalName2 = token.asEndTag().normalName();
                if (strNormalName2.equals("tr")) {
                    if (!htmlTreeBuilder.inTableScope(strNormalName2)) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    htmlTreeBuilder.clearStackToTableRowContext();
                    htmlTreeBuilder.pop();
                    htmlTreeBuilder.transition(HtmlTreeBuilderState.InTableBody);
                } else {
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
                    if (StringUtil.in(strNormalName2, TtmlNode.TAG_BODY, "caption", "col", "colgroup", "html", "td", "th")) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    return anythingElse(token, htmlTreeBuilder);
                }
            } else {
                return anythingElse(token, htmlTreeBuilder);
            }
            return true;
        }

        private boolean anythingElse(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InTable);
        }

        private boolean handleMissingTr(Token token, TreeBuilder treeBuilder) {
            if (treeBuilder.processEndTag("tr")) {
                return treeBuilder.process(token);
            }
            return false;
        }
    },
    InCell { // from class: org.jsoup.parser.HtmlTreeBuilderState.15
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
                if (StringUtil.in(strNormalName, TtmlNode.TAG_BODY, "caption", "col", "colgroup", "html")) {
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
                    } else if (strNormalName.equals("optgroup")) {
                        if (htmlTreeBuilder.currentElement().nodeName().equals("option")) {
                            htmlTreeBuilder.processEndTag("option");
                        } else if (htmlTreeBuilder.currentElement().nodeName().equals("optgroup")) {
                            htmlTreeBuilder.processEndTag("optgroup");
                        }
                        htmlTreeBuilder.insert(startTagAsStartTag);
                    } else {
                        if (strNormalName.equals("select")) {
                            htmlTreeBuilder.error(this);
                            return htmlTreeBuilder.processEndTag("select");
                        }
                        if (StringUtil.in(strNormalName, "input", "keygen", "textarea")) {
                            htmlTreeBuilder.error(this);
                            if (!htmlTreeBuilder.inSelectScope("select")) {
                                return false;
                            }
                            htmlTreeBuilder.processEndTag("select");
                            return htmlTreeBuilder.process(startTagAsStartTag);
                        }
                        if (strNormalName.equals("script")) {
                            return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InHead);
                        }
                        return anythingElse(token, htmlTreeBuilder);
                    }
                    return true;
                case 4:
                    String strNormalName2 = token.asEndTag().normalName();
                    char c = 65535;
                    int iHashCode = strNormalName2.hashCode();
                    if (iHashCode != -1010136971) {
                        if (iHashCode != -906021636) {
                            if (iHashCode == -80773204 && strNormalName2.equals("optgroup")) {
                                c = 0;
                            }
                        } else if (strNormalName2.equals("select")) {
                            c = 2;
                        }
                    } else if (strNormalName2.equals("option")) {
                        c = 1;
                    }
                    if (c == 0) {
                        if (htmlTreeBuilder.currentElement().nodeName().equals("option") && htmlTreeBuilder.aboveOnStack(htmlTreeBuilder.currentElement()) != null && htmlTreeBuilder.aboveOnStack(htmlTreeBuilder.currentElement()).nodeName().equals("optgroup")) {
                            htmlTreeBuilder.processEndTag("option");
                        }
                        if (htmlTreeBuilder.currentElement().nodeName().equals("optgroup")) {
                            htmlTreeBuilder.pop();
                        } else {
                            htmlTreeBuilder.error(this);
                        }
                    } else if (c != 1) {
                        if (c == 2) {
                            if (!htmlTreeBuilder.inSelectScope(strNormalName2)) {
                                htmlTreeBuilder.error(this);
                                return false;
                            }
                            htmlTreeBuilder.popStackToClose(strNormalName2);
                            htmlTreeBuilder.resetInsertionMode();
                        } else {
                            return anythingElse(token, htmlTreeBuilder);
                        }
                    } else if (htmlTreeBuilder.currentElement().nodeName().equals("option")) {
                        htmlTreeBuilder.pop();
                    } else {
                        htmlTreeBuilder.error(this);
                    }
                    return true;
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
                if (!htmlTreeBuilder.inTableScope(token.asEndTag().normalName())) {
                    return false;
                }
                htmlTreeBuilder.processEndTag("select");
                return htmlTreeBuilder.process(token);
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
        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
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
                    char c = 65535;
                    switch (strNormalName.hashCode()) {
                        case -1644953643:
                            if (strNormalName.equals("frameset")) {
                                c = 1;
                                break;
                            }
                            break;
                        case 3213227:
                            if (strNormalName.equals("html")) {
                                c = 0;
                                break;
                            }
                            break;
                        case 97692013:
                            if (strNormalName.equals("frame")) {
                                c = 2;
                                break;
                            }
                            break;
                        case 1192721831:
                            if (strNormalName.equals("noframes")) {
                                c = 3;
                                break;
                            }
                            break;
                    }
                    if (c == 0) {
                        return htmlTreeBuilder.process(startTagAsStartTag, HtmlTreeBuilderState.InBody);
                    }
                    if (c == 1) {
                        htmlTreeBuilder.insert(startTagAsStartTag);
                    } else {
                        if (c != 2) {
                            if (c == 3) {
                                return htmlTreeBuilder.process(startTagAsStartTag, HtmlTreeBuilderState.InHead);
                            }
                            htmlTreeBuilder.error(this);
                            return false;
                        }
                        htmlTreeBuilder.insertEmpty(startTagAsStartTag);
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
            if (token.isDoctype() || HtmlTreeBuilderState.isWhitespace(token) || (token.isStartTag() && token.asStartTag().normalName().equals("html"))) {
                return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InBody);
            }
            if (token.isEOF()) {
                return true;
            }
            htmlTreeBuilder.error(this);
            htmlTreeBuilder.transition(HtmlTreeBuilderState.InBody);
            return htmlTreeBuilder.process(token);
        }
    },
    AfterAfterFrameset { // from class: org.jsoup.parser.HtmlTreeBuilderState.22
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.isComment()) {
                htmlTreeBuilder.insert(token.asComment());
                return true;
            }
            if (token.isDoctype() || HtmlTreeBuilderState.isWhitespace(token) || (token.isStartTag() && token.asStartTag().normalName().equals("html"))) {
                return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InBody);
            }
            if (token.isEOF()) {
                return true;
            }
            if (token.isStartTag() && token.asStartTag().normalName().equals("noframes")) {
                return htmlTreeBuilder.process(token, HtmlTreeBuilderState.InHead);
            }
            htmlTreeBuilder.error(this);
            return false;
        }
    },
    ForeignContent { // from class: org.jsoup.parser.HtmlTreeBuilderState.23
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            return true;
        }
    };

    private static String nullString = String.valueOf((char) 0);

    abstract boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder);

    /* renamed from: org.jsoup.parser.HtmlTreeBuilderState$24, reason: invalid class name */
    static /* synthetic */ class AnonymousClass24 {
        static final /* synthetic */ int[] $SwitchMap$org$jsoup$parser$Token$TokenType = new int[Token.TokenType.values().length];

        static {
            try {
                $SwitchMap$org$jsoup$parser$Token$TokenType[Token.TokenType.Comment.ordinal()] = 1;
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

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isWhitespace(Token token) {
        if (token.isCharacter()) {
            return isWhitespace(token.asCharacter().getData());
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isWhitespace(String str) {
        return StringUtil.isBlank(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void handleRcData(Token.StartTag startTag, HtmlTreeBuilder htmlTreeBuilder) {
        htmlTreeBuilder.tokeniser.transition(TokeniserState.Rcdata);
        htmlTreeBuilder.markInsertionMode();
        htmlTreeBuilder.transition(Text);
        htmlTreeBuilder.insert(startTag);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void handleRawtext(Token.StartTag startTag, HtmlTreeBuilder htmlTreeBuilder) {
        htmlTreeBuilder.tokeniser.transition(TokeniserState.Rawtext);
        htmlTreeBuilder.markInsertionMode();
        htmlTreeBuilder.transition(Text);
        htmlTreeBuilder.insert(startTag);
    }

    static final class Constants {
        static final String[] InBodyStartToHead = {"base", "basefont", "bgsound", "command", "link", "meta", "noframes", "script", TtmlNode.TAG_STYLE, "title"};
        static final String[] InBodyStartPClosers = {"address", "article", "aside", "blockquote", TtmlNode.CENTER, "details", "dir", TtmlNode.TAG_DIV, "dl", "fieldset", "figcaption", "figure", "footer", "header", "hgroup", "menu", "nav", "ol", TtmlNode.TAG_P, "section", "summary", "ul"};
        static final String[] Headings = {"h1", "h2", "h3", "h4", "h5", "h6"};
        static final String[] InBodyStartPreListing = {"listing", "pre"};
        static final String[] InBodyStartLiBreakers = {"address", TtmlNode.TAG_DIV, TtmlNode.TAG_P};
        static final String[] DdDt = {"dd", "dt"};
        static final String[] Formatters = {"b", "big", "code", "em", "font", "i", "s", "small", "strike", "strong", TtmlNode.TAG_TT, "u"};
        static final String[] InBodyStartApplets = {"applet", "marquee", "object"};
        static final String[] InBodyStartEmptyFormatters = {"area", TtmlNode.TAG_BR, "embed", "img", "keygen", "wbr"};
        static final String[] InBodyStartMedia = {"param", CommentListFragment.COMMENT_KEY_SOURCE, "track"};
        static final String[] InBodyStartInputAttribs = {"action", AppMeasurementSdk.ConditionalUserProperty.NAME, "prompt"};
        static final String[] InBodyStartOptions = {"optgroup", "option"};
        static final String[] InBodyStartRuby = {"rp", "rt"};
        static final String[] InBodyStartDrop = {"caption", "col", "colgroup", "frame", TtmlNode.TAG_HEAD, "tbody", "td", "tfoot", "th", "thead", "tr"};
        static final String[] InBodyEndClosers = {"address", "article", "aside", "blockquote", "button", TtmlNode.CENTER, "details", "dir", TtmlNode.TAG_DIV, "dl", "fieldset", "figcaption", "figure", "footer", "header", "hgroup", "listing", "menu", "nav", "ol", "pre", "section", "summary", "ul"};
        static final String[] InBodyEndAdoptionFormatters = {"a", "b", "big", "code", "em", "font", "i", "nobr", "s", "small", "strike", "strong", TtmlNode.TAG_TT, "u"};
        static final String[] InBodyEndTableFosters = {"table", "tbody", "tfoot", "thead", "tr"};

        Constants() {
        }
    }
}
