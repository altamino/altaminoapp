package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdob;

/* loaded from: classes2.dex */
public final class zzbk {

    public static final class zza extends zzdob<zza, C0006zza> implements zzdpm {
        private static volatile zzdpv<zza> zzdv;
        private static final zza zzdy = new zza();
        private int zzdj;
        private zzb zzdw;
        private zzc zzdx;

        private zza() {
        }

        /* renamed from: com.google.android.gms.internal.ads.zzbk$zza$zza, reason: collision with other inner class name */
        public static final class C0006zza extends zzdob.zza<zza, C0006zza> implements zzdpm {
            private C0006zza() {
                super(zza.zzdy);
            }

            /* synthetic */ C0006zza(zzbl zzblVar) {
                this();
            }
        }

        public final boolean zzu() {
            return (this.zzdj & 1) == 1;
        }

        public final zzb zzv() {
            zzb zzbVar = this.zzdw;
            return zzbVar == null ? zzb.zzaa() : zzbVar;
        }

        public final boolean zzw() {
            return (this.zzdj & 2) == 2;
        }

        public final zzc zzx() {
            zzc zzcVar = this.zzdx;
            return zzcVar == null ? zzc.zzag() : zzcVar;
        }

        public static zza zza(byte[] bArr, zzdno zzdnoVar) throws zzdok {
            return (zza) zzdob.zza(zzdy, bArr, zzdnoVar);
        }

        @Override // com.google.android.gms.internal.ads.zzdob
        protected final Object zza(int i, Object obj, Object obj2) {
            zzbl zzblVar = null;
            switch (zzbl.zzdi[i - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new C0006zza(zzblVar);
                case 3:
                    return zzdob.zza(zzdy, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0000\u0002\t\u0001", new Object[]{"zzdj", "zzdw", "zzdx"});
                case 4:
                    return zzdy;
                case 5:
                    zzdpv<zza> zzbVar = zzdv;
                    if (zzbVar == null) {
                        synchronized (zza.class) {
                            zzbVar = zzdv;
                            if (zzbVar == null) {
                                zzbVar = new zzdob.zzb<>(zzdy);
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
            zzdob.zza((Class<zza>) zza.class, zzdy);
        }
    }

    public static final class zzb extends zzdob<zzb, zza> implements zzdpm {
        private static volatile zzdpv<zzb> zzdv;
        private static final zzb zzea = new zzb();
        private int zzdj;
        private int zzdz = 2;

        private zzb() {
        }

        public static final class zza extends zzdob.zza<zzb, zza> implements zzdpm {
            private zza() {
                super(zzb.zzea);
            }

            /* synthetic */ zza(zzbl zzblVar) {
                this();
            }
        }

        public final zzbm zzz() {
            zzbm zzbmVarZze = zzbm.zze(this.zzdz);
            return zzbmVarZze == null ? zzbm.ENUM_SIGNAL_SOURCE_ADSHIELD : zzbmVarZze;
        }

        @Override // com.google.android.gms.internal.ads.zzdob
        protected final Object zza(int i, Object obj, Object obj2) {
            zzbl zzblVar = null;
            switch (zzbl.zzdi[i - 1]) {
                case 1:
                    return new zzb();
                case 2:
                    return new zza(zzblVar);
                case 3:
                    return zzdob.zza(zzea, "\u0001\u0001\u0000\u0001\u001b\u001b\u0001\u0000\u0000\u0000\u001b\f\u0000", new Object[]{"zzdj", "zzdz", zzbm.zzad()});
                case 4:
                    return zzea;
                case 5:
                    zzdpv<zzb> zzbVar = zzdv;
                    if (zzbVar == null) {
                        synchronized (zzb.class) {
                            zzbVar = zzdv;
                            if (zzbVar == null) {
                                zzbVar = new zzdob.zzb<>(zzea);
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

        public static zzb zzaa() {
            return zzea;
        }

        static {
            zzdob.zza((Class<zzb>) zzb.class, zzea);
        }
    }

    public static final class zzc extends zzdob<zzc, zza> implements zzdpm {
        private static volatile zzdpv<zzc> zzdv;
        private static final zzc zzep = new zzc();
        private int zzdj;
        private String zzej = "";
        private String zzek = "";
        private String zzel = "";
        private String zzem = "";
        private String zzen = "";
        private String zzeo = "";

        private zzc() {
        }

        public static final class zza extends zzdob.zza<zzc, zza> implements zzdpm {
            private zza() {
                super(zzc.zzep);
            }

            /* synthetic */ zza(zzbl zzblVar) {
                this();
            }
        }

        public final String zzae() {
            return this.zzej;
        }

        public final String zzaf() {
            return this.zzeo;
        }

        @Override // com.google.android.gms.internal.ads.zzdob
        protected final Object zza(int i, Object obj, Object obj2) {
            zzbl zzblVar = null;
            switch (zzbl.zzdi[i - 1]) {
                case 1:
                    return new zzc();
                case 2:
                    return new zza(zzblVar);
                case 3:
                    return zzdob.zza(zzep, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\b\u0000\u0002\b\u0001\u0003\b\u0002\u0004\b\u0003\u0005\b\u0004\u0006\b\u0005", new Object[]{"zzdj", "zzej", "zzek", "zzel", "zzem", "zzen", "zzeo"});
                case 4:
                    return zzep;
                case 5:
                    zzdpv<zzc> zzbVar = zzdv;
                    if (zzbVar == null) {
                        synchronized (zzc.class) {
                            zzbVar = zzdv;
                            if (zzbVar == null) {
                                zzbVar = new zzdob.zzb<>(zzep);
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

        public static zzc zzag() {
            return zzep;
        }

        static {
            zzdob.zza((Class<zzc>) zzc.class, zzep);
        }
    }
}
