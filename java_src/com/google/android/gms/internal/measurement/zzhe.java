package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.Map;

/* loaded from: classes2.dex */
final class zzhe extends zzhk {
    private final /* synthetic */ zzhb zzaki;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private zzhe(zzhb zzhbVar) {
        super(zzhbVar, null);
        this.zzaki = zzhbVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzhk, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator<Map.Entry<K, V>> iterator() {
        return new zzhd(this.zzaki, null);
    }

    /* synthetic */ zzhe(zzhb zzhbVar, zzhc zzhcVar) {
        this(zzhbVar);
    }
}
