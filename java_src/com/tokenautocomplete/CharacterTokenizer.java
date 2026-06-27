package com.tokenautocomplete;

import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextUtils;
import android.widget.MultiAutoCompleteTextView;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class CharacterTokenizer implements MultiAutoCompleteTextView.Tokenizer {
    ArrayList<Character> splitChar;

    CharacterTokenizer() {
        this.splitChar = new ArrayList<>(1);
        this.splitChar.add(',');
    }

    CharacterTokenizer(char[] cArr) {
        this.splitChar = new ArrayList<>(cArr.length);
        for (char c : cArr) {
            this.splitChar.add(Character.valueOf(c));
        }
    }

    @Override // android.widget.MultiAutoCompleteTextView.Tokenizer
    public int findTokenStart(CharSequence charSequence, int i) {
        int i2 = i;
        while (i2 > 0 && !this.splitChar.contains(Character.valueOf(charSequence.charAt(i2 - 1)))) {
            i2--;
        }
        while (i2 < i && charSequence.charAt(i2) == ' ') {
            i2++;
        }
        return i2;
    }

    @Override // android.widget.MultiAutoCompleteTextView.Tokenizer
    public int findTokenEnd(CharSequence charSequence, int i) {
        int length = charSequence.length();
        while (i < length) {
            if (this.splitChar.contains(Character.valueOf(charSequence.charAt(i)))) {
                return i;
            }
            i++;
        }
        return length;
    }

    @Override // android.widget.MultiAutoCompleteTextView.Tokenizer
    public CharSequence terminateToken(CharSequence charSequence) {
        int length = charSequence.length();
        while (length > 0 && charSequence.charAt(length - 1) == ' ') {
            length--;
        }
        if (length > 0 && this.splitChar.contains(Character.valueOf(charSequence.charAt(length - 1)))) {
            return charSequence;
        }
        StringBuilder sb = new StringBuilder();
        sb.append((this.splitChar.size() <= 1 || this.splitChar.get(0).charValue() != ' ') ? this.splitChar.get(0) : this.splitChar.get(1));
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
