package com.google.android.gms.internal.play_billing;

/* JADX INFO: loaded from: classes9.dex */
final class zzal extends zzaf {
    static final zzaf zza = new zzal(new Object[0], 0);
    final transient Object[] zzb;
    private final transient int zzc;

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.play_billing.zzac
    final int zzb() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.play_billing.zzac
    final int zzc() {
        return 0;
    }

    @Override // com.google.android.gms.internal.play_billing.zzac
    final boolean zzf() {
        return false;
    }

    @Override // com.google.android.gms.internal.play_billing.zzac
    final Object[] zzg() {
        return this.zzb;
    }

    @Override // java.util.List
    public final Object get(int i10) {
        zzx.zza(i10, this.zzc, "index");
        Object obj = this.zzb[i10];
        obj.getClass();
        return obj;
    }

    @Override // com.google.android.gms.internal.play_billing.zzaf, com.google.android.gms.internal.play_billing.zzac
    final int zza(Object[] objArr, int i10) {
        System.arraycopy(this.zzb, 0, objArr, 0, this.zzc);
        return this.zzc;
    }

    zzal(Object[] objArr, int i10) {
        this.zzb = objArr;
        this.zzc = i10;
    }
}
