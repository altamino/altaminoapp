package com.google.android.gms.internal.measurement;

import com.google.firebase.remoteconfig.a;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class zzfi {

    public static final class zza extends zzix<zza, C0194zza> implements zzkl {
        private static final zza zzc;
        private static volatile zzkw<zza> zzd;
        private int zze;
        private String zzf = "";
        private String zzg = "";
        private String zzh = "";
        private String zzi = "";
        private String zzj = "";
        private String zzk = "";
        private String zzl = "";

        /* JADX INFO: renamed from: com.google.android.gms.internal.measurement.zzfi$zza$zza, reason: collision with other inner class name */
        public static final class C0194zza extends zzix.zzb<zza, C0194zza> implements zzkl {
            private C0194zza() {
                super(zza.zzc);
            }

            /* synthetic */ C0194zza(zzfh zzfhVar) {
                this();
            }
        }

        static {
            zza zzaVar = new zza();
            zzc = zzaVar;
            zzix.zza((Class<zza>) zza.class, zzaVar);
        }

        @Override // com.google.android.gms.internal.measurement.zzix
        protected final Object zza(int i10, Object obj, Object obj2) {
            zzfh zzfhVar = null;
            switch (zzfh.zza[i10 - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new C0194zza(zzfhVar);
                case 3:
                    return zzix.zza(zzc, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဈ\u0004\u0006ဈ\u0005\u0007ဈ\u0006", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl"});
                case 4:
                    return zzc;
                case 5:
                    zzkw<zza> zzaVar = zzd;
                    if (zzaVar == null) {
                        synchronized (zza.class) {
                            try {
                                zzaVar = zzd;
                                if (zzaVar == null) {
                                    zzaVar = new zzix.zza<>(zzc);
                                    zzd = zzaVar;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                            break;
                        }
                    }
                    return zzaVar;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        private zza() {
        }
    }

    public static final class zzb extends zzix<zzb, zza> implements zzkl {
        private static final zzb zzc;
        private static volatile zzkw<zzb> zzd;
        private int zze;
        private boolean zzf;
        private boolean zzg;
        private boolean zzh;
        private boolean zzi;
        private boolean zzj;
        private boolean zzk;
        private boolean zzl;

        public static final class zza extends zzix.zzb<zzb, zza> implements zzkl {
            private zza() {
                super(zzb.zzc);
            }

            /* synthetic */ zza(zzfh zzfhVar) {
                this();
            }

            public final zza zza(boolean z6) {
                zzad();
                ((zzb) this.zza).zza(z6);
                return this;
            }

            public final zza zzb(boolean z6) {
                zzad();
                ((zzb) this.zza).zzb(z6);
                return this;
            }

            public final zza zzc(boolean z6) {
                zzad();
                ((zzb) this.zza).zzc(z6);
                return this;
            }

            public final zza zzd(boolean z6) {
                zzad();
                ((zzb) this.zza).zzd(z6);
                return this;
            }

            public final zza zze(boolean z6) {
                zzad();
                ((zzb) this.zza).zze(z6);
                return this;
            }

            public final zza zzf(boolean z6) {
                zzad();
                ((zzb) this.zza).zzf(z6);
                return this;
            }

            public final zza zzg(boolean z6) {
                zzad();
                ((zzb) this.zza).zzg(z6);
                return this;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(boolean z6) {
            this.zze |= 32;
            this.zzk = z6;
        }

        public static zzb zzc() {
            return zzc;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzd(boolean z6) {
            this.zze |= 64;
            this.zzl = z6;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zze(boolean z6) {
            this.zze |= 2;
            this.zzg = z6;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzf(boolean z6) {
            this.zze |= 4;
            this.zzh = z6;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzg(boolean z6) {
            this.zze |= 8;
            this.zzi = z6;
        }

        public final boolean zzh() {
            return this.zzg;
        }

        public final boolean zzi() {
            return this.zzh;
        }

        public final boolean zzj() {
            return this.zzi;
        }

        static {
            zzb zzbVar = new zzb();
            zzc = zzbVar;
            zzix.zza((Class<zzb>) zzb.class, zzbVar);
        }

        public static zza zza() {
            return zzc.zzbx();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(boolean z6) {
            this.zze |= 16;
            this.zzj = z6;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzc(boolean z6) {
            this.zze |= 1;
            this.zzf = z6;
        }

        public final boolean zzd() {
            return this.zzk;
        }

        public final boolean zze() {
            return this.zzj;
        }

        public final boolean zzf() {
            return this.zzf;
        }

        public final boolean zzg() {
            return this.zzl;
        }

        private zzb() {
        }

        @Override // com.google.android.gms.internal.measurement.zzix
        protected final Object zza(int i10, Object obj, Object obj2) {
            zzfh zzfhVar = null;
            switch (zzfh.zza[i10 - 1]) {
                case 1:
                    return new zzb();
                case 2:
                    return new zza(zzfhVar);
                case 3:
                    return zzix.zza(zzc, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001ဇ\u0000\u0002ဇ\u0001\u0003ဇ\u0002\u0004ဇ\u0003\u0005ဇ\u0004\u0006ဇ\u0005\u0007ဇ\u0006", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl"});
                case 4:
                    return zzc;
                case 5:
                    zzkw<zzb> zzaVar = zzd;
                    if (zzaVar == null) {
                        synchronized (zzb.class) {
                            try {
                                zzaVar = zzd;
                                if (zzaVar == null) {
                                    zzaVar = new zzix.zza<>(zzc);
                                    zzd = zzaVar;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                            break;
                        }
                    }
                    return zzaVar;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    public static final class zzc extends zzix<zzc, zza> implements zzkl {
        private static final zzc zzc;
        private static volatile zzkw<zzc> zzd;
        private int zze;
        private int zzf;
        private zzl zzg;
        private zzl zzh;
        private boolean zzi;

        public static final class zza extends zzix.zzb<zzc, zza> implements zzkl {
            private zza() {
                super(zzc.zzc);
            }

            public final zza zza(int i10) {
                zzad();
                ((zzc) this.zza).zza(i10);
                return this;
            }

            /* synthetic */ zza(zzfh zzfhVar) {
                this();
            }

            public final zza zza(zzl.zza zzaVar) {
                zzad();
                ((zzc) this.zza).zza((zzl) ((zzix) zzaVar.zzab()));
                return this;
            }

            public final zza zza(boolean z6) {
                zzad();
                ((zzc) this.zza).zza(z6);
                return this;
            }

            public final zza zza(zzl zzlVar) {
                zzad();
                ((zzc) this.zza).zzb(zzlVar);
                return this;
            }
        }

        public static zza zzb() {
            return zzc.zzbx();
        }

        public final int zza() {
            return this.zzf;
        }

        public final boolean zzf() {
            return this.zzi;
        }

        public final boolean zzg() {
            return (this.zze & 1) != 0;
        }

        public final boolean zzh() {
            return (this.zze & 8) != 0;
        }

        public final boolean zzi() {
            return (this.zze & 4) != 0;
        }

        static {
            zzc zzcVar = new zzc();
            zzc = zzcVar;
            zzix.zza((Class<zzc>) zzc.class, zzcVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(int i10) {
            this.zze |= 1;
            this.zzf = i10;
        }

        public final zzl zzd() {
            zzl zzlVar = this.zzg;
            return zzlVar == null ? zzl.zzg() : zzlVar;
        }

        public final zzl zze() {
            zzl zzlVar = this.zzh;
            return zzlVar == null ? zzl.zzg() : zzlVar;
        }

        private zzc() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(boolean z6) {
            this.zze |= 8;
            this.zzi = z6;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(zzl zzlVar) {
            zzlVar.getClass();
            this.zzh = zzlVar;
            this.zze |= 4;
        }

        @Override // com.google.android.gms.internal.measurement.zzix
        protected final Object zza(int i10, Object obj, Object obj2) {
            zzfh zzfhVar = null;
            switch (zzfh.zza[i10 - 1]) {
                case 1:
                    return new zzc();
                case 2:
                    return new zza(zzfhVar);
                case 3:
                    return zzix.zza(zzc, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001င\u0000\u0002ဉ\u0001\u0003ဉ\u0002\u0004ဇ\u0003", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi"});
                case 4:
                    return zzc;
                case 5:
                    zzkw<zzc> zzaVar = zzd;
                    if (zzaVar == null) {
                        synchronized (zzc.class) {
                            try {
                                zzaVar = zzd;
                                if (zzaVar == null) {
                                    zzaVar = new zzix.zza<>(zzc);
                                    zzd = zzaVar;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                            break;
                        }
                    }
                    return zzaVar;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(zzl zzlVar) {
            zzlVar.getClass();
            this.zzg = zzlVar;
            this.zze |= 2;
        }
    }

    public static final class zzd extends zzix<zzd, zza> implements zzkl {
        private static final zzd zzc;
        private static volatile zzkw<zzd> zzd;
        private int zze;
        private int zzf;
        private long zzg;

        public static final class zza extends zzix.zzb<zzd, zza> implements zzkl {
            private zza() {
                super(zzd.zzc);
            }

            public final zza zza(long j6) {
                zzad();
                ((zzd) this.zza).zza(j6);
                return this;
            }

            /* synthetic */ zza(zzfh zzfhVar) {
                this();
            }

            public final zza zza(int i10) {
                zzad();
                ((zzd) this.zza).zza(i10);
                return this;
            }
        }

        public final int zza() {
            return this.zzf;
        }

        public final long zzb() {
            return this.zzg;
        }

        public final boolean zze() {
            return (this.zze & 2) != 0;
        }

        public final boolean zzf() {
            return (this.zze & 1) != 0;
        }

        static {
            zzd zzdVar = new zzd();
            zzc = zzdVar;
            zzix.zza((Class<zzd>) zzd.class, zzdVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(int i10) {
            this.zze |= 1;
            this.zzf = i10;
        }

        public static zza zzc() {
            return zzc.zzbx();
        }

        private zzd() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(long j6) {
            this.zze |= 2;
            this.zzg = j6;
        }

        @Override // com.google.android.gms.internal.measurement.zzix
        protected final Object zza(int i10, Object obj, Object obj2) {
            zzfh zzfhVar = null;
            switch (zzfh.zza[i10 - 1]) {
                case 1:
                    return new zzd();
                case 2:
                    return new zza(zzfhVar);
                case 3:
                    return zzix.zza(zzc, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001င\u0000\u0002ဂ\u0001", new Object[]{"zze", "zzf", "zzg"});
                case 4:
                    return zzc;
                case 5:
                    zzkw<zzd> zzaVar = zzd;
                    if (zzaVar == null) {
                        synchronized (zzd.class) {
                            try {
                                zzaVar = zzd;
                                if (zzaVar == null) {
                                    zzaVar = new zzix.zza<>(zzc);
                                    zzd = zzaVar;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                            break;
                        }
                    }
                    return zzaVar;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    public static final class zze extends zzix<zze, zza> implements zzkl {
        private static final zze zzc;
        private static volatile zzkw<zze> zzd;
        private int zze;
        private zzjf<zzg> zzf = zzix.zzcc();
        private String zzg = "";
        private long zzh;
        private long zzi;
        private int zzj;

        public static final class zza extends zzix.zzb<zze, zza> implements zzkl {
            private zza() {
                super(zze.zzc);
            }

            public final int zza() {
                return ((zze) this.zza).zzb();
            }

            public final long zzb() {
                return ((zze) this.zza).zzc();
            }

            /* synthetic */ zza(zzfh zzfhVar) {
                this();
            }

            public final zza zza(Iterable<? extends zzg> iterable) {
                zzad();
                ((zze) this.zza).zza(iterable);
                return this;
            }

            public final zza zzb(long j6) {
                zzad();
                ((zze) this.zza).zzb(j6);
                return this;
            }

            public final long zzc() {
                return ((zze) this.zza).zzd();
            }

            public final String zze() {
                return ((zze) this.zza).zzg();
            }

            public final List<zzg> zzf() {
                return Collections.unmodifiableList(((zze) this.zza).zzh());
            }

            public final boolean zzg() {
                return ((zze) this.zza).zzk();
            }

            public final zza zzd() {
                zzad();
                ((zze) this.zza).zzl();
                return this;
            }

            public final zza zza(zzg.zza zzaVar) {
                zzad();
                ((zze) this.zza).zza((zzg) ((zzix) zzaVar.zzab()));
                return this;
            }

            public final zzg zzb(int i10) {
                return ((zze) this.zza).zza(i10);
            }

            public final zza zza(zzg zzgVar) {
                zzad();
                ((zze) this.zza).zza(zzgVar);
                return this;
            }

            public final zza zza(int i10) {
                zzad();
                ((zze) this.zza).zzb(i10);
                return this;
            }

            public final zza zza(String str) {
                zzad();
                ((zze) this.zza).zza(str);
                return this;
            }

            public final zza zza(int i10, zzg.zza zzaVar) {
                zzad();
                ((zze) this.zza).zza(i10, (zzg) ((zzix) zzaVar.zzab()));
                return this;
            }

            public final zza zza(int i10, zzg zzgVar) {
                zzad();
                ((zze) this.zza).zza(i10, zzgVar);
                return this;
            }

            public final zza zza(long j6) {
                zzad();
                ((zze) this.zza).zza(j6);
                return this;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(long j6) {
            this.zze |= 2;
            this.zzh = j6;
        }

        public final int zza() {
            return this.zzj;
        }

        public final long zzc() {
            return this.zzi;
        }

        public final long zzd() {
            return this.zzh;
        }

        public final String zzg() {
            return this.zzg;
        }

        public final List<zzg> zzh() {
            return this.zzf;
        }

        public final boolean zzi() {
            return (this.zze & 8) != 0;
        }

        public final boolean zzj() {
            return (this.zze & 4) != 0;
        }

        public final boolean zzk() {
            return (this.zze & 2) != 0;
        }

        static {
            zze zzeVar = new zze();
            zzc = zzeVar;
            zzix.zza((Class<zze>) zze.class, zzeVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(long j6) {
            this.zze |= 4;
            this.zzi = j6;
        }

        public static zza zze() {
            return zzc.zzbx();
        }

        private final void zzm() {
            zzjf<zzg> zzjfVar = this.zzf;
            if (zzjfVar.zzc()) {
                return;
            }
            this.zzf = zzix.zza(zzjfVar);
        }

        public final int zzb() {
            return this.zzf.size();
        }

        private zze() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzl() {
            this.zzf = zzix.zzcc();
        }

        public final zzg zza(int i10) {
            return this.zzf.get(i10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(int i10) {
            zzm();
            this.zzf.remove(i10);
        }

        @Override // com.google.android.gms.internal.measurement.zzix
        protected final Object zza(int i10, Object obj, Object obj2) {
            zzfh zzfhVar = null;
            switch (zzfh.zza[i10 - 1]) {
                case 1:
                    return new zze();
                case 2:
                    return new zza(zzfhVar);
                case 3:
                    return zzix.zza(zzc, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001\u001b\u0002ဈ\u0000\u0003ဂ\u0001\u0004ဂ\u0002\u0005င\u0003", new Object[]{"zze", "zzf", zzg.class, "zzg", "zzh", "zzi", "zzj"});
                case 4:
                    return zzc;
                case 5:
                    zzkw<zze> zzaVar = zzd;
                    if (zzaVar == null) {
                        synchronized (zze.class) {
                            try {
                                zzaVar = zzd;
                                if (zzaVar == null) {
                                    zzaVar = new zzix.zza<>(zzc);
                                    zzd = zzaVar;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                            break;
                        }
                    }
                    return zzaVar;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(Iterable<? extends zzg> iterable) {
            zzm();
            zzhd.zza(iterable, this.zzf);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(zzg zzgVar) {
            zzgVar.getClass();
            zzm();
            this.zzf.add(zzgVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(String str) {
            str.getClass();
            this.zze |= 1;
            this.zzg = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(int i10, zzg zzgVar) {
            zzgVar.getClass();
            zzm();
            this.zzf.set(i10, zzgVar);
        }
    }

    public static final class zzf extends zzix<zzf, zza> implements zzkl {
        private static final zzf zzc;
        private static volatile zzkw<zzf> zzd;
        private int zze;
        private String zzf = "";
        private long zzg;

        public static final class zza extends zzix.zzb<zzf, zza> implements zzkl {
            private zza() {
                super(zzf.zzc);
            }

            public final zza zza(long j6) {
                zzad();
                ((zzf) this.zza).zza(j6);
                return this;
            }

            /* synthetic */ zza(zzfh zzfhVar) {
                this();
            }

            public final zza zza(String str) {
                zzad();
                ((zzf) this.zza).zza(str);
                return this;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(long j6) {
            this.zze |= 2;
            this.zzg = j6;
        }

        static {
            zzf zzfVar = new zzf();
            zzc = zzfVar;
            zzix.zza((Class<zzf>) zzf.class, zzfVar);
        }

        public static zza zza() {
            return zzc.zzbx();
        }

        private zzf() {
        }

        @Override // com.google.android.gms.internal.measurement.zzix
        protected final Object zza(int i10, Object obj, Object obj2) {
            zzfh zzfhVar = null;
            switch (zzfh.zza[i10 - 1]) {
                case 1:
                    return new zzf();
                case 2:
                    return new zza(zzfhVar);
                case 3:
                    return zzix.zza(zzc, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဂ\u0001", new Object[]{"zze", "zzf", "zzg"});
                case 4:
                    return zzc;
                case 5:
                    zzkw<zzf> zzaVar = zzd;
                    if (zzaVar == null) {
                        synchronized (zzf.class) {
                            try {
                                zzaVar = zzd;
                                if (zzaVar == null) {
                                    zzaVar = new zzix.zza<>(zzc);
                                    zzd = zzaVar;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                            break;
                        }
                    }
                    return zzaVar;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(String str) {
            str.getClass();
            this.zze |= 1;
            this.zzf = str;
        }
    }

    public static final class zzg extends zzix<zzg, zza> implements zzkl {
        private static final zzg zzc;
        private static volatile zzkw<zzg> zzd;
        private int zze;
        private long zzh;
        private float zzi;
        private double zzj;
        private String zzf = "";
        private String zzg = "";
        private zzjf<zzg> zzk = zzix.zzcc();

        public static final class zza extends zzix.zzb<zzg, zza> implements zzkl {
            private zza() {
                super(zzg.zzc);
            }

            public final int zza() {
                return ((zzg) this.zza).zzc();
            }

            public final zza zzb() {
                zzad();
                ((zzg) this.zza).zzo();
                return this;
            }

            /* synthetic */ zza(zzfh zzfhVar) {
                this();
            }

            public final zza zza(Iterable<? extends zzg> iterable) {
                zzad();
                ((zzg) this.zza).zza(iterable);
                return this;
            }

            public final zza zzb(String str) {
                zzad();
                ((zzg) this.zza).zzb(str);
                return this;
            }

            public final zza zzc() {
                zzad();
                ((zzg) this.zza).zzp();
                return this;
            }

            public final zza zzd() {
                zzad();
                ((zzg) this.zza).zzq();
                return this;
            }

            public final zza zze() {
                zzad();
                ((zzg) this.zza).zzr();
                return this;
            }

            public final zza zza(zza zzaVar) {
                zzad();
                ((zzg) this.zza).zze((zzg) ((zzix) zzaVar.zzab()));
                return this;
            }

            public final zza zza(double d) {
                zzad();
                ((zzg) this.zza).zza(d);
                return this;
            }

            public final zza zza(long j6) {
                zzad();
                ((zzg) this.zza).zza(j6);
                return this;
            }

            public final zza zza(String str) {
                zzad();
                ((zzg) this.zza).zza(str);
                return this;
            }
        }

        public static zza zze() {
            return zzc.zzbx();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzo() {
            this.zze &= -17;
            this.zzj = a.DEFAULT_VALUE_FOR_DOUBLE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzp() {
            this.zze &= -5;
            this.zzh = 0L;
        }

        public final double zza() {
            return this.zzj;
        }

        public final float zzb() {
            return this.zzi;
        }

        public final int zzc() {
            return this.zzk.size();
        }

        public final long zzd() {
            return this.zzh;
        }

        public final String zzg() {
            return this.zzf;
        }

        public final String zzh() {
            return this.zzg;
        }

        public final List<zzg> zzi() {
            return this.zzk;
        }

        public final boolean zzj() {
            return (this.zze & 16) != 0;
        }

        public final boolean zzk() {
            return (this.zze & 8) != 0;
        }

        public final boolean zzl() {
            return (this.zze & 4) != 0;
        }

        public final boolean zzm() {
            return (this.zze & 1) != 0;
        }

        public final boolean zzn() {
            return (this.zze & 2) != 0;
        }

        static {
            zzg zzgVar = new zzg();
            zzc = zzgVar;
            zzix.zza((Class<zzg>) zzg.class, zzgVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(double d) {
            this.zze |= 16;
            this.zzj = d;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zze(zzg zzgVar) {
            zzgVar.getClass();
            zzs();
            this.zzk.add(zzgVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzr() {
            this.zze &= -3;
            this.zzg = zzc.zzg;
        }

        private final void zzs() {
            zzjf<zzg> zzjfVar = this.zzk;
            if (zzjfVar.zzc()) {
                return;
            }
            this.zzk = zzix.zza(zzjfVar);
        }

        private zzg() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(long j6) {
            this.zze |= 4;
            this.zzh = j6;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzq() {
            this.zzk = zzix.zzcc();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(String str) {
            str.getClass();
            this.zze |= 2;
            this.zzg = str;
        }

        @Override // com.google.android.gms.internal.measurement.zzix
        protected final Object zza(int i10, Object obj, Object obj2) {
            zzfh zzfhVar = null;
            switch (zzfh.zza[i10 - 1]) {
                case 1:
                    return new zzg();
                case 2:
                    return new zza(zzfhVar);
                case 3:
                    return zzix.zza(zzc, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဂ\u0002\u0004ခ\u0003\u0005က\u0004\u0006\u001b", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", zzg.class});
                case 4:
                    return zzc;
                case 5:
                    zzkw<zzg> zzaVar = zzd;
                    if (zzaVar == null) {
                        synchronized (zzg.class) {
                            try {
                                zzaVar = zzd;
                                if (zzaVar == null) {
                                    zzaVar = new zzix.zza<>(zzc);
                                    zzd = zzaVar;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                            break;
                        }
                    }
                    return zzaVar;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(Iterable<? extends zzg> iterable) {
            zzs();
            zzhd.zza(iterable, this.zzk);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(String str) {
            str.getClass();
            this.zze |= 1;
            this.zzf = str;
        }
    }

    public static final class zzh extends zzix<zzh, zza> implements zzkl {
        private static final zzh zzc;
        private static volatile zzkw<zzh> zzd;
        private int zze;
        private String zzf = "";
        private String zzg = "";
        private zza zzh;

        public static final class zza extends zzix.zzb<zzh, zza> implements zzkl {
            private zza() {
                super(zzh.zzc);
            }

            /* synthetic */ zza(zzfh zzfhVar) {
                this();
            }
        }

        static {
            zzh zzhVar = new zzh();
            zzc = zzhVar;
            zzix.zza((Class<zzh>) zzh.class, zzhVar);
        }

        @Override // com.google.android.gms.internal.measurement.zzix
        protected final Object zza(int i10, Object obj, Object obj2) {
            zzfh zzfhVar = null;
            switch (zzfh.zza[i10 - 1]) {
                case 1:
                    return new zzh();
                case 2:
                    return new zza(zzfhVar);
                case 3:
                    return zzix.zza(zzc, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဉ\u0002", new Object[]{"zze", "zzf", "zzg", "zzh"});
                case 4:
                    return zzc;
                case 5:
                    zzkw<zzh> zzaVar = zzd;
                    if (zzaVar == null) {
                        synchronized (zzh.class) {
                            try {
                                zzaVar = zzd;
                                if (zzaVar == null) {
                                    zzaVar = new zzix.zza<>(zzc);
                                    zzd = zzaVar;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                            break;
                        }
                    }
                    return zzaVar;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        private zzh() {
        }
    }

    public static final class zzi extends zzix<zzi, zza> implements zzkl {
        private static final zzi zzc;
        private static volatile zzkw<zzi> zzd;
        private int zze;
        private zzjf<zzj> zzf = zzix.zzcc();
        private String zzg = "";

        public static final class zza extends zzix.zzb<zzi, zza> implements zzkl {
            private zza() {
                super(zzi.zzc);
            }

            public final int zza() {
                return ((zzi) this.zza).zza();
            }

            /* synthetic */ zza(zzfh zzfhVar) {
                this();
            }

            public final zza zza(zzj.zza zzaVar) {
                zzad();
                ((zzi) this.zza).zza((zzj) ((zzix) zzaVar.zzab()));
                return this;
            }

            public final zzj zza(int i10) {
                return ((zzi) this.zza).zza(0);
            }
        }

        public final int zza() {
            return this.zzf.size();
        }

        public final List<zzj> zzd() {
            return this.zzf;
        }

        static {
            zzi zziVar = new zzi();
            zzc = zziVar;
            zzix.zza((Class<zzi>) zzi.class, zziVar);
        }

        public static zza zzb() {
            return zzc.zzbx();
        }

        public final zzj zza(int i10) {
            return this.zzf.get(0);
        }

        private zzi() {
        }

        @Override // com.google.android.gms.internal.measurement.zzix
        protected final Object zza(int i10, Object obj, Object obj2) {
            zzfh zzfhVar = null;
            switch (zzfh.zza[i10 - 1]) {
                case 1:
                    return new zzi();
                case 2:
                    return new zza(zzfhVar);
                case 3:
                    return zzix.zza(zzc, "\u0001\u0002\u0000\u0001\u0001\u0007\u0002\u0000\u0001\u0000\u0001\u001b\u0007ဈ\u0000", new Object[]{"zze", "zzf", zzj.class, "zzg"});
                case 4:
                    return zzc;
                case 5:
                    zzkw<zzi> zzaVar = zzd;
                    if (zzaVar == null) {
                        synchronized (zzi.class) {
                            try {
                                zzaVar = zzd;
                                if (zzaVar == null) {
                                    zzaVar = new zzix.zza<>(zzc);
                                    zzd = zzaVar;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                            break;
                        }
                    }
                    return zzaVar;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(zzj zzjVar) {
            zzjVar.getClass();
            zzjf<zzj> zzjfVar = this.zzf;
            if (!zzjfVar.zzc()) {
                this.zzf = zzix.zza(zzjfVar);
            }
            this.zzf.add(zzjVar);
        }
    }

    public static final class zzj extends zzix<zzj, zza> implements zzkl {
        private static final zzj zzc;
        private static volatile zzkw<zzj> zzd;
        private long zzab;
        private int zzac;
        private boolean zzaf;
        private int zzai;
        private int zzaj;
        private int zzak;
        private long zzam;
        private long zzan;
        private int zzaq;
        private zzk zzas;
        private long zzau;
        private long zzav;
        private int zzay;
        private boolean zzaz;
        private boolean zzbb;
        private zzh zzbc;
        private long zzbg;
        private boolean zzbh;
        private boolean zzbj;
        private int zzbl;
        private zzb zzbn;
        private int zze;
        private int zzf;
        private int zzg;
        private long zzj;
        private long zzk;
        private long zzl;
        private long zzm;
        private long zzn;
        private int zzs;
        private long zzw;
        private long zzx;
        private boolean zzz;
        private zzjf<zze> zzh = zzix.zzcc();
        private zzjf<zzn> zzi = zzix.zzcc();
        private String zzo = "";
        private String zzp = "";
        private String zzq = "";
        private String zzr = "";
        private String zzt = "";
        private String zzu = "";
        private String zzv = "";
        private String zzy = "";
        private String zzaa = "";
        private String zzad = "";
        private String zzae = "";
        private zzjf<zzc> zzag = zzix.zzcc();
        private String zzah = "";
        private String zzal = "";
        private String zzao = "";
        private String zzap = "";
        private String zzar = "";
        private zzjd zzat = zzix.zzca();
        private String zzaw = "";
        private String zzax = "";
        private String zzba = "";
        private String zzbd = "";
        private zzjf<String> zzbe = zzix.zzcc();
        private String zzbf = "";
        private String zzbi = "";
        private String zzbk = "";
        private String zzbm = "";

        public static final class zza extends zzix.zzb<zzj, zza> implements zzkl {
            private zza() {
                super(zzj.zzc);
            }

            public final int zza() {
                return ((zzj) this.zza).zzd();
            }

            public final int zzb() {
                return ((zzj) this.zza).zzh();
            }

            public final long zzc() {
                return ((zzj) this.zza).zzl();
            }

            public final long zzd() {
                return ((zzj) this.zza).zzp();
            }

            public final zza zze(Iterable<? extends zzn> iterable) {
                zzad();
                ((zzj) this.zza).zze(iterable);
                return this;
            }

            public final zza zzf() {
                zzad();
                ((zzj) this.zza).zzcl();
                return this;
            }

            public final zza zzg() {
                zzad();
                ((zzj) this.zza).zzcm();
                return this;
            }

            public final zza zzh() {
                zzad();
                ((zzj) this.zza).zzcn();
                return this;
            }

            public final zza zzi() {
                zzad();
                ((zzj) this.zza).zzco();
                return this;
            }

            public final zza zzj() {
                zzad();
                ((zzj) this.zza).zzcp();
                return this;
            }

            public final zza zzk() {
                zzad();
                ((zzj) this.zza).zzcq();
                return this;
            }

            public final zza zzl() {
                zzad();
                ((zzj) this.zza).zzcr();
                return this;
            }

            public final zza zzm() {
                zzad();
                ((zzj) this.zza).zzcs();
                return this;
            }

            public final zza zzn() {
                zzad();
                ((zzj) this.zza).zzct();
                return this;
            }

            public final zza zzo() {
                zzad();
                ((zzj) this.zza).zzcu();
                return this;
            }

            public final zza zzp() {
                zzad();
                ((zzj) this.zza).zzcv();
                return this;
            }

            public final zza zzq() {
                zzad();
                ((zzj) this.zza).zzcw();
                return this;
            }

            public final zza zzr(String str) {
                zzad();
                ((zzj) this.zza).zzr(str);
                return this;
            }

            public final zza zzs(String str) {
                zzad();
                ((zzj) this.zza).zzs(str);
                return this;
            }

            /* synthetic */ zza(zzfh zzfhVar) {
                this();
            }

            public final zze zza(int i10) {
                return ((zzj) this.zza).zza(i10);
            }

            public final zza zzb(Iterable<? extends zze> iterable) {
                zzad();
                ((zzj) this.zza).zzb(iterable);
                return this;
            }

            public final zza zzc(Iterable<? extends Integer> iterable) {
                zzad();
                ((zzj) this.zza).zzc(iterable);
                return this;
            }

            public final zza zzd(Iterable<String> iterable) {
                zzad();
                ((zzj) this.zza).zzd(iterable);
                return this;
            }

            public final String zzt() {
                return ((zzj) this.zza).zzah();
            }

            public final String zzu() {
                return ((zzj) this.zza).zzaj();
            }

            public final String zzv() {
                return ((zzj) this.zza).zzal();
            }

            public final List<zze> zzw() {
                return Collections.unmodifiableList(((zzj) this.zza).zzap());
            }

            public final List<zzn> zzx() {
                return Collections.unmodifiableList(((zzj) this.zza).zzaq());
            }

            public final zza zza(Iterable<? extends zzc> iterable) {
                zzad();
                ((zzj) this.zza).zza(iterable);
                return this;
            }

            public final zza zze() {
                zzad();
                ((zzj) this.zza).zzck();
                return this;
            }

            public final zza zzf(int i10) {
                zzad();
                ((zzj) this.zza).zzh(i10);
                return this;
            }

            public final zza zzg(String str) {
                zzad();
                ((zzj) this.zza).zzg(str);
                return this;
            }

            public final zza zzh(String str) {
                zzad();
                ((zzj) this.zza).zzh(str);
                return this;
            }

            public final zza zzi(String str) {
                zzad();
                ((zzj) this.zza).zzi(str);
                return this;
            }

            public final zza zzj(String str) {
                zzad();
                ((zzj) this.zza).zzj((String) null);
                return this;
            }

            public final zza zzk(String str) {
                zzad();
                ((zzj) this.zza).zzk(str);
                return this;
            }

            public final zza zzl(String str) {
                zzad();
                ((zzj) this.zza).zzl(str);
                return this;
            }

            public final zza zzm(String str) {
                zzad();
                ((zzj) this.zza).zzm(str);
                return this;
            }

            public final zza zzn(String str) {
                zzad();
                ((zzj) this.zza).zzn(str);
                return this;
            }

            public final zza zzo(String str) {
                zzad();
                ((zzj) this.zza).zzo(str);
                return this;
            }

            public final zza zzp(String str) {
                zzad();
                ((zzj) this.zza).zzp(str);
                return this;
            }

            public final zza zzq(String str) {
                zzad();
                ((zzj) this.zza).zzq(str);
                return this;
            }

            public final String zzr() {
                return ((zzj) this.zza).zzx();
            }

            public final String zzs() {
                return ((zzj) this.zza).zzab();
            }

            public final zza zzb(int i10) {
                zzad();
                ((zzj) this.zza).zzd(i10);
                return this;
            }

            public final zza zzc(int i10) {
                zzad();
                ((zzj) this.zza).zze(i10);
                return this;
            }

            public final zza zzd(int i10) {
                zzad();
                ((zzj) this.zza).zzf(i10);
                return this;
            }

            public final zza zza(zze.zza zzaVar) {
                zzad();
                ((zzj) this.zza).zza((zze) ((zzix) zzaVar.zzab()));
                return this;
            }

            public final zza zze(String str) {
                zzad();
                ((zzj) this.zza).zze(str);
                return this;
            }

            public final zza zzf(String str) {
                zzad();
                ((zzj) this.zza).zzf(str);
                return this;
            }

            public final zza zzg(long j6) {
                zzad();
                ((zzj) this.zza).zzg(j6);
                return this;
            }

            public final zza zzh(long j6) {
                zzad();
                ((zzj) this.zza).zzh(j6);
                return this;
            }

            public final zza zzi(long j6) {
                zzad();
                ((zzj) this.zza).zzi(j6);
                return this;
            }

            public final zza zzj(long j6) {
                zzad();
                ((zzj) this.zza).zzj(j6);
                return this;
            }

            public final zza zzk(long j6) {
                zzad();
                ((zzj) this.zza).zzk(j6);
                return this;
            }

            public final zza zzl(long j6) {
                zzad();
                ((zzj) this.zza).zzl(j6);
                return this;
            }

            public final zza zzb(String str) {
                zzad();
                ((zzj) this.zza).zzb(str);
                return this;
            }

            public final zza zzc(String str) {
                zzad();
                ((zzj) this.zza).zzc(str);
                return this;
            }

            public final zza zzd(String str) {
                zzad();
                ((zzj) this.zza).zzd(str);
                return this;
            }

            public final zza zza(zzn.zza zzaVar) {
                zzad();
                ((zzj) this.zza).zza((zzn) ((zzix) zzaVar.zzab()));
                return this;
            }

            public final zza zze(int i10) {
                zzad();
                ((zzj) this.zza).zzg(i10);
                return this;
            }

            public final zza zzf(long j6) {
                zzad();
                ((zzj) this.zza).zzf(j6);
                return this;
            }

            public final zza zzg(int i10) {
                zzad();
                ((zzj) this.zza).zzi(1);
                return this;
            }

            public final zza zzh(int i10) {
                zzad();
                ((zzj) this.zza).zzj(i10);
                return this;
            }

            public final zza zzi(int i10) {
                zzad();
                ((zzj) this.zza).zzk(i10);
                return this;
            }

            public final zzn zzj(int i10) {
                return ((zzj) this.zza).zzb(i10);
            }

            public final zza zzb(long j6) {
                zzad();
                ((zzj) this.zza).zzb(j6);
                return this;
            }

            public final zza zzc(long j6) {
                zzad();
                ((zzj) this.zza).zzc(j6);
                return this;
            }

            public final zza zzd(long j6) {
                zzad();
                ((zzj) this.zza).zzd(j6);
                return this;
            }

            public final zza zza(zzn zznVar) {
                zzad();
                ((zzj) this.zza).zza(zznVar);
                return this;
            }

            public final zza zze(long j6) {
                zzad();
                ((zzj) this.zza).zze(j6);
                return this;
            }

            public final zza zzb(boolean z6) {
                zzad();
                ((zzj) this.zza).zzb(z6);
                return this;
            }

            public final zza zzc(boolean z6) {
                zzad();
                ((zzj) this.zza).zzc(z6);
                return this;
            }

            public final zza zzd(boolean z6) {
                zzad();
                ((zzj) this.zza).zzd(z6);
                return this;
            }

            public final zza zza(String str) {
                zzad();
                ((zzj) this.zza).zza(str);
                return this;
            }

            public final zza zza(zzb zzbVar) {
                zzad();
                ((zzj) this.zza).zza(zzbVar);
                return this;
            }

            public final zza zza(long j6) {
                zzad();
                ((zzj) this.zza).zza(j6);
                return this;
            }

            public final zza zza(boolean z6) {
                zzad();
                ((zzj) this.zza).zza(z6);
                return this;
            }

            public final zza zza(int i10, zze.zza zzaVar) {
                zzad();
                ((zzj) this.zza).zza(i10, (zze) ((zzix) zzaVar.zzab()));
                return this;
            }

            public final zza zza(int i10, zze zzeVar) {
                zzad();
                ((zzj) this.zza).zza(i10, zzeVar);
                return this;
            }

            public final zza zza(zzk.zzb zzbVar) {
                zzad();
                ((zzj) this.zza).zza((zzk) ((zzix) zzbVar.zzab()));
                return this;
            }

            public final zza zza(int i10, zzn zznVar) {
                zzad();
                ((zzj) this.zza).zza(i10, zznVar);
                return this;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzcq() {
            this.zze &= -131073;
            this.zzz = false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzcs() {
            this.zze &= -33;
            this.zzn = 0L;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzct() {
            this.zze &= -17;
            this.zzm = 0L;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzd(long j6) {
            this.zzf |= 16;
            this.zzau = j6;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzh(int i10) {
            this.zze |= 1048576;
            this.zzac = i10;
        }

        public final int zza() {
            return this.zzbl;
        }

        public final String zzaa() {
            return this.zzv;
        }

        public final String zzab() {
            return this.zzbi;
        }

        public final String zzac() {
            return this.zzax;
        }

        public final String zzad() {
            return this.zzbk;
        }

        public final String zzae() {
            return this.zzq;
        }

        public final String zzaf() {
            return this.zzao;
        }

        public final String zzag() {
            return this.zzah;
        }

        public final String zzah() {
            return this.zzae;
        }

        public final String zzai() {
            return this.zzad;
        }

        public final String zzaj() {
            return this.zzp;
        }

        public final String zzak() {
            return this.zzo;
        }

        public final String zzal() {
            return this.zzy;
        }

        public final String zzam() {
            return this.zzbd;
        }

        public final String zzan() {
            return this.zzr;
        }

        public final List<zzc> zzao() {
            return this.zzag;
        }

        public final List<zze> zzap() {
            return this.zzh;
        }

        public final List<zzn> zzaq() {
            return this.zzi;
        }

        public final boolean zzar() {
            return this.zzbh;
        }

        public final boolean zzas() {
            return this.zzbj;
        }

        public final boolean zzat() {
            return this.zzz;
        }

        public final boolean zzau() {
            return this.zzaf;
        }

        public final boolean zzav() {
            return (this.zze & 33554432) != 0;
        }

        public final boolean zzaw() {
            return (this.zzf & 4194304) != 0;
        }

        public final boolean zzax() {
            return (this.zze & 1048576) != 0;
        }

        public final boolean zzay() {
            return (this.zze & 536870912) != 0;
        }

        public final boolean zzaz() {
            return (this.zzf & 131072) != 0;
        }

        public final int zzb() {
            return this.zzai;
        }

        public final boolean zzba() {
            return (this.zzf & 128) != 0;
        }

        public final boolean zzbb() {
            return (this.zzf & 524288) != 0;
        }

        public final boolean zzbc() {
            return (this.zze & 524288) != 0;
        }

        public final boolean zzbd() {
            return (this.zzf & 16) != 0;
        }

        public final boolean zzbe() {
            return (this.zze & 8) != 0;
        }

        public final boolean zzbf() {
            return (this.zze & 16384) != 0;
        }

        public final boolean zzbg() {
            return (this.zzf & 262144) != 0;
        }

        public final boolean zzbh() {
            return (this.zze & 131072) != 0;
        }

        public final boolean zzbi() {
            return (this.zze & 32) != 0;
        }

        public final boolean zzbj() {
            return (this.zze & 16) != 0;
        }

        public final boolean zzbk() {
            return (this.zze & 1) != 0;
        }

        public final boolean zzbl() {
            return (this.zzf & 2) != 0;
        }

        public final boolean zzbm() {
            return (this.zze & 8388608) != 0;
        }

        public final boolean zzbn() {
            return (this.zzf & 8192) != 0;
        }

        public final boolean zzbo() {
            return (this.zze & 4) != 0;
        }

        public final boolean zzbp() {
            return (this.zzf & 32768) != 0;
        }

        public final boolean zzbq() {
            return (this.zze & 1024) != 0;
        }

        public final boolean zzbr() {
            return (this.zze & 2) != 0;
        }

        public final boolean zzbs() {
            return (this.zze & 32768) != 0;
        }

        public final int zzc() {
            return this.zzac;
        }

        public final int zze() {
            return this.zzg;
        }

        public final int zzf() {
            return this.zzaq;
        }

        public final int zzg() {
            return this.zzs;
        }

        public final long zzi() {
            return this.zzam;
        }

        public final long zzj() {
            return this.zzab;
        }

        public final long zzk() {
            return this.zzau;
        }

        public final long zzl() {
            return this.zzl;
        }

        public final long zzm() {
            return this.zzw;
        }

        public final long zzn() {
            return this.zzn;
        }

        public final long zzo() {
            return this.zzm;
        }

        public final long zzp() {
            return this.zzk;
        }

        public final long zzq() {
            return this.zzbg;
        }

        public final long zzr() {
            return this.zzj;
        }

        public final long zzs() {
            return this.zzx;
        }

        public final String zzw() {
            return this.zzar;
        }

        public final String zzx() {
            return this.zzu;
        }

        public final String zzy() {
            return this.zzaa;
        }

        public final String zzz() {
            return this.zzt;
        }

        static {
            zzj zzjVar = new zzj();
            zzc = zzjVar;
            zzix.zza((Class<zzj>) zzj.class, zzjVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(long j6) {
            this.zzf |= 32;
            this.zzav = j6;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(long j6) {
            this.zze |= 536870912;
            this.zzam = j6;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzc(long j6) {
            this.zze |= 524288;
            this.zzab = j6;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzck() {
            this.zze &= -262145;
            this.zzaa = zzc.zzaa;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzcm() {
            this.zze &= -257;
            this.zzq = zzc.zzq;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzcn() {
            this.zze &= Integer.MAX_VALUE;
            this.zzao = zzc.zzao;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzcp() {
            this.zze &= -2097153;
            this.zzad = zzc.zzad;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzcr() {
            this.zze &= -129;
            this.zzp = zzc.zzp;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzcu() {
            this.zze &= -65537;
            this.zzy = zzc.zzy;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzcv() {
            this.zzf &= -8193;
            this.zzbd = zzc.zzbd;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzcw() {
            this.zze &= -268435457;
            this.zzal = zzc.zzal;
        }

        private final void zzcx() {
            zzjf<zze> zzjfVar = this.zzh;
            if (zzjfVar.zzc()) {
                return;
            }
            this.zzh = zzix.zza(zzjfVar);
        }

        private final void zzcy() {
            zzjf<zzn> zzjfVar = this.zzi;
            if (zzjfVar.zzc()) {
                return;
            }
            this.zzi = zzix.zza(zzjfVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzd(boolean z6) {
            this.zze |= 8388608;
            this.zzaf = z6;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zze(long j6) {
            this.zze |= 8;
            this.zzl = j6;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzf(int i10) {
            this.zzf |= 1048576;
            this.zzbl = i10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzg(int i10) {
            this.zze |= 33554432;
            this.zzai = i10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzh(long j6) {
            this.zze |= 16;
            this.zzm = j6;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzi(int i10) {
            this.zze |= 1;
            this.zzg = 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzj(int i10) {
            this.zzf |= 2;
            this.zzaq = i10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzk(int i10) {
            this.zze |= 1024;
            this.zzs = i10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzl(long j6) {
            this.zze |= 32768;
            this.zzx = j6;
        }

        public static zza zzu() {
            return zzc.zzbx();
        }

        public final zzb zzt() {
            zzb zzbVar = this.zzbn;
            return zzbVar == null ? zzb.zzc() : zzbVar;
        }

        private zzj() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(boolean z6) {
            this.zzf |= 65536;
            this.zzbh = z6;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(boolean z6) {
            this.zzf |= 262144;
            this.zzbj = z6;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzc(boolean z6) {
            this.zze |= 131072;
            this.zzz = z6;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzcl() {
            this.zzag = zzix.zzcc();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzco() {
            this.zzh = zzix.zzcc();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzf(long j6) {
            this.zze |= 16384;
            this.zzw = j6;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzg(long j6) {
            this.zze |= 32;
            this.zzn = j6;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzi(long j6) {
            this.zze |= 4;
            this.zzk = j6;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzj(long j6) {
            this.zzf |= 32768;
            this.zzbg = j6;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzk(long j6) {
            this.zze |= 2;
            this.zzj = j6;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzn(String str) {
            str.getClass();
            this.zze |= 2097152;
            this.zzad = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzo(String str) {
            str.getClass();
            this.zze |= 128;
            this.zzp = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzp(String str) {
            str.getClass();
            this.zze |= 64;
            this.zzo = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzq(String str) {
            str.getClass();
            this.zze |= 65536;
            this.zzy = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzr(String str) {
            str.getClass();
            this.zzf |= 8192;
            this.zzbd = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzs(String str) {
            str.getClass();
            this.zze |= 512;
            this.zzr = str;
        }

        public final int zzd() {
            return this.zzh.size();
        }

        public final int zzh() {
            return this.zzi.size();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzm(String str) {
            str.getClass();
            this.zze |= 4194304;
            this.zzae = str;
        }

        public final zze zza(int i10) {
            return this.zzh.get(i10);
        }

        public final zzn zzb(int i10) {
            return this.zzi.get(i10);
        }

        @Override // com.google.android.gms.internal.measurement.zzix
        protected final Object zza(int i10, Object obj, Object obj2) {
            zzfh zzfhVar = null;
            switch (zzfh.zza[i10 - 1]) {
                case 1:
                    return new zzj();
                case 2:
                    return new zza(zzfhVar);
                case 3:
                    return zzix.zza(zzc, "\u0001<\u0000\u0002\u0001L<\u0000\u0005\u0000\u0001င\u0000\u0002\u001b\u0003\u001b\u0004ဂ\u0001\u0005ဂ\u0002\u0006ဂ\u0003\u0007ဂ\u0005\bဈ\u0006\tဈ\u0007\nဈ\b\u000bဈ\t\fင\n\rဈ\u000b\u000eဈ\f\u0010ဈ\r\u0011ဂ\u000e\u0012ဂ\u000f\u0013ဈ\u0010\u0014ဇ\u0011\u0015ဈ\u0012\u0016ဂ\u0013\u0017င\u0014\u0018ဈ\u0015\u0019ဈ\u0016\u001aဂ\u0004\u001cဇ\u0017\u001d\u001b\u001eဈ\u0018\u001fင\u0019 င\u001a!င\u001b\"ဈ\u001c#ဂ\u001d$ဂ\u001e%ဈ\u001f&ဈ 'င!)ဈ\",ဉ#-\u001d.ဂ$/ဂ%2ဈ&4ဈ'5᠌(7ဇ)9ဈ*:ဇ+;ဉ,?ဈ-@\u001aAဈ.Cဂ/Dဇ0Gဈ1Hဇ2Iဈ3Jင4Kဈ5Lဉ6", new Object[]{"zze", "zzf", "zzg", "zzh", zze.class, "zzi", zzn.class, "zzj", "zzk", "zzl", "zzn", "zzo", "zzp", "zzq", "zzr", "zzs", "zzt", "zzu", "zzv", "zzw", "zzx", "zzy", "zzz", "zzaa", "zzab", "zzac", "zzad", "zzae", "zzm", "zzaf", "zzag", zzc.class, "zzah", "zzai", "zzaj", "zzak", "zzal", "zzam", "zzan", "zzao", "zzap", "zzaq", "zzar", "zzas", "zzat", "zzau", "zzav", "zzaw", "zzax", "zzay", zzfk.zzb(), "zzaz", "zzba", "zzbb", "zzbc", "zzbd", "zzbe", "zzbf", "zzbg", "zzbh", "zzbi", "zzbj", "zzbk", "zzbl", "zzbm", "zzbn"});
                case 4:
                    return zzc;
                case 5:
                    zzkw<zzj> zzaVar = zzd;
                    if (zzaVar == null) {
                        synchronized (zzj.class) {
                            try {
                                zzaVar = zzd;
                                if (zzaVar == null) {
                                    zzaVar = new zzix.zza<>(zzc);
                                    zzd = zzaVar;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                            break;
                        }
                    }
                    return zzaVar;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzl(String str) {
            str.getClass();
            this.zze |= 16777216;
            this.zzah = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzi(String str) {
            str.getClass();
            this.zze |= 256;
            this.zzq = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzj(String str) {
            str.getClass();
            this.zze |= Integer.MIN_VALUE;
            this.zzao = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzk(String str) {
            str.getClass();
            this.zzf |= 16384;
            this.zzbf = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zze(Iterable<? extends zzn> iterable) {
            zzcy();
            zzhd.zza(iterable, this.zzi);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzf(String str) {
            str.getClass();
            this.zzf |= 131072;
            this.zzbi = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzg(String str) {
            str.getClass();
            this.zzf |= 128;
            this.zzax = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzh(String str) {
            str.getClass();
            this.zzf |= 524288;
            this.zzbk = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzc(Iterable<? extends Integer> iterable) {
            zzjd zzjdVar = this.zzat;
            if (!zzjdVar.zzc()) {
                int size = zzjdVar.size();
                this.zzat = zzjdVar.zza(size == 0 ? 10 : size << 1);
            }
            zzhd.zza(iterable, this.zzat);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzd(Iterable<String> iterable) {
            zzjf<String> zzjfVar = this.zzbe;
            if (!zzjfVar.zzc()) {
                this.zzbe = zzix.zza(zzjfVar);
            }
            zzhd.zza(iterable, this.zzbe);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zze(int i10) {
            zzcy();
            this.zzi.remove(i10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(Iterable<? extends zze> iterable) {
            zzcx();
            zzhd.zza(iterable, this.zzh);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zze(String str) {
            str.getClass();
            this.zze |= 8192;
            this.zzv = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(String str) {
            str.getClass();
            this.zze |= 4096;
            this.zzu = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzd(int i10) {
            zzcx();
            this.zzh.remove(i10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzc(String str) {
            str.getClass();
            this.zze |= 262144;
            this.zzaa = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzd(String str) {
            str.getClass();
            this.zze |= 2048;
            this.zzt = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(Iterable<? extends zzc> iterable) {
            zzjf<zzc> zzjfVar = this.zzag;
            if (!zzjfVar.zzc()) {
                this.zzag = zzix.zza(zzjfVar);
            }
            zzhd.zza(iterable, this.zzag);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(zze zzeVar) {
            zzeVar.getClass();
            zzcx();
            this.zzh.add(zzeVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(zzn zznVar) {
            zznVar.getClass();
            zzcy();
            this.zzi.add(zznVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(String str) {
            str.getClass();
            this.zzf |= 4;
            this.zzar = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(zzb zzbVar) {
            zzbVar.getClass();
            this.zzbn = zzbVar;
            this.zzf |= 4194304;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(int i10, zze zzeVar) {
            zzeVar.getClass();
            zzcx();
            this.zzh.set(i10, zzeVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(zzk zzkVar) {
            zzkVar.getClass();
            this.zzas = zzkVar;
            this.zzf |= 8;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(int i10, zzn zznVar) {
            zznVar.getClass();
            zzcy();
            this.zzi.set(i10, zznVar);
        }
    }

    public static final class zzk extends zzix<zzk, zzb> implements zzkl {
        private static final zzk zzc;
        private static volatile zzkw<zzk> zzd;
        private int zze;
        private int zzf = 1;
        private zzjf<zzf> zzg = zzix.zzcc();

        public enum zza implements zzjc {
            RADS(1),
            PROVISIONING(2);

            private static final zzjb<zza> zzc = new zzfn();
            private final int zze;

            @Override // com.google.android.gms.internal.measurement.zzjc
            public final int zza() {
                return this.zze;
            }

            public static zza zza(int i10) {
                if (i10 == 1) {
                    return RADS;
                }
                if (i10 != 2) {
                    return null;
                }
                return PROVISIONING;
            }

            public static zzje zzb() {
                return zzfm.zza;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + zza.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.zze + " name=" + name() + '>';
            }

            zza(int i10) {
                this.zze = i10;
            }
        }

        public static final class zzb extends zzix.zzb<zzk, zzb> implements zzkl {
            private zzb() {
                super(zzk.zzc);
            }

            /* synthetic */ zzb(zzfh zzfhVar) {
                this();
            }

            public final zzb zza(zzf.zza zzaVar) {
                zzad();
                ((zzk) this.zza).zza((zzf) ((zzix) zzaVar.zzab()));
                return this;
            }
        }

        public static zzb zza() {
            return zzc.zzbx();
        }

        static {
            zzk zzkVar = new zzk();
            zzc = zzkVar;
            zzix.zza((Class<zzk>) zzk.class, zzkVar);
        }

        @Override // com.google.android.gms.internal.measurement.zzix
        protected final Object zza(int i10, Object obj, Object obj2) {
            zzfh zzfhVar = null;
            switch (zzfh.zza[i10 - 1]) {
                case 1:
                    return new zzk();
                case 2:
                    return new zzb(zzfhVar);
                case 3:
                    return zzix.zza(zzc, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001᠌\u0000\u0002\u001b", new Object[]{"zze", "zzf", zza.zzb(), "zzg", zzf.class});
                case 4:
                    return zzc;
                case 5:
                    zzkw<zzk> zzaVar = zzd;
                    if (zzaVar == null) {
                        synchronized (zzk.class) {
                            try {
                                zzaVar = zzd;
                                if (zzaVar == null) {
                                    zzaVar = new zzix.zza<>(zzc);
                                    zzd = zzaVar;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                            break;
                        }
                    }
                    return zzaVar;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        private zzk() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(zzf zzfVar) {
            zzfVar.getClass();
            zzjf<zzf> zzjfVar = this.zzg;
            if (!zzjfVar.zzc()) {
                this.zzg = zzix.zza(zzjfVar);
            }
            this.zzg.add(zzfVar);
        }
    }

    public static final class zzl extends zzix<zzl, zza> implements zzkl {
        private static final zzl zzc;
        private static volatile zzkw<zzl> zzd;
        private zzjg zze = zzix.zzcb();
        private zzjg zzf = zzix.zzcb();
        private zzjf<zzd> zzg = zzix.zzcc();
        private zzjf<zzm> zzh = zzix.zzcc();

        public static final class zza extends zzix.zzb<zzl, zza> implements zzkl {
            private zza() {
                super(zzl.zzc);
            }

            public final zza zza(Iterable<? extends zzd> iterable) {
                zzad();
                ((zzl) this.zza).zza(iterable);
                return this;
            }

            public final zza zzb(Iterable<? extends Long> iterable) {
                zzad();
                ((zzl) this.zza).zzb(iterable);
                return this;
            }

            public final zza zzc(Iterable<? extends zzm> iterable) {
                zzad();
                ((zzl) this.zza).zzc(iterable);
                return this;
            }

            public final zza zzd(Iterable<? extends Long> iterable) {
                zzad();
                ((zzl) this.zza).zzd(iterable);
                return this;
            }

            /* synthetic */ zza(zzfh zzfhVar) {
                this();
            }

            public final zza zza() {
                zzad();
                ((zzl) this.zza).zzl();
                return this;
            }

            public final zza zzb() {
                zzad();
                ((zzl) this.zza).zzm();
                return this;
            }

            public final zza zzc() {
                zzad();
                ((zzl) this.zza).zzn();
                return this;
            }

            public final zza zzd() {
                zzad();
                ((zzl) this.zza).zzo();
                return this;
            }
        }

        public static zzl zzg() {
            return zzc;
        }

        public final int zza() {
            return this.zzg.size();
        }

        public final int zzb() {
            return this.zzf.size();
        }

        public final int zzc() {
            return this.zzh.size();
        }

        public final int zzd() {
            return this.zze.size();
        }

        public final List<zzd> zzh() {
            return this.zzg;
        }

        public final List<Long> zzi() {
            return this.zzf;
        }

        public final List<zzm> zzj() {
            return this.zzh;
        }

        public final List<Long> zzk() {
            return this.zze;
        }

        static {
            zzl zzlVar = new zzl();
            zzc = zzlVar;
            zzix.zza((Class<zzl>) zzl.class, zzlVar);
        }

        public static zza zze() {
            return zzc.zzbx();
        }

        @Override // com.google.android.gms.internal.measurement.zzix
        protected final Object zza(int i10, Object obj, Object obj2) {
            zzfh zzfhVar = null;
            switch (zzfh.zza[i10 - 1]) {
                case 1:
                    return new zzl();
                case 2:
                    return new zza(zzfhVar);
                case 3:
                    return zzix.zza(zzc, "\u0001\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0004\u0000\u0001\u0015\u0002\u0015\u0003\u001b\u0004\u001b", new Object[]{"zze", "zzf", "zzg", zzd.class, "zzh", zzm.class});
                case 4:
                    return zzc;
                case 5:
                    zzkw<zzl> zzaVar = zzd;
                    if (zzaVar == null) {
                        synchronized (zzl.class) {
                            try {
                                zzaVar = zzd;
                                if (zzaVar == null) {
                                    zzaVar = new zzix.zza<>(zzc);
                                    zzd = zzaVar;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                            break;
                        }
                    }
                    return zzaVar;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        private zzl() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzl() {
            this.zzg = zzix.zzcc();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzm() {
            this.zzf = zzix.zzcb();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzn() {
            this.zzh = zzix.zzcc();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzo() {
            this.zze = zzix.zzcb();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(Iterable<? extends Long> iterable) {
            zzjg zzjgVar = this.zzf;
            if (!zzjgVar.zzc()) {
                this.zzf = zzix.zza(zzjgVar);
            }
            zzhd.zza(iterable, this.zzf);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzc(Iterable<? extends zzm> iterable) {
            zzjf<zzm> zzjfVar = this.zzh;
            if (!zzjfVar.zzc()) {
                this.zzh = zzix.zza(zzjfVar);
            }
            zzhd.zza(iterable, this.zzh);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzd(Iterable<? extends Long> iterable) {
            zzjg zzjgVar = this.zze;
            if (!zzjgVar.zzc()) {
                this.zze = zzix.zza(zzjgVar);
            }
            zzhd.zza(iterable, this.zze);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(Iterable<? extends zzd> iterable) {
            zzjf<zzd> zzjfVar = this.zzg;
            if (!zzjfVar.zzc()) {
                this.zzg = zzix.zza(zzjfVar);
            }
            zzhd.zza(iterable, this.zzg);
        }
    }

    public static final class zzm extends zzix<zzm, zza> implements zzkl {
        private static final zzm zzc;
        private static volatile zzkw<zzm> zzd;
        private int zze;
        private int zzf;
        private zzjg zzg = zzix.zzcb();

        public static final class zza extends zzix.zzb<zzm, zza> implements zzkl {
            private zza() {
                super(zzm.zzc);
            }

            public final zza zza(Iterable<? extends Long> iterable) {
                zzad();
                ((zzm) this.zza).zza(iterable);
                return this;
            }

            /* synthetic */ zza(zzfh zzfhVar) {
                this();
            }

            public final zza zza(int i10) {
                zzad();
                ((zzm) this.zza).zzb(i10);
                return this;
            }
        }

        public final int zza() {
            return this.zzg.size();
        }

        public final int zzb() {
            return this.zzf;
        }

        public final List<Long> zze() {
            return this.zzg;
        }

        public final boolean zzf() {
            return (this.zze & 1) != 0;
        }

        static {
            zzm zzmVar = new zzm();
            zzc = zzmVar;
            zzix.zza((Class<zzm>) zzm.class, zzmVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(int i10) {
            this.zze |= 1;
            this.zzf = i10;
        }

        public static zza zzc() {
            return zzc.zzbx();
        }

        public final long zza(int i10) {
            return this.zzg.zzb(i10);
        }

        private zzm() {
        }

        @Override // com.google.android.gms.internal.measurement.zzix
        protected final Object zza(int i10, Object obj, Object obj2) {
            zzfh zzfhVar = null;
            switch (zzfh.zza[i10 - 1]) {
                case 1:
                    return new zzm();
                case 2:
                    return new zza(zzfhVar);
                case 3:
                    return zzix.zza(zzc, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001င\u0000\u0002\u0014", new Object[]{"zze", "zzf", "zzg"});
                case 4:
                    return zzc;
                case 5:
                    zzkw<zzm> zzaVar = zzd;
                    if (zzaVar == null) {
                        synchronized (zzm.class) {
                            try {
                                zzaVar = zzd;
                                if (zzaVar == null) {
                                    zzaVar = new zzix.zza<>(zzc);
                                    zzd = zzaVar;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                            break;
                        }
                    }
                    return zzaVar;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(Iterable<? extends Long> iterable) {
            zzjg zzjgVar = this.zzg;
            if (!zzjgVar.zzc()) {
                this.zzg = zzix.zza(zzjgVar);
            }
            zzhd.zza(iterable, this.zzg);
        }
    }

    public static final class zzn extends zzix<zzn, zza> implements zzkl {
        private static final zzn zzc;
        private static volatile zzkw<zzn> zzd;
        private int zze;
        private long zzf;
        private String zzg = "";
        private String zzh = "";
        private long zzi;
        private float zzj;
        private double zzk;

        public static final class zza extends zzix.zzb<zzn, zza> implements zzkl {
            private zza() {
                super(zzn.zzc);
            }

            public final zza zza() {
                zzad();
                ((zzn) this.zza).zzn();
                return this;
            }

            public final zza zzb() {
                zzad();
                ((zzn) this.zza).zzo();
                return this;
            }

            /* synthetic */ zza(zzfh zzfhVar) {
                this();
            }

            public final zza zza(double d) {
                zzad();
                ((zzn) this.zza).zza(d);
                return this;
            }

            public final zza zzb(long j6) {
                zzad();
                ((zzn) this.zza).zzb(j6);
                return this;
            }

            public final zza zzc() {
                zzad();
                ((zzn) this.zza).zzp();
                return this;
            }

            public final zza zza(long j6) {
                zzad();
                ((zzn) this.zza).zza(j6);
                return this;
            }

            public final zza zzb(String str) {
                zzad();
                ((zzn) this.zza).zzb(str);
                return this;
            }

            public final zza zza(String str) {
                zzad();
                ((zzn) this.zza).zza(str);
                return this;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzn() {
            this.zze &= -33;
            this.zzk = a.DEFAULT_VALUE_FOR_DOUBLE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzo() {
            this.zze &= -9;
            this.zzi = 0L;
        }

        public final double zza() {
            return this.zzk;
        }

        public final float zzb() {
            return this.zzj;
        }

        public final long zzc() {
            return this.zzi;
        }

        public final long zzd() {
            return this.zzf;
        }

        public final String zzg() {
            return this.zzg;
        }

        public final String zzh() {
            return this.zzh;
        }

        public final boolean zzi() {
            return (this.zze & 32) != 0;
        }

        public final boolean zzj() {
            return (this.zze & 16) != 0;
        }

        public final boolean zzk() {
            return (this.zze & 8) != 0;
        }

        public final boolean zzl() {
            return (this.zze & 1) != 0;
        }

        public final boolean zzm() {
            return (this.zze & 4) != 0;
        }

        static {
            zzn zznVar = new zzn();
            zzc = zznVar;
            zzix.zza((Class<zzn>) zzn.class, zznVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(double d) {
            this.zze |= 32;
            this.zzk = d;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(long j6) {
            this.zze |= 1;
            this.zzf = j6;
        }

        public static zza zze() {
            return zzc.zzbx();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzp() {
            this.zze &= -5;
            this.zzh = zzc.zzh;
        }

        private zzn() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(long j6) {
            this.zze |= 8;
            this.zzi = j6;
        }

        @Override // com.google.android.gms.internal.measurement.zzix
        protected final Object zza(int i10, Object obj, Object obj2) {
            zzfh zzfhVar = null;
            switch (zzfh.zza[i10 - 1]) {
                case 1:
                    return new zzn();
                case 2:
                    return new zza(zzfhVar);
                case 3:
                    return zzix.zza(zzc, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဂ\u0003\u0005ခ\u0004\u0006က\u0005", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk"});
                case 4:
                    return zzc;
                case 5:
                    zzkw<zzn> zzaVar = zzd;
                    if (zzaVar == null) {
                        synchronized (zzn.class) {
                            try {
                                zzaVar = zzd;
                                if (zzaVar == null) {
                                    zzaVar = new zzix.zza<>(zzc);
                                    zzd = zzaVar;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                            break;
                        }
                    }
                    return zzaVar;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(String str) {
            str.getClass();
            this.zze |= 4;
            this.zzh = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(String str) {
            str.getClass();
            this.zze |= 2;
            this.zzg = str;
        }
    }
}
