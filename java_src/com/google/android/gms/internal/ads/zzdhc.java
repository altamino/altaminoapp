package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdob;

/* loaded from: classes2.dex */
public final class zzdhc extends zzdob<zzdhc, zza> implements zzdpm {
    private static volatile zzdpv<zzdhc> zzdv;
    private static final zzdhc zzgvf = new zzdhc();
    private int zzdj;
    private int zzgux;
    private zzdoj<zzb> zzgve = zzdob.zzaxs();

    public static final class zzb extends zzdob<zzb, zza> implements zzdpm {
        private static volatile zzdpv<zzb> zzdv;
        private static final zzb zzgvg = new zzb();
        private String zzgtz = "";
        private int zzguq;
        private int zzgvb;
        private int zzgvc;

        private zzb() {
        }

        public static final class zza extends zzdob.zza<zzb, zza> implements zzdpm {
            private zza() {
                super(zzb.zzgvg);
            }

            public final zza zzgq(String str) {
                zzaxw();
                ((zzb) this.zzhhh).zzgj(str);
                return this;
            }

            public final zza zzc(zzdgu zzdguVar) {
                zzaxw();
                ((zzb) this.zzhhh).zza(zzdguVar);
                return this;
            }

            public final zza zzew(int i) {
                zzaxw();
                ((zzb) this.zzhhh).zzet(i);
                return this;
            }

            public final zza zzc(zzdhm zzdhmVar) {
                zzaxw();
                ((zzb) this.zzhhh).zza(zzdhmVar);
                return this;
            }

            /* synthetic */ zza(zzdhd zzdhdVar) {
                this();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzgj(String str) {
            if (str == null) {
                throw new NullPointerException();
            }
            this.zzgtz = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(zzdgu zzdguVar) {
            if (zzdguVar == null) {
                throw new NullPointerException();
            }
            this.zzgvb = zzdguVar.zzac();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzet(int i) {
            this.zzgvc = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(zzdhm zzdhmVar) {
            if (zzdhmVar == null) {
                throw new NullPointerException();
            }
            this.zzguq = zzdhmVar.zzac();
        }

        public static zza zzasu() {
            return (zza) zzgvg.zza(zzdob.zze.zzhho, (Object) null, (Object) null);
        }

        @Override // com.google.android.gms.internal.ads.zzdob
        protected final Object zza(int i, Object obj, Object obj2) {
            zzdhd zzdhdVar = null;
            switch (zzdhd.zzdi[i - 1]) {
                case 1:
                    return new zzb();
                case 2:
                    return new zza(zzdhdVar);
                case 3:
                    return zzdob.zza(zzgvg, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001Ȉ\u0002\f\u0003\u000b\u0004\f", new Object[]{"zzgtz", "zzgvb", "zzgvc", "zzguq"});
                case 4:
                    return zzgvg;
                case 5:
                    zzdpv<zzb> zzbVar = zzdv;
                    if (zzbVar == null) {
                        synchronized (zzb.class) {
                            zzbVar = zzdv;
                            if (zzbVar == null) {
                                zzbVar = new zzdob.zzb<>(zzgvg);
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
            zzdob.zza((Class<zzb>) zzb.class, zzgvg);
        }
    }

    private zzdhc() {
    }

    public static final class zza extends zzdob.zza<zzdhc, zza> implements zzdpm {
        private zza() {
            super(zzdhc.zzgvf);
        }

        public final zza zzev(int i) {
            zzaxw();
            ((zzdhc) this.zzhhh).zzer(i);
            return this;
        }

        public final zza zzb(zzb zzbVar) {
            zzaxw();
            ((zzdhc) this.zzhhh).zza(zzbVar);
            return this;
        }

        /* synthetic */ zza(zzdhd zzdhdVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzer(int i) {
        this.zzgux = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(zzb zzbVar) {
        if (zzbVar == null) {
            throw new NullPointerException();
        }
        if (!this.zzgve.zzavi()) {
            zzdoj<zzb> zzdojVar = this.zzgve;
            int size = zzdojVar.size();
            this.zzgve = zzdojVar.zzfl(size == 0 ? 10 : size << 1);
        }
        this.zzgve.add(zzbVar);
    }

    public static zza zzass() {
        return (zza) zzgvf.zza(zzdob.zze.zzhho, (Object) null, (Object) null);
    }

    @Override // com.google.android.gms.internal.ads.zzdob
    protected final Object zza(int i, Object obj, Object obj2) {
        zzdhd zzdhdVar = null;
        switch (zzdhd.zzdi[i - 1]) {
            case 1:
                return new zzdhc();
            case 2:
                return new zza(zzdhdVar);
            case 3:
                return zzdob.zza(zzgvf, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b", new Object[]{"zzdj", "zzgux", "zzgve", zzb.class});
            case 4:
                return zzgvf;
            case 5:
                zzdpv<zzdhc> zzbVar = zzdv;
                if (zzbVar == null) {
                    synchronized (zzdhc.class) {
                        zzbVar = zzdv;
                        if (zzbVar == null) {
                            zzbVar = new zzdob.zzb<>(zzgvf);
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
        zzdob.zza((Class<zzdhc>) zzdhc.class, zzgvf);
    }
}
