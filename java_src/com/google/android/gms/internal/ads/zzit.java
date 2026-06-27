package com.google.android.gms.internal.ads;

import android.util.Pair;
import com.google.android.exoplayer2.util.MimeTypes;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
final class zzit {
    public static zzix zza(zzir zzirVar, zzis zzisVar) {
        boolean z;
        boolean z2;
        long jZzge;
        int i;
        int i2;
        int i3;
        int i4;
        zzir zzirVarZzw = zzirVar.zzw(zziq.zzakr);
        zzkm zzkmVar = zzirVarZzw.zzv(zziq.zzala).zzamc;
        zzkmVar.setPosition(16);
        int i5 = zzkmVar.readInt();
        if (i5 != 1936684398 && i5 != 1986618469 && i5 != 1952807028 && i5 != 1953325924) {
            return null;
        }
        zzkm zzkmVar2 = zzirVar.zzv(zziq.zzaky).zzamc;
        zzkmVar2.setPosition(8);
        int iZzt = zziq.zzt(zzkmVar2.readInt());
        zzkmVar2.zzac(iZzt == 0 ? 8 : 16);
        int i6 = zzkmVar2.readInt();
        zzkmVar2.zzac(4);
        int position = zzkmVar2.getPosition();
        int i7 = iZzt == 0 ? 4 : 8;
        int i8 = 0;
        while (true) {
            z = true;
            if (i8 >= i7) {
                z2 = true;
                break;
            }
            if (zzkmVar2.data[position + i8] != -1) {
                z2 = false;
                break;
            }
            i8++;
        }
        if (z2) {
            zzkmVar2.zzac(i7);
            jZzge = -1;
        } else {
            jZzge = iZzt == 0 ? zzkmVar2.zzge() : zzkmVar2.zzgh();
        }
        Pair pairCreate = Pair.create(Integer.valueOf(i6), Long.valueOf(jZzge));
        int iIntValue = ((Integer) pairCreate.first).intValue();
        long jLongValue = ((Long) pairCreate.second).longValue();
        zzkm zzkmVar3 = zzisVar.zzamc;
        zzkmVar3.setPosition(8);
        zzkmVar3.zzac(zziq.zzt(zzkmVar3.readInt()) == 0 ? 8 : 16);
        long jZza = jLongValue == -1 ? -1L : zzkq.zza(jLongValue, 1000000L, zzkmVar3.zzge());
        zzir zzirVarZzw2 = zzirVarZzw.zzw(zziq.zzaks).zzw(zziq.zzakt);
        zzkm zzkmVar4 = zzirVarZzw.zzv(zziq.zzakz).zzamc;
        zzkmVar4.setPosition(8);
        zzkmVar4.zzac(zziq.zzt(zzkmVar4.readInt()) != 0 ? 16 : 8);
        long jZzge2 = zzkmVar4.zzge();
        zzkm zzkmVar5 = zzirVarZzw2.zzv(zziq.zzalb).zzamc;
        zzkmVar5.setPosition(12);
        int i9 = zzkmVar5.readInt();
        zziu zziuVar = new zziu(i9);
        int i10 = 0;
        while (i10 < i9) {
            int position2 = zzkmVar5.getPosition();
            int i11 = zzkmVar5.readInt();
            zzkh.checkArgument(i11 > 0, "childAtomSize should be positive");
            int i12 = zzkmVar5.readInt();
            if (i12 == zziq.zzaka || i12 == zziq.zzakb || i12 == zziq.zzalh) {
                i = i9;
                i2 = iIntValue;
                i3 = i5;
                i4 = i11;
                zzkmVar5.setPosition(position2 + 8);
                zzkmVar5.zzac(24);
                int unsignedShort = zzkmVar5.readUnsignedShort();
                int unsignedShort2 = zzkmVar5.readUnsignedShort();
                zzkmVar5.zzac(50);
                int position3 = zzkmVar5.getPosition();
                float fZzgg = 1.0f;
                List list = null;
                while (position3 - position2 < i4) {
                    zzkmVar5.setPosition(position3);
                    int position4 = zzkmVar5.getPosition();
                    int i13 = zzkmVar5.readInt();
                    if (i13 == 0 && zzkmVar5.getPosition() - position2 == i4) {
                        break;
                    }
                    zzkh.checkArgument(i13 > 0, "childAtomSize should be positive");
                    int i14 = zzkmVar5.readInt();
                    if (i14 == zziq.zzaku) {
                        zzkmVar5.setPosition(position4 + 8 + 4);
                        int unsignedByte = (zzkmVar5.readUnsignedByte() & 3) + 1;
                        if (unsignedByte == 3) {
                            throw new IllegalStateException();
                        }
                        ArrayList arrayList = new ArrayList();
                        int unsignedByte2 = zzkmVar5.readUnsignedByte() & 31;
                        for (int i15 = 0; i15 < unsignedByte2; i15++) {
                            arrayList.add(zzkj.zzc(zzkmVar5));
                        }
                        int unsignedByte3 = zzkmVar5.readUnsignedByte();
                        for (int i16 = 0; i16 < unsignedByte3; i16++) {
                            arrayList.add(zzkj.zzc(zzkmVar5));
                        }
                        Pair pairCreate2 = Pair.create(arrayList, Integer.valueOf(unsignedByte));
                        List list2 = (List) pairCreate2.first;
                        zziuVar.zzamf = ((Integer) pairCreate2.second).intValue();
                        list = list2;
                    } else if (i14 == zziq.zzald) {
                        zziuVar.zzamd[i10] = zza(zzkmVar5, position4, i13);
                    } else if (i14 == zziq.zzaln) {
                        zzkmVar5.setPosition(position4 + 8);
                        fZzgg = zzkmVar5.zzgg() / zzkmVar5.zzgg();
                    }
                    position3 += i13;
                }
                z = true;
                zziuVar.zzame = zzhj.zza("video/avc", -1, jZza, unsignedShort, unsignedShort2, fZzgg, list);
            } else {
                if (i12 == zziq.zzake || i12 == zziq.zzali || i12 == zziq.zzakf) {
                    i = i9;
                    i4 = i11;
                    zzkmVar5.setPosition(position2 + 8);
                    zzkmVar5.zzac(16);
                    int unsignedShort3 = zzkmVar5.readUnsignedShort();
                    int unsignedShort4 = zzkmVar5.readUnsignedShort();
                    zzkmVar5.zzac(4);
                    int iZzgf = zzkmVar5.zzgf();
                    int position5 = zzkmVar5.getPosition();
                    int iIntValue2 = unsignedShort3;
                    int iIntValue3 = iZzgf;
                    byte[] bArrZzc = null;
                    while (true) {
                        if (position5 - position2 < i4) {
                            zzkmVar5.setPosition(position5);
                            int position6 = zzkmVar5.getPosition();
                            int i17 = zzkmVar5.readInt();
                            i3 = i5;
                            zzkh.checkArgument(i17 > 0, "childAtomSize should be positive");
                            int i18 = zzkmVar5.readInt();
                            i2 = iIntValue;
                            if (i12 != zziq.zzake && i12 != zziq.zzali) {
                                if (i12 != zziq.zzakf || i18 != zziq.zzakg) {
                                    if (i12 == zziq.zzakh && i18 == zziq.zzaki) {
                                        zzkmVar5.setPosition(position6 + 8);
                                        zziuVar.zzame = zzkg.zzb(zzkmVar5);
                                        break;
                                    }
                                } else {
                                    zzkmVar5.setPosition(position6 + 8);
                                    zziuVar.zzame = zzkg.zza(zzkmVar5);
                                    break;
                                }
                            } else if (i18 == zziq.zzakc) {
                                bArrZzc = zzc(zzkmVar5, position6);
                                Pair<Integer, Integer> pairZzd = zzki.zzd(bArrZzc);
                                iIntValue3 = ((Integer) pairZzd.first).intValue();
                                iIntValue2 = ((Integer) pairZzd.second).intValue();
                            } else if (i18 == zziq.zzald) {
                                zziuVar.zzamd[i10] = zza(zzkmVar5, position6, i17);
                            }
                            position5 += i17;
                            i5 = i3;
                            iIntValue = i2;
                        } else {
                            i2 = iIntValue;
                            i3 = i5;
                            zziuVar.zzame = zzhj.zzb(i12 == zziq.zzakf ? MimeTypes.AUDIO_AC3 : i12 == zziq.zzakh ? MimeTypes.AUDIO_E_AC3 : MimeTypes.AUDIO_AAC, unsignedShort4, jZza, iIntValue2, iIntValue3, bArrZzc == null ? null : Collections.singletonList(bArrZzc));
                        }
                    }
                } else if (i12 == zziq.zzalo) {
                    zziuVar.zzame = zzhj.zzem();
                    i = i9;
                    i2 = iIntValue;
                    i3 = i5;
                    i4 = i11;
                } else if (i12 == zziq.zzalr) {
                    zzkmVar5.setPosition(position2 + 8);
                    zzkmVar5.zzac(24);
                    int unsignedShort5 = zzkmVar5.readUnsignedShort();
                    int unsignedShort6 = zzkmVar5.readUnsignedShort();
                    zzkmVar5.zzac(50);
                    ArrayList arrayList2 = new ArrayList(z ? 1 : 0);
                    int position7 = zzkmVar5.getPosition();
                    while (position7 - position2 < i11) {
                        zzkmVar5.setPosition(position7);
                        int position8 = zzkmVar5.getPosition();
                        int i19 = zzkmVar5.readInt();
                        if (i19 <= 0) {
                            z = false;
                        }
                        zzkh.checkArgument(z, "childAtomSize should be positive");
                        int i20 = i9;
                        if (zzkmVar5.readInt() == zziq.zzakc) {
                            arrayList2.add(zzc(zzkmVar5, position8));
                        }
                        position7 += i19;
                        i9 = i20;
                        z = true;
                    }
                    i = i9;
                    i4 = i11;
                    zziuVar.zzame = zzhj.zza(MimeTypes.VIDEO_MP4V, -1, jZza, unsignedShort5, unsignedShort6, arrayList2);
                    i2 = iIntValue;
                    i3 = i5;
                } else {
                    i = i9;
                    i4 = i11;
                    i2 = iIntValue;
                    i3 = i5;
                }
                z = true;
            }
            zzkmVar5.setPosition(position2 + i4);
            i10++;
            i9 = i;
            i5 = i3;
            iIntValue = i2;
        }
        return new zzix(iIntValue, i5, jZzge2, jZza, zziuVar.zzame, zziuVar.zzamd, zziuVar.zzamf);
    }

    private static zziy zza(zzkm zzkmVar, int i, int i2) {
        zziy zziyVar;
        int i3 = i + 8;
        zziy zziyVar2 = null;
        while (i3 - i < i2) {
            zzkmVar.setPosition(i3);
            int i4 = zzkmVar.readInt();
            int i5 = zzkmVar.readInt();
            if (i5 == zziq.zzalj) {
                zzkmVar.readInt();
            } else if (i5 == zziq.zzale) {
                zzkmVar.zzac(4);
                zzkmVar.readInt();
                zzkmVar.readInt();
            } else if (i5 == zziq.zzalf) {
                int i6 = i3 + 8;
                while (true) {
                    if (i6 - i3 >= i4) {
                        zziyVar = null;
                        break;
                    }
                    zzkmVar.setPosition(i6);
                    int i7 = zzkmVar.readInt();
                    if (zzkmVar.readInt() == zziq.zzalg) {
                        zzkmVar.zzac(4);
                        int i8 = zzkmVar.readInt();
                        boolean z = (i8 >> 8) == 1;
                        byte[] bArr = new byte[16];
                        zzkmVar.zzb(bArr, 0, 16);
                        zziyVar = new zziy(z, i8 & 255, bArr);
                    } else {
                        i6 += i7;
                    }
                }
                zziyVar2 = zziyVar;
            }
            i3 += i4;
        }
        return zziyVar2;
    }

    private static byte[] zzc(zzkm zzkmVar, int i) {
        zzkmVar.setPosition(i + 8 + 4);
        zzkmVar.zzac(1);
        int unsignedByte = zzkmVar.readUnsignedByte();
        while (unsignedByte > 127) {
            unsignedByte = zzkmVar.readUnsignedByte();
        }
        zzkmVar.zzac(2);
        int unsignedByte2 = zzkmVar.readUnsignedByte();
        if ((unsignedByte2 & 128) != 0) {
            zzkmVar.zzac(2);
        }
        if ((unsignedByte2 & 64) != 0) {
            zzkmVar.zzac(zzkmVar.readUnsignedShort());
        }
        if ((unsignedByte2 & 32) != 0) {
            zzkmVar.zzac(2);
        }
        zzkmVar.zzac(1);
        int unsignedByte3 = zzkmVar.readUnsignedByte();
        while (unsignedByte3 > 127) {
            unsignedByte3 = zzkmVar.readUnsignedByte();
        }
        zzkmVar.zzac(13);
        zzkmVar.zzac(1);
        int unsignedByte4 = zzkmVar.readUnsignedByte();
        int i2 = unsignedByte4 & 127;
        while (unsignedByte4 > 127) {
            unsignedByte4 = zzkmVar.readUnsignedByte();
            i2 = (i2 << 8) | (unsignedByte4 & 127);
        }
        byte[] bArr = new byte[i2];
        zzkmVar.zzb(bArr, 0, i2);
        return bArr;
    }
}
