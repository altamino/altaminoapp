package org.threeten.bp.format;

import java.util.Locale;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: loaded from: classes11.dex */
public final class f {
    private final char decimalSeparator;
    private final char negativeSign;
    private final char positiveSign;
    private final char zeroDigit;
    public static final f STANDARD = new f('0', '+', '-', '.');
    private static final ConcurrentMap<Locale, f> CACHE = new ConcurrentHashMap(16, 0.75f, 2);

    public char b() {
        return this.decimalSeparator;
    }

    public char c() {
        return this.negativeSign;
    }

    public char d() {
        return this.positiveSign;
    }

    public char e() {
        return this.zeroDigit;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return this.zeroDigit == fVar.zeroDigit && this.positiveSign == fVar.positiveSign && this.negativeSign == fVar.negativeSign && this.decimalSeparator == fVar.decimalSeparator;
    }

    public int hashCode() {
        return this.zeroDigit + this.positiveSign + this.negativeSign + this.decimalSeparator;
    }

    String a(String str) {
        char c7 = this.zeroDigit;
        if (c7 == '0') {
            return str;
        }
        int i10 = c7 - '0';
        char[] charArray = str.toCharArray();
        for (int i11 = 0; i11 < charArray.length; i11++) {
            charArray[i11] = (char) (charArray[i11] + i10);
        }
        return new String(charArray);
    }

    public String toString() {
        return "DecimalStyle[" + this.zeroDigit + this.positiveSign + this.negativeSign + this.decimalSeparator + "]";
    }

    private f(char c7, char c10, char c11, char c12) {
        this.zeroDigit = c7;
        this.positiveSign = c10;
        this.negativeSign = c11;
        this.decimalSeparator = c12;
    }
}
