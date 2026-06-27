package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdob;

/* loaded from: classes2.dex */
public final class zzdgy extends zzdob<zzdgy, zza> implements zzdpm {
    private static volatile zzdpv<zzdgy> zzdv;
    private static final zzdgy zzguw = new zzdgy();
    private int zzgut;
    private boolean zzguu;
    private String zzgus = "";
    private String zzgtz = "";
    private String zzguv = "";

    private zzdgy() {
    }

    public static final class zza extends zzdob.zza<zzdgy, zza> implements zzdpm {
        private zza() {
            super(zzdgy.zzguw);
        }

        public final zza zzgn(String str) {
            zzaxw();
            ((zzdgy) this.zzhhh).zzgl(str);
            return this;
        }

        public final zza zzgo(String str) {
            zzaxw();
            ((zzdgy) this.zzhhh).zzgj(str);
            return this;
        }

        public final zza zzeq(int i) {
            zzaxw();
            ((zzdgy) this.zzhhh).zzep(0);
            return this;
        }

        public final zza zzbe(boolean z) {
            zzaxw();
            ((zzdgy) this.zzhhh).zzbd(true);
            return this;
        }

        public final zza zzgp(String str) {
            zzaxw();
            ((zzdgy) this.zzhhh).zzgm(str);
            return this;
        }

        /* synthetic */ zza(zzdgz zzdgzVar) {
            this();
        }
    }

    public final String zzasb() {
        return this.zzgus;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzgl(String str) {
        if (str == null) {
            throw new NullPointerException();
        }
        this.zzgus = str;
    }

    public final String zzart() {
        return this.zzgtz;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzgj(String str) {
        if (str == null) {
            throw new NullPointerException();
        }
        this.zzgtz = str;
    }

    public final int zzasc() {
        return this.zzgut;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzep(int i) {
        this.zzgut = i;
    }

    public final boolean zzasd() {
        return this.zzguu;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzbd(boolean z) {
        this.zzguu = z;
    }

    public final String zzase() {
        return this.zzguv;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzgm(String str) {
        if (str == null) {
            throw new NullPointerException();
        }
        this.zzguv = str;
    }

    public static zza zzasf() {
        return (zza) zzguw.zza(zzdob.zze.zzhho, (Object) null, (Object) null);
    }

    @Override // com.google.android.gms.internal.ads.zzdob
    protected final Object zza(int i, Object obj, Object obj2) {
        zzdgz zzdgzVar = null;
        switch (zzdgz.zzdi[i - 1]) {
            case 1:
                return new zzdgy();
            case 2:
                return new zza(zzdgzVar);
            case 3:
                return zzdob.zza(zzguw, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003\u000b\u0004\u0007\u0005Ȉ", new Object[]{"zzgus", "zzgtz", "zzgut", "zzguu", "zzguv"});
            case 4:
                return zzguw;
            case 5:
                zzdpv<zzdgy> zzbVar = zzdv;
                if (zzbVar == null) {
                    synchronized (zzdgy.class) {
                        zzbVar = zzdv;
                        if (zzbVar == null) {
                            zzbVar = new zzdob.zzb<>(zzguw);
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
        zzdob.zza((Class<zzdgy>) zzdgy.class, zzguw);
    }
}
