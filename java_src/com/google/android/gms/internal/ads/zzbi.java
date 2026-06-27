package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdob;

/* loaded from: classes2.dex */
public final class zzbi {

    public static final class zza extends zzdob<zza, C0005zza> implements zzdpm {
        private static final zza zzdu = new zza();
        private static volatile zzdpv<zza> zzdv;
        private int zzdj;
        private long zzdl;
        private long zzdp;
        private long zzdq;
        private long zzds;
        private String zzdk = "";
        private String zzdm = "";
        private String zzdn = "";
        private String zzdo = "";
        private String zzdr = "";
        private String zzdt = "";

        private zza() {
        }

        /* renamed from: com.google.android.gms.internal.ads.zzbi$zza$zza, reason: collision with other inner class name */
        public static final class C0005zza extends zzdob.zza<zza, C0005zza> implements zzdpm {
            private C0005zza() {
                super(zza.zzdu);
            }

            public final C0005zza zzl(String str) {
                zzaxw();
                ((zza) this.zzhhh).zzi(str);
                return this;
            }

            public final C0005zza zzd(long j) {
                zzaxw();
                ((zza) this.zzhhh).zzc(j);
                return this;
            }

            public final C0005zza zzm(String str) {
                zzaxw();
                ((zza) this.zzhhh).zzj(str);
                return this;
            }

            public final C0005zza zzn(String str) {
                zzaxw();
                ((zza) this.zzhhh).zzk(str);
                return this;
            }

            /* synthetic */ C0005zza(zzbj zzbjVar) {
                this();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzi(String str) {
            if (str == null) {
                throw new NullPointerException();
            }
            this.zzdj |= 1;
            this.zzdk = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzc(long j) {
            this.zzdj |= 2;
            this.zzdl = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzj(String str) {
            if (str == null) {
                throw new NullPointerException();
            }
            this.zzdj |= 4;
            this.zzdm = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzk(String str) {
            if (str == null) {
                throw new NullPointerException();
            }
            this.zzdj |= 8;
            this.zzdn = str;
        }

        public static C0005zza zzs() {
            return (C0005zza) zzdu.zza(zzdob.zze.zzhho, (Object) null, (Object) null);
        }

        @Override // com.google.android.gms.internal.ads.zzdob
        protected final Object zza(int i, Object obj, Object obj2) {
            zzbj zzbjVar = null;
            switch (zzbj.zzdi[i - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new C0005zza(zzbjVar);
                case 3:
                    return zzdob.zza(zzdu, "\u0001\n\u0000\u0001\u0001\n\n\u0000\u0000\u0000\u0001\b\u0000\u0002\u0002\u0001\u0003\b\u0002\u0004\b\u0003\u0005\b\u0004\u0006\u0002\u0005\u0007\u0002\u0006\b\b\u0007\t\u0002\b\n\b\t", new Object[]{"zzdj", "zzdk", "zzdl", "zzdm", "zzdn", "zzdo", "zzdp", "zzdq", "zzdr", "zzds", "zzdt"});
                case 4:
                    return zzdu;
                case 5:
                    zzdpv<zza> zzbVar = zzdv;
                    if (zzbVar == null) {
                        synchronized (zza.class) {
                            zzbVar = zzdv;
                            if (zzbVar == null) {
                                zzbVar = new zzdob.zzb<>(zzdu);
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
            zzdob.zza((Class<zza>) zza.class, zzdu);
        }
    }
}
