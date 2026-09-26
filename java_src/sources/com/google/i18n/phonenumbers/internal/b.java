package com.google.i18n.phonenumbers.internal;

import com.google.i18n.phonenumbers.l;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes11.dex */
public final class b implements a {
    private final c regexCache = new c(100);

    public static a b() {
        return new b();
    }

    private b() {
    }

    private static boolean c(CharSequence charSequence, Pattern pattern, boolean z6) {
        Matcher matcher = pattern.matcher(charSequence);
        if (!matcher.lookingAt()) {
            return false;
        }
        if (matcher.matches()) {
            return true;
        }
        return z6;
    }

    @Override // com.google.i18n.phonenumbers.internal.a
    public boolean a(CharSequence charSequence, l lVar, boolean z6) {
        String strA = lVar.a();
        if (strA.length() == 0) {
            return false;
        }
        return c(charSequence, this.regexCache.a(strA), z6);
    }
}
