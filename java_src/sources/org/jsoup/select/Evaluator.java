package org.jsoup.select;

import java.util.Iterator;
import java.util.regex.Pattern;
import org.jsoup.helper.Validate;
import org.jsoup.internal.Normalizer;
import org.jsoup.nodes.Comment;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.DocumentType;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;
import org.jsoup.nodes.PseudoTextElement;
import org.jsoup.nodes.TextNode;
import org.jsoup.nodes.XmlDeclaration;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Evaluator {

    public static final class AllElements extends Evaluator {
        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return true;
        }

        public String toString() {
            return "*";
        }
    }

    public static final class Attribute extends Evaluator {
        private String key;

        public String toString() {
            return String.format("[%s]", this.key);
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return element2.hasAttr(this.key);
        }

        public Attribute(String str) {
            this.key = str;
        }
    }

    public static final class AttributeWithValue extends AttributeKeyPair {
        public String toString() {
            return String.format("[%s=%s]", this.key, this.value);
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return element2.hasAttr(this.key) && this.value.equalsIgnoreCase(element2.attr(this.key).trim());
        }

        public AttributeWithValue(String str, String str2) {
            super(str, str2);
        }
    }

    public static final class AttributeWithValueContaining extends AttributeKeyPair {
        public String toString() {
            return String.format("[%s*=%s]", this.key, this.value);
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return element2.hasAttr(this.key) && Normalizer.lowerCase(element2.attr(this.key)).contains(this.value);
        }

        public AttributeWithValueContaining(String str, String str2) {
            super(str, str2);
        }
    }

    public static final class AttributeWithValueEnding extends AttributeKeyPair {
        public String toString() {
            return String.format("[%s$=%s]", this.key, this.value);
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return element2.hasAttr(this.key) && Normalizer.lowerCase(element2.attr(this.key)).endsWith(this.value);
        }

        public AttributeWithValueEnding(String str, String str2) {
            super(str, str2);
        }
    }

    public static final class AttributeWithValueMatching extends Evaluator {
        String key;
        Pattern pattern;

        public String toString() {
            return String.format("[%s~=%s]", this.key, this.pattern.toString());
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return element2.hasAttr(this.key) && this.pattern.matcher(element2.attr(this.key)).find();
        }

        public AttributeWithValueMatching(String str, Pattern pattern) {
            this.key = Normalizer.normalize(str);
            this.pattern = pattern;
        }
    }

    public static final class AttributeWithValueNot extends AttributeKeyPair {
        public String toString() {
            return String.format("[%s!=%s]", this.key, this.value);
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return !this.value.equalsIgnoreCase(element2.attr(this.key));
        }

        public AttributeWithValueNot(String str, String str2) {
            super(str, str2);
        }
    }

    public static final class AttributeWithValueStarting extends AttributeKeyPair {
        public String toString() {
            return String.format("[%s^=%s]", this.key, this.value);
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return element2.hasAttr(this.key) && Normalizer.lowerCase(element2.attr(this.key)).startsWith(this.value);
        }

        public AttributeWithValueStarting(String str, String str2) {
            super(str, str2);
        }
    }

    public static final class Class extends Evaluator {
        private String className;

        public String toString() {
            return String.format(".%s", this.className);
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return element2.hasClass(this.className);
        }

        public Class(String str) {
            this.className = str;
        }
    }

    public static abstract class CssNthEvaluator extends Evaluator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        protected final int f3306a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        protected final int f3307b;

        public CssNthEvaluator(int i10, int i11) {
            this.f3306a = i10;
            this.f3307b = i11;
        }

        protected abstract int calculatePosition(Element element, Element element2);

        protected abstract String getPseudoClass();

        public CssNthEvaluator(int i10) {
            this(0, i10);
        }

        public String toString() {
            if (this.f3306a == 0) {
                return String.format(":%s(%d)", getPseudoClass(), Integer.valueOf(this.f3307b));
            }
            return this.f3307b == 0 ? String.format(":%s(%dn)", getPseudoClass(), Integer.valueOf(this.f3306a)) : String.format(":%s(%dn%+d)", getPseudoClass(), Integer.valueOf(this.f3306a), Integer.valueOf(this.f3307b));
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            Element elementParent = element2.parent();
            if (elementParent == null || (elementParent instanceof Document)) {
                return false;
            }
            int iCalculatePosition = calculatePosition(element, element2);
            int i10 = this.f3306a;
            if (i10 == 0) {
                if (iCalculatePosition != this.f3307b) {
                    return false;
                }
                return true;
            }
            int i11 = this.f3307b;
            if ((iCalculatePosition - i11) * i10 < 0 || (iCalculatePosition - i11) % i10 != 0) {
                return false;
            }
            return true;
        }
    }

    public static final class Id extends Evaluator {
        private String id;

        public String toString() {
            return String.format("#%s", this.id);
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return this.id.equals(element2.id());
        }

        public Id(String str) {
            this.id = str;
        }
    }

    public static final class IndexLessThan extends IndexEvaluator {
        public String toString() {
            return String.format(":lt(%d)", Integer.valueOf(this.index));
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return element != element2 && element2.elementSiblingIndex() < this.index;
        }

        public IndexLessThan(int i10) {
            super(i10);
        }
    }

    public static final class IsFirstOfType extends IsNthOfType {
        public IsFirstOfType() {
            super(0, 1);
        }

        @Override // org.jsoup.select.Evaluator.CssNthEvaluator
        public String toString() {
            return ":first-of-type";
        }
    }

    public static final class IsLastOfType extends IsNthLastOfType {
        public IsLastOfType() {
            super(0, 1);
        }

        @Override // org.jsoup.select.Evaluator.CssNthEvaluator
        public String toString() {
            return ":last-of-type";
        }
    }

    public static final class IsRoot extends Evaluator {
        public String toString() {
            return ":root";
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            if (element instanceof Document) {
                element = element.child(0);
            }
            return element2 == element;
        }
    }

    public static final class MatchText extends Evaluator {
        public String toString() {
            return ":matchText";
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            if (element2 instanceof PseudoTextElement) {
                return true;
            }
            for (TextNode textNode : element2.textNodes()) {
                PseudoTextElement pseudoTextElement = new PseudoTextElement(org.jsoup.parser.Tag.valueOf(element2.tagName()), element2.baseUri(), element2.attributes());
                textNode.replaceWith(pseudoTextElement);
                pseudoTextElement.appendChild(textNode);
            }
            return false;
        }
    }

    public static final class Matches extends Evaluator {
        private Pattern pattern;

        public String toString() {
            return String.format(":matches(%s)", this.pattern);
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return this.pattern.matcher(element2.text()).find();
        }

        public Matches(Pattern pattern) {
            this.pattern = pattern;
        }
    }

    public static final class MatchesOwn extends Evaluator {
        private Pattern pattern;

        public String toString() {
            return String.format(":matchesOwn(%s)", this.pattern);
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return this.pattern.matcher(element2.ownText()).find();
        }

        public MatchesOwn(Pattern pattern) {
            this.pattern = pattern;
        }
    }

    public abstract boolean matches(Element element, Element element2);

    public static abstract class AttributeKeyPair extends Evaluator {
        String key;
        String value;

        public AttributeKeyPair(String str, String str2) {
            Validate.notEmpty(str);
            Validate.notEmpty(str2);
            this.key = Normalizer.normalize(str);
            if ((str2.startsWith("\"") && str2.endsWith("\"")) || (str2.startsWith("'") && str2.endsWith("'"))) {
                str2 = str2.substring(1, str2.length() - 1);
            }
            this.value = Normalizer.normalize(str2);
        }
    }

    public static final class AttributeStarting extends Evaluator {
        private String keyPrefix;

        public String toString() {
            return String.format("[^%s]", this.keyPrefix);
        }

        public AttributeStarting(String str) {
            Validate.notEmpty(str);
            this.keyPrefix = Normalizer.lowerCase(str);
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            Iterator<org.jsoup.nodes.Attribute> it = element2.attributes().asList().iterator();
            while (it.hasNext()) {
                if (Normalizer.lowerCase(it.next().getKey()).startsWith(this.keyPrefix)) {
                    return true;
                }
            }
            return false;
        }
    }

    public static final class ContainsData extends Evaluator {
        private String searchText;

        public String toString() {
            return String.format(":containsData(%s)", this.searchText);
        }

        public ContainsData(String str) {
            this.searchText = Normalizer.lowerCase(str);
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return Normalizer.lowerCase(element2.data()).contains(this.searchText);
        }
    }

    public static final class ContainsOwnText extends Evaluator {
        private String searchText;

        public String toString() {
            return String.format(":containsOwn(%s)", this.searchText);
        }

        public ContainsOwnText(String str) {
            this.searchText = Normalizer.lowerCase(str);
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return Normalizer.lowerCase(element2.ownText()).contains(this.searchText);
        }
    }

    public static final class ContainsText extends Evaluator {
        private String searchText;

        public String toString() {
            return String.format(":contains(%s)", this.searchText);
        }

        public ContainsText(String str) {
            this.searchText = Normalizer.lowerCase(str);
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return Normalizer.lowerCase(element2.text()).contains(this.searchText);
        }
    }

    public static final class IndexEquals extends IndexEvaluator {
        public String toString() {
            return String.format(":eq(%d)", Integer.valueOf(this.index));
        }

        public IndexEquals(int i10) {
            super(i10);
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            if (element2.elementSiblingIndex() == this.index) {
                return true;
            }
            return false;
        }
    }

    public static abstract class IndexEvaluator extends Evaluator {
        int index;

        public IndexEvaluator(int i10) {
            this.index = i10;
        }
    }

    public static final class IndexGreaterThan extends IndexEvaluator {
        public String toString() {
            return String.format(":gt(%d)", Integer.valueOf(this.index));
        }

        public IndexGreaterThan(int i10) {
            super(i10);
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            if (element2.elementSiblingIndex() > this.index) {
                return true;
            }
            return false;
        }
    }

    public static final class IsEmpty extends Evaluator {
        public String toString() {
            return ":empty";
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            for (Node node : element2.childNodes()) {
                if (!(node instanceof Comment) && !(node instanceof XmlDeclaration) && !(node instanceof DocumentType)) {
                    return false;
                }
            }
            return true;
        }
    }

    public static final class IsFirstChild extends Evaluator {
        public String toString() {
            return ":first-child";
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            Element elementParent = element2.parent();
            if (elementParent != null && !(elementParent instanceof Document) && element2.elementSiblingIndex() == 0) {
                return true;
            }
            return false;
        }
    }

    public static final class IsLastChild extends Evaluator {
        public String toString() {
            return ":last-child";
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            Element elementParent = element2.parent();
            if (elementParent != null && !(elementParent instanceof Document) && element2.elementSiblingIndex() == elementParent.children().size() - 1) {
                return true;
            }
            return false;
        }
    }

    public static final class IsNthChild extends CssNthEvaluator {
        @Override // org.jsoup.select.Evaluator.CssNthEvaluator
        protected String getPseudoClass() {
            return "nth-child";
        }

        public IsNthChild(int i10, int i11) {
            super(i10, i11);
        }

        @Override // org.jsoup.select.Evaluator.CssNthEvaluator
        protected int calculatePosition(Element element, Element element2) {
            return element2.elementSiblingIndex() + 1;
        }
    }

    public static final class IsNthLastChild extends CssNthEvaluator {
        @Override // org.jsoup.select.Evaluator.CssNthEvaluator
        protected String getPseudoClass() {
            return "nth-last-child";
        }

        public IsNthLastChild(int i10, int i11) {
            super(i10, i11);
        }

        @Override // org.jsoup.select.Evaluator.CssNthEvaluator
        protected int calculatePosition(Element element, Element element2) {
            return element2.parent().children().size() - element2.elementSiblingIndex();
        }
    }

    public static class IsNthLastOfType extends CssNthEvaluator {
        @Override // org.jsoup.select.Evaluator.CssNthEvaluator
        protected String getPseudoClass() {
            return "nth-last-of-type";
        }

        public IsNthLastOfType(int i10, int i11) {
            super(i10, i11);
        }

        @Override // org.jsoup.select.Evaluator.CssNthEvaluator
        protected int calculatePosition(Element element, Element element2) {
            Elements elementsChildren = element2.parent().children();
            int i10 = 0;
            for (int iElementSiblingIndex = element2.elementSiblingIndex(); iElementSiblingIndex < elementsChildren.size(); iElementSiblingIndex++) {
                if (elementsChildren.get(iElementSiblingIndex).tag().equals(element2.tag())) {
                    i10++;
                }
            }
            return i10;
        }
    }

    public static class IsNthOfType extends CssNthEvaluator {
        @Override // org.jsoup.select.Evaluator.CssNthEvaluator
        protected String getPseudoClass() {
            return "nth-of-type";
        }

        public IsNthOfType(int i10, int i11) {
            super(i10, i11);
        }

        @Override // org.jsoup.select.Evaluator.CssNthEvaluator
        protected int calculatePosition(Element element, Element element2) {
            int i10 = 0;
            for (Element element3 : element2.parent().children()) {
                if (element3.tag().equals(element2.tag())) {
                    i10++;
                }
                if (element3 == element2) {
                    break;
                }
            }
            return i10;
        }
    }

    public static final class IsOnlyChild extends Evaluator {
        public String toString() {
            return ":only-child";
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            Element elementParent = element2.parent();
            if (elementParent != null && !(elementParent instanceof Document) && element2.siblingElements().size() == 0) {
                return true;
            }
            return false;
        }
    }

    public static final class IsOnlyOfType extends Evaluator {
        public String toString() {
            return ":only-of-type";
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            Element elementParent = element2.parent();
            if (elementParent == null || (elementParent instanceof Document)) {
                return false;
            }
            Iterator<Element> it = elementParent.children().iterator();
            int i10 = 0;
            while (it.hasNext()) {
                if (it.next().tag().equals(element2.tag())) {
                    i10++;
                }
            }
            if (i10 != 1) {
                return false;
            }
            return true;
        }
    }

    public static final class Tag extends Evaluator {
        private String tagName;

        public String toString() {
            return String.format("%s", this.tagName);
        }

        public Tag(String str) {
            this.tagName = str;
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return element2.tagName().equalsIgnoreCase(this.tagName);
        }
    }

    public static final class TagEndsWith extends Evaluator {
        private String tagName;

        public String toString() {
            return String.format("%s", this.tagName);
        }

        public TagEndsWith(String str) {
            this.tagName = str;
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            return element2.tagName().endsWith(this.tagName);
        }
    }

    protected Evaluator() {
    }
}
