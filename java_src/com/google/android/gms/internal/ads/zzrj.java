package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import java.util.Arrays;
import java.util.Map;

/* loaded from: classes2.dex */
public abstract class zzrj extends zzrp {
    private zzrk zzblq;
    private final SparseArray<Map<zzrb, zzrl>> zzblo = new SparseArray<>();
    private final SparseBooleanArray zzblp = new SparseBooleanArray();
    private int zzaul = 0;

    protected abstract zzrm[] zza(zzlp[] zzlpVarArr, zzrb[] zzrbVarArr, int[][][] iArr) throws zzku;

    public final void zzg(int i, boolean z) {
        if (this.zzblp.get(i) == z) {
            return;
        }
        this.zzblp.put(i, z);
        invalidate();
    }

    @Override // com.google.android.gms.internal.ads.zzrp
    public final zzrr zza(zzlp[] zzlpVarArr, zzrb zzrbVar) throws zzku {
        int[] iArr;
        int[] iArr2 = new int[zzlpVarArr.length + 1];
        zzra[][] zzraVarArr = new zzra[zzlpVarArr.length + 1][];
        int[][][] iArr3 = new int[zzlpVarArr.length + 1][][];
        for (int i = 0; i < zzraVarArr.length; i++) {
            int i2 = zzrbVar.length;
            zzraVarArr[i] = new zzra[i2];
            iArr3[i] = new int[i2][];
        }
        int[] iArr4 = new int[zzlpVarArr.length];
        for (int i3 = 0; i3 < iArr4.length; i3++) {
            iArr4[i3] = zzlpVarArr[i3].zzgp();
        }
        for (int i4 = 0; i4 < zzrbVar.length; i4++) {
            zzra zzraVarZzbg = zzrbVar.zzbg(i4);
            int length = zzlpVarArr.length;
            int i5 = 0;
            int i6 = 0;
            while (true) {
                if (i5 >= zzlpVarArr.length) {
                    i5 = length;
                    break;
                }
                zzlp zzlpVar = zzlpVarArr[i5];
                int i7 = length;
                int i8 = i6;
                for (int i9 = 0; i9 < zzraVarZzbg.length; i9++) {
                    int iZza = zzlpVar.zza(zzraVarZzbg.zzbf(i9)) & 3;
                    if (iZza > i8) {
                        if (iZza == 3) {
                            break;
                        }
                        i7 = i5;
                        i8 = iZza;
                    }
                }
                i5++;
                i6 = i8;
                length = i7;
            }
            if (i5 == zzlpVarArr.length) {
                iArr = new int[zzraVarZzbg.length];
            } else {
                zzlp zzlpVar2 = zzlpVarArr[i5];
                int[] iArr5 = new int[zzraVarZzbg.length];
                for (int i10 = 0; i10 < zzraVarZzbg.length; i10++) {
                    iArr5[i10] = zzlpVar2.zza(zzraVarZzbg.zzbf(i10));
                }
                iArr = iArr5;
            }
            int i11 = iArr2[i5];
            zzraVarArr[i5][i11] = zzraVarZzbg;
            iArr3[i5][i11] = iArr;
            iArr2[i5] = iArr2[i5] + 1;
        }
        zzrb[] zzrbVarArr = new zzrb[zzlpVarArr.length];
        int[] iArr6 = new int[zzlpVarArr.length];
        for (int i12 = 0; i12 < zzlpVarArr.length; i12++) {
            int i13 = iArr2[i12];
            zzrbVarArr[i12] = new zzrb((zzra[]) Arrays.copyOf(zzraVarArr[i12], i13));
            iArr3[i12] = (int[][]) Arrays.copyOf(iArr3[i12], i13);
            iArr6[i12] = zzlpVarArr[i12].getTrackType();
        }
        zzrb zzrbVar2 = new zzrb((zzra[]) Arrays.copyOf(zzraVarArr[zzlpVarArr.length], iArr2[zzlpVarArr.length]));
        zzrm[] zzrmVarArrZza = zza(zzlpVarArr, zzrbVarArr, iArr3);
        int i14 = 0;
        while (true) {
            if (i14 < zzlpVarArr.length) {
                if (this.zzblp.get(i14)) {
                    zzrmVarArrZza[i14] = null;
                } else {
                    zzrb zzrbVar3 = zzrbVarArr[i14];
                    Map<zzrb, zzrl> map = this.zzblo.get(i14);
                    if ((map != null ? map.get(zzrbVar3) : null) != null) {
                        throw new NoSuchMethodError();
                    }
                }
                i14++;
            } else {
                zzrk zzrkVar = new zzrk(iArr6, zzrbVarArr, iArr4, iArr3, zzrbVar2);
                zzlq[] zzlqVarArr = new zzlq[zzlpVarArr.length];
                for (int i15 = 0; i15 < zzlpVarArr.length; i15++) {
                    zzlqVarArr[i15] = zzrmVarArrZza[i15] != null ? zzlq.zzauk : null;
                }
                return new zzrr(zzrbVar, new zzro(zzrmVarArrZza), zzrkVar, zzlqVarArr);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzrp
    public final void zzd(Object obj) {
        this.zzblq = (zzrk) obj;
    }
}
