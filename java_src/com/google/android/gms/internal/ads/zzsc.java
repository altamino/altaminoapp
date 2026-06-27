package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzsc extends zzsb {
    private final int responseCode;
    private final Map<String, List<String>> zzaqg;

    public zzsc(int i, Map<String, List<String>> map, zzry zzryVar) {
        StringBuilder sb = new StringBuilder(26);
        sb.append("Response code: ");
        sb.append(i);
        super(sb.toString(), zzryVar, 1);
        this.responseCode = i;
        this.zzaqg = map;
    }
}
