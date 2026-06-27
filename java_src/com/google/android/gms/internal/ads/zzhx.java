package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

/* loaded from: classes2.dex */
public final class zzhx extends zzhw {
    private final Map<UUID, byte[]> zzaho;

    public zzhx(String str) {
        super(str);
        this.zzaho = new HashMap();
    }

    public final void putAll(Map<UUID, byte[]> map) {
        this.zzaho.putAll(map);
    }
}
