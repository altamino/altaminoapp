package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.List;

/* loaded from: classes2.dex */
final class zzdng implements zzdqa {
    private int tag;
    private final zzdnd zzhdj;
    private int zzhdk;
    private int zzhdl = 0;

    public static zzdng zza(zzdnd zzdndVar) {
        zzdng zzdngVar = zzdndVar.zzhdc;
        return zzdngVar != null ? zzdngVar : new zzdng(zzdndVar);
    }

    private zzdng(zzdnd zzdndVar) {
        this.zzhdj = (zzdnd) zzdod.zza(zzdndVar, "input");
        this.zzhdj.zzhdc = this;
    }

    @Override // com.google.android.gms.internal.ads.zzdqa
    public final int zzaws() throws IOException {
        int i = this.zzhdl;
        if (i != 0) {
            this.tag = i;
            this.zzhdl = 0;
        } else {
            this.tag = this.zzhdj.zzavu();
        }
        int i2 = this.tag;
        if (i2 == 0 || i2 == this.zzhdk) {
            return Integer.MAX_VALUE;
        }
        return i2 >>> 3;
    }

    @Override // com.google.android.gms.internal.ads.zzdqa
    public final int getTag() {
        return this.tag;
    }

    @Override // com.google.android.gms.internal.ads.zzdqa
    public final boolean zzawt() throws IOException {
        int i;
        if (this.zzhdj.zzawk() || (i = this.tag) == this.zzhdk) {
            return false;
        }
        return this.zzhdj.zzfq(i);
    }

    private final void zzfv(int i) throws IOException {
        if ((this.tag & 7) != i) {
            throw zzdok.zzayi();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdqa
    public final double readDouble() throws IOException {
        zzfv(1);
        return this.zzhdj.readDouble();
    }

    @Override // com.google.android.gms.internal.ads.zzdqa
    public final float readFloat() throws IOException {
        zzfv(5);
        return this.zzhdj.readFloat();
    }

    @Override // com.google.android.gms.internal.ads.zzdqa
    public final long zzavv() throws IOException {
        zzfv(0);
        return this.zzhdj.zzavv();
    }

    @Override // com.google.android.gms.internal.ads.zzdqa
    public final long zzavw() throws IOException {
        zzfv(0);
        return this.zzhdj.zzavw();
    }

    @Override // com.google.android.gms.internal.ads.zzdqa
    public final int zzavx() throws IOException {
        zzfv(0);
        return this.zzhdj.zzavx();
    }

    @Override // com.google.android.gms.internal.ads.zzdqa
    public final long zzavy() throws IOException {
        zzfv(1);
        return this.zzhdj.zzavy();
    }

    @Override // com.google.android.gms.internal.ads.zzdqa
    public final int zzavz() throws IOException {
        zzfv(5);
        return this.zzhdj.zzavz();
    }

    @Override // com.google.android.gms.internal.ads.zzdqa
    public final boolean zzawa() throws IOException {
        zzfv(0);
        return this.zzhdj.zzawa();
    }

    @Override // com.google.android.gms.internal.ads.zzdqa
    public final String readString() throws IOException {
        zzfv(2);
        return this.zzhdj.readString();
    }

    @Override // com.google.android.gms.internal.ads.zzdqa
    public final String zzawb() throws IOException {
        zzfv(2);
        return this.zzhdj.zzawb();
    }

    @Override // com.google.android.gms.internal.ads.zzdqa
    public final <T> T zza(zzdqb<T> zzdqbVar, zzdno zzdnoVar) throws IOException {
        zzfv(2);
        return (T) zzc(zzdqbVar, zzdnoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdqa
    public final <T> T zzb(zzdqb<T> zzdqbVar, zzdno zzdnoVar) throws IOException {
        zzfv(3);
        return (T) zzd(zzdqbVar, zzdnoVar);
    }

    private final <T> T zzc(zzdqb<T> zzdqbVar, zzdno zzdnoVar) throws IOException {
        int iZzawd = this.zzhdj.zzawd();
        zzdnd zzdndVar = this.zzhdj;
        if (zzdndVar.zzhcz >= zzdndVar.zzhda) {
            throw new zzdok("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
        }
        int iZzfr = zzdndVar.zzfr(iZzawd);
        T tNewInstance = zzdqbVar.newInstance();
        this.zzhdj.zzhcz++;
        zzdqbVar.zza(tNewInstance, this, zzdnoVar);
        zzdqbVar.zzaa(tNewInstance);
        this.zzhdj.zzfp(0);
        r5.zzhcz--;
        this.zzhdj.zzfs(iZzfr);
        return tNewInstance;
    }

    private final <T> T zzd(zzdqb<T> zzdqbVar, zzdno zzdnoVar) throws IOException {
        int i = this.zzhdk;
        this.zzhdk = ((this.tag >>> 3) << 3) | 4;
        try {
            T tNewInstance = zzdqbVar.newInstance();
            zzdqbVar.zza(tNewInstance, this, zzdnoVar);
            zzdqbVar.zzaa(tNewInstance);
            if (this.tag == this.zzhdk) {
                return tNewInstance;
            }
            throw zzdok.zzayj();
        } finally {
            this.zzhdk = i;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdqa
    public final zzdmr zzawc() throws IOException {
        zzfv(2);
        return this.zzhdj.zzawc();
    }

    @Override // com.google.android.gms.internal.ads.zzdqa
    public final int zzawd() throws IOException {
        zzfv(0);
        return this.zzhdj.zzawd();
    }

    @Override // com.google.android.gms.internal.ads.zzdqa
    public final int zzawe() throws IOException {
        zzfv(0);
        return this.zzhdj.zzawe();
    }

    @Override // com.google.android.gms.internal.ads.zzdqa
    public final int zzawf() throws IOException {
        zzfv(5);
        return this.zzhdj.zzawf();
    }

    @Override // com.google.android.gms.internal.ads.zzdqa
    public final long zzawg() throws IOException {
        zzfv(1);
        return this.zzhdj.zzawg();
    }

    @Override // com.google.android.gms.internal.ads.zzdqa
    public final int zzawh() throws IOException {
        zzfv(0);
        return this.zzhdj.zzawh();
    }

    @Override // com.google.android.gms.internal.ads.zzdqa
    public final long zzawi() throws IOException {
        zzfv(0);
        return this.zzhdj.zzawi();
    }

    @Override // com.google.android.gms.internal.ads.zzdqa
    public final void zzi(List<Double> list) throws IOException {
        int iZzavu;
        int iZzavu2;
        if (list instanceof zzdnl) {
            zzdnl zzdnlVar = (zzdnl) list;
            int i = this.tag & 7;
            if (i == 1) {
                do {
                    zzdnlVar.zzd(this.zzhdj.readDouble());
                    if (this.zzhdj.zzawk()) {
                        return;
                    } else {
                        iZzavu2 = this.zzhdj.zzavu();
                    }
                } while (iZzavu2 == this.tag);
                this.zzhdl = iZzavu2;
                return;
            }
            if (i == 2) {
                int iZzawd = this.zzhdj.zzawd();
                zzfw(iZzawd);
                int iZzawl = this.zzhdj.zzawl() + iZzawd;
                do {
                    zzdnlVar.zzd(this.zzhdj.readDouble());
                } while (this.zzhdj.zzawl() < iZzawl);
                return;
            }
            throw zzdok.zzayi();
        }
        int i2 = this.tag & 7;
        if (i2 == 1) {
            do {
                list.add(Double.valueOf(this.zzhdj.readDouble()));
                if (this.zzhdj.zzawk()) {
                    return;
                } else {
                    iZzavu = this.zzhdj.zzavu();
                }
            } while (iZzavu == this.tag);
            this.zzhdl = iZzavu;
            return;
        }
        if (i2 == 2) {
            int iZzawd2 = this.zzhdj.zzawd();
            zzfw(iZzawd2);
            int iZzawl2 = this.zzhdj.zzawl() + iZzawd2;
            do {
                list.add(Double.valueOf(this.zzhdj.readDouble()));
            } while (this.zzhdj.zzawl() < iZzawl2);
            return;
        }
        throw zzdok.zzayi();
    }

    @Override // com.google.android.gms.internal.ads.zzdqa
    public final void zzj(List<Float> list) throws IOException {
        int iZzavu;
        int iZzavu2;
        if (list instanceof zzdny) {
            zzdny zzdnyVar = (zzdny) list;
            int i = this.tag & 7;
            if (i == 2) {
                int iZzawd = this.zzhdj.zzawd();
                zzfx(iZzawd);
                int iZzawl = this.zzhdj.zzawl() + iZzawd;
                do {
                    zzdnyVar.zzi(this.zzhdj.readFloat());
                } while (this.zzhdj.zzawl() < iZzawl);
                return;
            }
            if (i == 5) {
                do {
                    zzdnyVar.zzi(this.zzhdj.readFloat());
                    if (this.zzhdj.zzawk()) {
                        return;
                    } else {
                        iZzavu2 = this.zzhdj.zzavu();
                    }
                } while (iZzavu2 == this.tag);
                this.zzhdl = iZzavu2;
                return;
            }
            throw zzdok.zzayi();
        }
        int i2 = this.tag & 7;
        if (i2 == 2) {
            int iZzawd2 = this.zzhdj.zzawd();
            zzfx(iZzawd2);
            int iZzawl2 = this.zzhdj.zzawl() + iZzawd2;
            do {
                list.add(Float.valueOf(this.zzhdj.readFloat()));
            } while (this.zzhdj.zzawl() < iZzawl2);
            return;
        }
        if (i2 == 5) {
            do {
                list.add(Float.valueOf(this.zzhdj.readFloat()));
                if (this.zzhdj.zzawk()) {
                    return;
                } else {
                    iZzavu = this.zzhdj.zzavu();
                }
            } while (iZzavu == this.tag);
            this.zzhdl = iZzavu;
            return;
        }
        throw zzdok.zzayi();
    }

    @Override // com.google.android.gms.internal.ads.zzdqa
    public final void zzk(List<Long> list) throws IOException {
        int iZzavu;
        int iZzavu2;
        if (list instanceof zzdoy) {
            zzdoy zzdoyVar = (zzdoy) list;
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    zzdoyVar.zzfu(this.zzhdj.zzavv());
                    if (this.zzhdj.zzawk()) {
                        return;
                    } else {
                        iZzavu2 = this.zzhdj.zzavu();
                    }
                } while (iZzavu2 == this.tag);
                this.zzhdl = iZzavu2;
                return;
            }
            if (i == 2) {
                int iZzawl = this.zzhdj.zzawl() + this.zzhdj.zzawd();
                do {
                    zzdoyVar.zzfu(this.zzhdj.zzavv());
                } while (this.zzhdj.zzawl() < iZzawl);
                zzfy(iZzawl);
                return;
            }
            throw zzdok.zzayi();
        }
        int i2 = this.tag & 7;
        if (i2 == 0) {
            do {
                list.add(Long.valueOf(this.zzhdj.zzavv()));
                if (this.zzhdj.zzawk()) {
                    return;
                } else {
                    iZzavu = this.zzhdj.zzavu();
                }
            } while (iZzavu == this.tag);
            this.zzhdl = iZzavu;
            return;
        }
        if (i2 == 2) {
            int iZzawl2 = this.zzhdj.zzawl() + this.zzhdj.zzawd();
            do {
                list.add(Long.valueOf(this.zzhdj.zzavv()));
            } while (this.zzhdj.zzawl() < iZzawl2);
            zzfy(iZzawl2);
            return;
        }
        throw zzdok.zzayi();
    }

    @Override // com.google.android.gms.internal.ads.zzdqa
    public final void zzl(List<Long> list) throws IOException {
        int iZzavu;
        int iZzavu2;
        if (list instanceof zzdoy) {
            zzdoy zzdoyVar = (zzdoy) list;
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    zzdoyVar.zzfu(this.zzhdj.zzavw());
                    if (this.zzhdj.zzawk()) {
                        return;
                    } else {
                        iZzavu2 = this.zzhdj.zzavu();
                    }
                } while (iZzavu2 == this.tag);
                this.zzhdl = iZzavu2;
                return;
            }
            if (i == 2) {
                int iZzawl = this.zzhdj.zzawl() + this.zzhdj.zzawd();
                do {
                    zzdoyVar.zzfu(this.zzhdj.zzavw());
                } while (this.zzhdj.zzawl() < iZzawl);
                zzfy(iZzawl);
                return;
            }
            throw zzdok.zzayi();
        }
        int i2 = this.tag & 7;
        if (i2 == 0) {
            do {
                list.add(Long.valueOf(this.zzhdj.zzavw()));
                if (this.zzhdj.zzawk()) {
                    return;
                } else {
                    iZzavu = this.zzhdj.zzavu();
                }
            } while (iZzavu == this.tag);
            this.zzhdl = iZzavu;
            return;
        }
        if (i2 == 2) {
            int iZzawl2 = this.zzhdj.zzawl() + this.zzhdj.zzawd();
            do {
                list.add(Long.valueOf(this.zzhdj.zzavw()));
            } while (this.zzhdj.zzawl() < iZzawl2);
            zzfy(iZzawl2);
            return;
        }
        throw zzdok.zzayi();
    }

    @Override // com.google.android.gms.internal.ads.zzdqa
    public final void zzm(List<Integer> list) throws IOException {
        int iZzavu;
        int iZzavu2;
        if (list instanceof zzdoc) {
            zzdoc zzdocVar = (zzdoc) list;
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    zzdocVar.zzgp(this.zzhdj.zzavx());
                    if (this.zzhdj.zzawk()) {
                        return;
                    } else {
                        iZzavu2 = this.zzhdj.zzavu();
                    }
                } while (iZzavu2 == this.tag);
                this.zzhdl = iZzavu2;
                return;
            }
            if (i == 2) {
                int iZzawl = this.zzhdj.zzawl() + this.zzhdj.zzawd();
                do {
                    zzdocVar.zzgp(this.zzhdj.zzavx());
                } while (this.zzhdj.zzawl() < iZzawl);
                zzfy(iZzawl);
                return;
            }
            throw zzdok.zzayi();
        }
        int i2 = this.tag & 7;
        if (i2 == 0) {
            do {
                list.add(Integer.valueOf(this.zzhdj.zzavx()));
                if (this.zzhdj.zzawk()) {
                    return;
                } else {
                    iZzavu = this.zzhdj.zzavu();
                }
            } while (iZzavu == this.tag);
            this.zzhdl = iZzavu;
            return;
        }
        if (i2 == 2) {
            int iZzawl2 = this.zzhdj.zzawl() + this.zzhdj.zzawd();
            do {
                list.add(Integer.valueOf(this.zzhdj.zzavx()));
            } while (this.zzhdj.zzawl() < iZzawl2);
            zzfy(iZzawl2);
            return;
        }
        throw zzdok.zzayi();
    }

    @Override // com.google.android.gms.internal.ads.zzdqa
    public final void zzn(List<Long> list) throws IOException {
        int iZzavu;
        int iZzavu2;
        if (list instanceof zzdoy) {
            zzdoy zzdoyVar = (zzdoy) list;
            int i = this.tag & 7;
            if (i == 1) {
                do {
                    zzdoyVar.zzfu(this.zzhdj.zzavy());
                    if (this.zzhdj.zzawk()) {
                        return;
                    } else {
                        iZzavu2 = this.zzhdj.zzavu();
                    }
                } while (iZzavu2 == this.tag);
                this.zzhdl = iZzavu2;
                return;
            }
            if (i == 2) {
                int iZzawd = this.zzhdj.zzawd();
                zzfw(iZzawd);
                int iZzawl = this.zzhdj.zzawl() + iZzawd;
                do {
                    zzdoyVar.zzfu(this.zzhdj.zzavy());
                } while (this.zzhdj.zzawl() < iZzawl);
                return;
            }
            throw zzdok.zzayi();
        }
        int i2 = this.tag & 7;
        if (i2 == 1) {
            do {
                list.add(Long.valueOf(this.zzhdj.zzavy()));
                if (this.zzhdj.zzawk()) {
                    return;
                } else {
                    iZzavu = this.zzhdj.zzavu();
                }
            } while (iZzavu == this.tag);
            this.zzhdl = iZzavu;
            return;
        }
        if (i2 == 2) {
            int iZzawd2 = this.zzhdj.zzawd();
            zzfw(iZzawd2);
            int iZzawl2 = this.zzhdj.zzawl() + iZzawd2;
            do {
                list.add(Long.valueOf(this.zzhdj.zzavy()));
            } while (this.zzhdj.zzawl() < iZzawl2);
            return;
        }
        throw zzdok.zzayi();
    }

    @Override // com.google.android.gms.internal.ads.zzdqa
    public final void zzo(List<Integer> list) throws IOException {
        int iZzavu;
        int iZzavu2;
        if (list instanceof zzdoc) {
            zzdoc zzdocVar = (zzdoc) list;
            int i = this.tag & 7;
            if (i == 2) {
                int iZzawd = this.zzhdj.zzawd();
                zzfx(iZzawd);
                int iZzawl = this.zzhdj.zzawl() + iZzawd;
                do {
                    zzdocVar.zzgp(this.zzhdj.zzavz());
                } while (this.zzhdj.zzawl() < iZzawl);
                return;
            }
            if (i == 5) {
                do {
                    zzdocVar.zzgp(this.zzhdj.zzavz());
                    if (this.zzhdj.zzawk()) {
                        return;
                    } else {
                        iZzavu2 = this.zzhdj.zzavu();
                    }
                } while (iZzavu2 == this.tag);
                this.zzhdl = iZzavu2;
                return;
            }
            throw zzdok.zzayi();
        }
        int i2 = this.tag & 7;
        if (i2 == 2) {
            int iZzawd2 = this.zzhdj.zzawd();
            zzfx(iZzawd2);
            int iZzawl2 = this.zzhdj.zzawl() + iZzawd2;
            do {
                list.add(Integer.valueOf(this.zzhdj.zzavz()));
            } while (this.zzhdj.zzawl() < iZzawl2);
            return;
        }
        if (i2 == 5) {
            do {
                list.add(Integer.valueOf(this.zzhdj.zzavz()));
                if (this.zzhdj.zzawk()) {
                    return;
                } else {
                    iZzavu = this.zzhdj.zzavu();
                }
            } while (iZzavu == this.tag);
            this.zzhdl = iZzavu;
            return;
        }
        throw zzdok.zzayi();
    }

    @Override // com.google.android.gms.internal.ads.zzdqa
    public final void zzp(List<Boolean> list) throws IOException {
        int iZzavu;
        int iZzavu2;
        if (list instanceof zzdmp) {
            zzdmp zzdmpVar = (zzdmp) list;
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    zzdmpVar.addBoolean(this.zzhdj.zzawa());
                    if (this.zzhdj.zzawk()) {
                        return;
                    } else {
                        iZzavu2 = this.zzhdj.zzavu();
                    }
                } while (iZzavu2 == this.tag);
                this.zzhdl = iZzavu2;
                return;
            }
            if (i == 2) {
                int iZzawl = this.zzhdj.zzawl() + this.zzhdj.zzawd();
                do {
                    zzdmpVar.addBoolean(this.zzhdj.zzawa());
                } while (this.zzhdj.zzawl() < iZzawl);
                zzfy(iZzawl);
                return;
            }
            throw zzdok.zzayi();
        }
        int i2 = this.tag & 7;
        if (i2 == 0) {
            do {
                list.add(Boolean.valueOf(this.zzhdj.zzawa()));
                if (this.zzhdj.zzawk()) {
                    return;
                } else {
                    iZzavu = this.zzhdj.zzavu();
                }
            } while (iZzavu == this.tag);
            this.zzhdl = iZzavu;
            return;
        }
        if (i2 == 2) {
            int iZzawl2 = this.zzhdj.zzawl() + this.zzhdj.zzawd();
            do {
                list.add(Boolean.valueOf(this.zzhdj.zzawa()));
            } while (this.zzhdj.zzawl() < iZzawl2);
            zzfy(iZzawl2);
            return;
        }
        throw zzdok.zzayi();
    }

    @Override // com.google.android.gms.internal.ads.zzdqa
    public final void readStringList(List<String> list) throws IOException {
        zza(list, false);
    }

    @Override // com.google.android.gms.internal.ads.zzdqa
    public final void zzq(List<String> list) throws IOException {
        zza(list, true);
    }

    private final void zza(List<String> list, boolean z) throws IOException {
        int iZzavu;
        int iZzavu2;
        if ((this.tag & 7) != 2) {
            throw zzdok.zzayi();
        }
        if ((list instanceof zzdot) && !z) {
            zzdot zzdotVar = (zzdot) list;
            do {
                zzdotVar.zzdb(zzawc());
                if (this.zzhdj.zzawk()) {
                    return;
                } else {
                    iZzavu2 = this.zzhdj.zzavu();
                }
            } while (iZzavu2 == this.tag);
            this.zzhdl = iZzavu2;
            return;
        }
        do {
            list.add(z ? zzawb() : readString());
            if (this.zzhdj.zzawk()) {
                return;
            } else {
                iZzavu = this.zzhdj.zzavu();
            }
        } while (iZzavu == this.tag);
        this.zzhdl = iZzavu;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzdqa
    public final <T> void zza(List<T> list, zzdqb<T> zzdqbVar, zzdno zzdnoVar) throws IOException {
        int iZzavu;
        int i = this.tag;
        if ((i & 7) != 2) {
            throw zzdok.zzayi();
        }
        do {
            list.add(zzc(zzdqbVar, zzdnoVar));
            if (this.zzhdj.zzawk() || this.zzhdl != 0) {
                return;
            } else {
                iZzavu = this.zzhdj.zzavu();
            }
        } while (iZzavu == i);
        this.zzhdl = iZzavu;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzdqa
    public final <T> void zzb(List<T> list, zzdqb<T> zzdqbVar, zzdno zzdnoVar) throws IOException {
        int iZzavu;
        int i = this.tag;
        if ((i & 7) != 3) {
            throw zzdok.zzayi();
        }
        do {
            list.add(zzd(zzdqbVar, zzdnoVar));
            if (this.zzhdj.zzawk() || this.zzhdl != 0) {
                return;
            } else {
                iZzavu = this.zzhdj.zzavu();
            }
        } while (iZzavu == i);
        this.zzhdl = iZzavu;
    }

    @Override // com.google.android.gms.internal.ads.zzdqa
    public final void zzr(List<zzdmr> list) throws IOException {
        int iZzavu;
        if ((this.tag & 7) != 2) {
            throw zzdok.zzayi();
        }
        do {
            list.add(zzawc());
            if (this.zzhdj.zzawk()) {
                return;
            } else {
                iZzavu = this.zzhdj.zzavu();
            }
        } while (iZzavu == this.tag);
        this.zzhdl = iZzavu;
    }

    @Override // com.google.android.gms.internal.ads.zzdqa
    public final void zzs(List<Integer> list) throws IOException {
        int iZzavu;
        int iZzavu2;
        if (list instanceof zzdoc) {
            zzdoc zzdocVar = (zzdoc) list;
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    zzdocVar.zzgp(this.zzhdj.zzawd());
                    if (this.zzhdj.zzawk()) {
                        return;
                    } else {
                        iZzavu2 = this.zzhdj.zzavu();
                    }
                } while (iZzavu2 == this.tag);
                this.zzhdl = iZzavu2;
                return;
            }
            if (i == 2) {
                int iZzawl = this.zzhdj.zzawl() + this.zzhdj.zzawd();
                do {
                    zzdocVar.zzgp(this.zzhdj.zzawd());
                } while (this.zzhdj.zzawl() < iZzawl);
                zzfy(iZzawl);
                return;
            }
            throw zzdok.zzayi();
        }
        int i2 = this.tag & 7;
        if (i2 == 0) {
            do {
                list.add(Integer.valueOf(this.zzhdj.zzawd()));
                if (this.zzhdj.zzawk()) {
                    return;
                } else {
                    iZzavu = this.zzhdj.zzavu();
                }
            } while (iZzavu == this.tag);
            this.zzhdl = iZzavu;
            return;
        }
        if (i2 == 2) {
            int iZzawl2 = this.zzhdj.zzawl() + this.zzhdj.zzawd();
            do {
                list.add(Integer.valueOf(this.zzhdj.zzawd()));
            } while (this.zzhdj.zzawl() < iZzawl2);
            zzfy(iZzawl2);
            return;
        }
        throw zzdok.zzayi();
    }

    @Override // com.google.android.gms.internal.ads.zzdqa
    public final void zzt(List<Integer> list) throws IOException {
        int iZzavu;
        int iZzavu2;
        if (list instanceof zzdoc) {
            zzdoc zzdocVar = (zzdoc) list;
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    zzdocVar.zzgp(this.zzhdj.zzawe());
                    if (this.zzhdj.zzawk()) {
                        return;
                    } else {
                        iZzavu2 = this.zzhdj.zzavu();
                    }
                } while (iZzavu2 == this.tag);
                this.zzhdl = iZzavu2;
                return;
            }
            if (i == 2) {
                int iZzawl = this.zzhdj.zzawl() + this.zzhdj.zzawd();
                do {
                    zzdocVar.zzgp(this.zzhdj.zzawe());
                } while (this.zzhdj.zzawl() < iZzawl);
                zzfy(iZzawl);
                return;
            }
            throw zzdok.zzayi();
        }
        int i2 = this.tag & 7;
        if (i2 == 0) {
            do {
                list.add(Integer.valueOf(this.zzhdj.zzawe()));
                if (this.zzhdj.zzawk()) {
                    return;
                } else {
                    iZzavu = this.zzhdj.zzavu();
                }
            } while (iZzavu == this.tag);
            this.zzhdl = iZzavu;
            return;
        }
        if (i2 == 2) {
            int iZzawl2 = this.zzhdj.zzawl() + this.zzhdj.zzawd();
            do {
                list.add(Integer.valueOf(this.zzhdj.zzawe()));
            } while (this.zzhdj.zzawl() < iZzawl2);
            zzfy(iZzawl2);
            return;
        }
        throw zzdok.zzayi();
    }

    @Override // com.google.android.gms.internal.ads.zzdqa
    public final void zzu(List<Integer> list) throws IOException {
        int iZzavu;
        int iZzavu2;
        if (list instanceof zzdoc) {
            zzdoc zzdocVar = (zzdoc) list;
            int i = this.tag & 7;
            if (i == 2) {
                int iZzawd = this.zzhdj.zzawd();
                zzfx(iZzawd);
                int iZzawl = this.zzhdj.zzawl() + iZzawd;
                do {
                    zzdocVar.zzgp(this.zzhdj.zzawf());
                } while (this.zzhdj.zzawl() < iZzawl);
                return;
            }
            if (i == 5) {
                do {
                    zzdocVar.zzgp(this.zzhdj.zzawf());
                    if (this.zzhdj.zzawk()) {
                        return;
                    } else {
                        iZzavu2 = this.zzhdj.zzavu();
                    }
                } while (iZzavu2 == this.tag);
                this.zzhdl = iZzavu2;
                return;
            }
            throw zzdok.zzayi();
        }
        int i2 = this.tag & 7;
        if (i2 == 2) {
            int iZzawd2 = this.zzhdj.zzawd();
            zzfx(iZzawd2);
            int iZzawl2 = this.zzhdj.zzawl() + iZzawd2;
            do {
                list.add(Integer.valueOf(this.zzhdj.zzawf()));
            } while (this.zzhdj.zzawl() < iZzawl2);
            return;
        }
        if (i2 == 5) {
            do {
                list.add(Integer.valueOf(this.zzhdj.zzawf()));
                if (this.zzhdj.zzawk()) {
                    return;
                } else {
                    iZzavu = this.zzhdj.zzavu();
                }
            } while (iZzavu == this.tag);
            this.zzhdl = iZzavu;
            return;
        }
        throw zzdok.zzayi();
    }

    @Override // com.google.android.gms.internal.ads.zzdqa
    public final void zzv(List<Long> list) throws IOException {
        int iZzavu;
        int iZzavu2;
        if (list instanceof zzdoy) {
            zzdoy zzdoyVar = (zzdoy) list;
            int i = this.tag & 7;
            if (i == 1) {
                do {
                    zzdoyVar.zzfu(this.zzhdj.zzawg());
                    if (this.zzhdj.zzawk()) {
                        return;
                    } else {
                        iZzavu2 = this.zzhdj.zzavu();
                    }
                } while (iZzavu2 == this.tag);
                this.zzhdl = iZzavu2;
                return;
            }
            if (i == 2) {
                int iZzawd = this.zzhdj.zzawd();
                zzfw(iZzawd);
                int iZzawl = this.zzhdj.zzawl() + iZzawd;
                do {
                    zzdoyVar.zzfu(this.zzhdj.zzawg());
                } while (this.zzhdj.zzawl() < iZzawl);
                return;
            }
            throw zzdok.zzayi();
        }
        int i2 = this.tag & 7;
        if (i2 == 1) {
            do {
                list.add(Long.valueOf(this.zzhdj.zzawg()));
                if (this.zzhdj.zzawk()) {
                    return;
                } else {
                    iZzavu = this.zzhdj.zzavu();
                }
            } while (iZzavu == this.tag);
            this.zzhdl = iZzavu;
            return;
        }
        if (i2 == 2) {
            int iZzawd2 = this.zzhdj.zzawd();
            zzfw(iZzawd2);
            int iZzawl2 = this.zzhdj.zzawl() + iZzawd2;
            do {
                list.add(Long.valueOf(this.zzhdj.zzawg()));
            } while (this.zzhdj.zzawl() < iZzawl2);
            return;
        }
        throw zzdok.zzayi();
    }

    @Override // com.google.android.gms.internal.ads.zzdqa
    public final void zzw(List<Integer> list) throws IOException {
        int iZzavu;
        int iZzavu2;
        if (list instanceof zzdoc) {
            zzdoc zzdocVar = (zzdoc) list;
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    zzdocVar.zzgp(this.zzhdj.zzawh());
                    if (this.zzhdj.zzawk()) {
                        return;
                    } else {
                        iZzavu2 = this.zzhdj.zzavu();
                    }
                } while (iZzavu2 == this.tag);
                this.zzhdl = iZzavu2;
                return;
            }
            if (i == 2) {
                int iZzawl = this.zzhdj.zzawl() + this.zzhdj.zzawd();
                do {
                    zzdocVar.zzgp(this.zzhdj.zzawh());
                } while (this.zzhdj.zzawl() < iZzawl);
                zzfy(iZzawl);
                return;
            }
            throw zzdok.zzayi();
        }
        int i2 = this.tag & 7;
        if (i2 == 0) {
            do {
                list.add(Integer.valueOf(this.zzhdj.zzawh()));
                if (this.zzhdj.zzawk()) {
                    return;
                } else {
                    iZzavu = this.zzhdj.zzavu();
                }
            } while (iZzavu == this.tag);
            this.zzhdl = iZzavu;
            return;
        }
        if (i2 == 2) {
            int iZzawl2 = this.zzhdj.zzawl() + this.zzhdj.zzawd();
            do {
                list.add(Integer.valueOf(this.zzhdj.zzawh()));
            } while (this.zzhdj.zzawl() < iZzawl2);
            zzfy(iZzawl2);
            return;
        }
        throw zzdok.zzayi();
    }

    @Override // com.google.android.gms.internal.ads.zzdqa
    public final void zzx(List<Long> list) throws IOException {
        int iZzavu;
        int iZzavu2;
        if (list instanceof zzdoy) {
            zzdoy zzdoyVar = (zzdoy) list;
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    zzdoyVar.zzfu(this.zzhdj.zzawi());
                    if (this.zzhdj.zzawk()) {
                        return;
                    } else {
                        iZzavu2 = this.zzhdj.zzavu();
                    }
                } while (iZzavu2 == this.tag);
                this.zzhdl = iZzavu2;
                return;
            }
            if (i == 2) {
                int iZzawl = this.zzhdj.zzawl() + this.zzhdj.zzawd();
                do {
                    zzdoyVar.zzfu(this.zzhdj.zzawi());
                } while (this.zzhdj.zzawl() < iZzawl);
                zzfy(iZzawl);
                return;
            }
            throw zzdok.zzayi();
        }
        int i2 = this.tag & 7;
        if (i2 == 0) {
            do {
                list.add(Long.valueOf(this.zzhdj.zzawi()));
                if (this.zzhdj.zzawk()) {
                    return;
                } else {
                    iZzavu = this.zzhdj.zzavu();
                }
            } while (iZzavu == this.tag);
            this.zzhdl = iZzavu;
            return;
        }
        if (i2 == 2) {
            int iZzawl2 = this.zzhdj.zzawl() + this.zzhdj.zzawd();
            do {
                list.add(Long.valueOf(this.zzhdj.zzawi()));
            } while (this.zzhdj.zzawl() < iZzawl2);
            zzfy(iZzawl2);
            return;
        }
        throw zzdok.zzayi();
    }

    private static void zzfw(int i) throws IOException {
        if ((i & 7) != 0) {
            throw zzdok.zzayj();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x005b, code lost:
    
        r8.put(r2, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0063, code lost:
    
        return;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzdqa
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final <K, V> void zza(java.util.Map<K, V> r8, com.google.android.gms.internal.ads.zzdpd<K, V> r9, com.google.android.gms.internal.ads.zzdno r10) throws java.io.IOException {
        /*
            r7 = this;
            r0 = 2
            r7.zzfv(r0)
            com.google.android.gms.internal.ads.zzdnd r1 = r7.zzhdj
            int r1 = r1.zzawd()
            com.google.android.gms.internal.ads.zzdnd r2 = r7.zzhdj
            int r1 = r2.zzfr(r1)
            K r2 = r9.zzhjj
            V r3 = r9.zzckh
        L14:
            int r4 = r7.zzaws()     // Catch: java.lang.Throwable -> L64
            r5 = 2147483647(0x7fffffff, float:NaN)
            if (r4 == r5) goto L5b
            com.google.android.gms.internal.ads.zzdnd r5 = r7.zzhdj     // Catch: java.lang.Throwable -> L64
            boolean r5 = r5.zzawk()     // Catch: java.lang.Throwable -> L64
            if (r5 != 0) goto L5b
            r5 = 1
            java.lang.String r6 = "Unable to parse map entry."
            if (r4 == r5) goto L46
            if (r4 == r0) goto L39
            boolean r4 = r7.zzawt()     // Catch: com.google.android.gms.internal.ads.zzdol -> L4e java.lang.Throwable -> L64
            if (r4 == 0) goto L33
            goto L14
        L33:
            com.google.android.gms.internal.ads.zzdok r4 = new com.google.android.gms.internal.ads.zzdok     // Catch: com.google.android.gms.internal.ads.zzdol -> L4e java.lang.Throwable -> L64
            r4.<init>(r6)     // Catch: com.google.android.gms.internal.ads.zzdol -> L4e java.lang.Throwable -> L64
            throw r4     // Catch: com.google.android.gms.internal.ads.zzdol -> L4e java.lang.Throwable -> L64
        L39:
            com.google.android.gms.internal.ads.zzdri r4 = r9.zzhjk     // Catch: com.google.android.gms.internal.ads.zzdol -> L4e java.lang.Throwable -> L64
            V r5 = r9.zzckh     // Catch: com.google.android.gms.internal.ads.zzdol -> L4e java.lang.Throwable -> L64
            java.lang.Class r5 = r5.getClass()     // Catch: com.google.android.gms.internal.ads.zzdol -> L4e java.lang.Throwable -> L64
            java.lang.Object r3 = r7.zza(r4, r5, r10)     // Catch: com.google.android.gms.internal.ads.zzdol -> L4e java.lang.Throwable -> L64
            goto L14
        L46:
            com.google.android.gms.internal.ads.zzdri r4 = r9.zzhji     // Catch: com.google.android.gms.internal.ads.zzdol -> L4e java.lang.Throwable -> L64
            r5 = 0
            java.lang.Object r2 = r7.zza(r4, r5, r5)     // Catch: com.google.android.gms.internal.ads.zzdol -> L4e java.lang.Throwable -> L64
            goto L14
        L4e:
            boolean r4 = r7.zzawt()     // Catch: java.lang.Throwable -> L64
            if (r4 == 0) goto L55
            goto L14
        L55:
            com.google.android.gms.internal.ads.zzdok r8 = new com.google.android.gms.internal.ads.zzdok     // Catch: java.lang.Throwable -> L64
            r8.<init>(r6)     // Catch: java.lang.Throwable -> L64
            throw r8     // Catch: java.lang.Throwable -> L64
        L5b:
            r8.put(r2, r3)     // Catch: java.lang.Throwable -> L64
            com.google.android.gms.internal.ads.zzdnd r8 = r7.zzhdj
            r8.zzfs(r1)
            return
        L64:
            r8 = move-exception
            com.google.android.gms.internal.ads.zzdnd r9 = r7.zzhdj
            r9.zzfs(r1)
            goto L6c
        L6b:
            throw r8
        L6c:
            goto L6b
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdng.zza(java.util.Map, com.google.android.gms.internal.ads.zzdpd, com.google.android.gms.internal.ads.zzdno):void");
    }

    private final Object zza(zzdri zzdriVar, Class<?> cls, zzdno zzdnoVar) throws IOException {
        switch (zzdnh.zzhdm[zzdriVar.ordinal()]) {
            case 1:
                return Boolean.valueOf(zzawa());
            case 2:
                return zzawc();
            case 3:
                return Double.valueOf(readDouble());
            case 4:
                return Integer.valueOf(zzawe());
            case 5:
                return Integer.valueOf(zzavz());
            case 6:
                return Long.valueOf(zzavy());
            case 7:
                return Float.valueOf(readFloat());
            case 8:
                return Integer.valueOf(zzavx());
            case 9:
                return Long.valueOf(zzavw());
            case 10:
                zzfv(2);
                return zzc(zzdpx.zzazg().zzg(cls), zzdnoVar);
            case 11:
                return Integer.valueOf(zzawf());
            case 12:
                return Long.valueOf(zzawg());
            case 13:
                return Integer.valueOf(zzawh());
            case 14:
                return Long.valueOf(zzawi());
            case 15:
                return zzawb();
            case 16:
                return Integer.valueOf(zzawd());
            case 17:
                return Long.valueOf(zzavv());
            default:
                throw new RuntimeException("unsupported field type.");
        }
    }

    private static void zzfx(int i) throws IOException {
        if ((i & 3) != 0) {
            throw zzdok.zzayj();
        }
    }

    private final void zzfy(int i) throws IOException {
        if (this.zzhdj.zzawl() != i) {
            throw zzdok.zzayd();
        }
    }
}
