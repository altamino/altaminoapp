package com.google.android.gms.internal.ads;

import android.support.v4.view.accessibility.AccessibilityEventCompat;
import com.google.android.exoplayer2.C;
import com.google.android.gms.internal.ads.zzdob;

/* loaded from: classes2.dex */
public final class zzbp {

    public static final class zza extends zzdob<zza, C0007zza> implements zzdpm {
        private static volatile zzdpv<zza> zzdv;
        private static final zza zzhj = new zza();
        private int zzdj;
        private int zzeq;
        private int zzer;
        private long zzet;
        private long zzeu;
        private long zzev;
        private long zzew;
        private long zzex;
        private long zzey;
        private long zzez;
        private long zzfa;
        private long zzfb;
        private long zzfc;
        private long zzfe;
        private long zzff;
        private long zzfg;
        private long zzfh;
        private long zzfi;
        private long zzfj;
        private long zzfk;
        private long zzfl;
        private long zzfm;
        private long zzfo;
        private long zzfp;
        private long zzfq;
        private long zzfr;
        private zzb zzfu;
        private zze zzgj;
        private zzf zzgl;
        private int zzgw;
        private int zzgx;
        private int zzgy;
        private zzf zzgz;
        private long zzhc;
        private boolean zzhf;
        private long zzhh;
        private zze zzhi;
        private String zzes = "";
        private String zzdt = "";
        private String zzfd = "";
        private String zzej = "";
        private String zzfn = "";
        private String zzel = "";
        private long zzfs = -1;
        private long zzft = -1;
        private long zzfv = -1;
        private long zzfw = -1;
        private long zzfx = -1;
        private long zzfy = -1;
        private long zzfz = -1;
        private long zzga = -1;
        private String zzem = "D";
        private String zzen = "D";
        private int zzgb = 1000;
        private int zzgc = 1000;
        private long zzgd = -1;
        private long zzge = -1;
        private long zzgf = -1;
        private long zzgg = -1;
        private long zzgh = -1;
        private int zzgi = 1000;
        private zzdoj<zze> zzgk = zzdob.zzaxs();
        private long zzgm = -1;
        private long zzgn = -1;
        private long zzgo = -1;
        private long zzgp = -1;
        private long zzgq = -1;
        private long zzgr = -1;
        private long zzgs = -1;
        private long zzgt = -1;
        private String zzgu = "D";
        private long zzgv = -1;
        private long zzha = -1;
        private int zzhb = 1000;
        private String zzhd = "";
        private int zzhe = 2;
        private String zzhg = "";

        public enum zzb implements zzdoe {
            DEBUGGER_STATE_UNSPECIFIED(0),
            DEBUGGER_STATE_NOT_INSTALLED(1),
            DEBUGGER_STATE_INSTALLED(2),
            DEBUGGER_STATE_ACTIVE(3);

            private static final zzdof<zzb> zzeg = new zzbr();
            private final int value;

            @Override // com.google.android.gms.internal.ads.zzdoe
            public final int zzac() {
                return this.value;
            }

            public static zzb zzg(int i) {
                if (i == 0) {
                    return DEBUGGER_STATE_UNSPECIFIED;
                }
                if (i == 1) {
                    return DEBUGGER_STATE_NOT_INSTALLED;
                }
                if (i == 2) {
                    return DEBUGGER_STATE_INSTALLED;
                }
                if (i != 3) {
                    return null;
                }
                return DEBUGGER_STATE_ACTIVE;
            }

            public static zzdog zzad() {
                return zzbs.zzei;
            }

            zzb(int i) {
                this.value = i;
            }
        }

        public enum zzc implements zzdoe {
            DEVICE_IDENTIFIER_NO_ID(0),
            DEVICE_IDENTIFIER_APP_SPECIFIC_ID(1),
            DEVICE_IDENTIFIER_GLOBAL_ID(2),
            DEVICE_IDENTIFIER_ADVERTISER_ID(3),
            DEVICE_IDENTIFIER_ADVERTISER_ID_UNHASHED(4),
            DEVICE_IDENTIFIER_ANDROID_AD_ID(5),
            DEVICE_IDENTIFIER_GFIBER_ADVERTISING_ID(6);

            private static final zzdof<zzc> zzeg = new zzbt();
            private final int value;

            @Override // com.google.android.gms.internal.ads.zzdoe
            public final int zzac() {
                return this.value;
            }

            public static zzc zzh(int i) {
                switch (i) {
                    case 0:
                        return DEVICE_IDENTIFIER_NO_ID;
                    case 1:
                        return DEVICE_IDENTIFIER_APP_SPECIFIC_ID;
                    case 2:
                        return DEVICE_IDENTIFIER_GLOBAL_ID;
                    case 3:
                        return DEVICE_IDENTIFIER_ADVERTISER_ID;
                    case 4:
                        return DEVICE_IDENTIFIER_ADVERTISER_ID_UNHASHED;
                    case 5:
                        return DEVICE_IDENTIFIER_ANDROID_AD_ID;
                    case 6:
                        return DEVICE_IDENTIFIER_GFIBER_ADVERTISING_ID;
                    default:
                        return null;
                }
            }

            public static zzdog zzad() {
                return zzbu.zzei;
            }

            zzc(int i) {
                this.value = i;
            }
        }

        public enum zzd implements zzdoe {
            ERROR_ENCODE_SIZE_FAIL(1),
            ERROR_UNKNOWN(3),
            ERROR_NO_SIGNALS(5),
            ERROR_ENCRYPTION(7),
            ERROR_MEMORY(9),
            ERROR_SIMULATOR(11),
            ERROR_SERVICE(13),
            ERROR_THREAD(15),
            PSN_WEB64_FAIL(2),
            PSN_DECRYPT_SIZE_FAIL(4),
            PSN_MD5_CHECK_FAIL(8),
            PSN_MD5_SIZE_FAIL(16),
            PSN_MD5_FAIL(32),
            PSN_DECODE_FAIL(64),
            PSN_SALT_FAIL(128),
            PSN_BITSLICER_FAIL(256),
            PSN_REQUEST_TYPE_FAIL(512),
            PSN_INVALID_ERROR_CODE(1024),
            PSN_TIMESTAMP_EXPIRED(2048),
            PSN_ENCODE_SIZE_FAIL(4096),
            PSN_BLANK_VALUE(8192),
            PSN_INITIALIZATION_FAIL(16384),
            PSN_GASS_CLIENT_FAIL(32768),
            PSN_SIGNALS_TIMEOUT(65536),
            PSN_TINK_FAIL(131072);

            private static final zzdof<zzd> zzeg = new zzbv();
            private final int value;

            @Override // com.google.android.gms.internal.ads.zzdoe
            public final int zzac() {
                return this.value;
            }

            zzd(int i) {
                this.value = i;
            }
        }

        public static final class zze extends zzdob<zze, C0008zza> implements zzdpm {
            private static volatile zzdpv<zze> zzdv;
            private static final zze zzjq = new zze();
            private int zzdj;
            private long zzjk;
            private long zzjl;
            private long zzfe = -1;
            private long zzff = -1;
            private long zzix = -1;
            private long zziy = -1;
            private long zziz = -1;
            private long zzja = -1;
            private int zzjb = 1000;
            private long zzjc = -1;
            private long zzjd = -1;
            private long zzje = -1;
            private int zzjf = 1000;
            private long zzjg = -1;
            private long zzjh = -1;
            private long zzji = -1;
            private long zzjj = -1;
            private long zzjm = -1;
            private long zzjn = -1;
            private long zzjo = -1;
            private long zzjp = -1;

            private zze() {
            }

            /* renamed from: com.google.android.gms.internal.ads.zzbp$zza$zze$zza, reason: collision with other inner class name */
            public static final class C0008zza extends zzdob.zza<zze, C0008zza> implements zzdpm {
                private C0008zza() {
                    super(zze.zzjq);
                }

                public final C0008zza zzch(long j) {
                    zzaxw();
                    ((zze) this.zzhhh).zzj(j);
                    return this;
                }

                public final C0008zza zzci(long j) {
                    zzaxw();
                    ((zze) this.zzhhh).zzk(j);
                    return this;
                }

                public final C0008zza zzcj(long j) {
                    zzaxw();
                    ((zze) this.zzhhh).zzbs(j);
                    return this;
                }

                public final C0008zza zzck(long j) {
                    zzaxw();
                    ((zze) this.zzhhh).zzbt(j);
                    return this;
                }

                public final C0008zza zzas() {
                    zzaxw();
                    ((zze) this.zzhhh).zzap();
                    return this;
                }

                public final C0008zza zzcl(long j) {
                    zzaxw();
                    ((zze) this.zzhhh).zzbu(j);
                    return this;
                }

                public final C0008zza zzcm(long j) {
                    zzaxw();
                    ((zze) this.zzhhh).zzbv(j);
                    return this;
                }

                public final C0008zza zzk(zzbz zzbzVar) {
                    zzaxw();
                    ((zze) this.zzhhh).zzi(zzbzVar);
                    return this;
                }

                public final C0008zza zzcn(long j) {
                    zzaxw();
                    ((zze) this.zzhhh).zzbw(j);
                    return this;
                }

                public final C0008zza zzco(long j) {
                    zzaxw();
                    ((zze) this.zzhhh).zzbx(j);
                    return this;
                }

                public final C0008zza zzcp(long j) {
                    zzaxw();
                    ((zze) this.zzhhh).zzby(j);
                    return this;
                }

                public final C0008zza zzl(zzbz zzbzVar) {
                    zzaxw();
                    ((zze) this.zzhhh).zzj(zzbzVar);
                    return this;
                }

                public final C0008zza zzcq(long j) {
                    zzaxw();
                    ((zze) this.zzhhh).zzbz(j);
                    return this;
                }

                public final C0008zza zzcr(long j) {
                    zzaxw();
                    ((zze) this.zzhhh).zzca(j);
                    return this;
                }

                public final C0008zza zzcs(long j) {
                    zzaxw();
                    ((zze) this.zzhhh).zzcb(j);
                    return this;
                }

                public final C0008zza zzct(long j) {
                    zzaxw();
                    ((zze) this.zzhhh).zzcc(j);
                    return this;
                }

                public final C0008zza zzcu(long j) {
                    zzaxw();
                    ((zze) this.zzhhh).zzcd(j);
                    return this;
                }

                public final C0008zza zzcv(long j) {
                    zzaxw();
                    ((zze) this.zzhhh).zzce(j);
                    return this;
                }

                public final C0008zza zzcw(long j) {
                    zzaxw();
                    ((zze) this.zzhhh).zzcf(j);
                    return this;
                }

                public final C0008zza zzcx(long j) {
                    zzaxw();
                    ((zze) this.zzhhh).zzcg(j);
                    return this;
                }

                /* synthetic */ C0008zza(zzbq zzbqVar) {
                    this();
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void zzj(long j) {
                this.zzdj |= 1;
                this.zzfe = j;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void zzk(long j) {
                this.zzdj |= 2;
                this.zzff = j;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void zzbs(long j) {
                this.zzdj |= 4;
                this.zzix = j;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void zzbt(long j) {
                this.zzdj |= 8;
                this.zziy = j;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void zzap() {
                this.zzdj &= -9;
                this.zziy = -1L;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void zzbu(long j) {
                this.zzdj |= 16;
                this.zziz = j;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void zzbv(long j) {
                this.zzdj |= 32;
                this.zzja = j;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void zzi(zzbz zzbzVar) {
                if (zzbzVar == null) {
                    throw new NullPointerException();
                }
                this.zzdj |= 64;
                this.zzjb = zzbzVar.zzac();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void zzbw(long j) {
                this.zzdj |= 128;
                this.zzjc = j;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void zzbx(long j) {
                this.zzdj |= 256;
                this.zzjd = j;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void zzby(long j) {
                this.zzdj |= 512;
                this.zzje = j;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void zzj(zzbz zzbzVar) {
                if (zzbzVar == null) {
                    throw new NullPointerException();
                }
                this.zzdj |= 1024;
                this.zzjf = zzbzVar.zzac();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void zzbz(long j) {
                this.zzdj |= 2048;
                this.zzjg = j;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void zzca(long j) {
                this.zzdj |= 4096;
                this.zzjh = j;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void zzcb(long j) {
                this.zzdj |= 8192;
                this.zzji = j;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void zzcc(long j) {
                this.zzdj |= 16384;
                this.zzjj = j;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void zzcd(long j) {
                this.zzdj |= 32768;
                this.zzjk = j;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void zzce(long j) {
                this.zzdj |= 65536;
                this.zzjl = j;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void zzcf(long j) {
                this.zzdj |= 131072;
                this.zzjm = j;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void zzcg(long j) {
                this.zzdj |= 262144;
                this.zzjn = j;
            }

            public static C0008zza zzaq() {
                return (C0008zza) zzjq.zza(zzdob.zze.zzhho, (Object) null, (Object) null);
            }

            @Override // com.google.android.gms.internal.ads.zzdob
            protected final Object zza(int i, Object obj, Object obj2) {
                zzbq zzbqVar = null;
                switch (zzbq.zzdi[i - 1]) {
                    case 1:
                        return new zze();
                    case 2:
                        return new C0008zza(zzbqVar);
                    case 3:
                        return zzdob.zza(zzjq, "\u0001\u0015\u0000\u0001\u0001\u0015\u0015\u0000\u0000\u0000\u0001\u0002\u0000\u0002\u0002\u0001\u0003\u0002\u0002\u0004\u0002\u0003\u0005\u0002\u0004\u0006\u0002\u0005\u0007\f\u0006\b\u0002\u0007\t\u0002\b\n\u0002\t\u000b\f\n\f\u0002\u000b\r\u0002\f\u000e\u0002\r\u000f\u0002\u000e\u0010\u0002\u000f\u0011\u0002\u0010\u0012\u0002\u0011\u0013\u0002\u0012\u0014\u0002\u0013\u0015\u0002\u0014", new Object[]{"zzdj", "zzfe", "zzff", "zzix", "zziy", "zziz", "zzja", "zzjb", zzbz.zzad(), "zzjc", "zzjd", "zzje", "zzjf", zzbz.zzad(), "zzjg", "zzjh", "zzji", "zzjj", "zzjk", "zzjl", "zzjm", "zzjn", "zzjo", "zzjp"});
                    case 4:
                        return zzjq;
                    case 5:
                        zzdpv<zze> zzbVar = zzdv;
                        if (zzbVar == null) {
                            synchronized (zze.class) {
                                zzbVar = zzdv;
                                if (zzbVar == null) {
                                    zzbVar = new zzdob.zzb<>(zzjq);
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
                zzdob.zza((Class<zze>) zze.class, zzjq);
            }
        }

        public static final class zzf extends zzdob<zzf, C0009zza> implements zzdpm {
            private static volatile zzdpv<zzf> zzdv;
            private static final zzf zzjv = new zzf();
            private int zzdj;
            private long zzgg = -1;
            private long zzgh = -1;
            private long zzjr = -1;
            private long zzjs = -1;
            private long zzjt = -1;
            private long zzju = -1;

            private zzf() {
            }

            /* renamed from: com.google.android.gms.internal.ads.zzbp$zza$zzf$zza, reason: collision with other inner class name */
            public static final class C0009zza extends zzdob.zza<zzf, C0009zza> implements zzdpm {
                private C0009zza() {
                    super(zzf.zzjv);
                }

                public final C0009zza zzdc(long j) {
                    zzaxw();
                    ((zzf) this.zzhhh).zzcy(j);
                    return this;
                }

                public final C0009zza zzdd(long j) {
                    zzaxw();
                    ((zzf) this.zzhhh).zzcz(j);
                    return this;
                }

                public final C0009zza zzde(long j) {
                    zzaxw();
                    ((zzf) this.zzhhh).zzda(j);
                    return this;
                }

                public final C0009zza zzdf(long j) {
                    zzaxw();
                    ((zzf) this.zzhhh).zzdb(j);
                    return this;
                }

                /* synthetic */ C0009zza(zzbq zzbqVar) {
                    this();
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void zzcy(long j) {
                this.zzdj |= 4;
                this.zzjr = j;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void zzcz(long j) {
                this.zzdj |= 8;
                this.zzjs = j;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void zzda(long j) {
                this.zzdj |= 16;
                this.zzjt = j;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void zzdb(long j) {
                this.zzdj |= 32;
                this.zzju = j;
            }

            public static C0009zza zzat() {
                return (C0009zza) zzjv.zza(zzdob.zze.zzhho, (Object) null, (Object) null);
            }

            @Override // com.google.android.gms.internal.ads.zzdob
            protected final Object zza(int i, Object obj, Object obj2) {
                zzbq zzbqVar = null;
                switch (zzbq.zzdi[i - 1]) {
                    case 1:
                        return new zzf();
                    case 2:
                        return new C0009zza(zzbqVar);
                    case 3:
                        return zzdob.zza(zzjv, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u0002\u0000\u0002\u0002\u0001\u0003\u0002\u0002\u0004\u0002\u0003\u0005\u0002\u0004\u0006\u0002\u0005", new Object[]{"zzdj", "zzgg", "zzgh", "zzjr", "zzjs", "zzjt", "zzju"});
                    case 4:
                        return zzjv;
                    case 5:
                        zzdpv<zzf> zzbVar = zzdv;
                        if (zzbVar == null) {
                            synchronized (zzf.class) {
                                zzbVar = zzdv;
                                if (zzbVar == null) {
                                    zzbVar = new zzdob.zzb<>(zzjv);
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
                zzdob.zza((Class<zzf>) zzf.class, zzjv);
            }
        }

        private zza() {
        }

        /* renamed from: com.google.android.gms.internal.ads.zzbp$zza$zza, reason: collision with other inner class name */
        public static final class C0007zza extends zzdob.zza<zza, C0007zza> implements zzdpm {
            private C0007zza() {
                super(zza.zzhj);
            }

            public final C0007zza zzx(String str) {
                zzaxw();
                ((zza) this.zzhhh).zzo(str);
                return this;
            }

            public final C0007zza zzy(String str) {
                zzaxw();
                ((zza) this.zzhhh).zzp(str);
                return this;
            }

            public final C0007zza zzal(long j) {
                zzaxw();
                ((zza) this.zzhhh).zze(j);
                return this;
            }

            public final C0007zza zzam(long j) {
                zzaxw();
                ((zza) this.zzhhh).zzf(j);
                return this;
            }

            public final C0007zza zzan(long j) {
                zzaxw();
                ((zza) this.zzhhh).zzg(j);
                return this;
            }

            public final C0007zza zzao(long j) {
                zzaxw();
                ((zza) this.zzhhh).zzh(j);
                return this;
            }

            public final C0007zza zzap(long j) {
                zzaxw();
                ((zza) this.zzhhh).zzi(j);
                return this;
            }

            public final C0007zza zzaq(long j) {
                zzaxw();
                ((zza) this.zzhhh).zzj(j);
                return this;
            }

            public final C0007zza zzar(long j) {
                zzaxw();
                ((zza) this.zzhhh).zzk(j);
                return this;
            }

            public final C0007zza zzas(long j) {
                zzaxw();
                ((zza) this.zzhhh).zzl(j);
                return this;
            }

            public final C0007zza zzat(long j) {
                zzaxw();
                ((zza) this.zzhhh).zzm(j);
                return this;
            }

            public final C0007zza zzau(long j) {
                zzaxw();
                ((zza) this.zzhhh).zzn(j);
                return this;
            }

            public final C0007zza zzav(long j) {
                zzaxw();
                ((zza) this.zzhhh).zzo(j);
                return this;
            }

            public final C0007zza zzaw(long j) {
                zzaxw();
                ((zza) this.zzhhh).zzp(j);
                return this;
            }

            public final C0007zza zzz(String str) {
                zzaxw();
                ((zza) this.zzhhh).zzq(str);
                return this;
            }

            public final C0007zza zzaa(String str) {
                zzaxw();
                ((zza) this.zzhhh).zzr(str);
                return this;
            }

            public final C0007zza zzax(long j) {
                zzaxw();
                ((zza) this.zzhhh).zzq(j);
                return this;
            }

            public final C0007zza zzay(long j) {
                zzaxw();
                ((zza) this.zzhhh).zzr(j);
                return this;
            }

            public final C0007zza zzaz(long j) {
                zzaxw();
                ((zza) this.zzhhh).zzs(j);
                return this;
            }

            public final C0007zza zzab(String str) {
                zzaxw();
                ((zza) this.zzhhh).zzs(str);
                return this;
            }

            public final C0007zza zzba(long j) {
                zzaxw();
                ((zza) this.zzhhh).zzt(j);
                return this;
            }

            @Deprecated
            public final C0007zza zzbb(long j) {
                zzaxw();
                ((zza) this.zzhhh).zzu(j);
                return this;
            }

            public final C0007zza zzbc(long j) {
                zzaxw();
                ((zza) this.zzhhh).zzv(j);
                return this;
            }

            public final C0007zza zzbd(long j) {
                zzaxw();
                ((zza) this.zzhhh).zzw(j);
                return this;
            }

            public final C0007zza zzbe(long j) {
                zzaxw();
                ((zza) this.zzhhh).zzx(j);
                return this;
            }

            public final C0007zza zzbf(long j) {
                zzaxw();
                ((zza) this.zzhhh).zzy(j);
                return this;
            }

            public final C0007zza zzbg(long j) {
                zzaxw();
                ((zza) this.zzhhh).zzz(j);
                return this;
            }

            public final C0007zza zzbh(long j) {
                zzaxw();
                ((zza) this.zzhhh).zzaa(j);
                return this;
            }

            public final C0007zza zzbi(long j) {
                zzaxw();
                ((zza) this.zzhhh).zzab(j);
                return this;
            }

            public final C0007zza zzac(String str) {
                zzaxw();
                ((zza) this.zzhhh).zzt(str);
                return this;
            }

            public final C0007zza zzad(String str) {
                zzaxw();
                ((zza) this.zzhhh).zzu(str);
                return this;
            }

            public final C0007zza zze(zzbz zzbzVar) {
                zzaxw();
                ((zza) this.zzhhh).zza(zzbzVar);
                return this;
            }

            public final C0007zza zzf(zzbz zzbzVar) {
                zzaxw();
                ((zza) this.zzhhh).zzb(zzbzVar);
                return this;
            }

            public final C0007zza zzbj(long j) {
                zzaxw();
                ((zza) this.zzhhh).zzac(j);
                return this;
            }

            public final C0007zza zzbk(long j) {
                zzaxw();
                ((zza) this.zzhhh).zzad(j);
                return this;
            }

            public final C0007zza zzbl(long j) {
                zzaxw();
                ((zza) this.zzhhh).zzae(j);
                return this;
            }

            public final C0007zza zzg(zzbz zzbzVar) {
                zzaxw();
                ((zza) this.zzhhh).zzc(zzbzVar);
                return this;
            }

            public final C0007zza zzc(zze zzeVar) {
                zzaxw();
                ((zza) this.zzhhh).zza(zzeVar);
                return this;
            }

            public final C0007zza zzd(zze zzeVar) {
                zzaxw();
                ((zza) this.zzhhh).zzb(zzeVar);
                return this;
            }

            public final C0007zza zzao() {
                zzaxw();
                ((zza) this.zzhhh).zzaj();
                return this;
            }

            public final C0007zza zzb(zzf zzfVar) {
                zzaxw();
                ((zza) this.zzhhh).zza(zzfVar);
                return this;
            }

            public final C0007zza zzbm(long j) {
                zzaxw();
                ((zza) this.zzhhh).zzaf(j);
                return this;
            }

            public final C0007zza zzbn(long j) {
                zzaxw();
                ((zza) this.zzhhh).zzag(j);
                return this;
            }

            public final C0007zza zzbo(long j) {
                zzaxw();
                ((zza) this.zzhhh).zzah(j);
                return this;
            }

            public final C0007zza zzbp(long j) {
                zzaxw();
                ((zza) this.zzhhh).zzai(j);
                return this;
            }

            public final C0007zza zzbq(long j) {
                zzaxw();
                ((zza) this.zzhhh).zzaj(j);
                return this;
            }

            public final C0007zza zzae(String str) {
                zzaxw();
                ((zza) this.zzhhh).zzv(str);
                return this;
            }

            public final C0007zza zzb(zzf zzfVar) {
                zzaxw();
                ((zza) this.zzhhh).zza(zzfVar);
                return this;
            }

            public final C0007zza zzh(zzbz zzbzVar) {
                zzaxw();
                ((zza) this.zzhhh).zzd(zzbzVar);
                return this;
            }

            public final C0007zza zzaf(String str) {
                zzaxw();
                ((zza) this.zzhhh).zzw(str);
                return this;
            }

            public final C0007zza zzb(zzc zzcVar) {
                zzaxw();
                ((zza) this.zzhhh).zza(zzcVar);
                return this;
            }

            public final C0007zza zzb(boolean z) {
                zzaxw();
                ((zza) this.zzhhh).zza(z);
                return this;
            }

            public final C0007zza zzbr(long j) {
                zzaxw();
                ((zza) this.zzhhh).zzak(j);
                return this;
            }

            /* synthetic */ C0007zza(zzbq zzbqVar) {
                this();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzo(String str) {
            if (str == null) {
                throw new NullPointerException();
            }
            this.zzdj |= 1;
            this.zzes = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzp(String str) {
            if (str == null) {
                throw new NullPointerException();
            }
            this.zzdj |= 2;
            this.zzdt = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zze(long j) {
            this.zzdj |= 4;
            this.zzet = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzf(long j) {
            this.zzdj |= 16;
            this.zzev = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzg(long j) {
            this.zzdj |= 32;
            this.zzew = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzh(long j) {
            this.zzdj |= 1024;
            this.zzfb = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzi(long j) {
            this.zzdj |= 2048;
            this.zzfc = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzj(long j) {
            this.zzdj |= 8192;
            this.zzfe = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzk(long j) {
            this.zzdj |= 16384;
            this.zzff = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzl(long j) {
            this.zzdj |= 32768;
            this.zzfg = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzm(long j) {
            this.zzdj |= 65536;
            this.zzfh = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzn(long j) {
            this.zzdj |= 524288;
            this.zzfk = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzo(long j) {
            this.zzdj |= 1048576;
            this.zzfl = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzp(long j) {
            this.zzdj |= 2097152;
            this.zzfm = j;
        }

        public final boolean zzai() {
            return (this.zzdj & AccessibilityEventCompat.TYPE_WINDOWS_CHANGED) == 4194304;
        }

        public final String zzae() {
            return this.zzej;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzq(String str) {
            if (str == null) {
                throw new NullPointerException();
            }
            this.zzdj |= AccessibilityEventCompat.TYPE_WINDOWS_CHANGED;
            this.zzej = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzr(String str) {
            if (str == null) {
                throw new NullPointerException();
            }
            this.zzdj |= 8388608;
            this.zzfn = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzq(long j) {
            this.zzdj |= 16777216;
            this.zzfo = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzr(long j) {
            this.zzdj |= 33554432;
            this.zzfp = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzs(long j) {
            this.zzdj |= 67108864;
            this.zzfq = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzs(String str) {
            if (str == null) {
                throw new NullPointerException();
            }
            this.zzdj |= 134217728;
            this.zzel = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzt(long j) {
            this.zzdj |= C.ENCODING_PCM_MU_LAW;
            this.zzfr = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzu(long j) {
            this.zzdj |= 536870912;
            this.zzfs = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzv(long j) {
            this.zzdj |= 1073741824;
            this.zzft = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzw(long j) {
            this.zzeq |= 1;
            this.zzfv = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzx(long j) {
            this.zzeq |= 2;
            this.zzfw = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzy(long j) {
            this.zzeq |= 4;
            this.zzfx = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzz(long j) {
            this.zzeq |= 8;
            this.zzfy = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzaa(long j) {
            this.zzeq |= 16;
            this.zzfz = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzab(long j) {
            this.zzeq |= 32;
            this.zzga = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzt(String str) {
            if (str == null) {
                throw new NullPointerException();
            }
            this.zzeq |= 64;
            this.zzem = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzu(String str) {
            if (str == null) {
                throw new NullPointerException();
            }
            this.zzeq |= 128;
            this.zzen = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(zzbz zzbzVar) {
            if (zzbzVar == null) {
                throw new NullPointerException();
            }
            this.zzeq |= 256;
            this.zzgb = zzbzVar.zzac();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(zzbz zzbzVar) {
            if (zzbzVar == null) {
                throw new NullPointerException();
            }
            this.zzeq |= 512;
            this.zzgc = zzbzVar.zzac();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzac(long j) {
            this.zzeq |= 1024;
            this.zzgd = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzad(long j) {
            this.zzeq |= 2048;
            this.zzge = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzae(long j) {
            this.zzeq |= 4096;
            this.zzgf = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzc(zzbz zzbzVar) {
            if (zzbzVar == null) {
                throw new NullPointerException();
            }
            this.zzeq |= 32768;
            this.zzgi = zzbzVar.zzac();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(zze zzeVar) {
            if (zzeVar == null) {
                throw new NullPointerException();
            }
            this.zzgj = zzeVar;
            this.zzeq |= 65536;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(zze zzeVar) {
            if (zzeVar == null) {
                throw new NullPointerException();
            }
            if (!this.zzgk.zzavi()) {
                zzdoj<zze> zzdojVar = this.zzgk;
                int size = zzdojVar.size();
                this.zzgk = zzdojVar.zzfl(size == 0 ? 10 : size << 1);
            }
            this.zzgk.add(zzeVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzaj() {
            this.zzgk = zzdob.zzaxs();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(zzf zzfVar) {
            if (zzfVar == null) {
                throw new NullPointerException();
            }
            this.zzgl = zzfVar;
            this.zzeq |= 131072;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzaf(long j) {
            this.zzeq |= 524288;
            this.zzgn = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzag(long j) {
            this.zzeq |= 1048576;
            this.zzgo = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzah(long j) {
            this.zzeq |= 2097152;
            this.zzgp = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzai(long j) {
            this.zzeq |= 16777216;
            this.zzgs = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzaj(long j) {
            this.zzeq |= 33554432;
            this.zzgt = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzv(String str) {
            if (str == null) {
                throw new NullPointerException();
            }
            this.zzeq |= 67108864;
            this.zzgu = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(zzf zzfVar) {
            if (zzfVar == null) {
                throw new NullPointerException();
            }
            this.zzgz = zzfVar;
            this.zzeq |= Integer.MIN_VALUE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzd(zzbz zzbzVar) {
            if (zzbzVar == null) {
                throw new NullPointerException();
            }
            this.zzer |= 2;
            this.zzhb = zzbzVar.zzac();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzw(String str) {
            if (str == null) {
                throw new NullPointerException();
            }
            this.zzer |= 8;
            this.zzhd = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(zzc zzcVar) {
            if (zzcVar == null) {
                throw new NullPointerException();
            }
            this.zzer |= 16;
            this.zzhe = zzcVar.zzac();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(boolean z) {
            this.zzer |= 32;
            this.zzhf = z;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzak(long j) {
            this.zzer |= 128;
            this.zzhh = j;
        }

        public final boolean zzak() {
            return (this.zzer & 256) == 256;
        }

        public final zze zzal() {
            zze zzeVar = this.zzhi;
            return zzeVar == null ? zze.zzbg() : zzeVar;
        }

        public static zza zzb(byte[] bArr, zzdno zzdnoVar) throws zzdok {
            return (zza) zzdob.zza(zzhj, bArr, zzdnoVar);
        }

        public static C0007zza zzam() {
            return (C0007zza) zzhj.zza(zzdob.zze.zzhho, (Object) null, (Object) null);
        }

        @Override // com.google.android.gms.internal.ads.zzdob
        protected final Object zza(int i, Object obj, Object obj2) {
            zzbq zzbqVar = null;
            switch (zzbq.zzdi[i - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new C0007zza(zzbqVar);
                case 3:
                    return zzdob.zza(zzhj, "\u0001J\u0000\u0003\u0001ÉJ\u0000\u0001\u0000\u0001\b\u0000\u0002\b\u0001\u0003\u0002\u0002\u0004\u0002\u0003\u0005\u0002\u0004\u0006\u0002\u0005\u0007\u0002\u0006\b\u0002\u0007\t\u0002\b\n\u0002\t\u000b\u0002\n\f\u0002\u000b\r\b\f\u000e\u0002\r\u000f\u0002\u000e\u0010\u0002\u000f\u0011\u0002\u0010\u0012\u0002\u0011\u0013\u0002\u0012\u0014\u0002\u0013\u0015\u0002B\u0016\u0002\u0014\u0017\u0002\u0015\u0018\bC\u0019\u0002G\u001a\fD\u001b\b\u0016\u001c\u0007E\u001d\b\u0017\u001e\bF\u001f\u0002\u0018 \u0002\u0019!\u0002\u001a\"\b\u001b#\u0002\u001c$\u0002\u001d%\u0002\u001e&\t\u001f'\u0002 (\u0002!)\u0002\"*\u0002#+\u001b,\u0002$-\u0002%.\b&/\b'0\f(1\f)2\t03\u0002*4\u0002+5\u0002,6\u0002-7\u0002.8\f/9\t1:\u00022;\u00023<\u00024=\u00025>\u00028?\u00029@\u0002;A\f<B\f=C\b:D\f>E\t?F\u0002@G\u00026H\u00027I\fAÉ\tH", new Object[]{"zzdj", "zzeq", "zzer", "zzes", "zzdt", "zzet", "zzeu", "zzev", "zzew", "zzex", "zzey", "zzez", "zzfa", "zzfb", "zzfc", "zzfd", "zzfe", "zzff", "zzfg", "zzfh", "zzfi", "zzfj", "zzfk", "zzhc", "zzfl", "zzfm", "zzhd", "zzhh", "zzhe", zzc.zzad(), "zzej", "zzhf", "zzfn", "zzhg", "zzfo", "zzfp", "zzfq", "zzel", "zzfr", "zzfs", "zzft", "zzfu", "zzfv", "zzfw", "zzfx", "zzfy", "zzgk", zze.class, "zzfz", "zzga", "zzem", "zzen", "zzgb", zzbz.zzad(), "zzgc", zzbz.zzad(), "zzgj", "zzgd", "zzge", "zzgf", "zzgg", "zzgh", "zzgi", zzbz.zzad(), "zzgl", "zzgm", "zzgn", "zzgo", "zzgp", "zzgs", "zzgt", "zzgv", "zzgw", zzbw.zzad(), "zzgx", zzcc.zzad(), "zzgu", "zzgy", zzb.zzad(), "zzgz", "zzha", "zzgq", "zzgr", "zzhb", zzbz.zzad(), "zzhi"});
                case 4:
                    return zzhj;
                case 5:
                    zzdpv<zza> zzbVar = zzdv;
                    if (zzbVar == null) {
                        synchronized (zza.class) {
                            zzbVar = zzdv;
                            if (zzbVar == null) {
                                zzbVar = new zzdob.zzb<>(zzhj);
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
            zzdob.zza((Class<zza>) zza.class, zzhj);
        }
    }

    public static final class zzb extends zzdob<zzb, zza> implements zzdpm {
        private static volatile zzdpv<zzb> zzdv;
        private static final zzb zzkb = new zzb();
        private int zzdj;
        private long zzjw;
        private int zzjx;
        private boolean zzjy;
        private zzdoh zzjz = zzdob.zzaxr();
        private long zzka;

        private zzb() {
        }

        public static final class zza extends zzdob.zza<zzb, zza> implements zzdpm {
            private zza() {
                super(zzb.zzkb);
            }

            /* synthetic */ zza(zzbq zzbqVar) {
                this();
            }
        }

        @Override // com.google.android.gms.internal.ads.zzdob
        protected final Object zza(int i, Object obj, Object obj2) {
            zzbq zzbqVar = null;
            switch (zzbq.zzdi[i - 1]) {
                case 1:
                    return new zzb();
                case 2:
                    return new zza(zzbqVar);
                case 3:
                    return zzdob.zza(zzkb, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001\u0002\u0000\u0002\u0004\u0001\u0003\u0007\u0002\u0004\u0016\u0005\u0003\u0003", new Object[]{"zzdj", "zzjw", "zzjx", "zzjy", "zzjz", "zzka"});
                case 4:
                    return zzkb;
                case 5:
                    zzdpv<zzb> zzbVar = zzdv;
                    if (zzbVar == null) {
                        synchronized (zzb.class) {
                            zzbVar = zzdv;
                            if (zzbVar == null) {
                                zzbVar = new zzdob.zzb<>(zzkb);
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
            zzdob.zza((Class<zzb>) zzb.class, zzkb);
        }
    }

    public static final class zzc extends zzdob<zzc, zza> implements zzdpm {
        private static volatile zzdpv<zzc> zzdv;
        private static final zzc zzke = new zzc();
        private int zzdj;
        private zzdmr zzkc;
        private zzdmr zzkd;

        private zzc() {
            zzdmr zzdmrVar = zzdmr.zzhcr;
            this.zzkc = zzdmrVar;
            this.zzkd = zzdmrVar;
        }

        public static final class zza extends zzdob.zza<zzc, zza> implements zzdpm {
            private zza() {
                super(zzc.zzke);
            }

            public final zza zzc(zzdmr zzdmrVar) {
                zzaxw();
                ((zzc) this.zzhhh).zza(zzdmrVar);
                return this;
            }

            public final zza zzd(zzdmr zzdmrVar) {
                zzaxw();
                ((zzc) this.zzhhh).zzb(zzdmrVar);
                return this;
            }

            /* synthetic */ zza(zzbq zzbqVar) {
                this();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(zzdmr zzdmrVar) {
            if (zzdmrVar == null) {
                throw new NullPointerException();
            }
            this.zzdj |= 1;
            this.zzkc = zzdmrVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(zzdmr zzdmrVar) {
            if (zzdmrVar == null) {
                throw new NullPointerException();
            }
            this.zzdj |= 2;
            this.zzkd = zzdmrVar;
        }

        public static zza zzaw() {
            return (zza) zzke.zza(zzdob.zze.zzhho, (Object) null, (Object) null);
        }

        @Override // com.google.android.gms.internal.ads.zzdob
        protected final Object zza(int i, Object obj, Object obj2) {
            zzbq zzbqVar = null;
            switch (zzbq.zzdi[i - 1]) {
                case 1:
                    return new zzc();
                case 2:
                    return new zza(zzbqVar);
                case 3:
                    return zzdob.zza(zzke, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\n\u0000\u0002\n\u0001", new Object[]{"zzdj", "zzkc", "zzkd"});
                case 4:
                    return zzke;
                case 5:
                    zzdpv<zzc> zzbVar = zzdv;
                    if (zzbVar == null) {
                        synchronized (zzc.class) {
                            zzbVar = zzdv;
                            if (zzbVar == null) {
                                zzbVar = new zzdob.zzb<>(zzke);
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
            zzdob.zza((Class<zzc>) zzc.class, zzke);
        }
    }

    public static final class zzd extends zzdob<zzd, zza> implements zzdpm {
        private static volatile zzdpv<zzd> zzdv;
        private static final zzd zzkj = new zzd();
        private int zzdj;
        private zzdmr zzkf;
        private zzdmr zzkg;
        private zzdmr zzkh;
        private zzdmr zzki;

        private zzd() {
            zzdmr zzdmrVar = zzdmr.zzhcr;
            this.zzkf = zzdmrVar;
            this.zzkg = zzdmrVar;
            this.zzkh = zzdmrVar;
            this.zzki = zzdmrVar;
        }

        public static final class zza extends zzdob.zza<zzd, zza> implements zzdpm {
            private zza() {
                super(zzd.zzkj);
            }

            public final zza zzi(zzdmr zzdmrVar) {
                zzaxw();
                ((zzd) this.zzhhh).zze(zzdmrVar);
                return this;
            }

            public final zza zzj(zzdmr zzdmrVar) {
                zzaxw();
                ((zzd) this.zzhhh).zzf(zzdmrVar);
                return this;
            }

            public final zza zzk(zzdmr zzdmrVar) {
                zzaxw();
                ((zzd) this.zzhhh).zzg(zzdmrVar);
                return this;
            }

            public final zza zzl(zzdmr zzdmrVar) {
                zzaxw();
                ((zzd) this.zzhhh).zzh(zzdmrVar);
                return this;
            }

            /* synthetic */ zza(zzbq zzbqVar) {
                this();
            }
        }

        public final zzdmr zzay() {
            return this.zzkf;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zze(zzdmr zzdmrVar) {
            if (zzdmrVar == null) {
                throw new NullPointerException();
            }
            this.zzdj |= 1;
            this.zzkf = zzdmrVar;
        }

        public final zzdmr zzaz() {
            return this.zzkg;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzf(zzdmr zzdmrVar) {
            if (zzdmrVar == null) {
                throw new NullPointerException();
            }
            this.zzdj |= 2;
            this.zzkg = zzdmrVar;
        }

        public final zzdmr zzba() {
            return this.zzkh;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzg(zzdmr zzdmrVar) {
            if (zzdmrVar == null) {
                throw new NullPointerException();
            }
            this.zzdj |= 4;
            this.zzkh = zzdmrVar;
        }

        public final zzdmr zzbb() {
            return this.zzki;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzh(zzdmr zzdmrVar) {
            if (zzdmrVar == null) {
                throw new NullPointerException();
            }
            this.zzdj |= 8;
            this.zzki = zzdmrVar;
        }

        public static zzd zzc(byte[] bArr, zzdno zzdnoVar) throws zzdok {
            return (zzd) zzdob.zza(zzkj, bArr, zzdnoVar);
        }

        public static zza zzbc() {
            return (zza) zzkj.zza(zzdob.zze.zzhho, (Object) null, (Object) null);
        }

        @Override // com.google.android.gms.internal.ads.zzdob
        protected final Object zza(int i, Object obj, Object obj2) {
            zzbq zzbqVar = null;
            switch (zzbq.zzdi[i - 1]) {
                case 1:
                    return new zzd();
                case 2:
                    return new zza(zzbqVar);
                case 3:
                    return zzdob.zza(zzkj, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\n\u0000\u0002\n\u0001\u0003\n\u0002\u0004\n\u0003", new Object[]{"zzdj", "zzkf", "zzkg", "zzkh", "zzki"});
                case 4:
                    return zzkj;
                case 5:
                    zzdpv<zzd> zzbVar = zzdv;
                    if (zzbVar == null) {
                        synchronized (zzd.class) {
                            zzbVar = zzdv;
                            if (zzbVar == null) {
                                zzbVar = new zzdob.zzb<>(zzkj);
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
            zzdob.zza((Class<zzd>) zzd.class, zzkj);
        }
    }

    public static final class zze extends zzdob<zze, zza> implements zzdpm {
        private static volatile zzdpv<zze> zzdv;
        private static final zze zzlb = new zze();
        private int zzdj;
        private long zzjw;
        private String zzkz = "";
        private zzdmr zzla = zzdmr.zzhcr;

        private zze() {
        }

        public static final class zza extends zzdob.zza<zze, zza> implements zzdpm {
            private zza() {
                super(zze.zzlb);
            }

            /* synthetic */ zza(zzbq zzbqVar) {
                this();
            }
        }

        public final boolean zzbe() {
            return (this.zzdj & 1) == 1;
        }

        public final long zzbf() {
            return this.zzjw;
        }

        @Override // com.google.android.gms.internal.ads.zzdob
        protected final Object zza(int i, Object obj, Object obj2) {
            zzbq zzbqVar = null;
            switch (zzbq.zzdi[i - 1]) {
                case 1:
                    return new zze();
                case 2:
                    return new zza(zzbqVar);
                case 3:
                    return zzdob.zza(zzlb, "\u0001\u0003\u0000\u0001\u0001\u0004\u0003\u0000\u0000\u0000\u0001\u0002\u0000\u0003\b\u0001\u0004\n\u0002", new Object[]{"zzdj", "zzjw", "zzkz", "zzla"});
                case 4:
                    return zzlb;
                case 5:
                    zzdpv<zze> zzbVar = zzdv;
                    if (zzbVar == null) {
                        synchronized (zze.class) {
                            zzbVar = zzdv;
                            if (zzbVar == null) {
                                zzbVar = new zzdob.zzb<>(zzlb);
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

        public static zze zzbg() {
            return zzlb;
        }

        static {
            zzdob.zza((Class<zze>) zze.class, zzlb);
        }
    }

    public static final class zzf extends zzdob<zzf, zza> implements zzdpm {
        private static volatile zzdpv<zzf> zzdv;
        private static final zzf zzlc = new zzf();
        private int zzdj;
        private String zzeo = "";

        private zzf() {
        }

        public static final class zza extends zzdob.zza<zzf, zza> implements zzdpm {
            private zza() {
                super(zzf.zzlc);
            }

            public final zza zzah(String str) {
                zzaxw();
                ((zzf) this.zzhhh).zzag(str);
                return this;
            }

            /* synthetic */ zza(zzbq zzbqVar) {
                this();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzag(String str) {
            if (str == null) {
                throw new NullPointerException();
            }
            this.zzdj |= 1;
            this.zzeo = str;
        }

        public static zza zzbi() {
            return (zza) zzlc.zza(zzdob.zze.zzhho, (Object) null, (Object) null);
        }

        @Override // com.google.android.gms.internal.ads.zzdob
        protected final Object zza(int i, Object obj, Object obj2) {
            zzbq zzbqVar = null;
            switch (zzbq.zzdi[i - 1]) {
                case 1:
                    return new zzf();
                case 2:
                    return new zza(zzbqVar);
                case 3:
                    return zzdob.zza(zzlc, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\b\u0000", new Object[]{"zzdj", "zzeo"});
                case 4:
                    return zzlc;
                case 5:
                    zzdpv<zzf> zzbVar = zzdv;
                    if (zzbVar == null) {
                        synchronized (zzf.class) {
                            zzbVar = zzdv;
                            if (zzbVar == null) {
                                zzbVar = new zzdob.zzb<>(zzlc);
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
            zzdob.zza((Class<zzf>) zzf.class, zzlc);
        }
    }

    public static final class zzg extends zzdob<zzg, zza> implements zzdpm {
        private static volatile zzdpv<zzg> zzdv;
        private static final zzg zzle = new zzg();
        private int zzdj;
        private zzdoj<zzdmr> zzld = zzdob.zzaxs();
        private zzdmr zzkg = zzdmr.zzhcr;
        private int zzgx = 1;
        private int zzgw = 1;

        private zzg() {
        }

        public static final class zza extends zzdob.zza<zzg, zza> implements zzdpm {
            private zza() {
                super(zzg.zzle);
            }

            public final zza zzn(zzdmr zzdmrVar) {
                zzaxw();
                ((zzg) this.zzhhh).zzm(zzdmrVar);
                return this;
            }

            public final zza zzo(zzdmr zzdmrVar) {
                zzaxw();
                ((zzg) this.zzhhh).zzf(zzdmrVar);
                return this;
            }

            public final zza zzb(zzbw zzbwVar) {
                zzaxw();
                ((zzg) this.zzhhh).zza(zzbwVar);
                return this;
            }

            /* synthetic */ zza(zzbq zzbqVar) {
                this();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzm(zzdmr zzdmrVar) {
            if (zzdmrVar == null) {
                throw new NullPointerException();
            }
            if (!this.zzld.zzavi()) {
                zzdoj<zzdmr> zzdojVar = this.zzld;
                int size = zzdojVar.size();
                this.zzld = zzdojVar.zzfl(size == 0 ? 10 : size << 1);
            }
            this.zzld.add(zzdmrVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzf(zzdmr zzdmrVar) {
            if (zzdmrVar == null) {
                throw new NullPointerException();
            }
            this.zzdj |= 1;
            this.zzkg = zzdmrVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(zzbw zzbwVar) {
            if (zzbwVar == null) {
                throw new NullPointerException();
            }
            this.zzdj |= 4;
            this.zzgw = zzbwVar.zzac();
        }

        public static zza zzbk() {
            return (zza) zzle.zza(zzdob.zze.zzhho, (Object) null, (Object) null);
        }

        @Override // com.google.android.gms.internal.ads.zzdob
        protected final Object zza(int i, Object obj, Object obj2) {
            zzbq zzbqVar = null;
            switch (zzbq.zzdi[i - 1]) {
                case 1:
                    return new zzg();
                case 2:
                    return new zza(zzbqVar);
                case 3:
                    return zzdob.zza(zzle, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u001c\u0002\n\u0000\u0003\f\u0001\u0004\f\u0002", new Object[]{"zzdj", "zzld", "zzkg", "zzgx", zzcc.zzad(), "zzgw", zzbw.zzad()});
                case 4:
                    return zzle;
                case 5:
                    zzdpv<zzg> zzbVar = zzdv;
                    if (zzbVar == null) {
                        synchronized (zzg.class) {
                            zzbVar = zzdv;
                            if (zzbVar == null) {
                                zzbVar = new zzdob.zzb<>(zzle);
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
            zzdob.zza((Class<zzg>) zzg.class, zzle);
        }
    }
}
