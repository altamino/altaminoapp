package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzez;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzbt {

    public static final class zza extends zzez<zza, C0023zza> implements zzgj {
        private static volatile zzgs<zza> zztq;
        private static final zza zzut = new zza();
        private int zztj;
        private int zzup;
        private zzf zzuq;
        private zzf zzur;
        private boolean zzus;

        private zza() {
        }

        /* renamed from: com.google.android.gms.internal.measurement.zzbt$zza$zza, reason: collision with other inner class name */
        public static final class C0023zza extends zzez.zza<zza, C0023zza> implements zzgj {
            private C0023zza() {
                super(zza.zzut);
            }

            public final C0023zza zzi(int i) {
                zzmn();
                ((zza) this.zzagr).zzh(i);
                return this;
            }

            public final zzf zzgw() {
                return ((zza) this.zzagr).zzgw();
            }

            public final C0023zza zzb(zzf.zza zzaVar) {
                zzmn();
                ((zza) this.zzagr).zza(zzaVar);
                return this;
            }

            public final boolean zzgx() {
                return ((zza) this.zzagr).zzgx();
            }

            public final zzf zzgy() {
                return ((zza) this.zzagr).zzgy();
            }

            public final C0023zza zzb(zzf zzfVar) {
                zzmn();
                ((zza) this.zzagr).zza(zzfVar);
                return this;
            }

            public final C0023zza zzl(boolean z) {
                zzmn();
                ((zza) this.zzagr).zzk(z);
                return this;
            }

            /* synthetic */ C0023zza(zzbu zzbuVar) {
                this();
            }
        }

        public final boolean zzgu() {
            return (this.zztj & 1) != 0;
        }

        public final int zzgv() {
            return this.zzup;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzh(int i) {
            this.zztj |= 1;
            this.zzup = i;
        }

        public final zzf zzgw() {
            zzf zzfVar = this.zzuq;
            return zzfVar == null ? zzf.zzij() : zzfVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(zzf.zza zzaVar) {
            this.zzuq = (zzf) zzaVar.zzmr();
            this.zztj |= 2;
        }

        public final boolean zzgx() {
            return (this.zztj & 4) != 0;
        }

        public final zzf zzgy() {
            zzf zzfVar = this.zzur;
            return zzfVar == null ? zzf.zzij() : zzfVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(zzf zzfVar) {
            if (zzfVar == null) {
                throw new NullPointerException();
            }
            this.zzur = zzfVar;
            this.zztj |= 4;
        }

        public final boolean zzgz() {
            return (this.zztj & 8) != 0;
        }

        public final boolean zzha() {
            return this.zzus;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzk(boolean z) {
            this.zztj |= 8;
            this.zzus = z;
        }

        public static C0023zza zzhb() {
            return zzut.zzmg();
        }

        @Override // com.google.android.gms.internal.measurement.zzez
        protected final Object zza(int i, Object obj, Object obj2) {
            zzbu zzbuVar = null;
            switch (zzbu.zzti[i - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new C0023zza(zzbuVar);
                case 3:
                    return zzez.zza(zzut, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0004\u0000\u0002\t\u0001\u0003\t\u0002\u0004\u0007\u0003", new Object[]{"zztj", "zzup", "zzuq", "zzur", "zzus"});
                case 4:
                    return zzut;
                case 5:
                    zzgs<zza> zzbVar = zztq;
                    if (zzbVar == null) {
                        synchronized (zza.class) {
                            zzbVar = zztq;
                            if (zzbVar == null) {
                                zzbVar = new zzez.zzb<>(zzut);
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
            return (zzgs) zzut.zza(zzez.zze.zzaha, (Object) null, (Object) null);
        }

        static {
            zzez.zza((Class<zza>) zza.class, zzut);
        }
    }

    public static final class zzb extends zzez<zzb, zza> implements zzgj {
        private static volatile zzgs<zzb> zztq;
        private static final zzb zzuw = new zzb();
        private int zztj;
        private int zzuu;
        private long zzuv;

        private zzb() {
        }

        public static final class zza extends zzez.zza<zzb, zza> implements zzgj {
            private zza() {
                super(zzb.zzuw);
            }

            public final zza zzj(int i) {
                zzmn();
                ((zzb) this.zzagr).setIndex(i);
                return this;
            }

            public final zza zzag(long j) {
                zzmn();
                ((zzb) this.zzagr).zzaf(j);
                return this;
            }

            /* synthetic */ zza(zzbu zzbuVar) {
                this();
            }
        }

        public final boolean zzhd() {
            return (this.zztj & 1) != 0;
        }

        public final int getIndex() {
            return this.zzuu;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void setIndex(int i) {
            this.zztj |= 1;
            this.zzuu = i;
        }

        public final boolean zzhe() {
            return (this.zztj & 2) != 0;
        }

        public final long zzhf() {
            return this.zzuv;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzaf(long j) {
            this.zztj |= 2;
            this.zzuv = j;
        }

        public static zza zzhg() {
            return zzuw.zzmg();
        }

        @Override // com.google.android.gms.internal.measurement.zzez
        protected final Object zza(int i, Object obj, Object obj2) {
            zzbu zzbuVar = null;
            switch (zzbu.zzti[i - 1]) {
                case 1:
                    return new zzb();
                case 2:
                    return new zza(zzbuVar);
                case 3:
                    return zzez.zza(zzuw, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0004\u0000\u0002\u0002\u0001", new Object[]{"zztj", "zzuu", "zzuv"});
                case 4:
                    return zzuw;
                case 5:
                    zzgs<zzb> zzbVar = zztq;
                    if (zzbVar == null) {
                        synchronized (zzb.class) {
                            zzbVar = zztq;
                            if (zzbVar == null) {
                                zzbVar = new zzez.zzb<>(zzuw);
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
            zzez.zza((Class<zzb>) zzb.class, zzuw);
        }
    }

    public static final class zzc extends zzez<zzc, zza> implements zzgj {
        private static volatile zzgs<zzc> zztq;
        private static final zzc zzuz = new zzc();
        private int zztj;
        private String zzux = "";
        private long zzuy;

        private zzc() {
        }

        public static final class zza extends zzez.zza<zzc, zza> implements zzgj {
            private zza() {
                super(zzc.zzuz);
            }

            public final zza zzbu(String str) {
                zzmn();
                ((zzc) this.zzagr).setName(str);
                return this;
            }

            public final zza zzai(long j) {
                zzmn();
                ((zzc) this.zzagr).zzah(j);
                return this;
            }

            /* synthetic */ zza(zzbu zzbuVar) {
                this();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void setName(String str) {
            if (str == null) {
                throw new NullPointerException();
            }
            this.zztj |= 1;
            this.zzux = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzah(long j) {
            this.zztj |= 2;
            this.zzuy = j;
        }

        public static zza zzhi() {
            return zzuz.zzmg();
        }

        @Override // com.google.android.gms.internal.measurement.zzez
        protected final Object zza(int i, Object obj, Object obj2) {
            zzbu zzbuVar = null;
            switch (zzbu.zzti[i - 1]) {
                case 1:
                    return new zzc();
                case 2:
                    return new zza(zzbuVar);
                case 3:
                    return zzez.zza(zzuz, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\b\u0000\u0002\u0002\u0001", new Object[]{"zztj", "zzux", "zzuy"});
                case 4:
                    return zzuz;
                case 5:
                    zzgs<zzc> zzbVar = zztq;
                    if (zzbVar == null) {
                        synchronized (zzc.class) {
                            zzbVar = zztq;
                            if (zzbVar == null) {
                                zzbVar = new zzez.zzb<>(zzuz);
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
            zzez.zza((Class<zzc>) zzc.class, zzuz);
        }
    }

    public static final class zzd extends zzez<zzd, zza> implements zzgj {
        private static volatile zzgs<zzd> zztq;
        private static final zzd zzvd = new zzd();
        private int zztj;
        private long zzuy;
        private float zzvb;
        private double zzvc;
        private String zzux = "";
        private String zzva = "";

        private zzd() {
        }

        public static final class zza extends zzez.zza<zzd, zza> implements zzgj {
            private zza() {
                super(zzd.zzvd);
            }

            public final String getName() {
                return ((zzd) this.zzagr).getName();
            }

            public final zza zzbw(String str) {
                zzmn();
                ((zzd) this.zzagr).setName(str);
                return this;
            }

            public final zza zzbx(String str) {
                zzmn();
                ((zzd) this.zzagr).zzbv(str);
                return this;
            }

            public final zza zzhv() {
                zzmn();
                ((zzd) this.zzagr).zzhm();
                return this;
            }

            public final zza zzaj(long j) {
                zzmn();
                ((zzd) this.zzagr).zzah(j);
                return this;
            }

            public final zza zzhw() {
                zzmn();
                ((zzd) this.zzagr).zzhp();
                return this;
            }

            public final zza zzb(double d) {
                zzmn();
                ((zzd) this.zzagr).zza(d);
                return this;
            }

            public final zza zzhx() {
                zzmn();
                ((zzd) this.zzagr).zzhs();
                return this;
            }

            /* synthetic */ zza(zzbu zzbuVar) {
                this();
            }
        }

        public final String getName() {
            return this.zzux;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void setName(String str) {
            if (str == null) {
                throw new NullPointerException();
            }
            this.zztj |= 1;
            this.zzux = str;
        }

        public final boolean zzhk() {
            return (this.zztj & 2) != 0;
        }

        public final String zzhl() {
            return this.zzva;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzbv(String str) {
            if (str == null) {
                throw new NullPointerException();
            }
            this.zztj |= 2;
            this.zzva = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzhm() {
            this.zztj &= -3;
            this.zzva = zzvd.zzva;
        }

        public final boolean zzhn() {
            return (this.zztj & 4) != 0;
        }

        public final long zzho() {
            return this.zzuy;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzah(long j) {
            this.zztj |= 4;
            this.zzuy = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzhp() {
            this.zztj &= -5;
            this.zzuy = 0L;
        }

        public final boolean zzhq() {
            return (this.zztj & 16) != 0;
        }

        public final double zzhr() {
            return this.zzvc;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(double d) {
            this.zztj |= 16;
            this.zzvc = d;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzhs() {
            this.zztj &= -17;
            this.zzvc = 0.0d;
        }

        public static zza zzht() {
            return zzvd.zzmg();
        }

        @Override // com.google.android.gms.internal.measurement.zzez
        protected final Object zza(int i, Object obj, Object obj2) {
            zzbu zzbuVar = null;
            switch (zzbu.zzti[i - 1]) {
                case 1:
                    return new zzd();
                case 2:
                    return new zza(zzbuVar);
                case 3:
                    return zzez.zza(zzvd, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\b\u0000\u0002\b\u0001\u0003\u0002\u0002\u0004\u0001\u0003\u0005\u0000\u0004", new Object[]{"zztj", "zzux", "zzva", "zzuy", "zzvb", "zzvc"});
                case 4:
                    return zzvd;
                case 5:
                    zzgs<zzd> zzbVar = zztq;
                    if (zzbVar == null) {
                        synchronized (zzd.class) {
                            zzbVar = zztq;
                            if (zzbVar == null) {
                                zzbVar = new zzez.zzb<>(zzvd);
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

        public static zzgs<zzd> zzgs() {
            return (zzgs) zzvd.zza(zzez.zze.zzaha, (Object) null, (Object) null);
        }

        static {
            zzez.zza((Class<zzd>) zzd.class, zzvd);
        }
    }

    public static final class zze extends zzez<zze, zza> implements zzgj {
        private static volatile zzgs<zze> zztq;
        private static final zze zzvg = new zze();
        private int zztj;
        private int zzve = 1;
        private zzfg<zzc> zzvf = zzez.zzmj();

        public enum zzb implements zzfc {
            RADS(1),
            PROVISIONING(2);

            private static final zzfd<zzb> zztw = new zzbv();
            private final int value;

            @Override // com.google.android.gms.internal.measurement.zzfc
            public final int zzgp() {
                return this.value;
            }

            public static zzb zzk(int i) {
                if (i == 1) {
                    return RADS;
                }
                if (i != 2) {
                    return null;
                }
                return PROVISIONING;
            }

            public static zzfe zzgq() {
                return zzbw.zzty;
            }

            zzb(int i) {
                this.value = i;
            }
        }

        private zze() {
        }

        public static final class zza extends zzez.zza<zze, zza> implements zzgj {
            private zza() {
                super(zze.zzvg);
            }

            public final zza zzb(zzc.zza zzaVar) {
                zzmn();
                ((zze) this.zzagr).zza(zzaVar);
                return this;
            }

            /* synthetic */ zza(zzbu zzbuVar) {
                this();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(zzc.zza zzaVar) {
            if (!this.zzvf.zzjy()) {
                this.zzvf = zzez.zza(this.zzvf);
            }
            this.zzvf.add((zzc) zzaVar.zzmr());
        }

        public static zza zzhy() {
            return zzvg.zzmg();
        }

        @Override // com.google.android.gms.internal.measurement.zzez
        protected final Object zza(int i, Object obj, Object obj2) {
            zzbu zzbuVar = null;
            switch (zzbu.zzti[i - 1]) {
                case 1:
                    return new zze();
                case 2:
                    return new zza(zzbuVar);
                case 3:
                    return zzez.zza(zzvg, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\f\u0000\u0002\u001b", new Object[]{"zztj", "zzve", zzb.zzgq(), "zzvf", zzc.class});
                case 4:
                    return zzvg;
                case 5:
                    zzgs<zze> zzbVar = zztq;
                    if (zzbVar == null) {
                        synchronized (zze.class) {
                            zzbVar = zztq;
                            if (zzbVar == null) {
                                zzbVar = new zzez.zzb<>(zzvg);
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

        public static zzgs<zze> zzgs() {
            return (zzgs) zzvg.zza(zzez.zze.zzaha, (Object) null, (Object) null);
        }

        static {
            zzez.zza((Class<zze>) zze.class, zzvg);
        }
    }

    public static final class zzf extends zzez<zzf, zza> implements zzgj {
        private static volatile zzgs<zzf> zztq;
        private static final zzf zzvo = new zzf();
        private zzff zzvk = zzez.zzmi();
        private zzff zzvl = zzez.zzmi();
        private zzfg<zzb> zzvm = zzez.zzmj();
        private zzfg<zzg> zzvn = zzez.zzmj();

        private zzf() {
        }

        public static final class zza extends zzez.zza<zzf, zza> implements zzgj {
            private zza() {
                super(zzf.zzvo);
            }

            public final zza zze(Iterable<? extends Long> iterable) {
                zzmn();
                ((zzf) this.zzagr).zza(iterable);
                return this;
            }

            public final zza zzf(Iterable<? extends Long> iterable) {
                zzmn();
                ((zzf) this.zzagr).zzb(iterable);
                return this;
            }

            public final zza zzg(Iterable<? extends zzb> iterable) {
                zzmn();
                ((zzf) this.zzagr).zzc(iterable);
                return this;
            }

            public final zza zzh(Iterable<? extends zzg> iterable) {
                zzmn();
                ((zzf) this.zzagr).zzd(iterable);
                return this;
            }

            /* synthetic */ zza(zzbu zzbuVar) {
                this();
            }
        }

        public final List<Long> zzia() {
            return this.zzvk;
        }

        public final int zzib() {
            return this.zzvk.size();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(Iterable<? extends Long> iterable) {
            if (!this.zzvk.zzjy()) {
                this.zzvk = zzez.zza(this.zzvk);
            }
            zzdg.zza(iterable, this.zzvk);
        }

        public final List<Long> zzic() {
            return this.zzvl;
        }

        public final int zzid() {
            return this.zzvl.size();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(Iterable<? extends Long> iterable) {
            if (!this.zzvl.zzjy()) {
                this.zzvl = zzez.zza(this.zzvl);
            }
            zzdg.zza(iterable, this.zzvl);
        }

        public final List<zzb> zzie() {
            return this.zzvm;
        }

        public final int zzif() {
            return this.zzvm.size();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzc(Iterable<? extends zzb> iterable) {
            if (!this.zzvm.zzjy()) {
                this.zzvm = zzez.zza(this.zzvm);
            }
            zzdg.zza(iterable, this.zzvm);
        }

        public final List<zzg> zzig() {
            return this.zzvn;
        }

        public final int zzih() {
            return this.zzvn.size();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzd(Iterable<? extends zzg> iterable) {
            if (!this.zzvn.zzjy()) {
                this.zzvn = zzez.zza(this.zzvn);
            }
            zzdg.zza(iterable, this.zzvn);
        }

        public static zzf zza(byte[] bArr, zzem zzemVar) throws zzfh {
            return (zzf) zzez.zza(zzvo, bArr, zzemVar);
        }

        public static zza zzii() {
            return zzvo.zzmg();
        }

        @Override // com.google.android.gms.internal.measurement.zzez
        protected final Object zza(int i, Object obj, Object obj2) {
            zzbu zzbuVar = null;
            switch (zzbu.zzti[i - 1]) {
                case 1:
                    return new zzf();
                case 2:
                    return new zza(zzbuVar);
                case 3:
                    return zzez.zza(zzvo, "\u0001\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0004\u0000\u0001\u0015\u0002\u0015\u0003\u001b\u0004\u001b", new Object[]{"zzvk", "zzvl", "zzvm", zzb.class, "zzvn", zzg.class});
                case 4:
                    return zzvo;
                case 5:
                    zzgs<zzf> zzbVar = zztq;
                    if (zzbVar == null) {
                        synchronized (zzf.class) {
                            zzbVar = zztq;
                            if (zzbVar == null) {
                                zzbVar = new zzez.zzb<>(zzvo);
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

        public static zzf zzij() {
            return zzvo;
        }

        static {
            zzez.zza((Class<zzf>) zzf.class, zzvo);
        }
    }

    public static final class zzg extends zzez<zzg, zza> implements zzgj {
        private static volatile zzgs<zzg> zztq;
        private static final zzg zzvq = new zzg();
        private int zztj;
        private int zzuu;
        private zzff zzvp = zzez.zzmi();

        private zzg() {
        }

        public static final class zza extends zzez.zza<zzg, zza> implements zzgj {
            private zza() {
                super(zzg.zzvq);
            }

            public final zza zzm(int i) {
                zzmn();
                ((zzg) this.zzagr).setIndex(i);
                return this;
            }

            public final zza zzal(long j) {
                zzmn();
                ((zzg) this.zzagr).zzak(j);
                return this;
            }

            public final zza zzj(Iterable<? extends Long> iterable) {
                zzmn();
                ((zzg) this.zzagr).zzi(iterable);
                return this;
            }

            public final zza zzir() {
                zzmn();
                ((zzg) this.zzagr).zzio();
                return this;
            }

            /* synthetic */ zza(zzbu zzbuVar) {
                this();
            }
        }

        public final boolean zzhd() {
            return (this.zztj & 1) != 0;
        }

        public final int getIndex() {
            return this.zzuu;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void setIndex(int i) {
            this.zztj |= 1;
            this.zzuu = i;
        }

        public final List<Long> zzil() {
            return this.zzvp;
        }

        public final int zzim() {
            return this.zzvp.size();
        }

        public final long zzl(int i) {
            return this.zzvp.getLong(i);
        }

        private final void zzin() {
            if (this.zzvp.zzjy()) {
                return;
            }
            this.zzvp = zzez.zza(this.zzvp);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzak(long j) {
            zzin();
            this.zzvp.zzbb(j);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzi(Iterable<? extends Long> iterable) {
            zzin();
            zzdg.zza(iterable, this.zzvp);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzio() {
            this.zzvp = zzez.zzmi();
        }

        public static zza zzip() {
            return zzvq.zzmg();
        }

        @Override // com.google.android.gms.internal.measurement.zzez
        protected final Object zza(int i, Object obj, Object obj2) {
            zzbu zzbuVar = null;
            switch (zzbu.zzti[i - 1]) {
                case 1:
                    return new zzg();
                case 2:
                    return new zza(zzbuVar);
                case 3:
                    return zzez.zza(zzvq, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u0004\u0000\u0002\u0014", new Object[]{"zztj", "zzuu", "zzvp"});
                case 4:
                    return zzvq;
                case 5:
                    zzgs<zzg> zzbVar = zztq;
                    if (zzbVar == null) {
                        synchronized (zzg.class) {
                            zzbVar = zztq;
                            if (zzbVar == null) {
                                zzbVar = new zzez.zzb<>(zzvq);
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
            zzez.zza((Class<zzg>) zzg.class, zzvq);
        }
    }

    public static final class zzh extends zzez<zzh, zza> implements zzgj {
        private static volatile zzgs<zzh> zztq;
        private static final zzh zzvs = new zzh();
        private int zztj;
        private long zzuy;
        private float zzvb;
        private double zzvc;
        private long zzvr;
        private String zzux = "";
        private String zzva = "";

        private zzh() {
        }

        public static final class zza extends zzez.zza<zzh, zza> implements zzgj {
            private zza() {
                super(zzh.zzvs);
            }

            public final zza zzan(long j) {
                zzmn();
                ((zzh) this.zzagr).zzam(j);
                return this;
            }

            public final zza zzby(String str) {
                zzmn();
                ((zzh) this.zzagr).setName(str);
                return this;
            }

            public final zza zzbz(String str) {
                zzmn();
                ((zzh) this.zzagr).zzbv(str);
                return this;
            }

            public final zza zziw() {
                zzmn();
                ((zzh) this.zzagr).zzhm();
                return this;
            }

            public final zza zzao(long j) {
                zzmn();
                ((zzh) this.zzagr).zzah(j);
                return this;
            }

            public final zza zzix() {
                zzmn();
                ((zzh) this.zzagr).zzhp();
                return this;
            }

            public final zza zzc(double d) {
                zzmn();
                ((zzh) this.zzagr).zza(d);
                return this;
            }

            public final zza zziy() {
                zzmn();
                ((zzh) this.zzagr).zzhs();
                return this;
            }

            /* synthetic */ zza(zzbu zzbuVar) {
                this();
            }
        }

        public final boolean zzis() {
            return (this.zztj & 1) != 0;
        }

        public final long zzit() {
            return this.zzvr;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzam(long j) {
            this.zztj |= 1;
            this.zzvr = j;
        }

        public final String getName() {
            return this.zzux;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void setName(String str) {
            if (str == null) {
                throw new NullPointerException();
            }
            this.zztj |= 2;
            this.zzux = str;
        }

        public final boolean zzhk() {
            return (this.zztj & 4) != 0;
        }

        public final String zzhl() {
            return this.zzva;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzbv(String str) {
            if (str == null) {
                throw new NullPointerException();
            }
            this.zztj |= 4;
            this.zzva = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzhm() {
            this.zztj &= -5;
            this.zzva = zzvs.zzva;
        }

        public final boolean zzhn() {
            return (this.zztj & 8) != 0;
        }

        public final long zzho() {
            return this.zzuy;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzah(long j) {
            this.zztj |= 8;
            this.zzuy = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzhp() {
            this.zztj &= -9;
            this.zzuy = 0L;
        }

        public final boolean zzhq() {
            return (this.zztj & 32) != 0;
        }

        public final double zzhr() {
            return this.zzvc;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(double d) {
            this.zztj |= 32;
            this.zzvc = d;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzhs() {
            this.zztj &= -33;
            this.zzvc = 0.0d;
        }

        public static zza zziu() {
            return zzvs.zzmg();
        }

        @Override // com.google.android.gms.internal.measurement.zzez
        protected final Object zza(int i, Object obj, Object obj2) {
            zzbu zzbuVar = null;
            switch (zzbu.zzti[i - 1]) {
                case 1:
                    return new zzh();
                case 2:
                    return new zza(zzbuVar);
                case 3:
                    return zzez.zza(zzvs, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u0002\u0000\u0002\b\u0001\u0003\b\u0002\u0004\u0002\u0003\u0005\u0001\u0004\u0006\u0000\u0005", new Object[]{"zztj", "zzvr", "zzux", "zzva", "zzuy", "zzvb", "zzvc"});
                case 4:
                    return zzvs;
                case 5:
                    zzgs<zzh> zzbVar = zztq;
                    if (zzbVar == null) {
                        synchronized (zzh.class) {
                            zzbVar = zztq;
                            if (zzbVar == null) {
                                zzbVar = new zzez.zzb<>(zzvs);
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

        public static zzgs<zzh> zzgs() {
            return (zzgs) zzvs.zza(zzez.zze.zzaha, (Object) null, (Object) null);
        }

        static {
            zzez.zza((Class<zzh>) zzh.class, zzvs);
        }
    }
}
