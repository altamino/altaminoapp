package org.jsoup.parser;

import org.jsoup.helper.Validate;
import org.jsoup.internal.Normalizer;
import org.jsoup.nodes.Attributes;

/* JADX INFO: loaded from: classes3.dex */
abstract class Token {
    TokenType type;

    static final class CData extends Character {
        @Override // org.jsoup.parser.Token.Character
        public String toString() {
            return "<![CDATA[" + getData() + "]]>";
        }

        CData(String str) {
            data(str);
        }
    }

    static final class Comment extends Token {
        boolean bogus;
        final StringBuilder data;

        Comment() {
            super();
            this.data = new StringBuilder();
            this.bogus = false;
            this.type = TokenType.Comment;
        }

        String getData() {
            return this.data.toString();
        }

        @Override // org.jsoup.parser.Token
        Token reset() {
            Token.reset(this.data);
            this.bogus = false;
            return this;
        }

        public String toString() {
            return "<!--" + getData() + "-->";
        }
    }

    static final class Doctype extends Token {
        boolean forceQuirks;
        final StringBuilder name;
        String pubSysKey;
        final StringBuilder publicIdentifier;
        final StringBuilder systemIdentifier;

        Doctype() {
            super();
            this.name = new StringBuilder();
            this.pubSysKey = null;
            this.publicIdentifier = new StringBuilder();
            this.systemIdentifier = new StringBuilder();
            this.forceQuirks = false;
            this.type = TokenType.Doctype;
        }

        String getPubSysKey() {
            return this.pubSysKey;
        }

        public boolean isForceQuirks() {
            return this.forceQuirks;
        }

        String getName() {
            return this.name.toString();
        }

        String getPublicIdentifier() {
            return this.publicIdentifier.toString();
        }

        public String getSystemIdentifier() {
            return this.systemIdentifier.toString();
        }

        @Override // org.jsoup.parser.Token
        Token reset() {
            Token.reset(this.name);
            this.pubSysKey = null;
            Token.reset(this.publicIdentifier);
            Token.reset(this.systemIdentifier);
            this.forceQuirks = false;
            return this;
        }
    }

    static final class EOF extends Token {
        EOF() {
            super();
            this.type = TokenType.EOF;
        }

        @Override // org.jsoup.parser.Token
        Token reset() {
            return this;
        }
    }

    static final class EndTag extends Tag {
        public String toString() {
            return "</" + name() + ">";
        }

        EndTag() {
            this.type = TokenType.EndTag;
        }
    }

    static final class StartTag extends Tag {
        StartTag nameAttr(String str, Attributes attributes) {
            this.tagName = str;
            this.attributes = attributes;
            this.normalName = Normalizer.lowerCase(str);
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.parser.Token.Tag, org.jsoup.parser.Token
        public Tag reset() {
            super.reset();
            this.attributes = new Attributes();
            return this;
        }

        public String toString() {
            Attributes attributes = this.attributes;
            if (attributes == null || attributes.size() <= 0) {
                return "<" + name() + ">";
            }
            return "<" + name() + " " + this.attributes.toString() + ">";
        }

        StartTag() {
            this.attributes = new Attributes();
            this.type = TokenType.StartTag;
        }
    }

    static abstract class Tag extends Token {
        Attributes attributes;
        private boolean hasEmptyAttributeValue;
        private boolean hasPendingAttributeValue;
        protected String normalName;
        private String pendingAttributeName;
        private StringBuilder pendingAttributeValue;
        private String pendingAttributeValueS;
        boolean selfClosing;
        protected String tagName;

        Tag() {
            super();
            this.pendingAttributeValue = new StringBuilder();
            this.hasEmptyAttributeValue = false;
            this.hasPendingAttributeValue = false;
            this.selfClosing = false;
        }

        private void ensureAttributeValue() {
            this.hasPendingAttributeValue = true;
            String str = this.pendingAttributeValueS;
            if (str != null) {
                this.pendingAttributeValue.append(str);
                this.pendingAttributeValueS = null;
            }
        }

        final void appendAttributeName(String str) {
            String str2 = this.pendingAttributeName;
            if (str2 != null) {
                str = str2.concat(str);
            }
            this.pendingAttributeName = str;
        }

        final void appendAttributeValue(String str) {
            ensureAttributeValue();
            if (this.pendingAttributeValue.length() == 0) {
                this.pendingAttributeValueS = str;
            } else {
                this.pendingAttributeValue.append(str);
            }
        }

        final void appendTagName(String str) {
            String str2 = this.tagName;
            if (str2 != null) {
                str = str2.concat(str);
            }
            this.tagName = str;
            this.normalName = Normalizer.lowerCase(str);
        }

        final Attributes getAttributes() {
            return this.attributes;
        }

        final boolean isSelfClosing() {
            return this.selfClosing;
        }

        final String name() {
            String str = this.tagName;
            Validate.isFalse(str == null || str.length() == 0);
            return this.tagName;
        }

        final String normalName() {
            return this.normalName;
        }

        final void setEmptyAttributeValue() {
            this.hasEmptyAttributeValue = true;
        }

        final void appendAttributeName(char c7) {
            appendAttributeName(String.valueOf(c7));
        }

        final void finaliseTag() {
            if (this.pendingAttributeName != null) {
                newAttribute();
            }
        }

        final Tag name(String str) {
            this.tagName = str;
            this.normalName = Normalizer.lowerCase(str);
            return this;
        }

        final void newAttribute() {
            String string;
            if (this.attributes == null) {
                this.attributes = new Attributes();
            }
            String str = this.pendingAttributeName;
            if (str != null) {
                String strTrim = str.trim();
                this.pendingAttributeName = strTrim;
                if (strTrim.length() > 0) {
                    if (this.hasPendingAttributeValue) {
                        string = this.pendingAttributeValue.length() > 0 ? this.pendingAttributeValue.toString() : this.pendingAttributeValueS;
                    } else {
                        string = this.hasEmptyAttributeValue ? "" : null;
                    }
                    this.attributes.put(this.pendingAttributeName, string);
                }
            }
            this.pendingAttributeName = null;
            this.hasEmptyAttributeValue = false;
            this.hasPendingAttributeValue = false;
            Token.reset(this.pendingAttributeValue);
            this.pendingAttributeValueS = null;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.parser.Token
        public Tag reset() {
            this.tagName = null;
            this.normalName = null;
            this.pendingAttributeName = null;
            Token.reset(this.pendingAttributeValue);
            this.pendingAttributeValueS = null;
            this.hasEmptyAttributeValue = false;
            this.hasPendingAttributeValue = false;
            this.selfClosing = false;
            this.attributes = null;
            return this;
        }

        final void appendTagName(char c7) {
            appendTagName(String.valueOf(c7));
        }

        final void appendAttributeValue(char c7) {
            ensureAttributeValue();
            this.pendingAttributeValue.append(c7);
        }

        final void appendAttributeValue(char[] cArr) {
            ensureAttributeValue();
            this.pendingAttributeValue.append(cArr);
        }

        final void appendAttributeValue(int[] iArr) {
            ensureAttributeValue();
            for (int i10 : iArr) {
                this.pendingAttributeValue.appendCodePoint(i10);
            }
        }
    }

    public enum TokenType {
        Doctype,
        StartTag,
        EndTag,
        Comment,
        Character,
        EOF
    }

    static void reset(StringBuilder sb) {
        if (sb != null) {
            sb.delete(0, sb.length());
        }
    }

    final Character asCharacter() {
        return (Character) this;
    }

    final Comment asComment() {
        return (Comment) this;
    }

    final Doctype asDoctype() {
        return (Doctype) this;
    }

    final EndTag asEndTag() {
        return (EndTag) this;
    }

    final StartTag asStartTag() {
        return (StartTag) this;
    }

    abstract Token reset();

    static class Character extends Token {
        private String data;

        Character() {
            super();
            this.type = TokenType.Character;
        }

        Character data(String str) {
            this.data = str;
            return this;
        }

        String getData() {
            return this.data;
        }

        @Override // org.jsoup.parser.Token
        Token reset() {
            this.data = null;
            return this;
        }

        public String toString() {
            return getData();
        }
    }

    private Token() {
    }

    final boolean isCData() {
        return this instanceof CData;
    }

    final boolean isCharacter() {
        return this.type == TokenType.Character;
    }

    final boolean isComment() {
        return this.type == TokenType.Comment;
    }

    final boolean isDoctype() {
        return this.type == TokenType.Doctype;
    }

    final boolean isEOF() {
        return this.type == TokenType.EOF;
    }

    final boolean isEndTag() {
        return this.type == TokenType.EndTag;
    }

    final boolean isStartTag() {
        return this.type == TokenType.StartTag;
    }

    String tokenType() {
        return getClass().getSimpleName();
    }
}
