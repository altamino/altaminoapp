package com.google.android.gms.internal.ads;

import android.util.Log;
import android.util.Pair;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.gms.internal.ads.zzpo;
import com.narvii.account.ThirdPartyAccountBaseFragment;
import java.util.ArrayList;

/* loaded from: classes2.dex */
final class zzom {
    private static final int zzbeb = zzsy.zzay("vide");
    private static final int zzbec = zzsy.zzay("soun");
    private static final int zzbed = zzsy.zzay(MimeTypes.BASE_TYPE_TEXT);
    private static final int zzbee = zzsy.zzay("sbtl");
    private static final int zzbef = zzsy.zzay("subt");
    private static final int zzbeg = zzsy.zzay("clcp");
    private static final int zzbeh = zzsy.zzay(C.CENC_TYPE_cenc);
    private static final int zzbdl = zzsy.zzay("meta");

    /* JADX WARN: Removed duplicated region for block: B:273:0x0447  */
    /* JADX WARN: Removed duplicated region for block: B:400:0x06e6  */
    /* JADX WARN: Removed duplicated region for block: B:403:0x06ef A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:404:0x06f0  */
    /* JADX WARN: Removed duplicated region for block: B:416:0x0477 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0149  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x014b  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x01a6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.zzpa zza(com.google.android.gms.internal.ads.zzok r43, com.google.android.gms.internal.ads.zzol r44, long r45, com.google.android.gms.internal.ads.zzne r47, boolean r48) throws com.google.android.gms.internal.ads.zzlm {
        /*
            Method dump skipped, instructions count: 1831
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzom.zza(com.google.android.gms.internal.ads.zzok, com.google.android.gms.internal.ads.zzol, long, com.google.android.gms.internal.ads.zzne, boolean):com.google.android.gms.internal.ads.zzpa");
    }

    public static zzpc zza(zzpa zzpaVar, zzok zzokVar, zznr zznrVar) throws zzlm {
        zzoo zzorVar;
        boolean z;
        int iZzgg;
        int iZzgg2;
        int i;
        long[] jArr;
        int[] iArr;
        long[] jArr2;
        int[] iArr2;
        int i2;
        long j;
        long j2;
        int[] iArr3;
        int[] iArr4;
        int i3;
        long[] jArr3;
        boolean z2;
        int[] iArr5;
        long[] jArr4;
        int i4;
        int i5;
        zzpa zzpaVar2 = zzpaVar;
        zzol zzolVarZzay = zzokVar.zzay(zzoj.zzalw);
        if (zzolVarZzay != null) {
            zzorVar = new zzoq(zzolVarZzay);
        } else {
            zzol zzolVarZzay2 = zzokVar.zzay(zzoj.zzbdd);
            if (zzolVarZzay2 == null) {
                throw new zzlm("Track has no sample table size information");
            }
            zzorVar = new zzor(zzolVarZzay2);
        }
        int iZzim = zzorVar.zzim();
        if (iZzim == 0) {
            return new zzpc(new long[0], new int[0], 0, new long[0], new int[0]);
        }
        zzol zzolVarZzay3 = zzokVar.zzay(zzoj.zzalx);
        if (zzolVarZzay3 == null) {
            zzolVarZzay3 = zzokVar.zzay(zzoj.zzaly);
            z = true;
        } else {
            z = false;
        }
        zzst zzstVar = zzolVarZzay3.zzbea;
        zzst zzstVar2 = zzokVar.zzay(zzoj.zzalv).zzbea;
        zzst zzstVar3 = zzokVar.zzay(zzoj.zzals).zzbea;
        zzol zzolVarZzay4 = zzokVar.zzay(zzoj.zzalt);
        zzst zzstVar4 = zzolVarZzay4 != null ? zzolVarZzay4.zzbea : null;
        zzol zzolVarZzay5 = zzokVar.zzay(zzoj.zzalu);
        zzst zzstVar5 = zzolVarZzay5 != null ? zzolVarZzay5.zzbea : null;
        zzon zzonVar = new zzon(zzstVar2, zzstVar, z);
        zzstVar3.setPosition(12);
        int iZzgg3 = zzstVar3.zzgg() - 1;
        int iZzgg4 = zzstVar3.zzgg();
        int iZzgg5 = zzstVar3.zzgg();
        if (zzstVar5 != null) {
            zzstVar5.setPosition(12);
            iZzgg = zzstVar5.zzgg();
        } else {
            iZzgg = 0;
        }
        int iZzgg6 = -1;
        if (zzstVar4 != null) {
            zzstVar4.setPosition(12);
            iZzgg2 = zzstVar4.zzgg();
            if (iZzgg2 > 0) {
                iZzgg6 = zzstVar4.zzgg() - 1;
            } else {
                zzstVar4 = null;
            }
        } else {
            iZzgg2 = 0;
        }
        long j3 = 0;
        if (!(zzorVar.zzio() && MimeTypes.AUDIO_RAW.equals(zzpaVar2.zzaue.zzatq) && iZzgg3 == 0 && iZzgg == 0 && iZzgg2 == 0)) {
            jArr = new long[iZzim];
            iArr = new int[iZzim];
            jArr2 = new long[iZzim];
            int i6 = iZzgg2;
            iArr2 = new int[iZzim];
            int i7 = i6;
            int i8 = iZzgg5;
            int i9 = iZzgg;
            int iZzgg7 = iZzgg6;
            long j4 = 0;
            long j5 = 0;
            int i10 = 0;
            int i11 = 0;
            int i12 = 0;
            int iZzgg8 = 0;
            int iZzgg9 = iZzgg4;
            int i13 = iZzgg3;
            int i14 = 0;
            while (i14 < iZzim) {
                long j6 = j4;
                int i15 = i10;
                while (i15 == 0) {
                    zzsk.checkState(zzonVar.zzil());
                    j6 = zzonVar.zzajx;
                    i15 = zzonVar.zzbei;
                    i13 = i13;
                    i8 = i8;
                }
                int i16 = i13;
                int i17 = i8;
                if (zzstVar5 != null) {
                    while (iZzgg8 == 0 && i9 > 0) {
                        iZzgg8 = zzstVar5.zzgg();
                        i12 = zzstVar5.readInt();
                        i9--;
                    }
                    iZzgg8--;
                }
                int i18 = i12;
                jArr[i14] = j6;
                iArr[i14] = zzorVar.zzin();
                if (iArr[i14] > i11) {
                    i4 = iZzim;
                    i11 = iArr[i14];
                } else {
                    i4 = iZzim;
                }
                zzoo zzooVar = zzorVar;
                jArr2[i14] = j5 + i18;
                iArr2[i14] = zzstVar4 == null ? 1 : 0;
                if (i14 == iZzgg7) {
                    iArr2[i14] = 1;
                    i7--;
                    if (i7 > 0) {
                        iZzgg7 = zzstVar4.zzgg() - 1;
                    }
                }
                int i19 = i7;
                int i20 = iZzgg7;
                int iZzgg10 = i17;
                j5 += iZzgg10;
                iZzgg9--;
                if (iZzgg9 != 0 || i16 <= 0) {
                    i5 = i16;
                } else {
                    i5 = i16 - 1;
                    iZzgg9 = zzstVar3.zzgg();
                    iZzgg10 = zzstVar3.zzgg();
                }
                int i21 = i5;
                long j7 = j6 + iArr[i14];
                i14++;
                iZzgg7 = i20;
                iZzim = i4;
                i10 = i15 - 1;
                i12 = i18;
                i13 = i21;
                j4 = j7;
                i8 = iZzgg10;
                i7 = i19;
                zzorVar = zzooVar;
            }
            i = iZzim;
            int i22 = i13;
            zzsk.checkArgument(iZzgg8 == 0);
            while (i9 > 0) {
                zzsk.checkArgument(zzstVar5.zzgg() == 0);
                zzstVar5.readInt();
                i9--;
            }
            if (i7 == 0 && iZzgg9 == 0 && i10 == 0 && i22 == 0) {
                zzpaVar2 = zzpaVar;
            } else {
                int i23 = i7;
                zzpaVar2 = zzpaVar;
                int i24 = zzpaVar2.id;
                StringBuilder sb = new StringBuilder(ThirdPartyAccountBaseFragment.API_ERR_EMAIL_TAKEN);
                sb.append("Inconsistent stbl box for track ");
                sb.append(i24);
                sb.append(": remainingSynchronizationSamples ");
                sb.append(i23);
                sb.append(", remainingSamplesAtTimestampDelta ");
                sb.append(iZzgg9);
                sb.append(", remainingSamplesInChunk ");
                sb.append(i10);
                sb.append(", remainingTimestampDeltaChanges ");
                sb.append(i22);
                Log.w("AtomParsers", sb.toString());
            }
            j = j5;
            i2 = i11;
        } else {
            i = iZzim;
            zzoo zzooVar2 = zzorVar;
            int i25 = zzonVar.length;
            long[] jArr5 = new long[i25];
            int[] iArr6 = new int[i25];
            while (zzonVar.zzil()) {
                int i26 = zzonVar.index;
                jArr5[i26] = zzonVar.zzajx;
                iArr6[i26] = zzonVar.zzbei;
            }
            int iZzin = zzooVar2.zzin();
            long j8 = iZzgg5;
            int i27 = 8192 / iZzin;
            int iZzb = 0;
            for (int i28 : iArr6) {
                iZzb += zzsy.zzb(i28, i27);
            }
            long[] jArr6 = new long[iZzb];
            int[] iArr7 = new int[iZzb];
            long[] jArr7 = new long[iZzb];
            int[] iArr8 = new int[iZzb];
            int i29 = 0;
            int i30 = 0;
            int i31 = 0;
            int i32 = 0;
            while (i29 < iArr6.length) {
                int i33 = iArr6[i29];
                long j9 = jArr5[i29];
                int i34 = i30;
                int iMax = i32;
                while (i33 > 0) {
                    int iMin = Math.min(i27, i33);
                    jArr6[i31] = j9;
                    iArr7[i31] = iZzin * iMin;
                    iMax = Math.max(iMax, iArr7[i31]);
                    jArr7[i31] = i34 * j8;
                    iArr8[i31] = 1;
                    j9 += iArr7[i31];
                    i34 += iMin;
                    i33 -= iMin;
                    i31++;
                    iArr6 = iArr6;
                    jArr5 = jArr5;
                }
                i29++;
                i32 = iMax;
                i30 = i34;
            }
            zzou zzouVar = new zzou(jArr6, iArr7, i32, jArr7, iArr8);
            jArr = zzouVar.zzahq;
            iArr = zzouVar.zzahp;
            int i35 = zzouVar.zzbet;
            jArr2 = zzouVar.zzbeu;
            iArr2 = zzouVar.zzajr;
            i2 = i35;
            j = 0;
        }
        if (zzpaVar2.zzbgm == null || zznrVar.zzii()) {
            int[] iArr9 = iArr;
            zzsy.zza(jArr2, 1000000L, zzpaVar2.zzcs);
            return new zzpc(jArr, iArr9, i2, jArr2, iArr2);
        }
        long[] jArr8 = zzpaVar2.zzbgm;
        if (jArr8.length == 1 && zzpaVar2.type == 1 && jArr2.length >= 2) {
            long j10 = zzpaVar2.zzbgn[0];
            long jZza = zzsy.zza(jArr8[0], zzpaVar2.zzcs, zzpaVar2.zzbgj) + j10;
            if (jArr2[0] <= j10 && j10 < jArr2[1] && jArr2[jArr2.length - 1] < jZza && jZza <= j) {
                long j11 = j - jZza;
                long jZza2 = zzsy.zza(j10 - jArr2[0], zzpaVar2.zzaue.zzafv, zzpaVar2.zzcs);
                long jZza3 = zzsy.zza(j11, zzpaVar2.zzaue.zzafv, zzpaVar2.zzcs);
                if ((jZza2 != 0 || jZza3 != 0) && jZza2 <= 2147483647L && jZza3 <= 2147483647L) {
                    zznrVar.zzaty = (int) jZza2;
                    zznrVar.zzatz = (int) jZza3;
                    zzsy.zza(jArr2, 1000000L, zzpaVar2.zzcs);
                    return new zzpc(jArr, iArr, i2, jArr2, iArr2);
                }
            }
        }
        long[] jArr9 = zzpaVar2.zzbgm;
        if (jArr9.length == 1) {
            char c = 0;
            if (jArr9[0] == 0) {
                int i36 = 0;
                while (i36 < jArr2.length) {
                    jArr2[i36] = zzsy.zza(jArr2[i36] - zzpaVar2.zzbgn[c], 1000000L, zzpaVar2.zzcs);
                    i36++;
                    c = 0;
                }
                return new zzpc(jArr, iArr, i2, jArr2, iArr2);
            }
        }
        boolean z3 = zzpaVar2.type == 1;
        int i37 = 0;
        boolean z4 = false;
        int i38 = 0;
        int i39 = 0;
        while (true) {
            long[] jArr10 = zzpaVar2.zzbgm;
            j2 = -1;
            if (i37 >= jArr10.length) {
                break;
            }
            int[] iArr10 = iArr;
            long j12 = zzpaVar2.zzbgn[i37];
            if (j12 != -1) {
                long jZza4 = zzsy.zza(jArr10[i37], zzpaVar2.zzcs, zzpaVar2.zzbgj);
                int iZzb2 = zzsy.zzb(jArr2, j12, true, true);
                int iZzb3 = zzsy.zzb(jArr2, j12 + jZza4, z3, false);
                i38 += iZzb3 - iZzb2;
                z4 |= i39 != iZzb2;
                i39 = iZzb3;
            }
            i37++;
            iArr = iArr10;
        }
        int[] iArr11 = iArr;
        boolean z5 = (i38 != i) | z4;
        long[] jArr11 = z5 ? new long[i38] : jArr;
        int[] iArr12 = z5 ? new int[i38] : iArr11;
        if (z5) {
            i2 = 0;
        }
        int[] iArr13 = z5 ? new int[i38] : iArr2;
        long[] jArr12 = new long[i38];
        int i40 = i2;
        int i41 = 0;
        int i42 = 0;
        while (true) {
            long[] jArr13 = zzpaVar2.zzbgm;
            if (i41 >= jArr13.length) {
                break;
            }
            long[] jArr14 = jArr11;
            long[] jArr15 = jArr12;
            long j13 = zzpaVar2.zzbgn[i41];
            long j14 = jArr13[i41];
            if (j13 != j2) {
                iArr4 = iArr13;
                i3 = i41;
                long jZza5 = zzsy.zza(j14, zzpaVar2.zzcs, zzpaVar2.zzbgj) + j13;
                int iZzb4 = zzsy.zzb(jArr2, j13, true, true);
                int iZzb5 = zzsy.zzb(jArr2, jZza5, z3, false);
                if (z5) {
                    int i43 = iZzb5 - iZzb4;
                    jArr3 = jArr14;
                    System.arraycopy(jArr, iZzb4, jArr3, i42, i43);
                    z2 = z3;
                    iArr5 = iArr11;
                    System.arraycopy(iArr5, iZzb4, iArr12, i42, i43);
                    System.arraycopy(iArr2, iZzb4, iArr4, i42, i43);
                } else {
                    jArr3 = jArr14;
                    z2 = z3;
                    iArr5 = iArr11;
                }
                int i44 = i40;
                while (iZzb4 < iZzb5) {
                    long[] jArr16 = jArr;
                    int[] iArr14 = iArr2;
                    long j15 = j13;
                    jArr15[i42] = zzsy.zza(j3, 1000000L, zzpaVar2.zzbgj) + zzsy.zza(jArr2[iZzb4] - j13, 1000000L, zzpaVar2.zzcs);
                    if (z5 && iArr12[i42] > i44) {
                        i44 = iArr5[iZzb4];
                    }
                    i42++;
                    iZzb4++;
                    jArr = jArr16;
                    j13 = j15;
                    iArr2 = iArr14;
                }
                jArr4 = jArr;
                iArr3 = iArr2;
                i40 = i44;
            } else {
                iArr3 = iArr2;
                iArr4 = iArr13;
                i3 = i41;
                jArr3 = jArr14;
                z2 = z3;
                iArr5 = iArr11;
                jArr4 = jArr;
            }
            j3 += j14;
            i41 = i3 + 1;
            jArr = jArr4;
            iArr11 = iArr5;
            iArr13 = iArr4;
            jArr11 = jArr3;
            z3 = z2;
            iArr2 = iArr3;
            jArr12 = jArr15;
            j2 = -1;
        }
        long[] jArr17 = jArr11;
        long[] jArr18 = jArr12;
        int[] iArr15 = iArr13;
        boolean z6 = false;
        for (int i45 = 0; i45 < iArr15.length && !z6; i45++) {
            z6 |= (iArr15[i45] & 1) != 0;
        }
        if (!z6) {
            throw new zzlm("The edited sample sequence does not contain a sync sample.");
        }
        return new zzpc(jArr17, iArr12, i40, jArr18, iArr15);
    }

    public static zzpo zza(zzol zzolVar, boolean z) {
        if (z) {
            return null;
        }
        zzst zzstVar = zzolVar.zzbea;
        zzstVar.setPosition(8);
        while (zzstVar.zzjz() >= 8) {
            int position = zzstVar.getPosition();
            int i = zzstVar.readInt();
            if (zzstVar.readInt() == zzoj.zzbdl) {
                zzstVar.setPosition(position);
                int i2 = position + i;
                zzstVar.zzac(12);
                while (true) {
                    if (zzstVar.getPosition() >= i2) {
                        break;
                    }
                    int position2 = zzstVar.getPosition();
                    int i3 = zzstVar.readInt();
                    if (zzstVar.readInt() == zzoj.zzbdm) {
                        zzstVar.setPosition(position2);
                        int i4 = position2 + i3;
                        zzstVar.zzac(8);
                        ArrayList arrayList = new ArrayList();
                        while (zzstVar.getPosition() < i4) {
                            zzpo.zza zzaVarZzd = zzov.zzd(zzstVar);
                            if (zzaVarZzd != null) {
                                arrayList.add(zzaVarZzd);
                            }
                        }
                        if (!arrayList.isEmpty()) {
                            return new zzpo(arrayList);
                        }
                    } else {
                        zzstVar.zzac(i3 - 8);
                    }
                }
                return null;
            }
            zzstVar.zzac(i - 8);
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0077  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.util.Pair<java.lang.String, byte[]> zzb(com.google.android.gms.internal.ads.zzst r3, int r4) {
        /*
            int r4 = r4 + 8
            int r4 = r4 + 4
            r3.setPosition(r4)
            r4 = 1
            r3.zzac(r4)
            zzc(r3)
            r0 = 2
            r3.zzac(r0)
            int r1 = r3.readUnsignedByte()
            r2 = r1 & 128(0x80, float:1.794E-43)
            if (r2 == 0) goto L1d
            r3.zzac(r0)
        L1d:
            r2 = r1 & 64
            if (r2 == 0) goto L28
            int r2 = r3.readUnsignedShort()
            r3.zzac(r2)
        L28:
            r2 = 32
            r1 = r1 & r2
            if (r1 == 0) goto L30
            r3.zzac(r0)
        L30:
            r3.zzac(r4)
            zzc(r3)
            int r0 = r3.readUnsignedByte()
            r1 = 0
            if (r0 == r2) goto L82
            r2 = 33
            if (r0 == r2) goto L7e
            r2 = 35
            if (r0 == r2) goto L7a
            r2 = 64
            if (r0 == r2) goto L77
            r2 = 107(0x6b, float:1.5E-43)
            if (r0 == r2) goto L70
            r2 = 165(0xa5, float:2.31E-43)
            if (r0 == r2) goto L6d
            r2 = 166(0xa6, float:2.33E-43)
            if (r0 == r2) goto L6a
            switch(r0) {
                case 102: goto L77;
                case 103: goto L77;
                case 104: goto L77;
                default: goto L58;
            }
        L58:
            switch(r0) {
                case 169: goto L63;
                case 170: goto L5c;
                case 171: goto L5c;
                case 172: goto L63;
                default: goto L5b;
            }
        L5b:
            goto L85
        L5c:
            java.lang.String r3 = "audio/vnd.dts.hd"
            android.util.Pair r3 = android.util.Pair.create(r3, r1)
            return r3
        L63:
            java.lang.String r3 = "audio/vnd.dts"
            android.util.Pair r3 = android.util.Pair.create(r3, r1)
            return r3
        L6a:
            java.lang.String r1 = "audio/eac3"
            goto L85
        L6d:
            java.lang.String r1 = "audio/ac3"
            goto L85
        L70:
            java.lang.String r3 = "audio/mpeg"
            android.util.Pair r3 = android.util.Pair.create(r3, r1)
            return r3
        L77:
            java.lang.String r1 = "audio/mp4a-latm"
            goto L85
        L7a:
            java.lang.String r1 = "video/hevc"
            goto L85
        L7e:
            java.lang.String r1 = "video/avc"
            goto L85
        L82:
            java.lang.String r1 = "video/mp4v-es"
        L85:
            r0 = 12
            r3.zzac(r0)
            r3.zzac(r4)
            int r4 = zzc(r3)
            byte[] r0 = new byte[r4]
            r2 = 0
            r3.zzb(r0, r2, r4)
            android.util.Pair r3 = android.util.Pair.create(r1, r0)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzom.zzb(com.google.android.gms.internal.ads.zzst, int):android.util.Pair");
    }

    private static int zza(zzst zzstVar, int i, int i2, zzop zzopVar, int i3) {
        zzpb zzpbVar;
        int position = zzstVar.getPosition();
        while (true) {
            if (position - i >= i2) {
                return 0;
            }
            zzstVar.setPosition(position);
            int i4 = zzstVar.readInt();
            zzsk.checkArgument(i4 > 0, "childAtomSize should be positive");
            if (zzstVar.readInt() == zzoj.zzald) {
                int i5 = position + 8;
                Pair pairCreate = null;
                Integer numValueOf = null;
                zzpb zzpbVar2 = null;
                boolean z = false;
                while (i5 - position < i4) {
                    zzstVar.setPosition(i5);
                    int i6 = zzstVar.readInt();
                    int i7 = zzstVar.readInt();
                    if (i7 == zzoj.zzalj) {
                        numValueOf = Integer.valueOf(zzstVar.readInt());
                    } else if (i7 == zzoj.zzale) {
                        zzstVar.zzac(4);
                        z = zzstVar.readInt() == zzbeh;
                    } else if (i7 == zzoj.zzalf) {
                        int i8 = i5 + 8;
                        while (true) {
                            if (i8 - i5 >= i6) {
                                zzpbVar = null;
                                break;
                            }
                            zzstVar.setPosition(i8);
                            int i9 = zzstVar.readInt();
                            if (zzstVar.readInt() == zzoj.zzalg) {
                                zzstVar.zzac(6);
                                boolean z2 = zzstVar.readUnsignedByte() == 1;
                                int unsignedByte = zzstVar.readUnsignedByte();
                                byte[] bArr = new byte[16];
                                zzstVar.zzb(bArr, 0, 16);
                                zzpbVar = new zzpb(z2, unsignedByte, bArr);
                            } else {
                                i8 += i9;
                            }
                        }
                        zzpbVar2 = zzpbVar;
                    }
                    i5 += i6;
                }
                if (z) {
                    zzsk.checkArgument(numValueOf != null, "frma atom is mandatory");
                    zzsk.checkArgument(zzpbVar2 != null, "schi->tenc atom is mandatory");
                    pairCreate = Pair.create(numValueOf, zzpbVar2);
                }
                if (pairCreate != null) {
                    zzopVar.zzbeo[i3] = (zzpb) pairCreate.second;
                    return ((Integer) pairCreate.first).intValue();
                }
            }
            position += i4;
        }
    }

    private static int zzc(zzst zzstVar) {
        int unsignedByte = zzstVar.readUnsignedByte();
        int i = unsignedByte & 127;
        while ((unsignedByte & 128) == 128) {
            unsignedByte = zzstVar.readUnsignedByte();
            i = (i << 7) | (unsignedByte & 127);
        }
        return i;
    }
}
