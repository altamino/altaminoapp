package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.C;
import java.io.IOException;
import java.util.ArrayList;
import java.util.IdentityHashMap;

/* loaded from: classes2.dex */
final class zzqn implements zzqj, zzqk {
    private zzrb zzasa;
    private zzqk zzbik;
    public final zzqj[] zzbjd;
    private final IdentityHashMap<zzqw, Integer> zzbje = new IdentityHashMap<>();
    private int zzbjf;
    private zzqj[] zzbjg;
    private zzqx zzbjh;

    public zzqn(zzqj... zzqjVarArr) {
        this.zzbjd = zzqjVarArr;
    }

    @Override // com.google.android.gms.internal.ads.zzqj
    public final void zza(zzqk zzqkVar, long j) {
        this.zzbik = zzqkVar;
        zzqj[] zzqjVarArr = this.zzbjd;
        this.zzbjf = zzqjVarArr.length;
        for (zzqj zzqjVar : zzqjVarArr) {
            zzqjVar.zza(this, j);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqj
    public final void zziy() throws IOException {
        for (zzqj zzqjVar : this.zzbjd) {
            zzqjVar.zziy();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqj
    public final zzrb zziz() {
        return this.zzasa;
    }

    @Override // com.google.android.gms.internal.ads.zzqj
    public final long zza(zzrm[] zzrmVarArr, boolean[] zArr, zzqw[] zzqwVarArr, boolean[] zArr2, long j) {
        int[] iArr = new int[zzrmVarArr.length];
        int[] iArr2 = new int[zzrmVarArr.length];
        for (int i = 0; i < zzrmVarArr.length; i++) {
            iArr[i] = zzqwVarArr[i] == null ? -1 : this.zzbje.get(zzqwVarArr[i]).intValue();
            iArr2[i] = -1;
            if (zzrmVarArr[i] != null) {
                zzra zzraVarZzjr = zzrmVarArr[i].zzjr();
                int i2 = 0;
                while (true) {
                    zzqj[] zzqjVarArr = this.zzbjd;
                    if (i2 >= zzqjVarArr.length) {
                        break;
                    }
                    if (zzqjVarArr[i2].zziz().zza(zzraVarZzjr) != -1) {
                        iArr2[i] = i2;
                        break;
                    }
                    i2++;
                }
            }
        }
        this.zzbje.clear();
        zzqw[] zzqwVarArr2 = new zzqw[zzrmVarArr.length];
        zzqw[] zzqwVarArr3 = new zzqw[zzrmVarArr.length];
        zzrm[] zzrmVarArr2 = new zzrm[zzrmVarArr.length];
        ArrayList arrayList = new ArrayList(this.zzbjd.length);
        long j2 = j;
        int i3 = 0;
        while (i3 < this.zzbjd.length) {
            for (int i4 = 0; i4 < zzrmVarArr.length; i4++) {
                zzrm zzrmVar = null;
                zzqwVarArr3[i4] = iArr[i4] == i3 ? zzqwVarArr[i4] : null;
                if (iArr2[i4] == i3) {
                    zzrmVar = zzrmVarArr[i4];
                }
                zzrmVarArr2[i4] = zzrmVar;
            }
            zzrm[] zzrmVarArr3 = zzrmVarArr2;
            ArrayList arrayList2 = arrayList;
            zzrm[] zzrmVarArr4 = zzrmVarArr2;
            int i5 = i3;
            long jZza = this.zzbjd[i3].zza(zzrmVarArr3, zArr, zzqwVarArr3, zArr2, j2);
            if (i5 == 0) {
                j2 = jZza;
            } else if (jZza != j2) {
                throw new IllegalStateException("Children enabled at different positions");
            }
            boolean z = false;
            for (int i6 = 0; i6 < zzrmVarArr.length; i6++) {
                if (iArr2[i6] == i5) {
                    zzsk.checkState(zzqwVarArr3[i6] != null);
                    zzqwVarArr2[i6] = zzqwVarArr3[i6];
                    this.zzbje.put(zzqwVarArr3[i6], Integer.valueOf(i5));
                    z = true;
                } else if (iArr[i6] == i5) {
                    zzsk.checkState(zzqwVarArr3[i6] == null);
                }
            }
            if (z) {
                arrayList2.add(this.zzbjd[i5]);
            }
            i3 = i5 + 1;
            arrayList = arrayList2;
            zzrmVarArr2 = zzrmVarArr4;
        }
        ArrayList arrayList3 = arrayList;
        System.arraycopy(zzqwVarArr2, 0, zzqwVarArr, 0, zzqwVarArr2.length);
        this.zzbjg = new zzqj[arrayList3.size()];
        arrayList3.toArray(this.zzbjg);
        this.zzbjh = new zzpy(this.zzbjg);
        return j2;
    }

    @Override // com.google.android.gms.internal.ads.zzqj
    public final void zzem(long j) {
        for (zzqj zzqjVar : this.zzbjg) {
            zzqjVar.zzem(j);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqj, com.google.android.gms.internal.ads.zzqx
    public final boolean zzel(long j) {
        return this.zzbjh.zzel(j);
    }

    @Override // com.google.android.gms.internal.ads.zzqj, com.google.android.gms.internal.ads.zzqx
    public final long zzix() {
        return this.zzbjh.zzix();
    }

    @Override // com.google.android.gms.internal.ads.zzqj
    public final long zzja() {
        long jZzja = this.zzbjd[0].zzja();
        int i = 1;
        while (true) {
            zzqj[] zzqjVarArr = this.zzbjd;
            if (i >= zzqjVarArr.length) {
                if (jZzja != C.TIME_UNSET) {
                    for (zzqj zzqjVar : this.zzbjg) {
                        if (zzqjVar != this.zzbjd[0] && zzqjVar.zzen(jZzja) != jZzja) {
                            throw new IllegalStateException("Children seeked to different positions");
                        }
                    }
                }
                return jZzja;
            }
            if (zzqjVarArr[i].zzja() != C.TIME_UNSET) {
                throw new IllegalStateException("Child reported discontinuity");
            }
            i++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqj
    public final long zzdu() {
        long jMin = Long.MAX_VALUE;
        for (zzqj zzqjVar : this.zzbjg) {
            long jZzdu = zzqjVar.zzdu();
            if (jZzdu != Long.MIN_VALUE) {
                jMin = Math.min(jMin, jZzdu);
            }
        }
        if (jMin == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return jMin;
    }

    @Override // com.google.android.gms.internal.ads.zzqj
    public final long zzen(long j) {
        long jZzen = this.zzbjg[0].zzen(j);
        int i = 1;
        while (true) {
            zzqj[] zzqjVarArr = this.zzbjg;
            if (i >= zzqjVarArr.length) {
                return jZzen;
            }
            if (zzqjVarArr[i].zzen(jZzen) != jZzen) {
                throw new IllegalStateException("Children seeked to different positions");
            }
            i++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqk
    public final void zza(zzqj zzqjVar) {
        int i = this.zzbjf - 1;
        this.zzbjf = i;
        if (i > 0) {
            return;
        }
        int i2 = 0;
        for (zzqj zzqjVar2 : this.zzbjd) {
            i2 += zzqjVar2.zziz().length;
        }
        zzra[] zzraVarArr = new zzra[i2];
        zzqj[] zzqjVarArr = this.zzbjd;
        int length = zzqjVarArr.length;
        int i3 = 0;
        int i4 = 0;
        while (i3 < length) {
            zzrb zzrbVarZziz = zzqjVarArr[i3].zziz();
            int i5 = zzrbVarZziz.length;
            int i6 = i4;
            int i7 = 0;
            while (i7 < i5) {
                zzraVarArr[i6] = zzrbVarZziz.zzbg(i7);
                i7++;
                i6++;
            }
            i3++;
            i4 = i6;
        }
        this.zzasa = new zzrb(zzraVarArr);
        this.zzbik.zza((zzqj) this);
    }

    @Override // com.google.android.gms.internal.ads.zzqy
    public final /* synthetic */ void zza(zzqx zzqxVar) {
        if (this.zzasa != null) {
            this.zzbik.zza((zzqk) this);
        }
    }
}
