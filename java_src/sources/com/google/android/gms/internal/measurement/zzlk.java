package com.google.android.gms.internal.measurement;

import java.util.Iterator;

/* JADX INFO: loaded from: classes7.dex */
final class zzlk extends zzls {
    private final /* synthetic */ zzlg zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private zzlk(zzlg zzlgVar) {
        super(zzlgVar);
        this.zza = zzlgVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzls, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return new zzli(this.zza);
    }
}
