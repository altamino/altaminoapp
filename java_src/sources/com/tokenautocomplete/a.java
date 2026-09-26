package com.tokenautocomplete;

import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextUtils;
import android.widget.MultiAutoCompleteTextView;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes7.dex */
public class a implements MultiAutoCompleteTextView.Tokenizer {
    ArrayList<Character> splitChar;

    @Override // android.widget.MultiAutoCompleteTextView.Tokenizer
    public int findTokenStart(CharSequence charSequence, int i10) {
        int i11 = i10;
        while (i11 > 0 && !this.splitChar.contains(Character.valueOf(charSequence.charAt(i11 - 1)))) {
            i11--;
        }
        while (i11 < i10 && charSequence.charAt(i11) == ' ') {
            i11++;
        }
        return i11;
    }

    a(char[] cArr) {
        this.splitChar = new ArrayList<>(cArr.length);
        for (char c7 : cArr) {
            this.splitChar.add(Character.valueOf(c7));
        }
    }

    @Override // android.widget.MultiAutoCompleteTextView.Tokenizer
    public int findTokenEnd(CharSequence charSequence, int i10) {
        int length = charSequence.length();
        while (i10 < length) {
            if (this.splitChar.contains(Character.valueOf(charSequence.charAt(i10)))) {
                return i10;
            }
            i10++;
        }
        return length;
    }

    @Override // android.widget.MultiAutoCompleteTextView.Tokenizer
    public CharSequence terminateToken(CharSequence charSequence) {
        Character ch;
        int length = charSequence.length();
        while (length > 0 && charSequence.charAt(length - 1) == ' ') {
            length--;
        }
        if (length > 0 && this.splitChar.contains(Character.valueOf(charSequence.charAt(length - 1)))) {
            return charSequence;
        }
        StringBuilder sb = new StringBuilder();
        if (this.splitChar.size() > 1 && this.splitChar.get(0).charValue() == ' ') {
            ch = this.splitChar.get(1);
        } else {
            ch = this.splitChar.get(0);
        }
        sb.append(ch);
        sb.append(" ");
        String string = sb.toString();
        if (charSequence instanceof Spanned) {
            SpannableString spannableString = new SpannableString(((Object) charSequence) + string);
            TextUtils.copySpansFrom((Spanned) charSequence, 0, charSequence.length(), Object.class, spannableString, 0);
            return spannableString;
        }
        return ((Object) charSequence) + string;
    }
}
