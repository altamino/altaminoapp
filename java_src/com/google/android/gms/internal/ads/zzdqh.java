package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Map;

/* loaded from: classes2.dex */
final class zzdqh extends zzdqn {
    private final /* synthetic */ zzdqe zzhky;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private zzdqh(zzdqe zzdqeVar) {
        super(zzdqeVar, null);
        this.zzhky = zzdqeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdqn, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator<Map.Entry<K, V>> iterator() {
        return new zzdqg(this.zzhky, null);
    }

    /* synthetic */ zzdqh(zzdqe zzdqeVar, zzdqf zzdqfVar) {
        this(zzdqeVar);
    }
}
