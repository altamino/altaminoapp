package org.jsoup.parser;

import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.util.Arrays;
import java.util.Locale;
import org.jsoup.UncheckedIOException;
import org.jsoup.helper.Validate;

/* JADX INFO: loaded from: classes9.dex */
public final class CharacterReader {
    static final char EOF = 65535;
    static final int maxBufferLen = 32768;
    private static final int maxStringCacheLen = 12;
    private static final int readAheadLimit = 24576;
    private int bufLength;
    private int bufMark;
    private int bufPos;
    private int bufSplitPoint;
    private final char[] charBuf;
    private final Reader reader;
    private int readerPos;
    private final String[] stringCache;

    public CharacterReader(Reader reader, int i10) {
        this.stringCache = new String[512];
        Validate.notNull(reader);
        Validate.isTrue(reader.markSupported());
        this.reader = reader;
        this.charBuf = new char[i10 > 32768 ? 32768 : i10];
        bufferUp();
    }

    private boolean isEmptyNoBufferUp() {
        return this.bufPos >= this.bufLength;
    }

    static boolean rangeEquals(char[] cArr, int i10, int i11, String str) {
        if (i11 != str.length()) {
            return false;
        }
        int i12 = 0;
        while (true) {
            int i13 = i11 - 1;
            if (i11 == 0) {
                return true;
            }
            int i14 = i10 + 1;
            int i15 = i12 + 1;
            if (cArr[i10] != str.charAt(i12)) {
                return false;
            }
            i10 = i14;
            i11 = i13;
            i12 = i15;
        }
    }

    public void advance() {
        this.bufPos++;
    }

    public String consumeTo(char c7) {
        int iNextIndexOf = nextIndexOf(c7);
        if (iNextIndexOf == -1) {
            return consumeToEnd();
        }
        String strCacheString = cacheString(this.charBuf, this.stringCache, this.bufPos, iNextIndexOf);
        this.bufPos += iNextIndexOf;
        return strCacheString;
    }

    void mark() {
        this.bufMark = this.bufPos;
    }

    boolean matches(char c7) {
        return !isEmpty() && this.charBuf[this.bufPos] == c7;
    }

    int nextIndexOf(char c7) {
        bufferUp();
        for (int i10 = this.bufPos; i10 < this.bufLength; i10++) {
            if (c7 == this.charBuf[i10]) {
                return i10 - this.bufPos;
            }
        }
        return -1;
    }

    public int pos() {
        return this.readerPos + this.bufPos;
    }

    void rewindToMark() {
        this.bufPos = this.bufMark;
    }

    void unconsume() {
        this.bufPos--;
    }

    private void bufferUp() {
        int i10 = this.bufPos;
        if (i10 < this.bufSplitPoint) {
            return;
        }
        try {
            this.reader.skip(i10);
            this.reader.mark(32768);
            int i11 = this.reader.read(this.charBuf);
            this.reader.reset();
            if (i11 != -1) {
                this.bufLength = i11;
                this.readerPos += this.bufPos;
                this.bufPos = 0;
                this.bufMark = 0;
                if (i11 > 24576) {
                    i11 = 24576;
                }
                this.bufSplitPoint = i11;
            }
        } catch (IOException e) {
            throw new UncheckedIOException(e);
        }
    }

    private static String cacheString(char[] cArr, String[] strArr, int i10, int i11) {
        if (i11 > 12) {
            return new String(cArr, i10, i11);
        }
        if (i11 < 1) {
            return "";
        }
        int i12 = 0;
        int i13 = i10;
        int i14 = 0;
        while (i12 < i11) {
            i14 = (i14 * 31) + cArr[i13];
            i12++;
            i13++;
        }
        int length = i14 & (strArr.length - 1);
        String str = strArr[length];
        if (str == null) {
            String str2 = new String(cArr, i10, i11);
            strArr[length] = str2;
            return str2;
        }
        if (rangeEquals(cArr, i10, i11, str)) {
            return str;
        }
        String str3 = new String(cArr, i10, i11);
        strArr[length] = str3;
        return str3;
    }

    boolean containsIgnoreCase(String str) {
        Locale locale = Locale.ENGLISH;
        return nextIndexOf(str.toLowerCase(locale)) > -1 || nextIndexOf(str.toUpperCase(locale)) > -1;
    }

    boolean matches(String str) {
        bufferUp();
        int length = str.length();
        if (length > this.bufLength - this.bufPos) {
            return false;
        }
        for (int i10 = 0; i10 < length; i10++) {
            if (str.charAt(i10) != this.charBuf[this.bufPos + i10]) {
                return false;
            }
        }
        return true;
    }

    public String toString() {
        char[] cArr = this.charBuf;
        int i10 = this.bufPos;
        return new String(cArr, i10, this.bufLength - i10);
    }

    char consume() {
        char c7;
        bufferUp();
        if (isEmptyNoBufferUp()) {
            c7 = 65535;
        } else {
            c7 = this.charBuf[this.bufPos];
        }
        this.bufPos++;
        return c7;
    }

    String consumeData() {
        int i10;
        char c7;
        bufferUp();
        int i11 = this.bufPos;
        int i12 = this.bufLength;
        char[] cArr = this.charBuf;
        while (true) {
            i10 = this.bufPos;
            if (i10 >= i12 || (c7 = cArr[i10]) == '&' || c7 == '<' || c7 == 0) {
                break;
            }
            this.bufPos = i10 + 1;
        }
        if (i10 > i11) {
            return cacheString(this.charBuf, this.stringCache, i11, i10 - i11);
        }
        return "";
    }

    String consumeDigitSequence() {
        int i10;
        char c7;
        bufferUp();
        int i11 = this.bufPos;
        while (true) {
            i10 = this.bufPos;
            if (i10 >= this.bufLength || (c7 = this.charBuf[i10]) < '0' || c7 > '9') {
                break;
            }
            this.bufPos = i10 + 1;
        }
        return cacheString(this.charBuf, this.stringCache, i11, i10 - i11);
    }

    String consumeHexSequence() {
        int i10;
        char c7;
        bufferUp();
        int i11 = this.bufPos;
        while (true) {
            i10 = this.bufPos;
            if (i10 >= this.bufLength || (((c7 = this.charBuf[i10]) < '0' || c7 > '9') && ((c7 < 'A' || c7 > 'F') && (c7 < 'a' || c7 > 'f')))) {
                break;
            }
            this.bufPos = i10 + 1;
        }
        return cacheString(this.charBuf, this.stringCache, i11, i10 - i11);
    }

    String consumeLetterSequence() {
        char c7;
        bufferUp();
        int i10 = this.bufPos;
        while (true) {
            int i11 = this.bufPos;
            if (i11 >= this.bufLength || (((c7 = this.charBuf[i11]) < 'A' || c7 > 'Z') && ((c7 < 'a' || c7 > 'z') && !Character.isLetter(c7)))) {
                break;
            }
            this.bufPos++;
        }
        return cacheString(this.charBuf, this.stringCache, i10, this.bufPos - i10);
    }

    String consumeLetterThenDigitSequence() {
        char c7;
        bufferUp();
        int i10 = this.bufPos;
        while (true) {
            int i11 = this.bufPos;
            if (i11 >= this.bufLength || (((c7 = this.charBuf[i11]) < 'A' || c7 > 'Z') && ((c7 < 'a' || c7 > 'z') && !Character.isLetter(c7)))) {
                break;
            }
            this.bufPos++;
        }
        while (!isEmptyNoBufferUp()) {
            char[] cArr = this.charBuf;
            int i12 = this.bufPos;
            char c10 = cArr[i12];
            if (c10 < '0' || c10 > '9') {
                break;
            }
            this.bufPos = i12 + 1;
        }
        return cacheString(this.charBuf, this.stringCache, i10, this.bufPos - i10);
    }

    String consumeTagName() {
        int i10;
        char c7;
        bufferUp();
        int i11 = this.bufPos;
        int i12 = this.bufLength;
        char[] cArr = this.charBuf;
        while (true) {
            i10 = this.bufPos;
            if (i10 >= i12 || (c7 = cArr[i10]) == '\t' || c7 == '\n' || c7 == '\r' || c7 == '\f' || c7 == ' ' || c7 == '/' || c7 == '>' || c7 == 0) {
                break;
            }
            this.bufPos = i10 + 1;
        }
        if (i10 > i11) {
            return cacheString(this.charBuf, this.stringCache, i11, i10 - i11);
        }
        return "";
    }

    public String consumeToAny(char... cArr) {
        bufferUp();
        int i10 = this.bufPos;
        int i11 = this.bufLength;
        char[] cArr2 = this.charBuf;
        loop0: while (this.bufPos < i11) {
            for (char c7 : cArr) {
                if (cArr2[this.bufPos] == c7) {
                    break loop0;
                }
            }
            this.bufPos++;
        }
        int i12 = this.bufPos;
        if (i12 > i10) {
            return cacheString(this.charBuf, this.stringCache, i10, i12 - i10);
        }
        return "";
    }

    String consumeToAnySorted(char... cArr) {
        bufferUp();
        int i10 = this.bufPos;
        int i11 = this.bufLength;
        char[] cArr2 = this.charBuf;
        while (true) {
            int i12 = this.bufPos;
            if (i12 >= i11 || Arrays.binarySearch(cArr, cArr2[i12]) >= 0) {
                break;
            }
            this.bufPos++;
        }
        int i13 = this.bufPos;
        if (i13 > i10) {
            return cacheString(this.charBuf, this.stringCache, i10, i13 - i10);
        }
        return "";
    }

    String consumeToEnd() {
        bufferUp();
        char[] cArr = this.charBuf;
        String[] strArr = this.stringCache;
        int i10 = this.bufPos;
        String strCacheString = cacheString(cArr, strArr, i10, this.bufLength - i10);
        this.bufPos = this.bufLength;
        return strCacheString;
    }

    public char current() {
        bufferUp();
        if (isEmptyNoBufferUp()) {
            return (char) 65535;
        }
        return this.charBuf[this.bufPos];
    }

    public boolean isEmpty() {
        bufferUp();
        if (this.bufPos >= this.bufLength) {
            return true;
        }
        return false;
    }

    boolean matchConsume(String str) {
        bufferUp();
        if (matches(str)) {
            this.bufPos += str.length();
            return true;
        }
        return false;
    }

    boolean matchConsumeIgnoreCase(String str) {
        if (matchesIgnoreCase(str)) {
            this.bufPos += str.length();
            return true;
        }
        return false;
    }

    boolean matchesAny(char... cArr) {
        if (isEmpty()) {
            return false;
        }
        bufferUp();
        char c7 = this.charBuf[this.bufPos];
        for (char c10 : cArr) {
            if (c10 == c7) {
                return true;
            }
        }
        return false;
    }

    boolean matchesAnySorted(char[] cArr) {
        bufferUp();
        if (!isEmpty() && Arrays.binarySearch(cArr, this.charBuf[this.bufPos]) >= 0) {
            return true;
        }
        return false;
    }

    boolean matchesDigit() {
        char c7;
        if (isEmpty() || (c7 = this.charBuf[this.bufPos]) < '0' || c7 > '9') {
            return false;
        }
        return true;
    }

    boolean matchesIgnoreCase(String str) {
        bufferUp();
        int length = str.length();
        if (length > this.bufLength - this.bufPos) {
            return false;
        }
        for (int i10 = 0; i10 < length; i10++) {
            if (Character.toUpperCase(str.charAt(i10)) != Character.toUpperCase(this.charBuf[this.bufPos + i10])) {
                return false;
            }
        }
        return true;
    }

    boolean matchesLetter() {
        if (isEmpty()) {
            return false;
        }
        char c7 = this.charBuf[this.bufPos];
        if ((c7 < 'A' || c7 > 'Z') && ((c7 < 'a' || c7 > 'z') && !Character.isLetter(c7))) {
            return false;
        }
        return true;
    }

    int nextIndexOf(CharSequence charSequence) {
        bufferUp();
        char cCharAt = charSequence.charAt(0);
        int i10 = this.bufPos;
        while (i10 < this.bufLength) {
            if (cCharAt != this.charBuf[i10]) {
                do {
                    i10++;
                    if (i10 >= this.bufLength) {
                        break;
                    }
                } while (cCharAt != this.charBuf[i10]);
            }
            int i11 = i10 + 1;
            int length = (charSequence.length() + i11) - 1;
            int i12 = this.bufLength;
            if (i10 < i12 && length <= i12) {
                int i13 = i11;
                for (int i14 = 1; i13 < length && charSequence.charAt(i14) == this.charBuf[i13]; i14++) {
                    i13++;
                }
                if (i13 == length) {
                    return i10 - this.bufPos;
                }
            }
            i10 = i11;
        }
        return -1;
    }

    boolean rangeEquals(int i10, int i11, String str) {
        return rangeEquals(this.charBuf, i10, i11, str);
    }

    String consumeTo(String str) {
        int iNextIndexOf = nextIndexOf(str);
        if (iNextIndexOf != -1) {
            String strCacheString = cacheString(this.charBuf, this.stringCache, this.bufPos, iNextIndexOf);
            this.bufPos += iNextIndexOf;
            return strCacheString;
        }
        return consumeToEnd();
    }

    public CharacterReader(Reader reader) {
        this(reader, 32768);
    }

    public CharacterReader(String str) {
        this(new StringReader(str), str.length());
    }
}
