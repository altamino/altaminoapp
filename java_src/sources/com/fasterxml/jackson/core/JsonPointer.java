package com.fasterxml.jackson.core;

import com.fasterxml.jackson.core.io.NumberInput;

/* JADX INFO: loaded from: classes9.dex */
public class JsonPointer {
    protected static final JsonPointer EMPTY = new JsonPointer();
    protected final String _asString;
    protected final int _matchingElementIndex;
    protected final String _matchingPropertyName;
    protected final JsonPointer _nextSegment;

    protected JsonPointer() {
        this._nextSegment = null;
        this._matchingPropertyName = "";
        this._matchingElementIndex = -1;
        this._asString = "";
    }

    public int getMatchingIndex() {
        return this._matchingElementIndex;
    }

    public String getMatchingProperty() {
        return this._matchingPropertyName;
    }

    public JsonPointer matchElement(int i10) {
        if (i10 != this._matchingElementIndex || i10 < 0) {
            return null;
        }
        return this._nextSegment;
    }

    public boolean matches() {
        return this._nextSegment == null;
    }

    public boolean mayMatchElement() {
        return this._matchingElementIndex >= 0;
    }

    public boolean mayMatchProperty() {
        return this._matchingPropertyName != null;
    }

    public JsonPointer tail() {
        return this._nextSegment;
    }

    public String toString() {
        return this._asString;
    }

    protected JsonPointer(String str, String str2, JsonPointer jsonPointer) {
        this._asString = str;
        this._nextSegment = jsonPointer;
        this._matchingPropertyName = str2;
        this._matchingElementIndex = _parseIndex(str2);
    }

    private static void _appendEscape(StringBuilder sb, char c7) {
        if (c7 == '0') {
            c7 = '~';
        } else if (c7 == '1') {
            c7 = '/';
        } else {
            sb.append('~');
        }
        sb.append(c7);
    }

    public static JsonPointer compile(String str) throws IllegalArgumentException {
        if (str == null || str.length() == 0) {
            return EMPTY;
        }
        if (str.charAt(0) == '/') {
            return _parseTail(str);
        }
        throw new IllegalArgumentException("Invalid input: JSON Pointer expression must start with '/': \"" + str + "\"");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && (obj instanceof JsonPointer)) {
            return this._asString.equals(((JsonPointer) obj)._asString);
        }
        return false;
    }

    public int hashCode() {
        return this._asString.hashCode();
    }

    public JsonPointer matchProperty(String str) {
        if (this._nextSegment == null || !this._matchingPropertyName.equals(str)) {
            return null;
        }
        return this._nextSegment;
    }

    private static final int _parseIndex(String str) {
        int length = str.length();
        if (length == 0 || length > 10) {
            return -1;
        }
        char cCharAt = str.charAt(0);
        if (cCharAt <= '0') {
            if (length != 1 || cCharAt != '0') {
                return -1;
            }
            return 0;
        }
        if (cCharAt > '9') {
            return -1;
        }
        for (int i10 = 1; i10 < length; i10++) {
            char cCharAt2 = str.charAt(i10);
            if (cCharAt2 > '9' || cCharAt2 < '0') {
                return -1;
            }
        }
        if (length == 10 && NumberInput.parseLong(str) > 2147483647L) {
            return -1;
        }
        return NumberInput.parseInt(str);
    }

    protected static JsonPointer _parseQuotedTail(String str, int i10) {
        int length = str.length();
        StringBuilder sb = new StringBuilder(Math.max(16, length));
        if (i10 > 2) {
            sb.append((CharSequence) str, 1, i10 - 1);
        }
        int i11 = i10 + 1;
        _appendEscape(sb, str.charAt(i10));
        while (i11 < length) {
            char cCharAt = str.charAt(i11);
            if (cCharAt == '/') {
                return new JsonPointer(str, sb.toString(), _parseTail(str.substring(i11)));
            }
            int i12 = i11 + 1;
            if (cCharAt == '~' && i12 < length) {
                i11 += 2;
                _appendEscape(sb, str.charAt(i12));
            } else {
                sb.append(cCharAt);
                i11 = i12;
            }
        }
        return new JsonPointer(str, sb.toString(), EMPTY);
    }

    protected static JsonPointer _parseTail(String str) {
        int length = str.length();
        int i10 = 1;
        while (i10 < length) {
            char cCharAt = str.charAt(i10);
            if (cCharAt == '/') {
                return new JsonPointer(str, str.substring(1, i10), _parseTail(str.substring(i10)));
            }
            i10++;
            if (cCharAt == '~' && i10 < length) {
                return _parseQuotedTail(str, i10);
            }
        }
        return new JsonPointer(str, str.substring(1), EMPTY);
    }

    public static JsonPointer valueOf(String str) {
        return compile(str);
    }
}
