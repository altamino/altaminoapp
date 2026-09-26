package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
final class zzli implements Iterator {
    private int zza;
    private Iterator zzb;
    private final /* synthetic */ zzlg zzc;

    private zzli(zzlg zzlgVar) {
        this.zzc = zzlgVar;
        this.zza = zzlgVar.zzb.size();
    }

    private final Iterator zza() {
        if (this.zzb == null) {
            this.zzb = this.zzc.zzf.entrySet().iterator();
        }
        return this.zzb;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i10 = this.zza;
        return (i10 > 0 && i10 <= this.zzc.zzb.size()) || zza().hasNext();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        if (!zza().hasNext()) {
            List list = this.zzc.zzb;
            int i10 = this.zza - 1;
            this.zza = i10;
            return (Map.Entry) list.get(i10);
        }
        return (Map.Entry) zza().next();
    }
}
