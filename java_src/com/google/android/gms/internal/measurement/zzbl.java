package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzez;

/* loaded from: classes2.dex */
public final class zzbl {

    public static final class zza extends zzez<zza, C0020zza> implements zzgj {
        private static final zza zztp = new zza();
        private static volatile zzgs<zza> zztq;
        private int zztj;
        private int zztk;
        private boolean zztl;
        private String zztm = "";
        private String zztn = "";
        private String zzto = "";

        public enum zzb implements zzfc {
            UNKNOWN_COMPARISON_TYPE(0),
            LESS_THAN(1),
            GREATER_THAN(2),
            EQUAL(3),
            BETWEEN(4);

            private static final zzfd<zzb> zztw = new zzbn();
            private final int value;

            @Override // com.google.android.gms.internal.measurement.zzfc
            public final int zzgp() {
                return this.value;
            }

            public static zzb zze(int i) {
                if (i == 0) {
                    return UNKNOWN_COMPARISON_TYPE;
                }
                if (i == 1) {
                    return LESS_THAN;
                }
                if (i == 2) {
                    return GREATER_THAN;
                }
                if (i == 3) {
                    return EQUAL;
                }
                if (i != 4) {
                    return null;
                }
                return BETWEEN;
            }

            public static zzfe zzgq() {
                return zzbo.zzty;
            }

            zzb(int i) {
                this.value = i;
            }
        }

        private zza() {
        }

        /* renamed from: com.google.android.gms.internal.measurement.zzbl$zza$zza, reason: collision with other inner class name */
        public static final class C0020zza extends zzez.zza<zza, C0020zza> implements zzgj {
            private C0020zza() {
                super(zza.zztp);
            }

            /* synthetic */ C0020zza(zzbm zzbmVar) {
                this();
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzez
        protected final Object zza(int i, Object obj, Object obj2) {
            zzbm zzbmVar = null;
            switch (zzbm.zzti[i - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new C0020zza(zzbmVar);
                case 3:
                    return zzez.zza(zztp, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\f\u0000\u0002\u0007\u0001\u0003\b\u0002\u0004\b\u0003\u0005\b\u0004", new Object[]{"zztj", "zztk", zzb.zzgq(), "zztl", "zztm", "zztn", "zzto"});
                case 4:
                    return zztp;
                case 5:
                    zzgs<zza> zzbVar = zztq;
                    if (zzbVar == null) {
                        synchronized (zza.class) {
                            zzbVar = zztq;
                            if (zzbVar == null) {
                                zzbVar = new zzez.zzb<>(zztp);
                                zztq = zzbVar;
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
            zzez.zza((Class<zza>) zza.class, zztp);
        }
    }

    public static final class zzb extends zzez<zzb, zza> implements zzgj {
        private static volatile zzgs<zzb> zztq;
        private static final zzb zzud = new zzb();
        private int zztj;
        private int zztz;
        private boolean zzub;
        private String zzua = "";
        private zzfg<String> zzuc = zzez.zzmj();

        /* renamed from: com.google.android.gms.internal.measurement.zzbl$zzb$zzb, reason: collision with other inner class name */
        public enum EnumC0021zzb implements zzfc {
            UNKNOWN_MATCH_TYPE(0),
            REGEXP(1),
            BEGINS_WITH(2),
            ENDS_WITH(3),
            PARTIAL(4),
            EXACT(5),
            IN_LIST(6);

            private static final zzfd<EnumC0021zzb> zztw = new zzbp();
            private final int value;

            @Override // com.google.android.gms.internal.measurement.zzfc
            public final int zzgp() {
                return this.value;
            }

            public static EnumC0021zzb zzg(int i) {
                switch (i) {
                    case 0:
                        return UNKNOWN_MATCH_TYPE;
                    case 1:
                        return REGEXP;
                    case 2:
                        return BEGINS_WITH;
                    case 3:
                        return ENDS_WITH;
                    case 4:
                        return PARTIAL;
                    case 5:
                        return EXACT;
                    case 6:
                        return IN_LIST;
                    default:
                        return null;
                }
            }

            public static zzfe zzgq() {
                return zzbq.zzty;
            }

            EnumC0021zzb(int i) {
                this.value = i;
            }
        }

        private zzb() {
        }

        public static final class zza extends zzez.zza<zzb, zza> implements zzgj {
            private zza() {
                super(zzb.zzud);
            }

            /* synthetic */ zza(zzbm zzbmVar) {
                this();
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzez
        protected final Object zza(int i, Object obj, Object obj2) {
            zzbm zzbmVar = null;
            switch (zzbm.zzti[i - 1]) {
                case 1:
                    return new zzb();
                case 2:
                    return new zza(zzbmVar);
                case 3:
                    return zzez.zza(zzud, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\f\u0000\u0002\b\u0001\u0003\u0007\u0002\u0004\u001a", new Object[]{"zztj", "zztz", EnumC0021zzb.zzgq(), "zzua", "zzub", "zzuc"});
                case 4:
                    return zzud;
                case 5:
                    zzgs<zzb> zzbVar = zztq;
                    if (zzbVar == null) {
                        synchronized (zzb.class) {
                            zzbVar = zztq;
                            if (zzbVar == null) {
                                zzbVar = new zzez.zzb<>(zzud);
                                zztq = zzbVar;
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
            zzez.zza((Class<zzb>) zzb.class, zzud);
        }
    }
}
