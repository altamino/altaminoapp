package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.List;

/* loaded from: classes2.dex */
final class zzee implements zzgx {
    private int tag;
    private final zzeb zzacr;
    private int zzacs;
    private int zzact = 0;

    public static zzee zza(zzeb zzebVar) {
        zzee zzeeVar = zzebVar.zzack;
        return zzeeVar != null ? zzeeVar : new zzee(zzebVar);
    }

    private zzee(zzeb zzebVar) {
        this.zzacr = (zzeb) zzfb.zza(zzebVar, "input");
        this.zzacr.zzack = this;
    }

    @Override // com.google.android.gms.internal.measurement.zzgx
    public final int zzlh() throws IOException {
        int i = this.zzact;
        if (i != 0) {
            this.tag = i;
            this.zzact = 0;
        } else {
            this.tag = this.zzacr.zzkj();
        }
        int i2 = this.tag;
        if (i2 == 0 || i2 == this.zzacs) {
            return Integer.MAX_VALUE;
        }
        return i2 >>> 3;
    }

    @Override // com.google.android.gms.internal.measurement.zzgx
    public final int getTag() {
        return this.tag;
    }

    @Override // com.google.android.gms.internal.measurement.zzgx
    public final boolean zzli() throws IOException {
        int i;
        if (this.zzacr.zzkz() || (i = this.tag) == this.zzacs) {
            return false;
        }
        return this.zzacr.zzv(i);
    }

    private final void zzab(int i) throws IOException {
        if ((this.tag & 7) != i) {
            throw zzfh.zzmz();
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzgx
    public final double readDouble() throws IOException {
        zzab(1);
        return this.zzacr.readDouble();
    }

    @Override // com.google.android.gms.internal.measurement.zzgx
    public final float readFloat() throws IOException {
        zzab(5);
        return this.zzacr.readFloat();
    }

    @Override // com.google.android.gms.internal.measurement.zzgx
    public final long zzkk() throws IOException {
        zzab(0);
        return this.zzacr.zzkk();
    }

    @Override // com.google.android.gms.internal.measurement.zzgx
    public final long zzkl() throws IOException {
        zzab(0);
        return this.zzacr.zzkl();
    }

    @Override // com.google.android.gms.internal.measurement.zzgx
    public final int zzkm() throws IOException {
        zzab(0);
        return this.zzacr.zzkm();
    }

    @Override // com.google.android.gms.internal.measurement.zzgx
    public final long zzkn() throws IOException {
        zzab(1);
        return this.zzacr.zzkn();
    }

    @Override // com.google.android.gms.internal.measurement.zzgx
    public final int zzko() throws IOException {
        zzab(5);
        return this.zzacr.zzko();
    }

    @Override // com.google.android.gms.internal.measurement.zzgx
    public final boolean zzkp() throws IOException {
        zzab(0);
        return this.zzacr.zzkp();
    }

    @Override // com.google.android.gms.internal.measurement.zzgx
    public final String readString() throws IOException {
        zzab(2);
        return this.zzacr.readString();
    }

    @Override // com.google.android.gms.internal.measurement.zzgx
    public final String zzkq() throws IOException {
        zzab(2);
        return this.zzacr.zzkq();
    }

    @Override // com.google.android.gms.internal.measurement.zzgx
    public final <T> T zza(zzgy<T> zzgyVar, zzem zzemVar) throws IOException {
        zzab(2);
        return (T) zzc(zzgyVar, zzemVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzgx
    public final <T> T zzb(zzgy<T> zzgyVar, zzem zzemVar) throws IOException {
        zzab(3);
        return (T) zzd(zzgyVar, zzemVar);
    }

    private final <T> T zzc(zzgy<T> zzgyVar, zzem zzemVar) throws IOException {
        int iZzks = this.zzacr.zzks();
        zzeb zzebVar = this.zzacr;
        if (zzebVar.zzach >= zzebVar.zzaci) {
            throw zzfh.zzna();
        }
        int iZzx = zzebVar.zzx(iZzks);
        T tNewInstance = zzgyVar.newInstance();
        this.zzacr.zzach++;
        zzgyVar.zza(tNewInstance, this, zzemVar);
        zzgyVar.zzi(tNewInstance);
        this.zzacr.zzu(0);
        r5.zzach--;
        this.zzacr.zzy(iZzx);
        return tNewInstance;
    }

    private final <T> T zzd(zzgy<T> zzgyVar, zzem zzemVar) throws IOException {
        int i = this.zzacs;
        this.zzacs = ((this.tag >>> 3) << 3) | 4;
        try {
            T tNewInstance = zzgyVar.newInstance();
            zzgyVar.zza(tNewInstance, this, zzemVar);
            zzgyVar.zzi(tNewInstance);
            if (this.tag == this.zzacs) {
                return tNewInstance;
            }
            throw zzfh.zznb();
        } finally {
            this.zzacs = i;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzgx
    public final zzdp zzkr() throws IOException {
        zzab(2);
        return this.zzacr.zzkr();
    }

    @Override // com.google.android.gms.internal.measurement.zzgx
    public final int zzks() throws IOException {
        zzab(0);
        return this.zzacr.zzks();
    }

    @Override // com.google.android.gms.internal.measurement.zzgx
    public final int zzkt() throws IOException {
        zzab(0);
        return this.zzacr.zzkt();
    }

    @Override // com.google.android.gms.internal.measurement.zzgx
    public final int zzku() throws IOException {
        zzab(5);
        return this.zzacr.zzku();
    }

    @Override // com.google.android.gms.internal.measurement.zzgx
    public final long zzkv() throws IOException {
        zzab(1);
        return this.zzacr.zzkv();
    }

    @Override // com.google.android.gms.internal.measurement.zzgx
    public final int zzkw() throws IOException {
        zzab(0);
        return this.zzacr.zzkw();
    }

    @Override // com.google.android.gms.internal.measurement.zzgx
    public final long zzkx() throws IOException {
        zzab(0);
        return this.zzacr.zzkx();
    }

    @Override // com.google.android.gms.internal.measurement.zzgx
    public final void zzd(List<Double> list) throws IOException {
        int iZzkj;
        int iZzkj2;
        if (list instanceof zzej) {
            zzej zzejVar = (zzej) list;
            int i = this.tag & 7;
            if (i == 1) {
                do {
                    zzejVar.zzf(this.zzacr.readDouble());
                    if (this.zzacr.zzkz()) {
                        return;
                    } else {
                        iZzkj2 = this.zzacr.zzkj();
                    }
                } while (iZzkj2 == this.tag);
                this.zzact = iZzkj2;
                return;
            }
            if (i == 2) {
                int iZzks = this.zzacr.zzks();
                zzac(iZzks);
                int iZzla = this.zzacr.zzla() + iZzks;
                do {
                    zzejVar.zzf(this.zzacr.readDouble());
                } while (this.zzacr.zzla() < iZzla);
                return;
            }
            throw zzfh.zzmz();
        }
        int i2 = this.tag & 7;
        if (i2 == 1) {
            do {
                list.add(Double.valueOf(this.zzacr.readDouble()));
                if (this.zzacr.zzkz()) {
                    return;
                } else {
                    iZzkj = this.zzacr.zzkj();
                }
            } while (iZzkj == this.tag);
            this.zzact = iZzkj;
            return;
        }
        if (i2 == 2) {
            int iZzks2 = this.zzacr.zzks();
            zzac(iZzks2);
            int iZzla2 = this.zzacr.zzla() + iZzks2;
            do {
                list.add(Double.valueOf(this.zzacr.readDouble()));
            } while (this.zzacr.zzla() < iZzla2);
            return;
        }
        throw zzfh.zzmz();
    }

    @Override // com.google.android.gms.internal.measurement.zzgx
    public final void zze(List<Float> list) throws IOException {
        int iZzkj;
        int iZzkj2;
        if (list instanceof zzew) {
            zzew zzewVar = (zzew) list;
            int i = this.tag & 7;
            if (i == 2) {
                int iZzks = this.zzacr.zzks();
                zzad(iZzks);
                int iZzla = this.zzacr.zzla() + iZzks;
                do {
                    zzewVar.zzc(this.zzacr.readFloat());
                } while (this.zzacr.zzla() < iZzla);
                return;
            }
            if (i == 5) {
                do {
                    zzewVar.zzc(this.zzacr.readFloat());
                    if (this.zzacr.zzkz()) {
                        return;
                    } else {
                        iZzkj2 = this.zzacr.zzkj();
                    }
                } while (iZzkj2 == this.tag);
                this.zzact = iZzkj2;
                return;
            }
            throw zzfh.zzmz();
        }
        int i2 = this.tag & 7;
        if (i2 == 2) {
            int iZzks2 = this.zzacr.zzks();
            zzad(iZzks2);
            int iZzla2 = this.zzacr.zzla() + iZzks2;
            do {
                list.add(Float.valueOf(this.zzacr.readFloat()));
            } while (this.zzacr.zzla() < iZzla2);
            return;
        }
        if (i2 == 5) {
            do {
                list.add(Float.valueOf(this.zzacr.readFloat()));
                if (this.zzacr.zzkz()) {
                    return;
                } else {
                    iZzkj = this.zzacr.zzkj();
                }
            } while (iZzkj == this.tag);
            this.zzact = iZzkj;
            return;
        }
        throw zzfh.zzmz();
    }

    @Override // com.google.android.gms.internal.measurement.zzgx
    public final void zzf(List<Long> list) throws IOException {
        int iZzkj;
        int iZzkj2;
        if (list instanceof zzfv) {
            zzfv zzfvVar = (zzfv) list;
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    zzfvVar.zzbb(this.zzacr.zzkk());
                    if (this.zzacr.zzkz()) {
                        return;
                    } else {
                        iZzkj2 = this.zzacr.zzkj();
                    }
                } while (iZzkj2 == this.tag);
                this.zzact = iZzkj2;
                return;
            }
            if (i == 2) {
                int iZzla = this.zzacr.zzla() + this.zzacr.zzks();
                do {
                    zzfvVar.zzbb(this.zzacr.zzkk());
                } while (this.zzacr.zzla() < iZzla);
                zzae(iZzla);
                return;
            }
            throw zzfh.zzmz();
        }
        int i2 = this.tag & 7;
        if (i2 == 0) {
            do {
                list.add(Long.valueOf(this.zzacr.zzkk()));
                if (this.zzacr.zzkz()) {
                    return;
                } else {
                    iZzkj = this.zzacr.zzkj();
                }
            } while (iZzkj == this.tag);
            this.zzact = iZzkj;
            return;
        }
        if (i2 == 2) {
            int iZzla2 = this.zzacr.zzla() + this.zzacr.zzks();
            do {
                list.add(Long.valueOf(this.zzacr.zzkk()));
            } while (this.zzacr.zzla() < iZzla2);
            zzae(iZzla2);
            return;
        }
        throw zzfh.zzmz();
    }

    @Override // com.google.android.gms.internal.measurement.zzgx
    public final void zzg(List<Long> list) throws IOException {
        int iZzkj;
        int iZzkj2;
        if (list instanceof zzfv) {
            zzfv zzfvVar = (zzfv) list;
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    zzfvVar.zzbb(this.zzacr.zzkl());
                    if (this.zzacr.zzkz()) {
                        return;
                    } else {
                        iZzkj2 = this.zzacr.zzkj();
                    }
                } while (iZzkj2 == this.tag);
                this.zzact = iZzkj2;
                return;
            }
            if (i == 2) {
                int iZzla = this.zzacr.zzla() + this.zzacr.zzks();
                do {
                    zzfvVar.zzbb(this.zzacr.zzkl());
                } while (this.zzacr.zzla() < iZzla);
                zzae(iZzla);
                return;
            }
            throw zzfh.zzmz();
        }
        int i2 = this.tag & 7;
        if (i2 == 0) {
            do {
                list.add(Long.valueOf(this.zzacr.zzkl()));
                if (this.zzacr.zzkz()) {
                    return;
                } else {
                    iZzkj = this.zzacr.zzkj();
                }
            } while (iZzkj == this.tag);
            this.zzact = iZzkj;
            return;
        }
        if (i2 == 2) {
            int iZzla2 = this.zzacr.zzla() + this.zzacr.zzks();
            do {
                list.add(Long.valueOf(this.zzacr.zzkl()));
            } while (this.zzacr.zzla() < iZzla2);
            zzae(iZzla2);
            return;
        }
        throw zzfh.zzmz();
    }

    @Override // com.google.android.gms.internal.measurement.zzgx
    public final void zzh(List<Integer> list) throws IOException {
        int iZzkj;
        int iZzkj2;
        if (list instanceof zzfa) {
            zzfa zzfaVar = (zzfa) list;
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    zzfaVar.zzau(this.zzacr.zzkm());
                    if (this.zzacr.zzkz()) {
                        return;
                    } else {
                        iZzkj2 = this.zzacr.zzkj();
                    }
                } while (iZzkj2 == this.tag);
                this.zzact = iZzkj2;
                return;
            }
            if (i == 2) {
                int iZzla = this.zzacr.zzla() + this.zzacr.zzks();
                do {
                    zzfaVar.zzau(this.zzacr.zzkm());
                } while (this.zzacr.zzla() < iZzla);
                zzae(iZzla);
                return;
            }
            throw zzfh.zzmz();
        }
        int i2 = this.tag & 7;
        if (i2 == 0) {
            do {
                list.add(Integer.valueOf(this.zzacr.zzkm()));
                if (this.zzacr.zzkz()) {
                    return;
                } else {
                    iZzkj = this.zzacr.zzkj();
                }
            } while (iZzkj == this.tag);
            this.zzact = iZzkj;
            return;
        }
        if (i2 == 2) {
            int iZzla2 = this.zzacr.zzla() + this.zzacr.zzks();
            do {
                list.add(Integer.valueOf(this.zzacr.zzkm()));
            } while (this.zzacr.zzla() < iZzla2);
            zzae(iZzla2);
            return;
        }
        throw zzfh.zzmz();
    }

    @Override // com.google.android.gms.internal.measurement.zzgx
    public final void zzi(List<Long> list) throws IOException {
        int iZzkj;
        int iZzkj2;
        if (list instanceof zzfv) {
            zzfv zzfvVar = (zzfv) list;
            int i = this.tag & 7;
            if (i == 1) {
                do {
                    zzfvVar.zzbb(this.zzacr.zzkn());
                    if (this.zzacr.zzkz()) {
                        return;
                    } else {
                        iZzkj2 = this.zzacr.zzkj();
                    }
                } while (iZzkj2 == this.tag);
                this.zzact = iZzkj2;
                return;
            }
            if (i == 2) {
                int iZzks = this.zzacr.zzks();
                zzac(iZzks);
                int iZzla = this.zzacr.zzla() + iZzks;
                do {
                    zzfvVar.zzbb(this.zzacr.zzkn());
                } while (this.zzacr.zzla() < iZzla);
                return;
            }
            throw zzfh.zzmz();
        }
        int i2 = this.tag & 7;
        if (i2 == 1) {
            do {
                list.add(Long.valueOf(this.zzacr.zzkn()));
                if (this.zzacr.zzkz()) {
                    return;
                } else {
                    iZzkj = this.zzacr.zzkj();
                }
            } while (iZzkj == this.tag);
            this.zzact = iZzkj;
            return;
        }
        if (i2 == 2) {
            int iZzks2 = this.zzacr.zzks();
            zzac(iZzks2);
            int iZzla2 = this.zzacr.zzla() + iZzks2;
            do {
                list.add(Long.valueOf(this.zzacr.zzkn()));
            } while (this.zzacr.zzla() < iZzla2);
            return;
        }
        throw zzfh.zzmz();
    }

    @Override // com.google.android.gms.internal.measurement.zzgx
    public final void zzj(List<Integer> list) throws IOException {
        int iZzkj;
        int iZzkj2;
        if (list instanceof zzfa) {
            zzfa zzfaVar = (zzfa) list;
            int i = this.tag & 7;
            if (i == 2) {
                int iZzks = this.zzacr.zzks();
                zzad(iZzks);
                int iZzla = this.zzacr.zzla() + iZzks;
                do {
                    zzfaVar.zzau(this.zzacr.zzko());
                } while (this.zzacr.zzla() < iZzla);
                return;
            }
            if (i == 5) {
                do {
                    zzfaVar.zzau(this.zzacr.zzko());
                    if (this.zzacr.zzkz()) {
                        return;
                    } else {
                        iZzkj2 = this.zzacr.zzkj();
                    }
                } while (iZzkj2 == this.tag);
                this.zzact = iZzkj2;
                return;
            }
            throw zzfh.zzmz();
        }
        int i2 = this.tag & 7;
        if (i2 == 2) {
            int iZzks2 = this.zzacr.zzks();
            zzad(iZzks2);
            int iZzla2 = this.zzacr.zzla() + iZzks2;
            do {
                list.add(Integer.valueOf(this.zzacr.zzko()));
            } while (this.zzacr.zzla() < iZzla2);
            return;
        }
        if (i2 == 5) {
            do {
                list.add(Integer.valueOf(this.zzacr.zzko()));
                if (this.zzacr.zzkz()) {
                    return;
                } else {
                    iZzkj = this.zzacr.zzkj();
                }
            } while (iZzkj == this.tag);
            this.zzact = iZzkj;
            return;
        }
        throw zzfh.zzmz();
    }

    @Override // com.google.android.gms.internal.measurement.zzgx
    public final void zzk(List<Boolean> list) throws IOException {
        int iZzkj;
        int iZzkj2;
        if (list instanceof zzdn) {
            zzdn zzdnVar = (zzdn) list;
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    zzdnVar.addBoolean(this.zzacr.zzkp());
                    if (this.zzacr.zzkz()) {
                        return;
                    } else {
                        iZzkj2 = this.zzacr.zzkj();
                    }
                } while (iZzkj2 == this.tag);
                this.zzact = iZzkj2;
                return;
            }
            if (i == 2) {
                int iZzla = this.zzacr.zzla() + this.zzacr.zzks();
                do {
                    zzdnVar.addBoolean(this.zzacr.zzkp());
                } while (this.zzacr.zzla() < iZzla);
                zzae(iZzla);
                return;
            }
            throw zzfh.zzmz();
        }
        int i2 = this.tag & 7;
        if (i2 == 0) {
            do {
                list.add(Boolean.valueOf(this.zzacr.zzkp()));
                if (this.zzacr.zzkz()) {
                    return;
                } else {
                    iZzkj = this.zzacr.zzkj();
                }
            } while (iZzkj == this.tag);
            this.zzact = iZzkj;
            return;
        }
        if (i2 == 2) {
            int iZzla2 = this.zzacr.zzla() + this.zzacr.zzks();
            do {
                list.add(Boolean.valueOf(this.zzacr.zzkp()));
            } while (this.zzacr.zzla() < iZzla2);
            zzae(iZzla2);
            return;
        }
        throw zzfh.zzmz();
    }

    @Override // com.google.android.gms.internal.measurement.zzgx
    public final void readStringList(List<String> list) throws IOException {
        zza(list, false);
    }

    @Override // com.google.android.gms.internal.measurement.zzgx
    public final void zzl(List<String> list) throws IOException {
        zza(list, true);
    }

    private final void zza(List<String> list, boolean z) throws IOException {
        int iZzkj;
        int iZzkj2;
        if ((this.tag & 7) != 2) {
            throw zzfh.zzmz();
        }
        if ((list instanceof zzfq) && !z) {
            zzfq zzfqVar = (zzfq) list;
            do {
                zzfqVar.zzc(zzkr());
                if (this.zzacr.zzkz()) {
                    return;
                } else {
                    iZzkj2 = this.zzacr.zzkj();
                }
            } while (iZzkj2 == this.tag);
            this.zzact = iZzkj2;
            return;
        }
        do {
            list.add(z ? zzkq() : readString());
            if (this.zzacr.zzkz()) {
                return;
            } else {
                iZzkj = this.zzacr.zzkj();
            }
        } while (iZzkj == this.tag);
        this.zzact = iZzkj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.zzgx
    public final <T> void zza(List<T> list, zzgy<T> zzgyVar, zzem zzemVar) throws IOException {
        int iZzkj;
        int i = this.tag;
        if ((i & 7) != 2) {
            throw zzfh.zzmz();
        }
        do {
            list.add(zzc(zzgyVar, zzemVar));
            if (this.zzacr.zzkz() || this.zzact != 0) {
                return;
            } else {
                iZzkj = this.zzacr.zzkj();
            }
        } while (iZzkj == i);
        this.zzact = iZzkj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.zzgx
    public final <T> void zzb(List<T> list, zzgy<T> zzgyVar, zzem zzemVar) throws IOException {
        int iZzkj;
        int i = this.tag;
        if ((i & 7) != 3) {
            throw zzfh.zzmz();
        }
        do {
            list.add(zzd(zzgyVar, zzemVar));
            if (this.zzacr.zzkz() || this.zzact != 0) {
                return;
            } else {
                iZzkj = this.zzacr.zzkj();
            }
        } while (iZzkj == i);
        this.zzact = iZzkj;
    }

    @Override // com.google.android.gms.internal.measurement.zzgx
    public final void zzm(List<zzdp> list) throws IOException {
        int iZzkj;
        if ((this.tag & 7) != 2) {
            throw zzfh.zzmz();
        }
        do {
            list.add(zzkr());
            if (this.zzacr.zzkz()) {
                return;
            } else {
                iZzkj = this.zzacr.zzkj();
            }
        } while (iZzkj == this.tag);
        this.zzact = iZzkj;
    }

    @Override // com.google.android.gms.internal.measurement.zzgx
    public final void zzn(List<Integer> list) throws IOException {
        int iZzkj;
        int iZzkj2;
        if (list instanceof zzfa) {
            zzfa zzfaVar = (zzfa) list;
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    zzfaVar.zzau(this.zzacr.zzks());
                    if (this.zzacr.zzkz()) {
                        return;
                    } else {
                        iZzkj2 = this.zzacr.zzkj();
                    }
                } while (iZzkj2 == this.tag);
                this.zzact = iZzkj2;
                return;
            }
            if (i == 2) {
                int iZzla = this.zzacr.zzla() + this.zzacr.zzks();
                do {
                    zzfaVar.zzau(this.zzacr.zzks());
                } while (this.zzacr.zzla() < iZzla);
                zzae(iZzla);
                return;
            }
            throw zzfh.zzmz();
        }
        int i2 = this.tag & 7;
        if (i2 == 0) {
            do {
                list.add(Integer.valueOf(this.zzacr.zzks()));
                if (this.zzacr.zzkz()) {
                    return;
                } else {
                    iZzkj = this.zzacr.zzkj();
                }
            } while (iZzkj == this.tag);
            this.zzact = iZzkj;
            return;
        }
        if (i2 == 2) {
            int iZzla2 = this.zzacr.zzla() + this.zzacr.zzks();
            do {
                list.add(Integer.valueOf(this.zzacr.zzks()));
            } while (this.zzacr.zzla() < iZzla2);
            zzae(iZzla2);
            return;
        }
        throw zzfh.zzmz();
    }

    @Override // com.google.android.gms.internal.measurement.zzgx
    public final void zzo(List<Integer> list) throws IOException {
        int iZzkj;
        int iZzkj2;
        if (list instanceof zzfa) {
            zzfa zzfaVar = (zzfa) list;
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    zzfaVar.zzau(this.zzacr.zzkt());
                    if (this.zzacr.zzkz()) {
                        return;
                    } else {
                        iZzkj2 = this.zzacr.zzkj();
                    }
                } while (iZzkj2 == this.tag);
                this.zzact = iZzkj2;
                return;
            }
            if (i == 2) {
                int iZzla = this.zzacr.zzla() + this.zzacr.zzks();
                do {
                    zzfaVar.zzau(this.zzacr.zzkt());
                } while (this.zzacr.zzla() < iZzla);
                zzae(iZzla);
                return;
            }
            throw zzfh.zzmz();
        }
        int i2 = this.tag & 7;
        if (i2 == 0) {
            do {
                list.add(Integer.valueOf(this.zzacr.zzkt()));
                if (this.zzacr.zzkz()) {
                    return;
                } else {
                    iZzkj = this.zzacr.zzkj();
                }
            } while (iZzkj == this.tag);
            this.zzact = iZzkj;
            return;
        }
        if (i2 == 2) {
            int iZzla2 = this.zzacr.zzla() + this.zzacr.zzks();
            do {
                list.add(Integer.valueOf(this.zzacr.zzkt()));
            } while (this.zzacr.zzla() < iZzla2);
            zzae(iZzla2);
            return;
        }
        throw zzfh.zzmz();
    }

    @Override // com.google.android.gms.internal.measurement.zzgx
    public final void zzp(List<Integer> list) throws IOException {
        int iZzkj;
        int iZzkj2;
        if (list instanceof zzfa) {
            zzfa zzfaVar = (zzfa) list;
            int i = this.tag & 7;
            if (i == 2) {
                int iZzks = this.zzacr.zzks();
                zzad(iZzks);
                int iZzla = this.zzacr.zzla() + iZzks;
                do {
                    zzfaVar.zzau(this.zzacr.zzku());
                } while (this.zzacr.zzla() < iZzla);
                return;
            }
            if (i == 5) {
                do {
                    zzfaVar.zzau(this.zzacr.zzku());
                    if (this.zzacr.zzkz()) {
                        return;
                    } else {
                        iZzkj2 = this.zzacr.zzkj();
                    }
                } while (iZzkj2 == this.tag);
                this.zzact = iZzkj2;
                return;
            }
            throw zzfh.zzmz();
        }
        int i2 = this.tag & 7;
        if (i2 == 2) {
            int iZzks2 = this.zzacr.zzks();
            zzad(iZzks2);
            int iZzla2 = this.zzacr.zzla() + iZzks2;
            do {
                list.add(Integer.valueOf(this.zzacr.zzku()));
            } while (this.zzacr.zzla() < iZzla2);
            return;
        }
        if (i2 == 5) {
            do {
                list.add(Integer.valueOf(this.zzacr.zzku()));
                if (this.zzacr.zzkz()) {
                    return;
                } else {
                    iZzkj = this.zzacr.zzkj();
                }
            } while (iZzkj == this.tag);
            this.zzact = iZzkj;
            return;
        }
        throw zzfh.zzmz();
    }

    @Override // com.google.android.gms.internal.measurement.zzgx
    public final void zzq(List<Long> list) throws IOException {
        int iZzkj;
        int iZzkj2;
        if (list instanceof zzfv) {
            zzfv zzfvVar = (zzfv) list;
            int i = this.tag & 7;
            if (i == 1) {
                do {
                    zzfvVar.zzbb(this.zzacr.zzkv());
                    if (this.zzacr.zzkz()) {
                        return;
                    } else {
                        iZzkj2 = this.zzacr.zzkj();
                    }
                } while (iZzkj2 == this.tag);
                this.zzact = iZzkj2;
                return;
            }
            if (i == 2) {
                int iZzks = this.zzacr.zzks();
                zzac(iZzks);
                int iZzla = this.zzacr.zzla() + iZzks;
                do {
                    zzfvVar.zzbb(this.zzacr.zzkv());
                } while (this.zzacr.zzla() < iZzla);
                return;
            }
            throw zzfh.zzmz();
        }
        int i2 = this.tag & 7;
        if (i2 == 1) {
            do {
                list.add(Long.valueOf(this.zzacr.zzkv()));
                if (this.zzacr.zzkz()) {
                    return;
                } else {
                    iZzkj = this.zzacr.zzkj();
                }
            } while (iZzkj == this.tag);
            this.zzact = iZzkj;
            return;
        }
        if (i2 == 2) {
            int iZzks2 = this.zzacr.zzks();
            zzac(iZzks2);
            int iZzla2 = this.zzacr.zzla() + iZzks2;
            do {
                list.add(Long.valueOf(this.zzacr.zzkv()));
            } while (this.zzacr.zzla() < iZzla2);
            return;
        }
        throw zzfh.zzmz();
    }

    @Override // com.google.android.gms.internal.measurement.zzgx
    public final void zzr(List<Integer> list) throws IOException {
        int iZzkj;
        int iZzkj2;
        if (list instanceof zzfa) {
            zzfa zzfaVar = (zzfa) list;
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    zzfaVar.zzau(this.zzacr.zzkw());
                    if (this.zzacr.zzkz()) {
                        return;
                    } else {
                        iZzkj2 = this.zzacr.zzkj();
                    }
                } while (iZzkj2 == this.tag);
                this.zzact = iZzkj2;
                return;
            }
            if (i == 2) {
                int iZzla = this.zzacr.zzla() + this.zzacr.zzks();
                do {
                    zzfaVar.zzau(this.zzacr.zzkw());
                } while (this.zzacr.zzla() < iZzla);
                zzae(iZzla);
                return;
            }
            throw zzfh.zzmz();
        }
        int i2 = this.tag & 7;
        if (i2 == 0) {
            do {
                list.add(Integer.valueOf(this.zzacr.zzkw()));
                if (this.zzacr.zzkz()) {
                    return;
                } else {
                    iZzkj = this.zzacr.zzkj();
                }
            } while (iZzkj == this.tag);
            this.zzact = iZzkj;
            return;
        }
        if (i2 == 2) {
            int iZzla2 = this.zzacr.zzla() + this.zzacr.zzks();
            do {
                list.add(Integer.valueOf(this.zzacr.zzkw()));
            } while (this.zzacr.zzla() < iZzla2);
            zzae(iZzla2);
            return;
        }
        throw zzfh.zzmz();
    }

    @Override // com.google.android.gms.internal.measurement.zzgx
    public final void zzs(List<Long> list) throws IOException {
        int iZzkj;
        int iZzkj2;
        if (list instanceof zzfv) {
            zzfv zzfvVar = (zzfv) list;
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    zzfvVar.zzbb(this.zzacr.zzkx());
                    if (this.zzacr.zzkz()) {
                        return;
                    } else {
                        iZzkj2 = this.zzacr.zzkj();
                    }
                } while (iZzkj2 == this.tag);
                this.zzact = iZzkj2;
                return;
            }
            if (i == 2) {
                int iZzla = this.zzacr.zzla() + this.zzacr.zzks();
                do {
                    zzfvVar.zzbb(this.zzacr.zzkx());
                } while (this.zzacr.zzla() < iZzla);
                zzae(iZzla);
                return;
            }
            throw zzfh.zzmz();
        }
        int i2 = this.tag & 7;
        if (i2 == 0) {
            do {
                list.add(Long.valueOf(this.zzacr.zzkx()));
                if (this.zzacr.zzkz()) {
                    return;
                } else {
                    iZzkj = this.zzacr.zzkj();
                }
            } while (iZzkj == this.tag);
            this.zzact = iZzkj;
            return;
        }
        if (i2 == 2) {
            int iZzla2 = this.zzacr.zzla() + this.zzacr.zzks();
            do {
                list.add(Long.valueOf(this.zzacr.zzkx()));
            } while (this.zzacr.zzla() < iZzla2);
            zzae(iZzla2);
            return;
        }
        throw zzfh.zzmz();
    }

    private static void zzac(int i) throws IOException {
        if ((i & 7) != 0) {
            throw zzfh.zznb();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x005b, code lost:
    
        r8.put(r2, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0063, code lost:
    
        return;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.zzgx
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final <K, V> void zza(java.util.Map<K, V> r8, com.google.android.gms.internal.measurement.zzga<K, V> r9, com.google.android.gms.internal.measurement.zzem r10) throws java.io.IOException {
        /*
            r7 = this;
            r0 = 2
            r7.zzab(r0)
            com.google.android.gms.internal.measurement.zzeb r1 = r7.zzacr
            int r1 = r1.zzks()
            com.google.android.gms.internal.measurement.zzeb r2 = r7.zzacr
            int r1 = r2.zzx(r1)
            K r2 = r9.zzait
            V r3 = r9.zzzw
        L14:
            int r4 = r7.zzlh()     // Catch: java.lang.Throwable -> L64
            r5 = 2147483647(0x7fffffff, float:NaN)
            if (r4 == r5) goto L5b
            com.google.android.gms.internal.measurement.zzeb r5 = r7.zzacr     // Catch: java.lang.Throwable -> L64
            boolean r5 = r5.zzkz()     // Catch: java.lang.Throwable -> L64
            if (r5 != 0) goto L5b
            r5 = 1
            java.lang.String r6 = "Unable to parse map entry."
            if (r4 == r5) goto L46
            if (r4 == r0) goto L39
            boolean r4 = r7.zzli()     // Catch: com.google.android.gms.internal.measurement.zzfi -> L4e java.lang.Throwable -> L64
            if (r4 == 0) goto L33
            goto L14
        L33:
            com.google.android.gms.internal.measurement.zzfh r4 = new com.google.android.gms.internal.measurement.zzfh     // Catch: com.google.android.gms.internal.measurement.zzfi -> L4e java.lang.Throwable -> L64
            r4.<init>(r6)     // Catch: com.google.android.gms.internal.measurement.zzfi -> L4e java.lang.Throwable -> L64
            throw r4     // Catch: com.google.android.gms.internal.measurement.zzfi -> L4e java.lang.Throwable -> L64
        L39:
            com.google.android.gms.internal.measurement.zzif r4 = r9.zzaiu     // Catch: com.google.android.gms.internal.measurement.zzfi -> L4e java.lang.Throwable -> L64
            V r5 = r9.zzzw     // Catch: com.google.android.gms.internal.measurement.zzfi -> L4e java.lang.Throwable -> L64
            java.lang.Class r5 = r5.getClass()     // Catch: com.google.android.gms.internal.measurement.zzfi -> L4e java.lang.Throwable -> L64
            java.lang.Object r3 = r7.zza(r4, r5, r10)     // Catch: com.google.android.gms.internal.measurement.zzfi -> L4e java.lang.Throwable -> L64
            goto L14
        L46:
            com.google.android.gms.internal.measurement.zzif r4 = r9.zzais     // Catch: com.google.android.gms.internal.measurement.zzfi -> L4e java.lang.Throwable -> L64
            r5 = 0
            java.lang.Object r2 = r7.zza(r4, r5, r5)     // Catch: com.google.android.gms.internal.measurement.zzfi -> L4e java.lang.Throwable -> L64
            goto L14
        L4e:
            boolean r4 = r7.zzli()     // Catch: java.lang.Throwable -> L64
            if (r4 == 0) goto L55
            goto L14
        L55:
            com.google.android.gms.internal.measurement.zzfh r8 = new com.google.android.gms.internal.measurement.zzfh     // Catch: java.lang.Throwable -> L64
            r8.<init>(r6)     // Catch: java.lang.Throwable -> L64
            throw r8     // Catch: java.lang.Throwable -> L64
        L5b:
            r8.put(r2, r3)     // Catch: java.lang.Throwable -> L64
            com.google.android.gms.internal.measurement.zzeb r8 = r7.zzacr
            r8.zzy(r1)
            return
        L64:
            r8 = move-exception
            com.google.android.gms.internal.measurement.zzeb r9 = r7.zzacr
            r9.zzy(r1)
            goto L6c
        L6b:
            throw r8
        L6c:
            goto L6b
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzee.zza(java.util.Map, com.google.android.gms.internal.measurement.zzga, com.google.android.gms.internal.measurement.zzem):void");
    }

    private final Object zza(zzif zzifVar, Class<?> cls, zzem zzemVar) throws IOException {
        switch (zzef.zzacu[zzifVar.ordinal()]) {
            case 1:
                return Boolean.valueOf(zzkp());
            case 2:
                return zzkr();
            case 3:
                return Double.valueOf(readDouble());
            case 4:
                return Integer.valueOf(zzkt());
            case 5:
                return Integer.valueOf(zzko());
            case 6:
                return Long.valueOf(zzkn());
            case 7:
                return Float.valueOf(readFloat());
            case 8:
                return Integer.valueOf(zzkm());
            case 9:
                return Long.valueOf(zzkl());
            case 10:
                zzab(2);
                return zzc(zzgu.zznz().zzf(cls), zzemVar);
            case 11:
                return Integer.valueOf(zzku());
            case 12:
                return Long.valueOf(zzkv());
            case 13:
                return Integer.valueOf(zzkw());
            case 14:
                return Long.valueOf(zzkx());
            case 15:
                return zzkq();
            case 16:
                return Integer.valueOf(zzks());
            case 17:
                return Long.valueOf(zzkk());
            default:
                throw new RuntimeException("unsupported field type.");
        }
    }

    private static void zzad(int i) throws IOException {
        if ((i & 3) != 0) {
            throw zzfh.zznb();
        }
    }

    private final void zzae(int i) throws IOException {
        if (this.zzacr.zzla() != i) {
            throw zzfh.zzmu();
        }
    }
}
