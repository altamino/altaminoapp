package com.narvii.media.color;

import android.text.InputFilter;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextUtils;

/* loaded from: classes3.dex */
class HexadecimalInputFilter implements InputFilter {
    private final boolean mUpperCase;

    public HexadecimalInputFilter(boolean z) {
        this.mUpperCase = z;
    }

    @Override // android.text.InputFilter
    public CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
        String strValueOf;
        int i5 = i2 - i;
        if (i5 <= 0) {
            return null;
        }
        char[] cArr = null;
        int i6 = 0;
        for (int i7 = i; i7 < i2; i7++) {
            char cCharAt = charSequence.charAt(i7);
            char upperCase = Character.toUpperCase(cCharAt);
            if (upperCase == 'A' || upperCase == 'B' || upperCase == 'C' || upperCase == 'D' || upperCase == 'E' || upperCase == 'F' || Character.isDigit(cCharAt)) {
                if ((this.mUpperCase && cCharAt != upperCase) || (!this.mUpperCase && cCharAt == upperCase)) {
                    if (cArr == null) {
                        cArr = new char[i5];
                        TextUtils.getChars(charSequence, i, i7, cArr, 0);
                    }
                    int i8 = i6 + 1;
                    if (!this.mUpperCase) {
                        upperCase = Character.toLowerCase(cCharAt);
                    }
                    cArr[i6] = upperCase;
                    i6 = i8;
                } else if (cArr != null) {
                    cArr[i6] = upperCase;
                    i6++;
                } else {
                    i6++;
                }
            } else if (cArr == null) {
                cArr = new char[i5];
                TextUtils.getChars(charSequence, i, i7, cArr, 0);
            }
        }
        if (cArr == null) {
            return null;
        }
        if (i6 >= i5) {
            strValueOf = String.valueOf(cArr);
        } else {
            strValueOf = String.valueOf(cArr, 0, i6);
        }
        if (!(charSequence instanceof Spanned)) {
            return strValueOf;
        }
        SpannableString spannableString = new SpannableString(strValueOf);
        TextUtils.copySpansFrom((Spanned) charSequence, i, i6, null, spannableString, 0);
        return spannableString;
    }
}
