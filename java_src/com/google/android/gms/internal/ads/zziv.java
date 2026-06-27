package com.google.android.gms.internal.ads;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Stack;

/* loaded from: classes2.dex */
public final class zziv implements zzid, zzio {
    private long zzaml;
    private int zzamm;
    private long zzamn;
    private int zzamo;
    private zzkm zzamp;
    private int zzamq;
    private int zzamr;
    private int zzams;
    private zzif zzamt;
    private zziw[] zzamu;
    private final zzkm zzami = new zzkm(16);
    private final Stack<zzir> zzamj = new Stack<>();
    private final zzkm zzamg = new zzkm(zzkj.zzaqt);
    private final zzkm zzamh = new zzkm(4);
    private int zzamk = 0;

    @Override // com.google.android.gms.internal.ads.zzio
    public final boolean zzfc() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzid
    public final void zza(zzif zzifVar) {
        this.zzamt = zzifVar;
    }

    @Override // com.google.android.gms.internal.ads.zzid
    public final void zzfh() {
        this.zzaml = 0L;
        this.zzamr = 0;
        this.zzams = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzid
    public final int zza(zzie zzieVar, zzij zzijVar) throws InterruptedException, IOException {
        zziw[] zziwVarArr;
        int i;
        long j;
        boolean z;
        zziv zzivVar;
        boolean z2;
        zzir zzirVar;
        int i2;
        zziv zzivVar2;
        ArrayList arrayList;
        zzix zzixVarZza;
        int i3;
        int i4;
        int iZzgg;
        int iZzgg2;
        int iZzgg3;
        int i5;
        int iZzgg4;
        int i6;
        long jZzgh;
        int i7;
        zzkm zzkmVar;
        int iZzgg5;
        int[] iArr;
        zziv zzivVar3 = this;
        zzie zzieVar2 = zzieVar;
        zzij zzijVar2 = zzijVar;
        while (true) {
            int i8 = zzivVar3.zzamk;
            if (i8 == 0) {
                zziv zzivVar4 = zzivVar3;
                boolean z3 = false;
                if (zzieVar.zza(zzivVar4.zzami.data, 0, 8, true)) {
                    zzivVar4.zzami.setPosition(0);
                    zzivVar4.zzamn = zzivVar4.zzami.zzge();
                    zzivVar4.zzamm = zzivVar4.zzami.readInt();
                    if (zzivVar4.zzamn == 1) {
                        zzieVar.readFully(zzivVar4.zzami.data, 8, 8);
                        zzivVar4.zzamn = zzivVar4.zzami.readLong();
                        zzivVar4.zzaml += 16;
                        zzivVar4.zzamo = 16;
                    } else {
                        zzivVar4.zzaml += 8;
                        zzivVar4.zzamo = 8;
                    }
                    int i9 = zzivVar4.zzamm;
                    if (i9 == zziq.zzako || i9 == zziq.zzakq || i9 == zziq.zzakr || i9 == zziq.zzaks || i9 == zziq.zzakt) {
                        long j2 = zzivVar4.zzamn;
                        if (j2 == 1) {
                            zzivVar4.zzamj.add(new zzir(zzivVar4.zzamm, (zzivVar4.zzaml + j2) - zzivVar4.zzamo));
                        } else {
                            zzivVar4.zzamj.add(new zzir(zzivVar4.zzamm, (zzivVar4.zzaml + j2) - zzivVar4.zzamo));
                        }
                        zzivVar4.zzamk = 0;
                        z3 = true;
                    } else {
                        int i10 = zzivVar4.zzamm;
                        if (i10 == zziq.zzakz || i10 == zziq.zzakp || i10 == zziq.zzala || i10 == zziq.zzalp || i10 == zziq.zzalq || i10 == zziq.zzalb || i10 == zziq.zzaka || i10 == zziq.zzaku || i10 == zziq.zzake || i10 == zziq.zzakc || i10 == zziq.zzals || i10 == zziq.zzalt || i10 == zziq.zzalu || i10 == zziq.zzalv || i10 == zziq.zzalw || i10 == zziq.zzalx || i10 == zziq.zzaly || i10 == zziq.zzaky) {
                            zzkh.checkState(zzivVar4.zzamn < 2147483647L);
                            zzivVar4.zzamp = new zzkm((int) zzivVar4.zzamn);
                            System.arraycopy(zzivVar4.zzami.data, 0, zzivVar4.zzamp.data, 0, 8);
                            z3 = true;
                            zzivVar4.zzamk = 1;
                        } else {
                            z3 = true;
                            zzivVar4.zzamp = null;
                            zzivVar4.zzamk = 1;
                        }
                    }
                }
                if (!z3) {
                    return -1;
                }
                zzijVar2 = zzijVar;
                zzivVar3 = zzivVar4;
                zzieVar2 = zzieVar;
            } else {
                if (i8 != 1) {
                    long j3 = Long.MAX_VALUE;
                    int i11 = 0;
                    int i12 = -1;
                    while (true) {
                        zziwVarArr = zzivVar3.zzamu;
                        if (i11 >= zziwVarArr.length) {
                            break;
                        }
                        zziw zziwVar = zziwVarArr[i11];
                        int i13 = zziwVar.zzamy;
                        zziz zzizVar = zziwVar.zzamw;
                        if (i13 != zzizVar.zzand) {
                            long j4 = zzizVar.zzahq[i13];
                            if (j4 < j3) {
                                i12 = i11;
                                j3 = j4;
                            }
                        }
                        i11++;
                    }
                    if (i12 == -1) {
                        return -1;
                    }
                    zziw zziwVar2 = zziwVarArr[i12];
                    int i14 = zziwVar2.zzamy;
                    long j5 = zziwVar2.zzamw.zzahq[i14];
                    long position = (j5 - zzieVar.getPosition()) + zzivVar3.zzamr;
                    if (position < 0) {
                        i = 1;
                        j = j5;
                    } else {
                        if (position < PlaybackStateCompat.ACTION_SET_REPEAT_MODE) {
                            zzieVar2.zzr((int) position);
                            zzivVar3.zzamq = zziwVar2.zzamw.zzahp[i14];
                            int i15 = zziwVar2.zzamv.zzamf;
                            if (i15 == -1) {
                                while (true) {
                                    int i16 = zzivVar3.zzamr;
                                    int i17 = zzivVar3.zzamq;
                                    if (i16 >= i17) {
                                        break;
                                    }
                                    int iZza = zziwVar2.zzamx.zza(zzieVar2, i17 - i16);
                                    zzivVar3.zzamr += iZza;
                                    zzivVar3.zzams -= iZza;
                                }
                            } else {
                                byte[] bArr = zzivVar3.zzamh.data;
                                bArr[0] = 0;
                                bArr[1] = 0;
                                bArr[2] = 0;
                                int i18 = 4 - i15;
                                while (zzivVar3.zzamr < zzivVar3.zzamq) {
                                    int i19 = zzivVar3.zzams;
                                    if (i19 == 0) {
                                        zzieVar2.readFully(zzivVar3.zzamh.data, i18, i15);
                                        zzivVar3.zzamh.setPosition(0);
                                        zzivVar3.zzams = zzivVar3.zzamh.zzgg();
                                        zzivVar3.zzamg.setPosition(0);
                                        zziwVar2.zzamx.zza(zzivVar3.zzamg, 4);
                                        zzivVar3.zzamr += 4;
                                        zzivVar3.zzamq += i18;
                                    } else {
                                        int iZza2 = zziwVar2.zzamx.zza(zzieVar2, i19);
                                        zzivVar3.zzamr += iZza2;
                                        zzivVar3.zzams -= iZza2;
                                    }
                                }
                            }
                            zzip zzipVar = zziwVar2.zzamx;
                            zziz zzizVar2 = zziwVar2.zzamw;
                            zzipVar.zza(zzizVar2.zzane[i14], zzizVar2.zzajr[i14], zzivVar3.zzamq, 0, null);
                            zziwVar2.zzamy++;
                            zzivVar3.zzamr = 0;
                            zzivVar3.zzams = 0;
                            return 0;
                        }
                        j = j5;
                        i = 1;
                    }
                    zzijVar2.zzahv = j;
                    return i;
                }
                zzivVar3.zzamk = 0;
                long j6 = zzivVar3.zzaml;
                long j7 = zzivVar3.zzamn;
                int i20 = zzivVar3.zzamo;
                zzivVar3.zzaml = j6 + (j7 - i20);
                long j8 = j7 - i20;
                boolean z4 = zzivVar3.zzamp == null && (j7 >= PlaybackStateCompat.ACTION_SET_REPEAT_MODE || j7 > 2147483647L);
                if (z4) {
                    zzijVar2.zzahv = zzivVar3.zzaml;
                } else {
                    zzkm zzkmVar2 = zzivVar3.zzamp;
                    if (zzkmVar2 != null) {
                        zzieVar2.readFully(zzkmVar2.data, zzivVar3.zzamo, (int) j8);
                        if (!zzivVar3.zzamj.isEmpty()) {
                            zzivVar3.zzamj.peek().zzama.add(new zzis(zzivVar3.zzamm, zzivVar3.zzamp));
                        }
                    } else {
                        zzieVar2.zzr((int) j8);
                    }
                }
                while (!zzivVar3.zzamj.isEmpty() && zzivVar3.zzamj.peek().zzalz == zzivVar3.zzaml) {
                    zzir zzirVarPop = zzivVar3.zzamj.pop();
                    if (zzirVarPop.type == zziq.zzako) {
                        ArrayList arrayList2 = new ArrayList();
                        int i21 = 0;
                        while (i21 < zzirVarPop.zzamb.size()) {
                            zzir zzirVar2 = zzirVarPop.zzamb.get(i21);
                            if (zzirVar2.type == zziq.zzakq && (zzixVarZza = zzit.zza(zzirVar2, zzirVarPop.zzv(zziq.zzakp))) != null && ((i3 = zzixVarZza.type) == 1936684398 || i3 == 1986618469)) {
                                zzir zzirVarZzw = zzirVar2.zzw(zziq.zzakr).zzw(zziq.zzaks).zzw(zziq.zzakt);
                                zzkm zzkmVar3 = zzirVarZzw.zzv(zziq.zzalw).zzamc;
                                zzis zzisVarZzv = zzirVarZzw.zzv(zziq.zzalx);
                                if (zzisVarZzv == null) {
                                    zzisVarZzv = zzirVarZzw.zzv(zziq.zzaly);
                                }
                                zzkm zzkmVar4 = zzisVarZzv.zzamc;
                                zzkm zzkmVar5 = zzirVarZzw.zzv(zziq.zzalv).zzamc;
                                zzkm zzkmVar6 = zzirVarZzw.zzv(zziq.zzals).zzamc;
                                zzis zzisVarZzv2 = zzirVarZzw.zzv(zziq.zzalt);
                                zzkm zzkmVar7 = zzisVarZzv2 != null ? zzisVarZzv2.zzamc : null;
                                zzis zzisVarZzv3 = zzirVarZzw.zzv(zziq.zzalu);
                                zzkm zzkmVar8 = zzisVarZzv3 != null ? zzisVarZzv3.zzamc : null;
                                zzkmVar3.setPosition(12);
                                int iZzgg6 = zzkmVar3.zzgg();
                                int iZzgg7 = zzkmVar3.zzgg();
                                int[] iArr2 = new int[iZzgg7];
                                long[] jArr = new long[iZzgg7];
                                z2 = z4;
                                long[] jArr2 = new long[iZzgg7];
                                zzirVar = zzirVarPop;
                                int[] iArr3 = new int[iZzgg7];
                                ArrayList arrayList3 = arrayList2;
                                zzkmVar4.setPosition(12);
                                int i22 = i21;
                                int iZzgg8 = zzkmVar4.zzgg();
                                zzkmVar5.setPosition(12);
                                int iZzgg9 = zzkmVar5.zzgg() - 1;
                                if (!(zzkmVar5.readInt() == 1)) {
                                    throw new IllegalStateException("stsc first chunk must be 1");
                                }
                                int iZzgg10 = zzkmVar5.zzgg();
                                zzkmVar5.zzac(4);
                                if (iZzgg9 > 0) {
                                    iZzgg = zzkmVar5.zzgg() - 1;
                                    i4 = 12;
                                } else {
                                    i4 = 12;
                                    iZzgg = -1;
                                }
                                zzkmVar6.setPosition(i4);
                                int iZzgg11 = zzkmVar6.zzgg() - 1;
                                int iZzgg12 = zzkmVar6.zzgg();
                                int iZzgg13 = zzkmVar6.zzgg();
                                if (zzkmVar8 != null) {
                                    zzkmVar8.setPosition(i4);
                                    iZzgg2 = zzkmVar8.zzgg() - 1;
                                    iZzgg3 = zzkmVar8.zzgg();
                                    i5 = zzkmVar8.readInt();
                                } else {
                                    iZzgg2 = 0;
                                    iZzgg3 = 0;
                                    i5 = 0;
                                }
                                if (zzkmVar7 != null) {
                                    zzkmVar7.setPosition(i4);
                                    int iZzgg14 = zzkmVar7.zzgg();
                                    iZzgg4 = zzkmVar7.zzgg() - 1;
                                    i6 = iZzgg14;
                                } else {
                                    iZzgg4 = -1;
                                    i6 = 0;
                                }
                                if (zzisVarZzv.type == zziq.zzalx) {
                                    jZzgh = zzkmVar4.zzge();
                                } else {
                                    jZzgh = zzkmVar4.zzgh();
                                }
                                int iZzgg15 = iZzgg10;
                                int i23 = iZzgg;
                                int i24 = i5;
                                int i25 = iZzgg9;
                                int i26 = 0;
                                int i27 = 0;
                                zzkm zzkmVar9 = zzkmVar5;
                                int iZzgg16 = iZzgg3;
                                int iZzgg17 = iZzgg4;
                                int iZzgg18 = iZzgg13;
                                int i28 = iZzgg2;
                                long j9 = 0;
                                while (i26 < iZzgg7) {
                                    jArr2[i26] = jZzgh;
                                    iArr2[i26] = iZzgg6 == 0 ? zzkmVar3.zzgg() : iZzgg6;
                                    int[] iArr4 = iArr2;
                                    long[] jArr3 = jArr2;
                                    jArr[i26] = j9 + i24;
                                    iArr3[i26] = zzkmVar7 == null ? 1 : 0;
                                    if (i26 == iZzgg17) {
                                        iArr3[i26] = 1;
                                        i6--;
                                        if (i6 > 0) {
                                            iZzgg17 = zzkmVar7.zzgg() - 1;
                                        }
                                    }
                                    j9 += iZzgg18;
                                    iZzgg12--;
                                    if (iZzgg12 == 0 && iZzgg11 > 0) {
                                        iZzgg11--;
                                        iZzgg12 = zzkmVar6.zzgg();
                                        iZzgg18 = zzkmVar6.zzgg();
                                    }
                                    if (zzkmVar8 != null && iZzgg16 - 1 == 0 && i28 > 0) {
                                        i28--;
                                        iZzgg16 = zzkmVar8.zzgg();
                                        i24 = zzkmVar8.readInt();
                                    }
                                    iZzgg10--;
                                    if (iZzgg10 == 0) {
                                        int i29 = i27 + 1;
                                        if (i29 < iZzgg8) {
                                            i7 = i24;
                                            if (zzisVarZzv.type == zziq.zzalx) {
                                                jZzgh = zzkmVar4.zzge();
                                            } else {
                                                jZzgh = zzkmVar4.zzgh();
                                            }
                                        } else {
                                            i7 = i24;
                                        }
                                        int i30 = i23;
                                        if (i29 == i30) {
                                            iZzgg15 = zzkmVar9.zzgg();
                                            iZzgg5 = i30;
                                            zzkmVar = zzkmVar9;
                                            zzkmVar.zzac(4);
                                            i25--;
                                            if (i25 > 0) {
                                                iZzgg5 = zzkmVar.zzgg() - 1;
                                            }
                                        } else {
                                            iZzgg5 = i30;
                                            zzkmVar = zzkmVar9;
                                        }
                                        i27 = i29;
                                        iArr = iArr3;
                                        if (i29 < iZzgg8) {
                                            iZzgg10 = iZzgg15;
                                        }
                                    } else {
                                        i7 = i24;
                                        zzkmVar = zzkmVar9;
                                        iZzgg5 = i23;
                                        iArr = iArr3;
                                        jZzgh += iArr4[i26];
                                    }
                                    i26++;
                                    i23 = iZzgg5;
                                    iArr3 = iArr;
                                    iArr2 = iArr4;
                                    jArr2 = jArr3;
                                    zzkmVar9 = zzkmVar;
                                    i24 = i7;
                                }
                                int[] iArr5 = iArr2;
                                long[] jArr4 = jArr2;
                                int[] iArr6 = iArr3;
                                zzkq.zza(jArr, 1000000L, zzixVarZza.zzcs);
                                zzkh.checkArgument(i6 == 0);
                                zzkh.checkArgument(iZzgg12 == 0);
                                zzkh.checkArgument(iZzgg10 == 0);
                                zzkh.checkArgument(iZzgg11 == 0);
                                zzkh.checkArgument(i28 == 0);
                                zziz zzizVar3 = new zziz(jArr4, iArr5, jArr, iArr6);
                                if (zzizVar3.zzand != 0) {
                                    zzivVar2 = this;
                                    i2 = i22;
                                    zziw zziwVar3 = new zziw(zzixVarZza, zzizVar3, zzivVar2.zzamt.zzs(i2));
                                    zziwVar3.zzamx.zza(zzixVarZza.zzame);
                                    arrayList = arrayList3;
                                    arrayList.add(zziwVar3);
                                } else {
                                    zzivVar2 = this;
                                    arrayList = arrayList3;
                                    i2 = i22;
                                }
                            } else {
                                z2 = z4;
                                zzirVar = zzirVarPop;
                                i2 = i21;
                                zzivVar2 = zzivVar3;
                                arrayList = arrayList2;
                            }
                            i21 = i2 + 1;
                            arrayList2 = arrayList;
                            zzivVar3 = zzivVar2;
                            z4 = z2;
                            zzirVarPop = zzirVar;
                        }
                        z = z4;
                        zzivVar = zzivVar3;
                        zzivVar.zzamu = (zziw[]) arrayList2.toArray(new zziw[0]);
                        zzivVar.zzamt.zzfi();
                        zzivVar.zzamt.zza(zzivVar);
                        zzivVar.zzamk = 2;
                    } else {
                        z = z4;
                        zzivVar = zzivVar3;
                        if (!zzivVar.zzamj.isEmpty()) {
                            zzivVar.zzamj.peek().zzamb.add(zzirVarPop);
                        }
                    }
                    zzivVar3 = zzivVar;
                    z4 = z;
                }
                boolean z5 = z4;
                zziv zzivVar5 = zzivVar3;
                if (z5) {
                    return 1;
                }
                zzieVar2 = zzieVar;
                zzijVar2 = zzijVar;
                zzivVar3 = zzivVar5;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzio
    public final long zzdq(long j) {
        long j2 = Long.MAX_VALUE;
        int i = 0;
        while (true) {
            zziw[] zziwVarArr = this.zzamu;
            if (i >= zziwVarArr.length) {
                return j2;
            }
            zziz zzizVar = zziwVarArr[i].zzamw;
            int iZza = zzkq.zza(zzizVar.zzane, j, true, false);
            while (true) {
                if (iZza < 0) {
                    iZza = -1;
                    break;
                }
                if (zzizVar.zzane[iZza] <= j && (zzizVar.zzajr[iZza] & 1) != 0) {
                    break;
                }
                iZza--;
            }
            if (iZza == -1) {
                iZza = zzkq.zzb(zzizVar.zzane, j, true, false);
                while (true) {
                    long[] jArr = zzizVar.zzane;
                    if (iZza >= jArr.length) {
                        iZza = -1;
                        break;
                    }
                    if (jArr[iZza] >= j && (zzizVar.zzajr[iZza] & 1) != 0) {
                        break;
                    }
                    iZza++;
                }
            }
            zziw[] zziwVarArr2 = this.zzamu;
            zziwVarArr2[i].zzamy = iZza;
            long j3 = zzizVar.zzahq[zziwVarArr2[i].zzamy];
            if (j3 < j2) {
                j2 = j3;
            }
            i++;
        }
    }
}
