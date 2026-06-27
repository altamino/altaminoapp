package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdob;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzdha extends zzdob<zzdha, zza> implements zzdpm {
    private static volatile zzdpv<zzdha> zzdv;
    private static final zzdha zzguz = new zzdha();
    private int zzdj;
    private int zzgux;
    private zzdoj<zzb> zzguy = zzdob.zzaxs();

    public static final class zzb extends zzdob<zzb, zza> implements zzdpm {
        private static volatile zzdpv<zzb> zzdv;
        private static final zzb zzgvd = new zzb();
        private int zzguq;
        private zzdgr zzgva;
        private int zzgvb;
        private int zzgvc;

        private zzb() {
        }

        public static final class zza extends zzdob.zza<zzb, zza> implements zzdpm {
            private zza() {
                super(zzb.zzgvd);
            }

            public final zza zzb(zzdgr zzdgrVar) {
                zzaxw();
                ((zzb) this.zzhhh).zza(zzdgrVar);
                return this;
            }

            public final zza zzb(zzdgu zzdguVar) {
                zzaxw();
                ((zzb) this.zzhhh).zza(zzdguVar);
                return this;
            }

            public final zza zzeu(int i) {
                zzaxw();
                ((zzb) this.zzhhh).zzet(i);
                return this;
            }

            public final zza zzb(zzdhm zzdhmVar) {
                zzaxw();
                ((zzb) this.zzhhh).zza(zzdhmVar);
                return this;
            }

            /* synthetic */ zza(zzdhb zzdhbVar) {
                this();
            }
        }

        public final boolean zzasm() {
            return this.zzgva != null;
        }

        public final zzdgr zzasn() {
            zzdgr zzdgrVar = this.zzgva;
            return zzdgrVar == null ? zzdgr.zzarx() : zzdgrVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(zzdgr zzdgrVar) {
            if (zzdgrVar == null) {
                throw new NullPointerException();
            }
            this.zzgva = zzdgrVar;
        }

        public final zzdgu zzaso() {
            zzdgu zzdguVarZzeo = zzdgu.zzeo(this.zzgvb);
            return zzdguVarZzeo == null ? zzdgu.UNRECOGNIZED : zzdguVarZzeo;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(zzdgu zzdguVar) {
            if (zzdguVar == null) {
                throw new NullPointerException();
            }
            this.zzgvb = zzdguVar.zzac();
        }

        public final int zzasp() {
            return this.zzgvc;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzet(int i) {
            this.zzgvc = i;
        }

        public final zzdhm zzanw() {
            zzdhm zzdhmVarZzez = zzdhm.zzez(this.zzguq);
            return zzdhmVarZzez == null ? zzdhm.UNRECOGNIZED : zzdhmVarZzez;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(zzdhm zzdhmVar) {
            if (zzdhmVar == null) {
                throw new NullPointerException();
            }
            this.zzguq = zzdhmVar.zzac();
        }

        public static zza zzasq() {
            return (zza) zzgvd.zza(zzdob.zze.zzhho, (Object) null, (Object) null);
        }

        @Override // com.google.android.gms.internal.ads.zzdob
        protected final Object zza(int i, Object obj, Object obj2) {
            zzdhb zzdhbVar = null;
            switch (zzdhb.zzdi[i - 1]) {
                case 1:
                    return new zzb();
                case 2:
                    return new zza(zzdhbVar);
                case 3:
                    return zzdob.zza(zzgvd, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\t\u0002\f\u0003\u000b\u0004\f", new Object[]{"zzgva", "zzgvb", "zzgvc", "zzguq"});
                case 4:
                    return zzgvd;
                case 5:
                    zzdpv<zzb> zzbVar = zzdv;
                    if (zzbVar == null) {
                        synchronized (zzb.class) {
                            zzbVar = zzdv;
                            if (zzbVar == null) {
                                zzbVar = new zzdob.zzb<>(zzgvd);
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
            zzdob.zza((Class<zzb>) zzb.class, zzgvd);
        }
    }

    private zzdha() {
    }

    public static final class zza extends zzdob.zza<zzdha, zza> implements zzdpm {
        private zza() {
            super(zzdha.zzguz);
        }

        public final zza zzes(int i) {
            zzaxw();
            ((zzdha) this.zzhhh).zzer(i);
            return this;
        }

        public final zza zzb(zzb zzbVar) {
            zzaxw();
            ((zzdha) this.zzhhh).zza(zzbVar);
            return this;
        }

        /* synthetic */ zza(zzdhb zzdhbVar) {
            this();
        }
    }

    public final int zzash() {
        return this.zzgux;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzer(int i) {
        this.zzgux = i;
    }

    public final List<zzb> zzasi() {
        return this.zzguy;
    }

    public final int zzasj() {
        return this.zzguy.size();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(zzb zzbVar) {
        if (zzbVar == null) {
            throw new NullPointerException();
        }
        if (!this.zzguy.zzavi()) {
            zzdoj<zzb> zzdojVar = this.zzguy;
            int size = zzdojVar.size();
            this.zzguy = zzdojVar.zzfl(size == 0 ? 10 : size << 1);
        }
        this.zzguy.add(zzbVar);
    }

    public static zzdha zzn(byte[] bArr) throws zzdok {
        return (zzdha) zzdob.zza(zzguz, bArr);
    }

    public static zza zzask() {
        return (zza) zzguz.zza(zzdob.zze.zzhho, (Object) null, (Object) null);
    }

    @Override // com.google.android.gms.internal.ads.zzdob
    protected final Object zza(int i, Object obj, Object obj2) {
        zzdhb zzdhbVar = null;
        switch (zzdhb.zzdi[i - 1]) {
            case 1:
                return new zzdha();
            case 2:
                return new zza(zzdhbVar);
            case 3:
                return zzdob.zza(zzguz, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b", new Object[]{"zzdj", "zzgux", "zzguy", zzb.class});
            case 4:
                return zzguz;
            case 5:
                zzdpv<zzdha> zzbVar = zzdv;
                if (zzbVar == null) {
                    synchronized (zzdha.class) {
                        zzbVar = zzdv;
                        if (zzbVar == null) {
                            zzbVar = new zzdob.zzb<>(zzguz);
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
        zzdob.zza((Class<zzdha>) zzdha.class, zzguz);
    }
}
