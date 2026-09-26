package com.narvii.media.color;

import android.text.InputFilter;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes9.dex */
class HexadecimalInputFilter implements InputFilter {
    private final boolean mUpperCase;

    @Override // android.text.InputFilter
    public CharSequence filter(CharSequence charSequence, int i10, int i11, Spanned spanned, int i12, int i13) {
        int i14 = i11 - i10;
        if (i14 <= 0) {
            return null;
        }
        char[] cArr = null;
        int i15 = 0;
        for (int i16 = i10; i16 < i11; i16++) {
            char cCharAt = charSequence.charAt(i16);
            char upperCase = Character.toUpperCase(cCharAt);
            if (upperCase == 'A' || upperCase == 'B' || upperCase == 'C' || upperCase == 'D' || upperCase == 'E' || upperCase == 'F' || Character.isDigit(cCharAt)) {
                boolean z6 = this.mUpperCase;
                if ((z6 && cCharAt != upperCase) || (!z6 && cCharAt == upperCase)) {
                    if (cArr == null) {
                        cArr = new char[i14];
                        TextUtils.getChars(charSequence, i10, i16, cArr, 0);
                    }
                    int i17 = i15 + 1;
                    if (!this.mUpperCase) {
                        upperCase = Character.toLowerCase(cCharAt);
                    }
                    cArr[i15] = upperCase;
                    i15 = i17;
                } else if (cArr != null) {
                    cArr[i15] = upperCase;
                    i15++;
                } else {
                    i15++;
                }
            } else if (cArr == null) {
                cArr = new char[i14];
                TextUtils.getChars(charSequence, i10, i16, cArr, 0);
            }
        }
        if (cArr == null) {
            return null;
        }
        String strValueOf = i15 >= i14 ? String.valueOf(cArr) : String.valueOf(cArr, 0, i15);
        if (!(charSequence instanceof Spanned)) {
            return strValueOf;
        }
        SpannableString spannableString = new SpannableString(strValueOf);
        TextUtils.copySpansFrom((Spanned) charSequence, i10, i15, null, spannableString, 0);
        return spannableString;
    }

    public HexadecimalInputFilter(boolean z6) {
        this.mUpperCase = z6;
    }
}
