package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

/* loaded from: classes2.dex */
public final class zzdos extends zzdml<String> implements zzdot, RandomAccess {
    private static final zzdos zzhix;
    private static final zzdot zzhiy;
    private final List<Object> zzhiz;

    public zzdos() {
        this(10);
    }

    public zzdos(int i) {
        this((ArrayList<Object>) new ArrayList(i));
    }

    private zzdos(ArrayList<Object> arrayList) {
        this.zzhiz = arrayList;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzhiz.size();
    }

    @Override // com.google.android.gms.internal.ads.zzdml, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }

    @Override // com.google.android.gms.internal.ads.zzdml, java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection<? extends String> collection) {
        zzavk();
        if (collection instanceof zzdot) {
            collection = ((zzdot) collection).zzayo();
        }
        boolean zAddAll = this.zzhiz.addAll(i, collection);
        ((AbstractList) this).modCount++;
        return zAddAll;
    }

    @Override // com.google.android.gms.internal.ads.zzdml, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        zzavk();
        this.zzhiz.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.ads.zzdot
    public final void zzdb(zzdmr zzdmrVar) {
        zzavk();
        this.zzhiz.add(zzdmrVar);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.ads.zzdot
    public final Object zzgq(int i) {
        return this.zzhiz.get(i);
    }

    private static String zzac(Object obj) {
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof zzdmr) {
            return ((zzdmr) obj).zzavn();
        }
        return zzdod.zzae((byte[]) obj);
    }

    @Override // com.google.android.gms.internal.ads.zzdot
    public final List<?> zzayo() {
        return Collections.unmodifiableList(this.zzhiz);
    }

    @Override // com.google.android.gms.internal.ads.zzdot
    public final zzdot zzayp() {
        return zzavi() ? new zzdqw(this) : this;
    }

    @Override // com.google.android.gms.internal.ads.zzdml, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        zzavk();
        return zzac(this.zzhiz.set(i, (String) obj));
    }

    @Override // com.google.android.gms.internal.ads.zzdml, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean retainAll(Collection collection) {
        return super.retainAll(collection);
    }

    @Override // com.google.android.gms.internal.ads.zzdml, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean removeAll(Collection collection) {
        return super.removeAll(collection);
    }

    @Override // com.google.android.gms.internal.ads.zzdml, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean remove(Object obj) {
        return super.remove(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzdml, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        zzavk();
        Object objRemove = this.zzhiz.remove(i);
        ((AbstractList) this).modCount++;
        return zzac(objRemove);
    }

    @Override // com.google.android.gms.internal.ads.zzdml, com.google.android.gms.internal.ads.zzdoj
    public final /* bridge */ /* synthetic */ boolean zzavi() {
        return super.zzavi();
    }

    @Override // com.google.android.gms.internal.ads.zzdml, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        zzavk();
        this.zzhiz.add(i, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.ads.zzdml, java.util.AbstractList, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.android.gms.internal.ads.zzdml, java.util.AbstractList, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzdoj
    public final /* synthetic */ zzdoj zzfl(int i) {
        if (i < size()) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList = new ArrayList(i);
        arrayList.addAll(this.zzhiz);
        return new zzdos((ArrayList<Object>) arrayList);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        Object obj = this.zzhiz.get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof zzdmr) {
            zzdmr zzdmrVar = (zzdmr) obj;
            String strZzavn = zzdmrVar.zzavn();
            if (zzdmrVar.zzavo()) {
                this.zzhiz.set(i, strZzavn);
            }
            return strZzavn;
        }
        byte[] bArr = (byte[]) obj;
        String strZzae = zzdod.zzae(bArr);
        if (zzdod.zzad(bArr)) {
            this.zzhiz.set(i, strZzae);
        }
        return strZzae;
    }

    static {
        zzdos zzdosVar = new zzdos();
        zzhix = zzdosVar;
        zzdosVar.zzavj();
        zzhiy = zzhix;
    }
}
