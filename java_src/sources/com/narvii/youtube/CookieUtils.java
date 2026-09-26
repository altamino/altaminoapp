package com.narvii.youtube;

import android.text.TextUtils;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes8.dex */
public final class CookieUtils {
    public static String concatCookies(Collection<String> collection) {
        HashSet hashSet = new HashSet();
        Iterator<String> it = collection.iterator();
        while (it.hasNext()) {
            hashSet.addAll(splitCookies(it.next()));
        }
        return TextUtils.join("; ", hashSet).trim();
    }

    public static Set<String> splitCookies(String str) {
        return new HashSet(Arrays.asList(str.split("; *")));
    }

    private CookieUtils() {
    }
}
