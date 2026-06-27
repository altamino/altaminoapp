package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdob;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzdho extends zzdob<zzdho, zza> implements zzdpm {
    private static volatile zzdpv<zzdho> zzdv;
    private static final zzdho zzgvz = new zzdho();
    private int zzdj;
    private String zzgvx = "";
    private zzdoj<zzdgy> zzgvy = zzdob.zzaxs();

    private zzdho() {
    }

    public static final class zza extends zzdob.zza<zzdho, zza> implements zzdpm {
        private zza() {
            super(zzdho.zzgvz);
        }

        public final zza zzgs(String str) {
            zzaxw();
            ((zzdho) this.zzhhh).zzgr(str);
            return this;
        }

        public final zza zzb(zzdgy zzdgyVar) {
            zzaxw();
            ((zzdho) this.zzhhh).zza(zzdgyVar);
            return this;
        }

        /* synthetic */ zza(zzdhp zzdhpVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzgr(String str) {
        if (str == null) {
            throw new NullPointerException();
        }
        this.zzgvx = str;
    }

    public final List<zzdgy> zzatj() {
        return this.zzgvy;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(zzdgy zzdgyVar) {
        if (zzdgyVar == null) {
            throw new NullPointerException();
        }
        if (!this.zzgvy.zzavi()) {
            zzdoj<zzdgy> zzdojVar = this.zzgvy;
            int size = zzdojVar.size();
            this.zzgvy = zzdojVar.zzfl(size == 0 ? 10 : size << 1);
        }
        this.zzgvy.add(zzdgyVar);
    }

    public static zza zzatk() {
        return (zza) zzgvz.zza(zzdob.zze.zzhho, (Object) null, (Object) null);
    }

    @Override // com.google.android.gms.internal.ads.zzdob
    protected final Object zza(int i, Object obj, Object obj2) {
        zzdhp zzdhpVar = null;
        switch (zzdhp.zzdi[i - 1]) {
            case 1:
                return new zzdho();
            case 2:
                return new zza(zzdhpVar);
            case 3:
                return zzdob.zza(zzgvz, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001Ȉ\u0002\u001b", new Object[]{"zzdj", "zzgvx", "zzgvy", zzdgy.class});
            case 4:
                return zzgvz;
            case 5:
                zzdpv<zzdho> zzbVar = zzdv;
                if (zzbVar == null) {
                    synchronized (zzdho.class) {
                        zzbVar = zzdv;
                        if (zzbVar == null) {
                            zzbVar = new zzdob.zzb<>(zzgvz);
                            zzdv = zzbVar;
                        }
                    }
                }
                return zzbVar;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }

    static {
        zzdob.zza((Class<zzdho>) zzdho.class, zzgvz);
    }
}
