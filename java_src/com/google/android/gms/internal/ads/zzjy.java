package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzjy extends zzjx {
    private final int responseCode;
    private final Map<String, List<String>> zzaqg;

    public zzjy(int i, Map<String, List<String>> map, zzjq zzjqVar) {
        StringBuilder sb = new StringBuilder(26);
        sb.append("Response code: ");
        sb.append(i);
        super(sb.toString(), zzjqVar);
        this.responseCode = i;
        this.zzaqg = map;
    }
}
