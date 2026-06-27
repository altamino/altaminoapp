package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdob;

/* loaded from: classes2.dex */
public final class zzdrz {

    public static final class zza extends zzdob<zza, C0010zza> implements zzdpm {
        private static volatile zzdpv<zza> zzdv;
        private static final zza zzhoq = new zza();
        private int zzdj;
        private int zzhoj;
        private zzb zzhok;
        private zzdmr zzhol;
        private zzdmr zzhom;
        private boolean zzhon;
        private boolean zzhoo;
        private byte zzhop = 2;

        public static final class zzb extends zzdob<zzb, C0011zza> implements zzdpm {
            private static volatile zzdpv<zzb> zzdv;
            private static final zzb zzhov = new zzb();
            private int zzdj;
            private String zzhor = "";
            private String zzhos = "";
            private String zzhot = "";
            private int zzhou;

            private zzb() {
            }

            /* renamed from: com.google.android.gms.internal.ads.zzdrz$zza$zzb$zza, reason: collision with other inner class name */
            public static final class C0011zza extends zzdob.zza<zzb, C0011zza> implements zzdpm {
                private C0011zza() {
                    super(zzb.zzhov);
                }

                /* synthetic */ C0011zza(zzdsa zzdsaVar) {
                    this();
                }
            }

            @Override // com.google.android.gms.internal.ads.zzdob
            protected final Object zza(int i, Object obj, Object obj2) {
                zzdsa zzdsaVar = null;
                switch (zzdsa.zzdi[i - 1]) {
                    case 1:
                        return new zzb();
                    case 2:
                        return new C0011zza(zzdsaVar);
                    case 3:
                        return zzdob.zza(zzhov, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\b\u0000\u0002\b\u0001\u0003\b\u0002\u0004\u0004\u0003", new Object[]{"zzdj", "zzhor", "zzhos", "zzhot", "zzhou"});
                    case 4:
                        return zzhov;
                    case 5:
                        zzdpv<zzb> zzbVar = zzdv;
                        if (zzbVar == null) {
                            synchronized (zzb.class) {
                                zzbVar = zzdv;
                                if (zzbVar == null) {
                                    zzbVar = new zzdob.zzb<>(zzhov);
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
                zzdob.zza((Class<zzb>) zzb.class, zzhov);
            }
        }

        public enum zzc implements zzdoe {
            SAFE(0),
            DANGEROUS(1),
            UNKNOWN(2),
            POTENTIALLY_UNWANTED(3),
            DANGEROUS_HOST(4);

            private static final zzdof<zzc> zzeg = new zzdsb();
            private final int value;

            @Override // com.google.android.gms.internal.ads.zzdoe
            public final int zzac() {
                return this.value;
            }

            public static zzc zzhg(int i) {
                if (i == 0) {
                    return SAFE;
                }
                if (i == 1) {
                    return DANGEROUS;
                }
                if (i == 2) {
                    return UNKNOWN;
                }
                if (i == 3) {
                    return POTENTIALLY_UNWANTED;
                }
                if (i != 4) {
                    return null;
                }
                return DANGEROUS_HOST;
            }

            public static zzdog zzad() {
                return zzdsc.zzei;
            }

            zzc(int i) {
                this.value = i;
            }
        }

        private zza() {
            zzdmr zzdmrVar = zzdmr.zzhcr;
            this.zzhol = zzdmrVar;
            this.zzhom = zzdmrVar;
        }

        /* renamed from: com.google.android.gms.internal.ads.zzdrz$zza$zza, reason: collision with other inner class name */
        public static final class C0010zza extends zzdob.zza<zza, C0010zza> implements zzdpm {
            private C0010zza() {
                super(zza.zzhoq);
            }

            /* synthetic */ C0010zza(zzdsa zzdsaVar) {
                this();
            }
        }

        @Override // com.google.android.gms.internal.ads.zzdob
        protected final Object zza(int i, Object obj, Object obj2) {
            zzdsa zzdsaVar = null;
            switch (zzdsa.zzdi[i - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new C0010zza(zzdsaVar);
                case 3:
                    return zzdob.zza(zzhoq, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0001\u0001Ԍ\u0000\u0002\t\u0001\u0003\n\u0002\u0004\n\u0003\u0005\u0007\u0004\u0006\u0007\u0005", new Object[]{"zzdj", "zzhoj", zzc.zzad(), "zzhok", "zzhol", "zzhom", "zzhon", "zzhoo"});
                case 4:
                    return zzhoq;
                case 5:
                    zzdpv<zza> zzbVar = zzdv;
                    if (zzbVar == null) {
                        synchronized (zza.class) {
                            zzbVar = zzdv;
                            if (zzbVar == null) {
                                zzbVar = new zzdob.zzb<>(zzhoq);
                                zzdv = zzbVar;
                            }
                        }
                    }
                    return zzbVar;
                case 6:
                    return Byte.valueOf(this.zzhop);
                case 7:
                    this.zzhop = (byte) (obj != null ? 1 : 0);
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        static {
            zzdob.zza((Class<zza>) zza.class, zzhoq);
        }
    }

    public static final class zzb extends zzdob<zzb, zza> implements zzdpm {
        private static volatile zzdpv<zzb> zzdv;
        private static final zzb zzhpr = new zzb();
        private int zzbzi;
        private int zzdj;
        private int zzhpc;
        private C0012zzb zzhpf;
        private zzf zzhpi;
        private boolean zzhpj;
        private boolean zzhpm;
        private boolean zzhpn;
        private zzi zzhpo;
        private byte zzhop = 2;
        private String zzhos = "";
        private String zzhpd = "";
        private String zzhpe = "";
        private zzdoj<zzh> zzhpg = zzdob.zzaxs();
        private String zzhph = "";
        private zzdoj<String> zzhpk = zzdob.zzaxs();
        private String zzhpl = "";
        private zzdmr zzhol = zzdmr.zzhcr;
        private zzdoj<String> zzhpp = zzdob.zzaxs();
        private zzdoj<String> zzhpq = zzdob.zzaxs();

        /* renamed from: com.google.android.gms.internal.ads.zzdrz$zzb$zzb, reason: collision with other inner class name */
        public static final class C0012zzb extends zzdob<C0012zzb, zza> implements zzdpm {
            private static volatile zzdpv<C0012zzb> zzdv;
            private static final C0012zzb zzhpt = new C0012zzb();
            private int zzdj;
            private String zzhps = "";

            private C0012zzb() {
            }

            /* renamed from: com.google.android.gms.internal.ads.zzdrz$zzb$zzb$zza */
            public static final class zza extends zzdob.zza<C0012zzb, zza> implements zzdpm {
                private zza() {
                    super(C0012zzb.zzhpt);
                }

                /* synthetic */ zza(zzdsa zzdsaVar) {
                    this();
                }
            }

            @Override // com.google.android.gms.internal.ads.zzdob
            protected final Object zza(int i, Object obj, Object obj2) {
                zzdsa zzdsaVar = null;
                switch (zzdsa.zzdi[i - 1]) {
                    case 1:
                        return new C0012zzb();
                    case 2:
                        return new zza(zzdsaVar);
                    case 3:
                        return zzdob.zza(zzhpt, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\b\u0000", new Object[]{"zzdj", "zzhps"});
                    case 4:
                        return zzhpt;
                    case 5:
                        zzdpv<C0012zzb> zzbVar = zzdv;
                        if (zzbVar == null) {
                            synchronized (C0012zzb.class) {
                                zzbVar = zzdv;
                                if (zzbVar == null) {
                                    zzbVar = new zzdob.zzb<>(zzhpt);
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
                zzdob.zza((Class<C0012zzb>) C0012zzb.class, zzhpt);
            }
        }

        public static final class zzc extends zzdob<zzc, zza> implements zzdpm {
            private static volatile zzdpv<zzc> zzdv;
            private static final zzc zzhpv = new zzc();
            private int zzdj;
            private zzdmr zzgua;
            private byte zzhop = 2;
            private zzdmr zzhpu;

            private zzc() {
                zzdmr zzdmrVar = zzdmr.zzhcr;
                this.zzhpu = zzdmrVar;
                this.zzgua = zzdmrVar;
            }

            public static final class zza extends zzdob.zza<zzc, zza> implements zzdpm {
                private zza() {
                    super(zzc.zzhpv);
                }

                /* synthetic */ zza(zzdsa zzdsaVar) {
                    this();
                }
            }

            @Override // com.google.android.gms.internal.ads.zzdob
            protected final Object zza(int i, Object obj, Object obj2) {
                zzdsa zzdsaVar = null;
                switch (zzdsa.zzdi[i - 1]) {
                    case 1:
                        return new zzc();
                    case 2:
                        return new zza(zzdsaVar);
                    case 3:
                        return zzdob.zza(zzhpv, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0001\u0001Ԋ\u0000\u0002\n\u0001", new Object[]{"zzdj", "zzhpu", "zzgua"});
                    case 4:
                        return zzhpv;
                    case 5:
                        zzdpv<zzc> zzbVar = zzdv;
                        if (zzbVar == null) {
                            synchronized (zzc.class) {
                                zzbVar = zzdv;
                                if (zzbVar == null) {
                                    zzbVar = new zzdob.zzb<>(zzhpv);
                                    zzdv = zzbVar;
                                }
                            }
                        }
                        return zzbVar;
                    case 6:
                        return Byte.valueOf(this.zzhop);
                    case 7:
                        this.zzhop = (byte) (obj != null ? 1 : 0);
                        return null;
                    default:
                        throw new UnsupportedOperationException();
                }
            }

            static {
                zzdob.zza((Class<zzc>) zzc.class, zzhpv);
            }
        }

        public static final class zzd extends zzdob<zzd, zza> implements zzdpm {
            private static volatile zzdpv<zzd> zzdv;
            private static final zzd zzhqb = new zzd();
            private int zzdj;
            private C0013zzb zzhpw;
            private zzdmr zzhpy;
            private zzdmr zzhpz;
            private int zzhqa;
            private byte zzhop = 2;
            private zzdoj<zzc> zzhpx = zzdob.zzaxs();

            /* renamed from: com.google.android.gms.internal.ads.zzdrz$zzb$zzd$zzb, reason: collision with other inner class name */
            public static final class C0013zzb extends zzdob<C0013zzb, zza> implements zzdpm {
                private static volatile zzdpv<C0013zzb> zzdv;
                private static final C0013zzb zzhqf = new C0013zzb();
                private int zzdj;
                private zzdmr zzhqc;
                private zzdmr zzhqd;
                private zzdmr zzhqe;

                private C0013zzb() {
                    zzdmr zzdmrVar = zzdmr.zzhcr;
                    this.zzhqc = zzdmrVar;
                    this.zzhqd = zzdmrVar;
                    this.zzhqe = zzdmrVar;
                }

                /* renamed from: com.google.android.gms.internal.ads.zzdrz$zzb$zzd$zzb$zza */
                public static final class zza extends zzdob.zza<C0013zzb, zza> implements zzdpm {
                    private zza() {
                        super(C0013zzb.zzhqf);
                    }

                    /* synthetic */ zza(zzdsa zzdsaVar) {
                        this();
                    }
                }

                @Override // com.google.android.gms.internal.ads.zzdob
                protected final Object zza(int i, Object obj, Object obj2) {
                    zzdsa zzdsaVar = null;
                    switch (zzdsa.zzdi[i - 1]) {
                        case 1:
                            return new C0013zzb();
                        case 2:
                            return new zza(zzdsaVar);
                        case 3:
                            return zzdob.zza(zzhqf, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\n\u0000\u0002\n\u0001\u0003\n\u0002", new Object[]{"zzdj", "zzhqc", "zzhqd", "zzhqe"});
                        case 4:
                            return zzhqf;
                        case 5:
                            zzdpv<C0013zzb> zzbVar = zzdv;
                            if (zzbVar == null) {
                                synchronized (C0013zzb.class) {
                                    zzbVar = zzdv;
                                    if (zzbVar == null) {
                                        zzbVar = new zzdob.zzb<>(zzhqf);
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
                    zzdob.zza((Class<C0013zzb>) C0013zzb.class, zzhqf);
                }
            }

            private zzd() {
                zzdmr zzdmrVar = zzdmr.zzhcr;
                this.zzhpy = zzdmrVar;
                this.zzhpz = zzdmrVar;
            }

            public static final class zza extends zzdob.zza<zzd, zza> implements zzdpm {
                private zza() {
                    super(zzd.zzhqb);
                }

                /* synthetic */ zza(zzdsa zzdsaVar) {
                    this();
                }
            }

            @Override // com.google.android.gms.internal.ads.zzdob
            protected final Object zza(int i, Object obj, Object obj2) {
                zzdsa zzdsaVar = null;
                switch (zzdsa.zzdi[i - 1]) {
                    case 1:
                        return new zzd();
                    case 2:
                        return new zza(zzdsaVar);
                    case 3:
                        return zzdob.zza(zzhqb, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0001\u0001\t\u0000\u0002Л\u0003\n\u0001\u0004\n\u0002\u0005\u0004\u0003", new Object[]{"zzdj", "zzhpw", "zzhpx", zzc.class, "zzhpy", "zzhpz", "zzhqa"});
                    case 4:
                        return zzhqb;
                    case 5:
                        zzdpv<zzd> zzbVar = zzdv;
                        if (zzbVar == null) {
                            synchronized (zzd.class) {
                                zzbVar = zzdv;
                                if (zzbVar == null) {
                                    zzbVar = new zzdob.zzb<>(zzhqb);
                                    zzdv = zzbVar;
                                }
                            }
                        }
                        return zzbVar;
                    case 6:
                        return Byte.valueOf(this.zzhop);
                    case 7:
                        this.zzhop = (byte) (obj != null ? 1 : 0);
                        return null;
                    default:
                        throw new UnsupportedOperationException();
                }
            }

            static {
                zzdob.zza((Class<zzd>) zzd.class, zzhqb);
            }
        }

        public static final class zze extends zzdob<zze, zza> implements zzdpm {
            private static volatile zzdpv<zze> zzdv;
            private static final zze zzhqi = new zze();
            private int zzdj;
            private byte zzhop = 2;
            private zzdoj<zzc> zzhpx = zzdob.zzaxs();
            private zzdmr zzhpy;
            private zzdmr zzhpz;
            private int zzhqa;
            private C0014zzb zzhqg;
            private zzdmr zzhqh;

            /* renamed from: com.google.android.gms.internal.ads.zzdrz$zzb$zze$zzb, reason: collision with other inner class name */
            public static final class C0014zzb extends zzdob<C0014zzb, zza> implements zzdpm {
                private static volatile zzdpv<C0014zzb> zzdv;
                private static final C0014zzb zzhql = new C0014zzb();
                private int zzdj;
                private zzdmr zzhqe;
                private int zzhqj;
                private zzdmr zzhqk;

                private C0014zzb() {
                    zzdmr zzdmrVar = zzdmr.zzhcr;
                    this.zzhqk = zzdmrVar;
                    this.zzhqe = zzdmrVar;
                }

                /* renamed from: com.google.android.gms.internal.ads.zzdrz$zzb$zze$zzb$zza */
                public static final class zza extends zzdob.zza<C0014zzb, zza> implements zzdpm {
                    private zza() {
                        super(C0014zzb.zzhql);
                    }

                    /* synthetic */ zza(zzdsa zzdsaVar) {
                        this();
                    }
                }

                @Override // com.google.android.gms.internal.ads.zzdob
                protected final Object zza(int i, Object obj, Object obj2) {
                    zzdsa zzdsaVar = null;
                    switch (zzdsa.zzdi[i - 1]) {
                        case 1:
                            return new C0014zzb();
                        case 2:
                            return new zza(zzdsaVar);
                        case 3:
                            return zzdob.zza(zzhql, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0004\u0000\u0002\n\u0001\u0003\n\u0002", new Object[]{"zzdj", "zzhqj", "zzhqk", "zzhqe"});
                        case 4:
                            return zzhql;
                        case 5:
                            zzdpv<C0014zzb> zzbVar = zzdv;
                            if (zzbVar == null) {
                                synchronized (C0014zzb.class) {
                                    zzbVar = zzdv;
                                    if (zzbVar == null) {
                                        zzbVar = new zzdob.zzb<>(zzhql);
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
                    zzdob.zza((Class<C0014zzb>) C0014zzb.class, zzhql);
                }
            }

            private zze() {
                zzdmr zzdmrVar = zzdmr.zzhcr;
                this.zzhpy = zzdmrVar;
                this.zzhpz = zzdmrVar;
                this.zzhqh = zzdmrVar;
            }

            public static final class zza extends zzdob.zza<zze, zza> implements zzdpm {
                private zza() {
                    super(zze.zzhqi);
                }

                /* synthetic */ zza(zzdsa zzdsaVar) {
                    this();
                }
            }

            @Override // com.google.android.gms.internal.ads.zzdob
            protected final Object zza(int i, Object obj, Object obj2) {
                zzdsa zzdsaVar = null;
                switch (zzdsa.zzdi[i - 1]) {
                    case 1:
                        return new zze();
                    case 2:
                        return new zza(zzdsaVar);
                    case 3:
                        return zzdob.zza(zzhqi, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0001\u0001\t\u0000\u0002Л\u0003\n\u0001\u0004\n\u0002\u0005\u0004\u0003\u0006\n\u0004", new Object[]{"zzdj", "zzhqg", "zzhpx", zzc.class, "zzhpy", "zzhpz", "zzhqa", "zzhqh"});
                    case 4:
                        return zzhqi;
                    case 5:
                        zzdpv<zze> zzbVar = zzdv;
                        if (zzbVar == null) {
                            synchronized (zze.class) {
                                zzbVar = zzdv;
                                if (zzbVar == null) {
                                    zzbVar = new zzdob.zzb<>(zzhqi);
                                    zzdv = zzbVar;
                                }
                            }
                        }
                        return zzbVar;
                    case 6:
                        return Byte.valueOf(this.zzhop);
                    case 7:
                        this.zzhop = (byte) (obj != null ? 1 : 0);
                        return null;
                    default:
                        throw new UnsupportedOperationException();
                }
            }

            static {
                zzdob.zza((Class<zze>) zze.class, zzhqi);
            }
        }

        public static final class zzf extends zzdob<zzf, zza> implements zzdpm {
            private static volatile zzdpv<zzf> zzdv;
            private static final zzf zzhqo = new zzf();
            private int zzbzi;
            private int zzdj;
            private String zzhqm = "";
            private zzdmr zzhqn = zzdmr.zzhcr;

            /* renamed from: com.google.android.gms.internal.ads.zzdrz$zzb$zzf$zzb, reason: collision with other inner class name */
            public enum EnumC0015zzb implements zzdoe {
                TYPE_UNKNOWN(0),
                TYPE_CREATIVE(1);

                private static final zzdof<EnumC0015zzb> zzeg = new zzdsd();
                private final int value;

                @Override // com.google.android.gms.internal.ads.zzdoe
                public final int zzac() {
                    return this.value;
                }

                public static EnumC0015zzb zzhh(int i) {
                    if (i == 0) {
                        return TYPE_UNKNOWN;
                    }
                    if (i != 1) {
                        return null;
                    }
                    return TYPE_CREATIVE;
                }

                public static zzdog zzad() {
                    return zzdse.zzei;
                }

                EnumC0015zzb(int i) {
                    this.value = i;
                }
            }

            private zzf() {
            }

            public static final class zza extends zzdob.zza<zzf, zza> implements zzdpm {
                private zza() {
                    super(zzf.zzhqo);
                }

                /* synthetic */ zza(zzdsa zzdsaVar) {
                    this();
                }
            }

            @Override // com.google.android.gms.internal.ads.zzdob
            protected final Object zza(int i, Object obj, Object obj2) {
                zzdsa zzdsaVar = null;
                switch (zzdsa.zzdi[i - 1]) {
                    case 1:
                        return new zzf();
                    case 2:
                        return new zza(zzdsaVar);
                    case 3:
                        return zzdob.zza(zzhqo, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\f\u0000\u0002\b\u0001\u0003\n\u0002", new Object[]{"zzdj", "zzbzi", EnumC0015zzb.zzad(), "zzhqm", "zzhqn"});
                    case 4:
                        return zzhqo;
                    case 5:
                        zzdpv<zzf> zzbVar = zzdv;
                        if (zzbVar == null) {
                            synchronized (zzf.class) {
                                zzbVar = zzdv;
                                if (zzbVar == null) {
                                    zzbVar = new zzdob.zzb<>(zzhqo);
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
                zzdob.zza((Class<zzf>) zzf.class, zzhqo);
            }
        }

        public enum zzg implements zzdoe {
            UNKNOWN(0),
            URL_PHISHING(1),
            URL_MALWARE(2),
            URL_UNWANTED(3),
            CLIENT_SIDE_PHISHING_URL(4),
            CLIENT_SIDE_MALWARE_URL(5),
            DANGEROUS_DOWNLOAD_RECOVERY(6),
            DANGEROUS_DOWNLOAD_WARNING(7),
            OCTAGON_AD(8),
            OCTAGON_AD_SB_MATCH(9);

            private static final zzdof<zzg> zzeg = new zzdsf();
            private final int value;

            @Override // com.google.android.gms.internal.ads.zzdoe
            public final int zzac() {
                return this.value;
            }

            public static zzg zzhi(int i) {
                switch (i) {
                    case 0:
                        return UNKNOWN;
                    case 1:
                        return URL_PHISHING;
                    case 2:
                        return URL_MALWARE;
                    case 3:
                        return URL_UNWANTED;
                    case 4:
                        return CLIENT_SIDE_PHISHING_URL;
                    case 5:
                        return CLIENT_SIDE_MALWARE_URL;
                    case 6:
                        return DANGEROUS_DOWNLOAD_RECOVERY;
                    case 7:
                        return DANGEROUS_DOWNLOAD_WARNING;
                    case 8:
                        return OCTAGON_AD;
                    case 9:
                        return OCTAGON_AD_SB_MATCH;
                    default:
                        return null;
                }
            }

            public static zzdog zzad() {
                return zzdsg.zzei;
            }

            zzg(int i) {
                this.value = i;
            }
        }

        public static final class zzh extends zzdob<zzh, C0016zzb> implements zzdpm {
            private static volatile zzdpv<zzh> zzdv;
            private static final zzh zzhrl = new zzh();
            private int zzdj;
            private int zzhrd;
            private zzd zzhre;
            private zze zzhrf;
            private int zzhrg;
            private int zzhrj;
            private byte zzhop = 2;
            private String zzhos = "";
            private zzdoh zzhrh = zzdob.zzaxr();
            private String zzhri = "";
            private zzdoj<String> zzhrk = zzdob.zzaxs();

            public enum zza implements zzdoe {
                AD_RESOURCE_UNKNOWN(0),
                AD_RESOURCE_CREATIVE(1),
                AD_RESOURCE_POST_CLICK(2),
                AD_RESOURCE_AUTO_CLICK_DESTINATION(3);

                private static final zzdof<zza> zzeg = new zzdsh();
                private final int value;

                @Override // com.google.android.gms.internal.ads.zzdoe
                public final int zzac() {
                    return this.value;
                }

                public static zza zzhj(int i) {
                    if (i == 0) {
                        return AD_RESOURCE_UNKNOWN;
                    }
                    if (i == 1) {
                        return AD_RESOURCE_CREATIVE;
                    }
                    if (i == 2) {
                        return AD_RESOURCE_POST_CLICK;
                    }
                    if (i != 3) {
                        return null;
                    }
                    return AD_RESOURCE_AUTO_CLICK_DESTINATION;
                }

                public static zzdog zzad() {
                    return zzdsi.zzei;
                }

                zza(int i) {
                    this.value = i;
                }
            }

            private zzh() {
            }

            /* renamed from: com.google.android.gms.internal.ads.zzdrz$zzb$zzh$zzb, reason: collision with other inner class name */
            public static final class C0016zzb extends zzdob.zza<zzh, C0016zzb> implements zzdpm {
                private C0016zzb() {
                    super(zzh.zzhrl);
                }

                /* synthetic */ C0016zzb(zzdsa zzdsaVar) {
                    this();
                }
            }

            @Override // com.google.android.gms.internal.ads.zzdob
            protected final Object zza(int i, Object obj, Object obj2) {
                zzdsa zzdsaVar = null;
                switch (zzdsa.zzdi[i - 1]) {
                    case 1:
                        return new zzh();
                    case 2:
                        return new C0016zzb(zzdsaVar);
                    case 3:
                        return zzdob.zza(zzhrl, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0002\u0003\u0001Ԅ\u0000\u0002\b\u0001\u0003Љ\u0002\u0004Љ\u0003\u0005\u0004\u0004\u0006\u0016\u0007\b\u0005\b\f\u0006\t\u001a", new Object[]{"zzdj", "zzhrd", "zzhos", "zzhre", "zzhrf", "zzhrg", "zzhrh", "zzhri", "zzhrj", zza.zzad(), "zzhrk"});
                    case 4:
                        return zzhrl;
                    case 5:
                        zzdpv<zzh> zzbVar = zzdv;
                        if (zzbVar == null) {
                            synchronized (zzh.class) {
                                zzbVar = zzdv;
                                if (zzbVar == null) {
                                    zzbVar = new zzdob.zzb<>(zzhrl);
                                    zzdv = zzbVar;
                                }
                            }
                        }
                        return zzbVar;
                    case 6:
                        return Byte.valueOf(this.zzhop);
                    case 7:
                        this.zzhop = (byte) (obj != null ? 1 : 0);
                        return null;
                    default:
                        throw new UnsupportedOperationException();
                }
            }

            static {
                zzdob.zza((Class<zzh>) zzh.class, zzhrl);
            }
        }

        public static final class zzi extends zzdob<zzi, zza> implements zzdpm {
            private static volatile zzdpv<zzi> zzdv;
            private static final zzi zzhru = new zzi();
            private int zzdj;
            private String zzhrr = "";
            private long zzhrs;
            private boolean zzhrt;

            private zzi() {
            }

            public static final class zza extends zzdob.zza<zzi, zza> implements zzdpm {
                private zza() {
                    super(zzi.zzhru);
                }

                /* synthetic */ zza(zzdsa zzdsaVar) {
                    this();
                }
            }

            @Override // com.google.android.gms.internal.ads.zzdob
            protected final Object zza(int i, Object obj, Object obj2) {
                zzdsa zzdsaVar = null;
                switch (zzdsa.zzdi[i - 1]) {
                    case 1:
                        return new zzi();
                    case 2:
                        return new zza(zzdsaVar);
                    case 3:
                        return zzdob.zza(zzhru, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\b\u0000\u0002\u0002\u0001\u0003\u0007\u0002", new Object[]{"zzdj", "zzhrr", "zzhrs", "zzhrt"});
                    case 4:
                        return zzhru;
                    case 5:
                        zzdpv<zzi> zzbVar = zzdv;
                        if (zzbVar == null) {
                            synchronized (zzi.class) {
                                zzbVar = zzdv;
                                if (zzbVar == null) {
                                    zzbVar = new zzdob.zzb<>(zzhru);
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
                zzdob.zza((Class<zzi>) zzi.class, zzhru);
            }
        }

        private zzb() {
        }

        public static final class zza extends zzdob.zza<zzb, zza> implements zzdpm {
            private zza() {
                super(zzb.zzhpr);
            }

            /* synthetic */ zza(zzdsa zzdsaVar) {
                this();
            }
        }

        @Override // com.google.android.gms.internal.ads.zzdob
        protected final Object zza(int i, Object obj, Object obj2) {
            zzdsa zzdsaVar = null;
            switch (zzdsa.zzdi[i - 1]) {
                case 1:
                    return new zzb();
                case 2:
                    return new zza(zzdsaVar);
                case 3:
                    return zzdob.zza(zzhpr, "\u0001\u0012\u0000\u0001\u0001\u0015\u0012\u0000\u0004\u0001\u0001\b\u0002\u0002\b\u0003\u0003\b\u0004\u0004Л\u0005\u0007\b\u0006\u001a\u0007\b\t\b\u0007\n\t\u0007\u000b\n\f\u0000\u000b\f\u0001\f\t\u0005\r\b\u0006\u000e\t\u0007\u000f\n\f\u0011\t\r\u0014\u001a\u0015\u001a", new Object[]{"zzdj", "zzhos", "zzhpd", "zzhpe", "zzhpg", zzh.class, "zzhpj", "zzhpk", "zzhpl", "zzhpm", "zzhpn", "zzbzi", zzg.zzad(), "zzhpc", zza.zzc.zzad(), "zzhpf", "zzhph", "zzhpi", "zzhol", "zzhpo", "zzhpp", "zzhpq"});
                case 4:
                    return zzhpr;
                case 5:
                    zzdpv<zzb> zzbVar = zzdv;
                    if (zzbVar == null) {
                        synchronized (zzb.class) {
                            zzbVar = zzdv;
                            if (zzbVar == null) {
                                zzbVar = new zzdob.zzb<>(zzhpr);
                                zzdv = zzbVar;
                            }
                        }
                    }
                    return zzbVar;
                case 6:
                    return Byte.valueOf(this.zzhop);
                case 7:
                    this.zzhop = (byte) (obj != null ? 1 : 0);
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        static {
            zzdob.zza((Class<zzb>) zzb.class, zzhpr);
        }
    }
}
