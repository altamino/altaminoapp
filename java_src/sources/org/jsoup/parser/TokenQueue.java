package org.jsoup.parser;

import kotlinx.serialization.json.internal.b;
import org.jsoup.helper.StringUtil;
import org.jsoup.helper.Validate;

/* JADX INFO: loaded from: classes11.dex */
public class TokenQueue {
    private static final char ESC = '\\';
    private int pos = 0;
    private String queue;

    public void addFirst(Character ch) {
        addFirst(ch.toString());
    }

    public String chompBalanced(char c7, char c10) {
        char cCharValue = 0;
        int i10 = -1;
        int i11 = -1;
        boolean z6 = false;
        boolean z10 = false;
        int i12 = 0;
        while (!isEmpty()) {
            Character chValueOf = Character.valueOf(consume());
            if (cCharValue == 0 || cCharValue != '\\') {
                if (chValueOf.equals('\'') && chValueOf.charValue() != c7 && !z6) {
                    z10 = !z10;
                } else if (chValueOf.equals(Character.valueOf(b.STRING)) && chValueOf.charValue() != c7 && !z10) {
                    z6 = !z6;
                }
                if (!z10 && !z6) {
                    if (chValueOf.equals(Character.valueOf(c7))) {
                        i12++;
                        if (i10 == -1) {
                            i10 = this.pos;
                        }
                    } else if (chValueOf.equals(Character.valueOf(c10))) {
                        i12--;
                    }
                    if (i12 > 0 && cCharValue != 0) {
                        i11 = this.pos;
                    }
                    cCharValue = chValueOf.charValue();
                }
            } else {
                if (i12 > 0) {
                    i11 = this.pos;
                }
                cCharValue = chValueOf.charValue();
            }
            if (i12 <= 0) {
                break;
            }
        }
        String strSubstring = i11 >= 0 ? this.queue.substring(i10, i11) : "";
        if (i12 > 0) {
            Validate.fail("Did not find balanced marker at '" + strSubstring + "'");
        }
        return strSubstring;
    }

    public char consume() {
        String str = this.queue;
        int i10 = this.pos;
        this.pos = i10 + 1;
        return str.charAt(i10);
    }

    public boolean consumeWhitespace() {
        boolean z6 = false;
        while (matchesWhitespace()) {
            this.pos++;
            z6 = true;
        }
        return z6;
    }

    public boolean matchesAny(String... strArr) {
        for (String str : strArr) {
            if (matches(str)) {
                return true;
            }
        }
        return false;
    }

    private int remainingLength() {
        return this.queue.length() - this.pos;
    }

    public void addFirst(String str) {
        this.queue = str + this.queue.substring(this.pos);
        this.pos = 0;
    }

    public void consume(String str) {
        if (!matches(str)) {
            throw new IllegalStateException("Queue did not match expected sequence");
        }
        int length = str.length();
        if (length > remainingLength()) {
            throw new IllegalStateException("Queue not long enough to consume sequence");
        }
        this.pos += length;
    }

    public String consumeAttributeKey() {
        int i10 = this.pos;
        while (!isEmpty() && (matchesWord() || matchesAny('-', '_', b.COLON))) {
            this.pos++;
        }
        return this.queue.substring(i10, this.pos);
    }

    public String consumeCssIdentifier() {
        int i10 = this.pos;
        while (!isEmpty() && (matchesWord() || matchesAny('-', '_'))) {
            this.pos++;
        }
        return this.queue.substring(i10, this.pos);
    }

    public String consumeElementSelector() {
        int i10 = this.pos;
        while (!isEmpty() && (matchesWord() || matchesAny("*|", "|", "_", "-"))) {
            this.pos++;
        }
        return this.queue.substring(i10, this.pos);
    }

    public String consumeTagName() {
        int i10 = this.pos;
        while (!isEmpty() && (matchesWord() || matchesAny(b.COLON, '_', '-'))) {
            this.pos++;
        }
        return this.queue.substring(i10, this.pos);
    }

    public String consumeTo(String str) {
        int iIndexOf = this.queue.indexOf(str, this.pos);
        if (iIndexOf == -1) {
            return remainder();
        }
        String strSubstring = this.queue.substring(this.pos, iIndexOf);
        this.pos += strSubstring.length();
        return strSubstring;
    }

    public String consumeToAny(String... strArr) {
        int i10 = this.pos;
        while (!isEmpty() && !matchesAny(strArr)) {
            this.pos++;
        }
        return this.queue.substring(i10, this.pos);
    }

    public String consumeToIgnoreCase(String str) {
        int i10 = this.pos;
        String strSubstring = str.substring(0, 1);
        boolean zEquals = strSubstring.toLowerCase().equals(strSubstring.toUpperCase());
        while (!isEmpty() && !matches(str)) {
            if (zEquals) {
                int iIndexOf = this.queue.indexOf(strSubstring, this.pos);
                int i11 = this.pos;
                int i12 = iIndexOf - i11;
                if (i12 == 0) {
                    this.pos = i11 + 1;
                } else if (i12 < 0) {
                    this.pos = this.queue.length();
                } else {
                    this.pos = i11 + i12;
                }
            } else {
                this.pos++;
            }
        }
        return this.queue.substring(i10, this.pos);
    }

    public String consumeWord() {
        int i10 = this.pos;
        while (matchesWord()) {
            this.pos++;
        }
        return this.queue.substring(i10, this.pos);
    }

    public boolean matches(String str) {
        return this.queue.regionMatches(true, this.pos, str, 0, str.length());
    }

    public boolean matchesCS(String str) {
        return this.queue.startsWith(str, this.pos);
    }

    public String remainder() {
        String str = this.queue;
        String strSubstring = str.substring(this.pos, str.length());
        this.pos = this.queue.length();
        return strSubstring;
    }

    public String toString() {
        return this.queue.substring(this.pos);
    }

    public TokenQueue(String str) {
        Validate.notNull(str);
        this.queue = str;
    }

    public static String unescape(String str) {
        StringBuilder sbStringBuilder = StringUtil.stringBuilder();
        char[] charArray = str.toCharArray();
        int length = charArray.length;
        int i10 = 0;
        char c7 = 0;
        while (i10 < length) {
            char c10 = charArray[i10];
            if (c10 == '\\') {
                if (c7 != 0 && c7 == '\\') {
                    sbStringBuilder.append(c10);
                }
            } else {
                sbStringBuilder.append(c10);
            }
            i10++;
            c7 = c10;
        }
        return sbStringBuilder.toString();
    }

    public void advance() {
        if (!isEmpty()) {
            this.pos++;
        }
    }

    public String chompTo(String str) {
        String strConsumeTo = consumeTo(str);
        matchChomp(str);
        return strConsumeTo;
    }

    public String chompToIgnoreCase(String str) {
        String strConsumeToIgnoreCase = consumeToIgnoreCase(str);
        matchChomp(str);
        return strConsumeToIgnoreCase;
    }

    public boolean isEmpty() {
        if (remainingLength() == 0) {
            return true;
        }
        return false;
    }

    public boolean matchChomp(String str) {
        if (matches(str)) {
            this.pos += str.length();
            return true;
        }
        return false;
    }

    public boolean matchesAny(char... cArr) {
        if (isEmpty()) {
            return false;
        }
        for (char c7 : cArr) {
            if (this.queue.charAt(this.pos) == c7) {
                return true;
            }
        }
        return false;
    }

    public boolean matchesStartTag() {
        if (remainingLength() >= 2 && this.queue.charAt(this.pos) == '<' && Character.isLetter(this.queue.charAt(this.pos + 1))) {
            return true;
        }
        return false;
    }

    public boolean matchesWhitespace() {
        if (!isEmpty() && StringUtil.isWhitespace(this.queue.charAt(this.pos))) {
            return true;
        }
        return false;
    }

    public boolean matchesWord() {
        if (!isEmpty() && Character.isLetterOrDigit(this.queue.charAt(this.pos))) {
            return true;
        }
        return false;
    }

    public char peek() {
        if (isEmpty()) {
            return (char) 0;
        }
        return this.queue.charAt(this.pos);
    }
}
