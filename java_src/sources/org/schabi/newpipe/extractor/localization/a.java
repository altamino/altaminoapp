package org.schabi.newpipe.extractor.localization;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
public class a implements Serializable {
    public static final a DEFAULT = new a(i.DEFAULT.d());
    private final String countryCode;

    public String a() {
        return this.countryCode;
    }

    public static List<a> b(String... strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            arrayList.add(new a(str));
        }
        return Collections.unmodifiableList(arrayList);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof a) {
            return this.countryCode.equals(((a) obj).countryCode);
        }
        return false;
    }

    public int hashCode() {
        return this.countryCode.hashCode();
    }

    public a(String str) {
        this.countryCode = str;
    }

    public String toString() {
        return a();
    }
}
