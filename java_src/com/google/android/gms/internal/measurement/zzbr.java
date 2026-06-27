package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzez;

/* loaded from: classes2.dex */
public final class zzbr {

    public static final class zza extends zzez<zza, C0022zza> implements zzgj {
        private static volatile zzgs<zza> zztq;
        private static final zza zzuo = new zza();
        private int zztj;
        private String zzum = "";
        private String zzun = "";

        private zza() {
        }

        /* renamed from: com.google.android.gms.internal.measurement.zzbr$zza$zza, reason: collision with other inner class name */
        public static final class C0022zza extends zzez.zza<zza, C0022zza> implements zzgj {
            private C0022zza() {
                super(zza.zzuo);
            }

            /* synthetic */ C0022zza(zzbs zzbsVar) {
                this();
            }
        }

        public final String getKey() {
            return this.zzum;
        }

        public final String getValue() {
            return this.zzun;
        }

        @Override // com.google.android.gms.internal.measurement.zzez
        protected final Object zza(int i, Object obj, Object obj2) {
            zzbs zzbsVar = null;
            switch (zzbs.zzti[i - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new C0022zza(zzbsVar);
                case 3:
                    return zzez.zza(zzuo, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\b\u0000\u0002\b\u0001", new Object[]{"zztj", "zzum", "zzun"});
                case 4:
                    return zzuo;
                case 5:
                    zzgs<zza> zzbVar = zztq;
                    if (zzbVar == null) {
                        synchronized (zza.class) {
                            zzbVar = zztq;
                            if (zzbVar == null) {
                                zzbVar = new zzez.zzb<>(zzuo);
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

        public static zzgs<zza> zzgs() {
            return (zzgs) zzuo.zza(zzez.zze.zzaha, (Object) null, (Object) null);
        }

        static {
            zzez.zza((Class<zza>) zza.class, zzuo);
        }
    }
}
