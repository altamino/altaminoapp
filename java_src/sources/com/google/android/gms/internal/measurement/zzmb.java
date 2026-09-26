package com.google.android.gms.internal.measurement;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes7.dex */
@Deprecated
public final class zzmb extends AbstractList<String> implements zzjp, RandomAccess {
    private final zzjp zza;

    @Override // com.google.android.gms.internal.measurement.zzjp
    public final zzjp h_() {
        return this;
    }

    @Override // com.google.android.gms.internal.measurement.zzjp
    public final Object zzb(int i10) {
        return this.zza.zzb(i10);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i10) {
        return (String) this.zza.get(i10);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<String> iterator() {
        return new zzmd(this);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator<String> listIterator(int i10) {
        return new zzme(this, i10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zza.size();
    }

    @Override // com.google.android.gms.internal.measurement.zzjp
    public final void zza(zzhm zzhmVar) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.measurement.zzjp
    public final List<?> zzb() {
        return this.zza.zzb();
    }

    public zzmb(zzjp zzjpVar) {
        this.zza = zzjpVar;
    }
}
