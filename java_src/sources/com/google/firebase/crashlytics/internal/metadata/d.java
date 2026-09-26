package com.google.firebase.crashlytics.internal.metadata;

import androidx.annotation.NonNull;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
class d {
    private final Map<String, String> keys = new HashMap();
    private final int maxEntries;
    private final int maxEntryLength;

    @NonNull
    public synchronized Map<String, String> a() {
        return Collections.unmodifiableMap(new HashMap(this.keys));
    }

    public synchronized boolean d(String str, String str2) {
        String strB = b(str);
        if (this.keys.size() >= this.maxEntries && !this.keys.containsKey(strB)) {
            com.google.firebase.crashlytics.internal.g.f().k("Ignored entry \"" + str + "\" when adding custom keys. Maximum allowable: " + this.maxEntries);
            return false;
        }
        String strC = c(str2, this.maxEntryLength);
        if (com.google.firebase.crashlytics.internal.common.i.y(this.keys.get(strB), strC)) {
            return false;
        }
        Map<String, String> map = this.keys;
        if (str2 == null) {
            strC = "";
        }
        map.put(strB, strC);
        return true;
    }

    public synchronized void e(Map<String, String> map) {
        try {
            int i10 = 0;
            for (Map.Entry<String, String> entry : map.entrySet()) {
                String strB = b(entry.getKey());
                if (this.keys.size() < this.maxEntries || this.keys.containsKey(strB)) {
                    String value = entry.getValue();
                    this.keys.put(strB, value == null ? "" : c(value, this.maxEntryLength));
                } else {
                    i10++;
                }
            }
            if (i10 > 0) {
                com.google.firebase.crashlytics.internal.g.f().k("Ignored " + i10 + " entries when adding custom keys. Maximum allowable: " + this.maxEntries);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private String b(String str) {
        if (str != null) {
            return c(str, this.maxEntryLength);
        }
        throw new IllegalArgumentException("Custom attribute key must not be null.");
    }

    public static String c(String str, int i10) {
        if (str == null) {
            return str;
        }
        String strTrim = str.trim();
        return strTrim.length() > i10 ? strTrim.substring(0, i10) : strTrim;
    }

    public d(int i10, int i11) {
        this.maxEntries = i10;
        this.maxEntryLength = i11;
    }
}
