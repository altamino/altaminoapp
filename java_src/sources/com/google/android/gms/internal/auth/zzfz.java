package com.google.android.gms.internal.auth;

import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.List;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes9.dex */
final class zzfz<T> implements zzgh<T> {
    private static final int[] zza = new int[0];
    private static final Unsafe zzb = zzhi.zzg();
    private final int[] zzc;
    private final Object[] zzd;
    private final int zze;
    private final int zzf;
    private final zzfw zzg;
    private final boolean zzh;
    private final int[] zzi;
    private final int zzj;
    private final int zzk;
    private final zzfk zzl;
    private final zzgy zzm;
    private final zzel zzn;
    private final zzgb zzo;
    private final zzfr zzp;

    private zzfz(int[] iArr, Object[] objArr, int i10, int i11, zzfw zzfwVar, boolean z6, boolean z10, int[] iArr2, int i12, int i13, zzgb zzgbVar, zzfk zzfkVar, zzgy zzgyVar, zzel zzelVar, zzfr zzfrVar, byte[] bArr) {
        this.zzc = iArr;
        this.zzd = objArr;
        this.zze = i10;
        this.zzf = i11;
        this.zzh = z6;
        this.zzi = iArr2;
        this.zzj = i12;
        this.zzk = i13;
        this.zzo = zzgbVar;
        this.zzl = zzfkVar;
        this.zzm = zzgyVar;
        this.zzn = zzelVar;
        this.zzg = zzfwVar;
        this.zzp = zzfrVar;
    }

    /* JADX WARN: Code duplicated, block: B:123:0x025f  */
    /* JADX WARN: Code duplicated, block: B:125:0x0265  */
    /* JADX WARN: Code duplicated, block: B:128:0x027b  */
    /* JADX WARN: Code duplicated, block: B:130:0x027f  */
    /* JADX WARN: Code duplicated, block: B:164:0x0334  */
    /* JADX WARN: Code duplicated, block: B:180:0x0384  */
    /* JADX WARN: Code duplicated, block: B:183:0x038e  */
    static zzfz zzk(zzgg zzggVar, zzgb zzgbVar, zzfk zzfkVar, zzgy zzgyVar, zzel zzelVar, zzfr zzfrVar) {
        int i10;
        int iCharAt;
        int iCharAt2;
        int iCharAt3;
        int[] iArr;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        char cCharAt;
        int i16;
        char cCharAt2;
        int i17;
        char cCharAt3;
        int i18;
        char cCharAt4;
        int i19;
        char cCharAt5;
        int i20;
        char cCharAt6;
        int i21;
        char cCharAt7;
        int i22;
        char cCharAt8;
        int i23;
        int i24;
        int i25;
        int[] iArr2;
        int i26;
        int i27;
        int i28;
        int iObjectFieldOffset;
        int iObjectFieldOffset2;
        Object[] objArr;
        int i29;
        int i30;
        Field fieldZzA;
        char cCharAt9;
        int i31;
        int i32;
        int i33;
        int i34;
        Object obj;
        Field fieldZzA2;
        int i35;
        Object obj2;
        Field fieldZzA3;
        int i36;
        char cCharAt10;
        int i37;
        char cCharAt11;
        int i38;
        char cCharAt12;
        int i39;
        char cCharAt13;
        boolean z6 = zzggVar.zzc() == 2;
        String strZzd = zzggVar.zzd();
        int length = strZzd.length();
        char c7 = 55296;
        if (strZzd.charAt(0) >= 55296) {
            int i40 = 1;
            while (true) {
                i10 = i40 + 1;
                if (strZzd.charAt(i40) < 55296) {
                    break;
                }
                i40 = i10;
            }
        } else {
            i10 = 1;
        }
        int i41 = i10 + 1;
        int iCharAt4 = strZzd.charAt(i10);
        if (iCharAt4 >= 55296) {
            int i42 = iCharAt4 & 8191;
            int i43 = 13;
            while (true) {
                i39 = i41 + 1;
                cCharAt13 = strZzd.charAt(i41);
                if (cCharAt13 < 55296) {
                    break;
                }
                i42 |= (cCharAt13 & 8191) << i43;
                i43 += 13;
                i41 = i39;
            }
            iCharAt4 = i42 | (cCharAt13 << i43);
            i41 = i39;
        }
        if (iCharAt4 == 0) {
            iCharAt = 0;
            i14 = 0;
            iCharAt2 = 0;
            i13 = 0;
            iCharAt3 = 0;
            i11 = 0;
            iArr = zza;
            i12 = 0;
        } else {
            int i44 = i41 + 1;
            int iCharAt5 = strZzd.charAt(i41);
            if (iCharAt5 >= 55296) {
                int i45 = iCharAt5 & 8191;
                int i46 = 13;
                while (true) {
                    i22 = i44 + 1;
                    cCharAt8 = strZzd.charAt(i44);
                    if (cCharAt8 < 55296) {
                        break;
                    }
                    i45 |= (cCharAt8 & 8191) << i46;
                    i46 += 13;
                    i44 = i22;
                }
                iCharAt5 = i45 | (cCharAt8 << i46);
                i44 = i22;
            }
            int i47 = i44 + 1;
            int iCharAt6 = strZzd.charAt(i44);
            if (iCharAt6 >= 55296) {
                int i48 = iCharAt6 & 8191;
                int i49 = 13;
                while (true) {
                    i21 = i47 + 1;
                    cCharAt7 = strZzd.charAt(i47);
                    if (cCharAt7 < 55296) {
                        break;
                    }
                    i48 |= (cCharAt7 & 8191) << i49;
                    i49 += 13;
                    i47 = i21;
                }
                iCharAt6 = i48 | (cCharAt7 << i49);
                i47 = i21;
            }
            int i50 = i47 + 1;
            iCharAt = strZzd.charAt(i47);
            if (iCharAt >= 55296) {
                int i51 = iCharAt & 8191;
                int i52 = 13;
                while (true) {
                    i20 = i50 + 1;
                    cCharAt6 = strZzd.charAt(i50);
                    if (cCharAt6 < 55296) {
                        break;
                    }
                    i51 |= (cCharAt6 & 8191) << i52;
                    i52 += 13;
                    i50 = i20;
                }
                iCharAt = i51 | (cCharAt6 << i52);
                i50 = i20;
            }
            int i53 = i50 + 1;
            int iCharAt7 = strZzd.charAt(i50);
            if (iCharAt7 >= 55296) {
                int i54 = iCharAt7 & 8191;
                int i55 = 13;
                while (true) {
                    i19 = i53 + 1;
                    cCharAt5 = strZzd.charAt(i53);
                    if (cCharAt5 < 55296) {
                        break;
                    }
                    i54 |= (cCharAt5 & 8191) << i55;
                    i55 += 13;
                    i53 = i19;
                }
                iCharAt7 = i54 | (cCharAt5 << i55);
                i53 = i19;
            }
            int i56 = i53 + 1;
            iCharAt2 = strZzd.charAt(i53);
            if (iCharAt2 >= 55296) {
                int i57 = iCharAt2 & 8191;
                int i58 = 13;
                while (true) {
                    i18 = i56 + 1;
                    cCharAt4 = strZzd.charAt(i56);
                    if (cCharAt4 < 55296) {
                        break;
                    }
                    i57 |= (cCharAt4 & 8191) << i58;
                    i58 += 13;
                    i56 = i18;
                }
                iCharAt2 = i57 | (cCharAt4 << i58);
                i56 = i18;
            }
            int i59 = i56 + 1;
            int iCharAt8 = strZzd.charAt(i56);
            if (iCharAt8 >= 55296) {
                int i60 = iCharAt8 & 8191;
                int i61 = 13;
                while (true) {
                    i17 = i59 + 1;
                    cCharAt3 = strZzd.charAt(i59);
                    if (cCharAt3 < 55296) {
                        break;
                    }
                    i60 |= (cCharAt3 & 8191) << i61;
                    i61 += 13;
                    i59 = i17;
                }
                iCharAt8 = i60 | (cCharAt3 << i61);
                i59 = i17;
            }
            int i62 = i59 + 1;
            int iCharAt9 = strZzd.charAt(i59);
            if (iCharAt9 >= 55296) {
                int i63 = iCharAt9 & 8191;
                int i64 = 13;
                while (true) {
                    i16 = i62 + 1;
                    cCharAt2 = strZzd.charAt(i62);
                    if (cCharAt2 < 55296) {
                        break;
                    }
                    i63 |= (cCharAt2 & 8191) << i64;
                    i64 += 13;
                    i62 = i16;
                }
                iCharAt9 = i63 | (cCharAt2 << i64);
                i62 = i16;
            }
            int i65 = i62 + 1;
            iCharAt3 = strZzd.charAt(i62);
            if (iCharAt3 >= 55296) {
                int i66 = iCharAt3 & 8191;
                int i67 = 13;
                while (true) {
                    i15 = i65 + 1;
                    cCharAt = strZzd.charAt(i65);
                    if (cCharAt < 55296) {
                        break;
                    }
                    i66 |= (cCharAt & 8191) << i67;
                    i67 += 13;
                    i65 = i15;
                }
                iCharAt3 = i66 | (cCharAt << i67);
                i65 = i15;
            }
            iArr = new int[iCharAt3 + iCharAt8 + iCharAt9];
            i11 = iCharAt5 + iCharAt5 + iCharAt6;
            i12 = iCharAt5;
            i41 = i65;
            int i68 = iCharAt8;
            i13 = iCharAt7;
            i14 = i68;
        }
        Unsafe unsafe = zzb;
        Object[] objArrZze = zzggVar.zze();
        Class<?> cls = zzggVar.zza().getClass();
        int[] iArr3 = new int[iCharAt2 * 3];
        Object[] objArr2 = new Object[iCharAt2 + iCharAt2];
        int i69 = iCharAt3 + i14;
        int i70 = iCharAt3;
        int i71 = i69;
        int i72 = 0;
        int i73 = 0;
        while (i41 < length) {
            int i74 = i41 + 1;
            int iCharAt10 = strZzd.charAt(i41);
            if (iCharAt10 >= c7) {
                int i75 = iCharAt10 & 8191;
                int i76 = i74;
                int i77 = 13;
                while (true) {
                    i38 = i76 + 1;
                    cCharAt12 = strZzd.charAt(i76);
                    if (cCharAt12 < c7) {
                        break;
                    }
                    i75 |= (cCharAt12 & 8191) << i77;
                    i77 += 13;
                    i76 = i38;
                }
                iCharAt10 = i75 | (cCharAt12 << i77);
                i23 = i38;
            } else {
                i23 = i74;
            }
            int i78 = i23 + 1;
            int iCharAt11 = strZzd.charAt(i23);
            if (iCharAt11 >= c7) {
                int i79 = iCharAt11 & 8191;
                int i80 = i78;
                int i81 = 13;
                while (true) {
                    i37 = i80 + 1;
                    cCharAt11 = strZzd.charAt(i80);
                    i24 = length;
                    if (cCharAt11 < 55296) {
                        break;
                    }
                    i79 |= (cCharAt11 & 8191) << i81;
                    i81 += 13;
                    i80 = i37;
                    length = i24;
                }
                iCharAt11 = i79 | (cCharAt11 << i81);
                i25 = i37;
            } else {
                i24 = length;
                i25 = i78;
            }
            int i82 = iCharAt11 & 255;
            int i83 = iCharAt3;
            if ((iCharAt11 & 1024) != 0) {
                iArr[i73] = i72;
                i73++;
            }
            if (i82 >= 51) {
                int i84 = i25 + 1;
                int iCharAt12 = strZzd.charAt(i25);
                if (iCharAt12 >= 55296) {
                    int i85 = iCharAt12 & 8191;
                    int i86 = i84;
                    int i87 = 13;
                    while (true) {
                        i36 = i86 + 1;
                        cCharAt10 = strZzd.charAt(i86);
                        i27 = i13;
                        if (cCharAt10 < 55296) {
                            break;
                        }
                        i85 |= (cCharAt10 & 8191) << i87;
                        i87 += 13;
                        i86 = i36;
                        i13 = i27;
                    }
                    iCharAt12 = i85 | (cCharAt10 << i87);
                    i32 = i36;
                } else {
                    i27 = i13;
                    i32 = i84;
                }
                int i88 = i82 - 51;
                int i89 = i32;
                if (i88 == 9 || i88 == 17) {
                    int i90 = i72 / 3;
                    i33 = i11 + 1;
                    objArr2[i90 + i90 + 1] = objArrZze[i11];
                } else {
                    if (i88 == 12 && !z6) {
                        int i91 = i72 / 3;
                        i33 = i11 + 1;
                        objArr2[i91 + i91 + 1] = objArrZze[i11];
                    }
                    i34 = iCharAt12 + iCharAt12;
                    obj = objArrZze[i34];
                    if (obj instanceof Field) {
                        fieldZzA2 = (Field) obj;
                    } else {
                        fieldZzA2 = zzA(cls, (String) obj);
                        objArrZze[i34] = fieldZzA2;
                    }
                    iArr2 = iArr3;
                    i26 = iCharAt;
                    int iObjectFieldOffset3 = (int) unsafe.objectFieldOffset(fieldZzA2);
                    i35 = i34 + 1;
                    obj2 = objArrZze[i35];
                    if (obj2 instanceof Field) {
                        fieldZzA3 = (Field) obj2;
                    } else {
                        fieldZzA3 = zzA(cls, (String) obj2);
                        objArrZze[i35] = fieldZzA3;
                    }
                    strZzd = strZzd;
                    objArr = objArr2;
                    i28 = i11;
                    i29 = i89;
                    iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldZzA3);
                    iObjectFieldOffset = iObjectFieldOffset3;
                    i30 = 0;
                }
                i11 = i33;
                i34 = iCharAt12 + iCharAt12;
                obj = objArrZze[i34];
                if (obj instanceof Field) {
                    fieldZzA2 = (Field) obj;
                } else {
                    fieldZzA2 = zzA(cls, (String) obj);
                    objArrZze[i34] = fieldZzA2;
                }
                iArr2 = iArr3;
                i26 = iCharAt;
                int iObjectFieldOffset4 = (int) unsafe.objectFieldOffset(fieldZzA2);
                i35 = i34 + 1;
                obj2 = objArrZze[i35];
                if (obj2 instanceof Field) {
                    fieldZzA3 = (Field) obj2;
                } else {
                    fieldZzA3 = zzA(cls, (String) obj2);
                    objArrZze[i35] = fieldZzA3;
                }
                strZzd = strZzd;
                objArr = objArr2;
                i28 = i11;
                i29 = i89;
                iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldZzA3);
                iObjectFieldOffset = iObjectFieldOffset4;
                i30 = 0;
            } else {
                iArr2 = iArr3;
                i26 = iCharAt;
                i27 = i13;
                int i92 = i11 + 1;
                Field fieldZzA4 = zzA(cls, (String) objArrZze[i11]);
                if (i82 == 9 || i82 == 17) {
                    int i93 = i72 / 3;
                    objArr2[i93 + i93 + 1] = fieldZzA4.getType();
                } else {
                    if (i82 == 27 || i82 == 49) {
                        int i94 = i72 / 3;
                        i31 = i11 + 2;
                        objArr2[i94 + i94 + 1] = objArrZze[i92];
                    } else if (i82 == 12 || i82 == 30 || i82 == 44) {
                        if (!z6) {
                            int i95 = i72 / 3;
                            i31 = i11 + 2;
                            objArr2[i95 + i95 + 1] = objArrZze[i92];
                        }
                    } else if (i82 == 50) {
                        int i96 = i70 + 1;
                        iArr[i70] = i72;
                        int i97 = i72 / 3;
                        int i98 = i97 + i97;
                        int i99 = i11 + 2;
                        objArr2[i98] = objArrZze[i92];
                        if ((iCharAt11 & 2048) != 0) {
                            i92 = i11 + 3;
                            objArr2[i98 + 1] = objArrZze[i99];
                            i70 = i96;
                        } else {
                            i70 = i96;
                            i28 = i99;
                        }
                        iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZzA4);
                        iObjectFieldOffset2 = 1048575;
                        objArr = objArr2;
                        if ((iCharAt11 & 4096) == 4096 || i82 > 17) {
                            i29 = i25;
                            i30 = 0;
                        } else {
                            int i100 = i25 + 1;
                            int iCharAt13 = strZzd.charAt(i25);
                            if (iCharAt13 >= 55296) {
                                int i101 = iCharAt13 & 8191;
                                int i102 = 13;
                                while (true) {
                                    i29 = i100 + 1;
                                    cCharAt9 = strZzd.charAt(i100);
                                    if (cCharAt9 < 55296) {
                                        break;
                                    }
                                    i101 |= (cCharAt9 & 8191) << i102;
                                    i102 += 13;
                                    i100 = i29;
                                }
                                iCharAt13 = i101 | (cCharAt9 << i102);
                            } else {
                                i29 = i100;
                            }
                            int i103 = i12 + i12 + (iCharAt13 / 32);
                            Object obj3 = objArrZze[i103];
                            if (obj3 instanceof Field) {
                                fieldZzA = (Field) obj3;
                            } else {
                                fieldZzA = zzA(cls, (String) obj3);
                                objArrZze[i103] = fieldZzA;
                            }
                            i30 = iCharAt13 % 32;
                            iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldZzA);
                        }
                        if (i82 >= 18 && i82 <= 49) {
                            iArr[i71] = iObjectFieldOffset;
                            i71++;
                        }
                    }
                    i28 = i31;
                    iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZzA4);
                    iObjectFieldOffset2 = 1048575;
                    objArr = objArr2;
                    if ((iCharAt11 & 4096) == 4096) {
                        i29 = i25;
                        i30 = 0;
                    } else {
                        i29 = i25;
                        i30 = 0;
                    }
                    if (i82 >= 18) {
                        iArr[i71] = iObjectFieldOffset;
                        i71++;
                    }
                }
                i28 = i92;
                iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZzA4);
                iObjectFieldOffset2 = 1048575;
                objArr = objArr2;
                if ((iCharAt11 & 4096) == 4096) {
                    i29 = i25;
                    i30 = 0;
                } else {
                    i29 = i25;
                    i30 = 0;
                }
                if (i82 >= 18) {
                    iArr[i71] = iObjectFieldOffset;
                    i71++;
                }
            }
            int i104 = i72 + 1;
            iArr2[i72] = iCharAt10;
            int i105 = i72 + 2;
            iArr2[i104] = ((iCharAt11 & 256) != 0 ? 268435456 : 0) | ((iCharAt11 & 512) != 0 ? 536870912 : 0) | (i82 << 20) | iObjectFieldOffset;
            i72 += 3;
            iArr2[i105] = (i30 << 20) | iObjectFieldOffset2;
            i11 = i28;
            iCharAt = i26;
            iCharAt3 = i83;
            i41 = i29;
            length = i24;
            objArr2 = objArr;
            strZzd = strZzd;
            iArr3 = iArr2;
            i13 = i27;
            c7 = 55296;
        }
        return new zzfz(iArr3, objArr2, iCharAt, i13, zzggVar.zza(), z6, false, iArr, iCharAt3, i69, zzgbVar, zzfkVar, zzgyVar, zzelVar, zzfrVar, null);
    }

    private final int zzn(Object obj, byte[] bArr, int i10, int i11, int i12, int i13, int i14, int i15, int i16, long j6, int i17, zzds zzdsVar) throws IOException {
        Unsafe unsafe = zzb;
        long j10 = this.zzc[i17 + 2] & 1048575;
        switch (i16) {
            case 51:
                if (i14 != 1) {
                    return i10;
                }
                unsafe.putObject(obj, j6, Double.valueOf(Double.longBitsToDouble(zzdt.zzn(bArr, i10))));
                unsafe.putInt(obj, j10, i13);
                return i10 + 8;
            case 52:
                if (i14 != 5) {
                    return i10;
                }
                unsafe.putObject(obj, j6, Float.valueOf(Float.intBitsToFloat(zzdt.zzb(bArr, i10))));
                unsafe.putInt(obj, j10, i13);
                return i10 + 4;
            case 53:
            case 54:
                if (i14 != 0) {
                    return i10;
                }
                int iZzm = zzdt.zzm(bArr, i10, zzdsVar);
                unsafe.putObject(obj, j6, Long.valueOf(zzdsVar.zzb));
                unsafe.putInt(obj, j10, i13);
                return iZzm;
            case 55:
            case 62:
                if (i14 != 0) {
                    return i10;
                }
                int iZzj = zzdt.zzj(bArr, i10, zzdsVar);
                unsafe.putObject(obj, j6, Integer.valueOf(zzdsVar.zza));
                unsafe.putInt(obj, j10, i13);
                return iZzj;
            case 56:
            case 65:
                if (i14 != 1) {
                    return i10;
                }
                unsafe.putObject(obj, j6, Long.valueOf(zzdt.zzn(bArr, i10)));
                unsafe.putInt(obj, j10, i13);
                return i10 + 8;
            case 57:
            case 64:
                if (i14 != 5) {
                    return i10;
                }
                unsafe.putObject(obj, j6, Integer.valueOf(zzdt.zzb(bArr, i10)));
                unsafe.putInt(obj, j10, i13);
                return i10 + 4;
            case 58:
                if (i14 != 0) {
                    return i10;
                }
                int iZzm2 = zzdt.zzm(bArr, i10, zzdsVar);
                unsafe.putObject(obj, j6, Boolean.valueOf(zzdsVar.zzb != 0));
                unsafe.putInt(obj, j10, i13);
                return iZzm2;
            case 59:
                if (i14 != 2) {
                    return i10;
                }
                int iZzj2 = zzdt.zzj(bArr, i10, zzdsVar);
                int i18 = zzdsVar.zza;
                if (i18 == 0) {
                    unsafe.putObject(obj, j6, "");
                } else {
                    if ((i15 & 536870912) != 0 && !zzhm.zzd(bArr, iZzj2, iZzj2 + i18)) {
                        throw zzfa.zzb();
                    }
                    unsafe.putObject(obj, j6, new String(bArr, iZzj2, i18, zzez.zzb));
                    iZzj2 += i18;
                }
                unsafe.putInt(obj, j10, i13);
                return iZzj2;
            case 60:
                if (i14 != 2) {
                    return i10;
                }
                int iZzd = zzdt.zzd(zzy(i17), bArr, i10, i11, zzdsVar);
                Object object = unsafe.getInt(obj, j10) == i13 ? unsafe.getObject(obj, j6) : null;
                if (object == null) {
                    unsafe.putObject(obj, j6, zzdsVar.zzc);
                } else {
                    unsafe.putObject(obj, j6, zzez.zzg(object, zzdsVar.zzc));
                }
                unsafe.putInt(obj, j10, i13);
                return iZzd;
            case 61:
                if (i14 != 2) {
                    return i10;
                }
                int iZza = zzdt.zza(bArr, i10, zzdsVar);
                unsafe.putObject(obj, j6, zzdsVar.zzc);
                unsafe.putInt(obj, j10, i13);
                return iZza;
            case 63:
                if (i14 != 0) {
                    return i10;
                }
                int iZzj3 = zzdt.zzj(bArr, i10, zzdsVar);
                int i19 = zzdsVar.zza;
                zzex zzexVarZzx = zzx(i17);
                if (zzexVarZzx == null || zzexVarZzx.zza()) {
                    unsafe.putObject(obj, j6, Integer.valueOf(i19));
                    unsafe.putInt(obj, j10, i13);
                } else {
                    zzc(obj).zzf(i12, Long.valueOf(i19));
                }
                return iZzj3;
            case 66:
                if (i14 != 0) {
                    return i10;
                }
                int iZzj4 = zzdt.zzj(bArr, i10, zzdsVar);
                unsafe.putObject(obj, j6, Integer.valueOf(zzei.zzb(zzdsVar.zza)));
                unsafe.putInt(obj, j10, i13);
                return iZzj4;
            case 67:
                if (i14 != 0) {
                    return i10;
                }
                int iZzm3 = zzdt.zzm(bArr, i10, zzdsVar);
                unsafe.putObject(obj, j6, Long.valueOf(zzei.zzc(zzdsVar.zzb)));
                unsafe.putInt(obj, j10, i13);
                return iZzm3;
            case 68:
                if (i14 != 3) {
                    return i10;
                }
                int iZzc = zzdt.zzc(zzy(i17), bArr, i10, i11, (i12 & (-8)) | 4, zzdsVar);
                Object object2 = unsafe.getInt(obj, j10) == i13 ? unsafe.getObject(obj, j6) : null;
                if (object2 == null) {
                    unsafe.putObject(obj, j6, zzdsVar.zzc);
                } else {
                    unsafe.putObject(obj, j6, zzez.zzg(object2, zzdsVar.zzc));
                }
                unsafe.putInt(obj, j10, i13);
                return iZzc;
            default:
                return i10;
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:25:0x0081. Please report as an issue. */
    private final int zzo(Object obj, byte[] bArr, int i10, int i11, zzds zzdsVar) throws IOException {
        int i12;
        int iZzk;
        int i13;
        int i14;
        int i15;
        Unsafe unsafe;
        int i16;
        int i17;
        int i18;
        int i19;
        int iZzm;
        int iZzd;
        int i20;
        int i21;
        int i22;
        zzfz<T> zzfzVar = this;
        Object obj2 = obj;
        byte[] bArr2 = bArr;
        int i23 = i11;
        zzdsVar = zzdsVar;
        Unsafe unsafe2 = zzb;
        int i24 = 1048575;
        int i25 = -1;
        int iZzi = i10;
        int i26 = -1;
        int i27 = 1048575;
        int i28 = 0;
        int i29 = 0;
        while (iZzi < i23) {
            int i30 = iZzi + 1;
            byte b7 = bArr2[iZzi];
            if (b7 < 0) {
                iZzk = zzdt.zzk(b7, bArr2, i30, zzdsVar);
                i12 = zzdsVar.zza;
            } else {
                i12 = b7;
                iZzk = i30;
            }
            int i31 = i12 >>> 3;
            int i32 = i12 & 7;
            int iZzr = i31 > i26 ? zzfzVar.zzr(i31, i28 / 3) : zzfzVar.zzq(i31);
            if (iZzr == i25) {
                i13 = iZzk;
                i14 = i31;
                i15 = i25;
                unsafe = unsafe2;
                i16 = 0;
            } else {
                int[] iArr = zzfzVar.zzc;
                int i33 = iArr[iZzr + 1];
                int iZzu = zzu(i33);
                long j6 = i33 & i24;
                if (iZzu <= 17) {
                    int i34 = iArr[iZzr + 2];
                    int i35 = 1 << (i34 >>> 20);
                    i17 = 1048575;
                    int i36 = i34 & 1048575;
                    if (i36 != i27) {
                        if (i27 != 1048575) {
                            unsafe2.putInt(obj2, i27, i29);
                        }
                        if (i36 != 1048575) {
                            i29 = unsafe2.getInt(obj2, i36);
                        }
                        i27 = i36;
                    }
                    switch (iZzu) {
                        case 0:
                            i18 = iZzr;
                            i19 = iZzk;
                            i14 = i31;
                            if (i32 != 1) {
                                i13 = i19;
                                unsafe = unsafe2;
                                i16 = i18;
                                i15 = -1;
                            } else {
                                zzhi.zzl(obj2, j6, Double.longBitsToDouble(zzdt.zzn(bArr2, i19)));
                                iZzi = i19 + 8;
                                i29 |= i35;
                                i28 = i18;
                                i26 = i14;
                                i24 = i17;
                                i25 = -1;
                            }
                            break;
                        case 1:
                            zzdsVar = zzdsVar;
                            i18 = iZzr;
                            i19 = iZzk;
                            i17 = 1048575;
                            i14 = i31;
                            if (i32 != 5) {
                                i13 = i19;
                                unsafe = unsafe2;
                                i16 = i18;
                                i15 = -1;
                            } else {
                                zzhi.zzm(obj2, j6, Float.intBitsToFloat(zzdt.zzb(bArr2, i19)));
                                iZzi = i19 + 4;
                                i29 |= i35;
                                i28 = i18;
                                i26 = i14;
                                i24 = i17;
                                i25 = -1;
                            }
                            break;
                        case 2:
                        case 3:
                            zzdsVar = zzdsVar;
                            i18 = iZzr;
                            i19 = iZzk;
                            i14 = i31;
                            if (i32 != 0) {
                                i13 = i19;
                                unsafe = unsafe2;
                                i16 = i18;
                                i15 = -1;
                            } else {
                                iZzm = zzdt.zzm(bArr2, i19, zzdsVar);
                                unsafe2.putLong(obj, j6, zzdsVar.zzb);
                                i29 |= i35;
                                iZzi = iZzm;
                                i28 = i18;
                                i26 = i14;
                                i24 = i17;
                                i25 = -1;
                            }
                            break;
                        case 4:
                        case 11:
                            zzdsVar = zzdsVar;
                            i18 = iZzr;
                            i19 = iZzk;
                            i17 = 1048575;
                            i14 = i31;
                            if (i32 != 0) {
                                i13 = i19;
                                unsafe = unsafe2;
                                i16 = i18;
                                i15 = -1;
                            } else {
                                iZzi = zzdt.zzj(bArr2, i19, zzdsVar);
                                unsafe2.putInt(obj2, j6, zzdsVar.zza);
                                i29 |= i35;
                                i28 = i18;
                                i26 = i14;
                                i24 = i17;
                                i25 = -1;
                            }
                            break;
                        case 5:
                        case 14:
                            i18 = iZzr;
                            i14 = i31;
                            if (i32 != 1) {
                                i19 = iZzk;
                                i13 = i19;
                                unsafe = unsafe2;
                                i16 = i18;
                                i15 = -1;
                            } else {
                                i19 = iZzk;
                                unsafe2.putLong(obj, j6, zzdt.zzn(bArr2, iZzk));
                                iZzi = i19 + 8;
                                i29 |= i35;
                                i28 = i18;
                                i26 = i14;
                                i24 = i17;
                                i25 = -1;
                            }
                            break;
                        case 6:
                        case 13:
                            zzdsVar = zzdsVar;
                            i18 = iZzr;
                            i17 = 1048575;
                            i14 = i31;
                            if (i32 != 5) {
                                i19 = iZzk;
                                i13 = i19;
                                unsafe = unsafe2;
                                i16 = i18;
                                i15 = -1;
                            } else {
                                unsafe2.putInt(obj2, j6, zzdt.zzb(bArr2, iZzk));
                                iZzi = iZzk + 4;
                                i29 |= i35;
                                i28 = i18;
                                i26 = i14;
                                i24 = i17;
                                i25 = -1;
                            }
                            break;
                        case 7:
                            zzdsVar = zzdsVar;
                            i18 = iZzr;
                            i17 = 1048575;
                            i14 = i31;
                            if (i32 != 0) {
                                i19 = iZzk;
                                i13 = i19;
                                unsafe = unsafe2;
                                i16 = i18;
                                i15 = -1;
                            } else {
                                iZzi = zzdt.zzm(bArr2, iZzk, zzdsVar);
                                zzhi.zzk(obj2, j6, zzdsVar.zzb != 0);
                                i29 |= i35;
                                i28 = i18;
                                i26 = i14;
                                i24 = i17;
                                i25 = -1;
                            }
                            break;
                        case 8:
                            zzdsVar = zzdsVar;
                            i18 = iZzr;
                            i17 = 1048575;
                            i14 = i31;
                            if (i32 != 2) {
                                i19 = iZzk;
                                i13 = i19;
                                unsafe = unsafe2;
                                i16 = i18;
                                i15 = -1;
                            } else {
                                iZzi = (536870912 & i33) == 0 ? zzdt.zzg(bArr2, iZzk, zzdsVar) : zzdt.zzh(bArr2, iZzk, zzdsVar);
                                unsafe2.putObject(obj2, j6, zzdsVar.zzc);
                                i29 |= i35;
                                i28 = i18;
                                i26 = i14;
                                i24 = i17;
                                i25 = -1;
                            }
                            break;
                        case 9:
                            zzdsVar = zzdsVar;
                            i18 = iZzr;
                            i17 = 1048575;
                            i14 = i31;
                            if (i32 != 2) {
                                i19 = iZzk;
                                i13 = i19;
                                unsafe = unsafe2;
                                i16 = i18;
                                i15 = -1;
                            } else {
                                iZzd = zzdt.zzd(zzfzVar.zzy(i18), bArr2, iZzk, i23, zzdsVar);
                                Object object = unsafe2.getObject(obj2, j6);
                                if (object == null) {
                                    unsafe2.putObject(obj2, j6, zzdsVar.zzc);
                                } else {
                                    unsafe2.putObject(obj2, j6, zzez.zzg(object, zzdsVar.zzc));
                                }
                                i29 |= i35;
                                iZzi = iZzd;
                                i28 = i18;
                                i26 = i14;
                                i24 = i17;
                                i25 = -1;
                            }
                            break;
                        case 10:
                            zzdsVar = zzdsVar;
                            i18 = iZzr;
                            i17 = 1048575;
                            i14 = i31;
                            if (i32 != 2) {
                                i19 = iZzk;
                                i13 = i19;
                                unsafe = unsafe2;
                                i16 = i18;
                                i15 = -1;
                            } else {
                                iZzd = zzdt.zza(bArr2, iZzk, zzdsVar);
                                unsafe2.putObject(obj2, j6, zzdsVar.zzc);
                                i29 |= i35;
                                iZzi = iZzd;
                                i28 = i18;
                                i26 = i14;
                                i24 = i17;
                                i25 = -1;
                            }
                            break;
                        case 12:
                            zzdsVar = zzdsVar;
                            i18 = iZzr;
                            i17 = 1048575;
                            i14 = i31;
                            if (i32 != 0) {
                                i19 = iZzk;
                                i13 = i19;
                                unsafe = unsafe2;
                                i16 = i18;
                                i15 = -1;
                            } else {
                                iZzd = zzdt.zzj(bArr2, iZzk, zzdsVar);
                                unsafe2.putInt(obj2, j6, zzdsVar.zza);
                                i29 |= i35;
                                iZzi = iZzd;
                                i28 = i18;
                                i26 = i14;
                                i24 = i17;
                                i25 = -1;
                            }
                            break;
                        case 15:
                            zzdsVar = zzdsVar;
                            i18 = iZzr;
                            i17 = 1048575;
                            i14 = i31;
                            if (i32 != 0) {
                                i19 = iZzk;
                                i13 = i19;
                                unsafe = unsafe2;
                                i16 = i18;
                                i15 = -1;
                            } else {
                                iZzd = zzdt.zzj(bArr2, iZzk, zzdsVar);
                                unsafe2.putInt(obj2, j6, zzei.zzb(zzdsVar.zza));
                                i29 |= i35;
                                iZzi = iZzd;
                                i28 = i18;
                                i26 = i14;
                                i24 = i17;
                                i25 = -1;
                            }
                            break;
                        case 16:
                            if (i32 != 0) {
                                i14 = i31;
                                i18 = iZzr;
                                i19 = iZzk;
                                i13 = i19;
                                unsafe = unsafe2;
                                i16 = i18;
                                i15 = -1;
                            } else {
                                zzdsVar = zzdsVar;
                                iZzm = zzdt.zzm(bArr2, iZzk, zzdsVar);
                                i18 = iZzr;
                                i14 = i31;
                                unsafe2.putLong(obj, j6, zzei.zzc(zzdsVar.zzb));
                                i29 |= i35;
                                iZzi = iZzm;
                                i28 = i18;
                                i26 = i14;
                                i24 = i17;
                                i25 = -1;
                            }
                            break;
                        default:
                            i14 = i31;
                            i18 = iZzr;
                            i19 = iZzk;
                            i13 = i19;
                            unsafe = unsafe2;
                            i16 = i18;
                            i15 = -1;
                            break;
                    }
                } else {
                    zzdsVar = zzdsVar;
                    i18 = iZzr;
                    int i37 = iZzk;
                    i17 = 1048575;
                    i14 = i31;
                    if (iZzu == 27) {
                        if (i32 == 2) {
                            zzey zzeyVarZzd = (zzey) unsafe2.getObject(obj2, j6);
                            if (!zzeyVarZzd.zzc()) {
                                int size = zzeyVarZzd.size();
                                zzeyVarZzd = zzeyVarZzd.zzd(size == 0 ? 10 : size + size);
                                unsafe2.putObject(obj2, j6, zzeyVarZzd);
                            }
                            iZzi = zzdt.zze(zzfzVar.zzy(i18), i12, bArr, i37, i11, zzeyVarZzd, zzdsVar);
                            i29 = i29;
                            i28 = i18;
                            i26 = i14;
                            i24 = i17;
                            i25 = -1;
                        } else {
                            i20 = i37;
                            i21 = i29;
                            i22 = i27;
                            unsafe = unsafe2;
                            i16 = i18;
                            i15 = -1;
                        }
                    } else if (iZzu <= 49) {
                        i21 = i29;
                        i22 = i27;
                        i15 = -1;
                        unsafe = unsafe2;
                        i16 = i18;
                        iZzi = zzp(obj, bArr, i37, i11, i12, i14, i32, i18, i33, iZzu, j6, zzdsVar);
                        if (iZzi != i37) {
                            obj2 = obj;
                            bArr2 = bArr;
                            i23 = i11;
                            zzdsVar = zzdsVar;
                            i27 = i22;
                            i25 = i15;
                            i26 = i14;
                            i29 = i21;
                            i28 = i16;
                            unsafe2 = unsafe;
                            i24 = 1048575;
                            zzfzVar = this;
                        } else {
                            i13 = iZzi;
                            i27 = i22;
                            i29 = i21;
                        }
                    } else {
                        i20 = i37;
                        i21 = i29;
                        i22 = i27;
                        unsafe = unsafe2;
                        i16 = i18;
                        i15 = -1;
                        if (iZzu != 50) {
                            iZzi = zzn(obj, bArr, i20, i11, i12, i14, i32, i33, iZzu, j6, i16, zzdsVar);
                            if (iZzi != i20) {
                                obj2 = obj;
                                bArr2 = bArr;
                                i23 = i11;
                                zzdsVar = zzdsVar;
                                i27 = i22;
                                i25 = i15;
                                i26 = i14;
                                i29 = i21;
                                i28 = i16;
                                unsafe2 = unsafe;
                                i24 = 1048575;
                                zzfzVar = this;
                            } else {
                                i13 = iZzi;
                                i27 = i22;
                                i29 = i21;
                            }
                        } else if (i32 == 2) {
                            iZzi = zzm(obj, bArr, i20, i11, i16, j6, zzdsVar);
                            if (iZzi != i20) {
                                obj2 = obj;
                                bArr2 = bArr;
                                i23 = i11;
                                zzdsVar = zzdsVar;
                                i27 = i22;
                                i25 = i15;
                                i26 = i14;
                                i29 = i21;
                                i28 = i16;
                                unsafe2 = unsafe;
                                i24 = 1048575;
                                zzfzVar = this;
                            } else {
                                i13 = iZzi;
                                i27 = i22;
                                i29 = i21;
                            }
                        }
                    }
                    i13 = i20;
                    i27 = i22;
                    i29 = i21;
                }
            }
            iZzi = zzdt.zzi(i12, bArr, i13, i11, zzc(obj), zzdsVar);
            zzfzVar = this;
            obj2 = obj;
            bArr2 = bArr;
            i23 = i11;
            zzdsVar = zzdsVar;
            i25 = i15;
            i26 = i14;
            i28 = i16;
            unsafe2 = unsafe;
            i24 = 1048575;
        }
        int i38 = i29;
        int i39 = i27;
        Unsafe unsafe3 = unsafe2;
        if (i39 != i24) {
            unsafe3.putInt(obj, i39, i38);
        }
        if (iZzi == i11) {
            return iZzi;
        }
        throw zzfa.zzd();
    }

    private final int zzp(Object obj, byte[] bArr, int i10, int i11, int i12, int i13, int i14, int i15, long j6, int i16, long j10, zzds zzdsVar) throws IOException {
        int i17;
        int i18;
        int i19;
        int i20;
        int iZzj;
        int iZzj2 = i10;
        Unsafe unsafe = zzb;
        zzey zzeyVarZzd = (zzey) unsafe.getObject(obj, j10);
        if (!zzeyVarZzd.zzc()) {
            int size = zzeyVarZzd.size();
            zzeyVarZzd = zzeyVarZzd.zzd(size == 0 ? 10 : size + size);
            unsafe.putObject(obj, j10, zzeyVarZzd);
        }
        switch (i16) {
            case 18:
            case 35:
                if (i14 == 2) {
                    zzej zzejVar = (zzej) zzeyVarZzd;
                    int iZzj3 = zzdt.zzj(bArr, iZzj2, zzdsVar);
                    int i21 = zzdsVar.zza + iZzj3;
                    while (iZzj3 < i21) {
                        zzejVar.zze(Double.longBitsToDouble(zzdt.zzn(bArr, iZzj3)));
                        iZzj3 += 8;
                    }
                    if (iZzj3 == i21) {
                        return iZzj3;
                    }
                    throw zzfa.zzf();
                }
                if (i14 == 1) {
                    zzej zzejVar2 = (zzej) zzeyVarZzd;
                    zzejVar2.zze(Double.longBitsToDouble(zzdt.zzn(bArr, i10)));
                    while (true) {
                        i17 = iZzj2 + 8;
                        if (i17 < i11) {
                            iZzj2 = zzdt.zzj(bArr, i17, zzdsVar);
                            if (i12 == zzdsVar.zza) {
                                zzejVar2.zze(Double.longBitsToDouble(zzdt.zzn(bArr, iZzj2)));
                            }
                        }
                    }
                    return i17;
                }
                return iZzj2;
            case 19:
            case 36:
                if (i14 == 2) {
                    zzeq zzeqVar = (zzeq) zzeyVarZzd;
                    int iZzj4 = zzdt.zzj(bArr, iZzj2, zzdsVar);
                    int i22 = zzdsVar.zza + iZzj4;
                    while (iZzj4 < i22) {
                        zzeqVar.zze(Float.intBitsToFloat(zzdt.zzb(bArr, iZzj4)));
                        iZzj4 += 4;
                    }
                    if (iZzj4 == i22) {
                        return iZzj4;
                    }
                    throw zzfa.zzf();
                }
                if (i14 == 5) {
                    zzeq zzeqVar2 = (zzeq) zzeyVarZzd;
                    zzeqVar2.zze(Float.intBitsToFloat(zzdt.zzb(bArr, i10)));
                    while (true) {
                        i18 = iZzj2 + 4;
                        if (i18 < i11) {
                            iZzj2 = zzdt.zzj(bArr, i18, zzdsVar);
                            if (i12 == zzdsVar.zza) {
                                zzeqVar2.zze(Float.intBitsToFloat(zzdt.zzb(bArr, iZzj2)));
                            }
                        }
                    }
                    return i18;
                }
                return iZzj2;
            case 20:
            case 21:
            case 37:
            case 38:
                if (i14 == 2) {
                    zzfl zzflVar = (zzfl) zzeyVarZzd;
                    int iZzj5 = zzdt.zzj(bArr, iZzj2, zzdsVar);
                    int i23 = zzdsVar.zza + iZzj5;
                    while (iZzj5 < i23) {
                        iZzj5 = zzdt.zzm(bArr, iZzj5, zzdsVar);
                        zzflVar.zze(zzdsVar.zzb);
                    }
                    if (iZzj5 == i23) {
                        return iZzj5;
                    }
                    throw zzfa.zzf();
                }
                if (i14 == 0) {
                    zzfl zzflVar2 = (zzfl) zzeyVarZzd;
                    int iZzm = zzdt.zzm(bArr, iZzj2, zzdsVar);
                    zzflVar2.zze(zzdsVar.zzb);
                    while (iZzm < i11) {
                        int iZzj6 = zzdt.zzj(bArr, iZzm, zzdsVar);
                        if (i12 != zzdsVar.zza) {
                            return iZzm;
                        }
                        iZzm = zzdt.zzm(bArr, iZzj6, zzdsVar);
                        zzflVar2.zze(zzdsVar.zzb);
                    }
                    return iZzm;
                }
                return iZzj2;
            case 22:
            case 29:
            case 39:
            case 43:
                if (i14 == 2) {
                    return zzdt.zzf(bArr, iZzj2, zzeyVarZzd, zzdsVar);
                }
                if (i14 == 0) {
                    return zzdt.zzl(i12, bArr, i10, i11, zzeyVarZzd, zzdsVar);
                }
                return iZzj2;
            case 23:
            case 32:
            case 40:
            case 46:
                if (i14 == 2) {
                    zzfl zzflVar3 = (zzfl) zzeyVarZzd;
                    int iZzj7 = zzdt.zzj(bArr, iZzj2, zzdsVar);
                    int i24 = zzdsVar.zza + iZzj7;
                    while (iZzj7 < i24) {
                        zzflVar3.zze(zzdt.zzn(bArr, iZzj7));
                        iZzj7 += 8;
                    }
                    if (iZzj7 == i24) {
                        return iZzj7;
                    }
                    throw zzfa.zzf();
                }
                if (i14 == 1) {
                    zzfl zzflVar4 = (zzfl) zzeyVarZzd;
                    zzflVar4.zze(zzdt.zzn(bArr, i10));
                    while (true) {
                        i19 = iZzj2 + 8;
                        if (i19 < i11) {
                            iZzj2 = zzdt.zzj(bArr, i19, zzdsVar);
                            if (i12 == zzdsVar.zza) {
                                zzflVar4.zze(zzdt.zzn(bArr, iZzj2));
                            }
                        }
                    }
                    return i19;
                }
                return iZzj2;
            case 24:
            case 31:
            case 41:
            case 45:
                if (i14 == 2) {
                    zzev zzevVar = (zzev) zzeyVarZzd;
                    int iZzj8 = zzdt.zzj(bArr, iZzj2, zzdsVar);
                    int i25 = zzdsVar.zza + iZzj8;
                    while (iZzj8 < i25) {
                        zzevVar.zze(zzdt.zzb(bArr, iZzj8));
                        iZzj8 += 4;
                    }
                    if (iZzj8 == i25) {
                        return iZzj8;
                    }
                    throw zzfa.zzf();
                }
                if (i14 == 5) {
                    zzev zzevVar2 = (zzev) zzeyVarZzd;
                    zzevVar2.zze(zzdt.zzb(bArr, i10));
                    while (true) {
                        i20 = iZzj2 + 4;
                        if (i20 < i11) {
                            iZzj2 = zzdt.zzj(bArr, i20, zzdsVar);
                            if (i12 == zzdsVar.zza) {
                                zzevVar2.zze(zzdt.zzb(bArr, iZzj2));
                            }
                        }
                    }
                    return i20;
                }
                return iZzj2;
            case 25:
            case 42:
                if (i14 == 2) {
                    zzdu zzduVar = (zzdu) zzeyVarZzd;
                    iZzj = zzdt.zzj(bArr, iZzj2, zzdsVar);
                    int i26 = zzdsVar.zza + iZzj;
                    while (iZzj < i26) {
                        iZzj = zzdt.zzm(bArr, iZzj, zzdsVar);
                        zzduVar.zze(zzdsVar.zzb != 0);
                    }
                    if (iZzj != i26) {
                        throw zzfa.zzf();
                    }
                    return iZzj;
                }
                if (i14 == 0) {
                    zzdu zzduVar2 = (zzdu) zzeyVarZzd;
                    int iZzm2 = zzdt.zzm(bArr, iZzj2, zzdsVar);
                    zzduVar2.zze(zzdsVar.zzb != 0);
                    while (iZzm2 < i11) {
                        int iZzj9 = zzdt.zzj(bArr, iZzm2, zzdsVar);
                        if (i12 != zzdsVar.zza) {
                            return iZzm2;
                        }
                        iZzm2 = zzdt.zzm(bArr, iZzj9, zzdsVar);
                        zzduVar2.zze(zzdsVar.zzb != 0);
                    }
                    return iZzm2;
                }
                return iZzj2;
            case 26:
                if (i14 == 2) {
                    if ((j6 & 536870912) == 0) {
                        int iZzj10 = zzdt.zzj(bArr, iZzj2, zzdsVar);
                        int i27 = zzdsVar.zza;
                        if (i27 < 0) {
                            throw zzfa.zzc();
                        }
                        if (i27 == 0) {
                            zzeyVarZzd.add("");
                        } else {
                            zzeyVarZzd.add(new String(bArr, iZzj10, i27, zzez.zzb));
                            iZzj10 += i27;
                        }
                        while (iZzj10 < i11) {
                            int iZzj11 = zzdt.zzj(bArr, iZzj10, zzdsVar);
                            if (i12 != zzdsVar.zza) {
                                return iZzj10;
                            }
                            iZzj10 = zzdt.zzj(bArr, iZzj11, zzdsVar);
                            int i28 = zzdsVar.zza;
                            if (i28 < 0) {
                                throw zzfa.zzc();
                            }
                            if (i28 == 0) {
                                zzeyVarZzd.add("");
                            } else {
                                zzeyVarZzd.add(new String(bArr, iZzj10, i28, zzez.zzb));
                                iZzj10 += i28;
                            }
                        }
                        return iZzj10;
                    }
                    int iZzj12 = zzdt.zzj(bArr, iZzj2, zzdsVar);
                    int i29 = zzdsVar.zza;
                    if (i29 < 0) {
                        throw zzfa.zzc();
                    }
                    if (i29 == 0) {
                        zzeyVarZzd.add("");
                    } else {
                        int i30 = iZzj12 + i29;
                        if (!zzhm.zzd(bArr, iZzj12, i30)) {
                            throw zzfa.zzb();
                        }
                        zzeyVarZzd.add(new String(bArr, iZzj12, i29, zzez.zzb));
                        iZzj12 = i30;
                    }
                    while (iZzj12 < i11) {
                        int iZzj13 = zzdt.zzj(bArr, iZzj12, zzdsVar);
                        if (i12 != zzdsVar.zza) {
                            return iZzj12;
                        }
                        iZzj12 = zzdt.zzj(bArr, iZzj13, zzdsVar);
                        int i31 = zzdsVar.zza;
                        if (i31 < 0) {
                            throw zzfa.zzc();
                        }
                        if (i31 == 0) {
                            zzeyVarZzd.add("");
                        } else {
                            int i32 = iZzj12 + i31;
                            if (!zzhm.zzd(bArr, iZzj12, i32)) {
                                throw zzfa.zzb();
                            }
                            zzeyVarZzd.add(new String(bArr, iZzj12, i31, zzez.zzb));
                            iZzj12 = i32;
                        }
                    }
                    return iZzj12;
                }
                return iZzj2;
            case 27:
                if (i14 == 2) {
                    return zzdt.zze(zzy(i15), i12, bArr, i10, i11, zzeyVarZzd, zzdsVar);
                }
                return iZzj2;
            case 28:
                if (i14 == 2) {
                    int iZzj14 = zzdt.zzj(bArr, iZzj2, zzdsVar);
                    int i33 = zzdsVar.zza;
                    if (i33 < 0) {
                        throw zzfa.zzc();
                    }
                    if (i33 > bArr.length - iZzj14) {
                        throw zzfa.zzf();
                    }
                    if (i33 == 0) {
                        zzeyVarZzd.add(zzee.zzb);
                    } else {
                        zzeyVarZzd.add(zzee.zzk(bArr, iZzj14, i33));
                        iZzj14 += i33;
                    }
                    while (iZzj14 < i11) {
                        int iZzj15 = zzdt.zzj(bArr, iZzj14, zzdsVar);
                        if (i12 != zzdsVar.zza) {
                            return iZzj14;
                        }
                        iZzj14 = zzdt.zzj(bArr, iZzj15, zzdsVar);
                        int i34 = zzdsVar.zza;
                        if (i34 < 0) {
                            throw zzfa.zzc();
                        }
                        if (i34 > bArr.length - iZzj14) {
                            throw zzfa.zzf();
                        }
                        if (i34 == 0) {
                            zzeyVarZzd.add(zzee.zzb);
                        } else {
                            zzeyVarZzd.add(zzee.zzk(bArr, iZzj14, i34));
                            iZzj14 += i34;
                        }
                    }
                    return iZzj14;
                }
                return iZzj2;
            case 30:
            case 44:
                if (i14 != 2) {
                    if (i14 == 0) {
                        iZzj = zzdt.zzl(i12, bArr, i10, i11, zzeyVarZzd, zzdsVar);
                    }
                    return iZzj2;
                }
                iZzj = zzdt.zzf(bArr, iZzj2, zzeyVarZzd, zzdsVar);
                zzeu zzeuVar = (zzeu) obj;
                zzgz zzgzVar = zzeuVar.zzc;
                if (zzgzVar == zzgz.zza()) {
                    zzgzVar = null;
                }
                Object objZzd = zzgj.zzd(i13, zzeyVarZzd, zzx(i15), zzgzVar, this.zzm);
                if (objZzd != null) {
                    zzeuVar.zzc = (zzgz) objZzd;
                    return iZzj;
                }
                return iZzj;
            case 33:
            case 47:
                if (i14 == 2) {
                    zzev zzevVar3 = (zzev) zzeyVarZzd;
                    int iZzj16 = zzdt.zzj(bArr, iZzj2, zzdsVar);
                    int i35 = zzdsVar.zza + iZzj16;
                    while (iZzj16 < i35) {
                        iZzj16 = zzdt.zzj(bArr, iZzj16, zzdsVar);
                        zzevVar3.zze(zzei.zzb(zzdsVar.zza));
                    }
                    if (iZzj16 == i35) {
                        return iZzj16;
                    }
                    throw zzfa.zzf();
                }
                if (i14 == 0) {
                    zzev zzevVar4 = (zzev) zzeyVarZzd;
                    int iZzj17 = zzdt.zzj(bArr, iZzj2, zzdsVar);
                    zzevVar4.zze(zzei.zzb(zzdsVar.zza));
                    while (iZzj17 < i11) {
                        int iZzj18 = zzdt.zzj(bArr, iZzj17, zzdsVar);
                        if (i12 != zzdsVar.zza) {
                            return iZzj17;
                        }
                        iZzj17 = zzdt.zzj(bArr, iZzj18, zzdsVar);
                        zzevVar4.zze(zzei.zzb(zzdsVar.zza));
                    }
                    return iZzj17;
                }
                return iZzj2;
            case 34:
            case 48:
                if (i14 == 2) {
                    zzfl zzflVar5 = (zzfl) zzeyVarZzd;
                    int iZzj19 = zzdt.zzj(bArr, iZzj2, zzdsVar);
                    int i36 = zzdsVar.zza + iZzj19;
                    while (iZzj19 < i36) {
                        iZzj19 = zzdt.zzm(bArr, iZzj19, zzdsVar);
                        zzflVar5.zze(zzei.zzc(zzdsVar.zzb));
                    }
                    if (iZzj19 == i36) {
                        return iZzj19;
                    }
                    throw zzfa.zzf();
                }
                if (i14 == 0) {
                    zzfl zzflVar6 = (zzfl) zzeyVarZzd;
                    int iZzm3 = zzdt.zzm(bArr, iZzj2, zzdsVar);
                    zzflVar6.zze(zzei.zzc(zzdsVar.zzb));
                    while (iZzm3 < i11) {
                        int iZzj20 = zzdt.zzj(bArr, iZzm3, zzdsVar);
                        if (i12 != zzdsVar.zza) {
                            return iZzm3;
                        }
                        iZzm3 = zzdt.zzm(bArr, iZzj20, zzdsVar);
                        zzflVar6.zze(zzei.zzc(zzdsVar.zzb));
                    }
                    return iZzm3;
                }
                return iZzj2;
            default:
                if (i14 == 3) {
                    zzgh zzghVarZzy = zzy(i15);
                    int i37 = (i12 & (-8)) | 4;
                    int iZzc = zzdt.zzc(zzghVarZzy, bArr, i10, i11, i37, zzdsVar);
                    zzeyVarZzd.add(zzdsVar.zzc);
                    while (iZzc < i11) {
                        int iZzj21 = zzdt.zzj(bArr, iZzc, zzdsVar);
                        if (i12 != zzdsVar.zza) {
                            return iZzc;
                        }
                        iZzc = zzdt.zzc(zzghVarZzy, bArr, iZzj21, i11, i37, zzdsVar);
                        zzeyVarZzd.add(zzdsVar.zzc);
                    }
                    return iZzc;
                }
                return iZzj2;
        }
    }

    private static int zzu(int i10) {
        return (i10 >>> 20) & 255;
    }

    /* JADX WARN: Code duplicated, block: B:123:0x03ba A[PHI: r0 r18 r28
      0x03ba: PHI (r0v24 int) = (r0v19 int), (r0v22 int), (r0v26 int) binds: [B:135:0x041d, B:131:0x03fa, B:122:0x03b8] A[DONT_GENERATE, DONT_INLINE]
      0x03ba: PHI (r18v5 int) = (r18v3 int), (r18v3 int), (r18v6 int) binds: [B:135:0x041d, B:131:0x03fa, B:122:0x03b8] A[DONT_GENERATE, DONT_INLINE]
      0x03ba: PHI (r28v7 sun.misc.Unsafe) = (r28v5 sun.misc.Unsafe), (r28v5 sun.misc.Unsafe), (r28v8 sun.misc.Unsafe) binds: [B:135:0x041d, B:131:0x03fa, B:122:0x03b8] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:125:0x03d4 A[PHI: r0 r18 r28
      0x03d4: PHI (r0v23 int) = (r0v19 int), (r0v22 int), (r0v26 int) binds: [B:135:0x041d, B:131:0x03fa, B:122:0x03b8] A[DONT_GENERATE, DONT_INLINE]
      0x03d4: PHI (r18v4 int) = (r18v3 int), (r18v3 int), (r18v6 int) binds: [B:135:0x041d, B:131:0x03fa, B:122:0x03b8] A[DONT_GENERATE, DONT_INLINE]
      0x03d4: PHI (r28v6 sun.misc.Unsafe) = (r28v5 sun.misc.Unsafe), (r28v5 sun.misc.Unsafe), (r28v8 sun.misc.Unsafe) binds: [B:135:0x041d, B:131:0x03fa, B:122:0x03b8] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Failed to find 'out' block for switch in B:25:0x008f. Please report as an issue. */
    final int zzb(Object obj, byte[] bArr, int i10, int i11, int i12, zzds zzdsVar) throws IOException {
        Unsafe unsafe;
        Object obj2;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        int iZzm;
        int i27;
        this = this;
        obj = obj;
        bArr = bArr;
        i11 = i11;
        i12 = i12;
        zzdsVar = zzdsVar;
        Unsafe unsafe2 = zzb;
        int iZzi = i10;
        int i28 = 0;
        int i29 = 0;
        int i30 = 0;
        int i31 = -1;
        int i32 = 1048575;
        while (true) {
            if (iZzi < i11) {
                int i33 = iZzi + 1;
                byte b7 = bArr[iZzi];
                if (b7 < 0) {
                    int iZzk = zzdt.zzk(b7, bArr, i33, zzdsVar);
                    i13 = zzdsVar.zza;
                    i33 = iZzk;
                } else {
                    i13 = b7;
                }
                int i34 = i13 >>> 3;
                int i35 = i13 & 7;
                int iZzr = i34 > i31 ? this.zzr(i34, i29 / 3) : this.zzq(i34);
                if (iZzr == -1) {
                    i14 = i34;
                    i15 = i13;
                    i16 = i30;
                    unsafe = unsafe2;
                    i12 = i12;
                    i17 = 0;
                    i18 = i33;
                } else {
                    int[] iArr = this.zzc;
                    int i36 = iArr[iZzr + 1];
                    int iZzu = zzu(i36);
                    int i37 = i33;
                    long j6 = i36 & 1048575;
                    int i38 = i13;
                    if (iZzu <= 17) {
                        int i39 = iArr[iZzr + 2];
                        int i40 = 1 << (i39 >>> 20);
                        int i41 = i39 & 1048575;
                        if (i41 != i32) {
                            if (i32 != 1048575) {
                                unsafe2.putInt(obj, i32, i30);
                            }
                            i19 = i41;
                            i21 = unsafe2.getInt(obj, i41);
                        } else {
                            i19 = i32;
                            i21 = i30;
                        }
                        switch (iZzu) {
                            case 0:
                                i24 = iZzr;
                                i23 = i37;
                                bArr = bArr;
                                i14 = i34;
                                if (i35 == 1) {
                                    zzhi.zzl(obj, j6, Double.longBitsToDouble(zzdt.zzn(bArr, i23)));
                                    iZzi = i23 + 8;
                                    i30 = i21 | i40;
                                    i29 = i24;
                                    i31 = i14;
                                    i28 = i38;
                                    i32 = i19;
                                    i11 = i11;
                                } else {
                                    i16 = i21;
                                    unsafe = unsafe2;
                                    i18 = i23;
                                    i17 = i24;
                                    i15 = i38;
                                    i32 = i19;
                                }
                                break;
                            case 1:
                                i24 = iZzr;
                                i23 = i37;
                                bArr = bArr;
                                i14 = i34;
                                if (i35 == 5) {
                                    zzhi.zzm(obj, j6, Float.intBitsToFloat(zzdt.zzb(bArr, i23)));
                                    iZzi = i23 + 4;
                                    i30 = i21 | i40;
                                    i29 = i24;
                                    i31 = i14;
                                    i28 = i38;
                                    i32 = i19;
                                    i11 = i11;
                                } else {
                                    i16 = i21;
                                    unsafe = unsafe2;
                                    i18 = i23;
                                    i17 = i24;
                                    i15 = i38;
                                    i32 = i19;
                                }
                                break;
                            case 2:
                            case 3:
                                i24 = iZzr;
                                i23 = i37;
                                bArr = bArr;
                                i14 = i34;
                                if (i35 == 0) {
                                    int iZzm2 = zzdt.zzm(bArr, i23, zzdsVar);
                                    unsafe2.putLong(obj, j6, zzdsVar.zzb);
                                    i30 = i21 | i40;
                                    iZzi = iZzm2;
                                    i29 = i24;
                                    i31 = i14;
                                    i28 = i38;
                                    i32 = i19;
                                    i11 = i11;
                                } else {
                                    i16 = i21;
                                    unsafe = unsafe2;
                                    i18 = i23;
                                    i17 = i24;
                                    i15 = i38;
                                    i32 = i19;
                                }
                                break;
                            case 4:
                            case 11:
                                i24 = iZzr;
                                i23 = i37;
                                bArr = bArr;
                                i14 = i34;
                                if (i35 == 0) {
                                    iZzi = zzdt.zzj(bArr, i23, zzdsVar);
                                    unsafe2.putInt(obj, j6, zzdsVar.zza);
                                    i30 = i21 | i40;
                                    i29 = i24;
                                    i31 = i14;
                                    i28 = i38;
                                    i32 = i19;
                                    i11 = i11;
                                } else {
                                    i16 = i21;
                                    unsafe = unsafe2;
                                    i18 = i23;
                                    i17 = i24;
                                    i15 = i38;
                                    i32 = i19;
                                }
                                break;
                            case 5:
                            case 14:
                                i23 = i37;
                                i25 = i38;
                                bArr = bArr;
                                i14 = i34;
                                i26 = iZzr;
                                if (i35 == 1) {
                                    i38 = i25;
                                    i24 = i26;
                                    unsafe2.putLong(obj, j6, zzdt.zzn(bArr, i23));
                                    iZzi = i23 + 8;
                                    i30 = i21 | i40;
                                    i29 = i24;
                                    i31 = i14;
                                    i28 = i38;
                                    i32 = i19;
                                    i11 = i11;
                                } else {
                                    i38 = i25;
                                    i24 = i26;
                                    i16 = i21;
                                    unsafe = unsafe2;
                                    i18 = i23;
                                    i17 = i24;
                                    i15 = i38;
                                    i32 = i19;
                                }
                                break;
                            case 6:
                            case 13:
                                i23 = i37;
                                i25 = i38;
                                bArr = bArr;
                                i14 = i34;
                                i26 = iZzr;
                                if (i35 == 5) {
                                    unsafe2.putInt(obj, j6, zzdt.zzb(bArr, i23));
                                    iZzm = i23 + 4;
                                    int i42 = i21 | i40;
                                    i12 = i12;
                                    i29 = i26;
                                    iZzi = iZzm;
                                    i28 = i25;
                                    i32 = i19;
                                    i11 = i11;
                                    i30 = i42;
                                    i31 = i14;
                                } else {
                                    i38 = i25;
                                    i24 = i26;
                                    i16 = i21;
                                    unsafe = unsafe2;
                                    i18 = i23;
                                    i17 = i24;
                                    i15 = i38;
                                    i32 = i19;
                                }
                                break;
                            case 7:
                                i23 = i37;
                                i25 = i38;
                                bArr = bArr;
                                i14 = i34;
                                i26 = iZzr;
                                if (i35 == 0) {
                                    iZzm = zzdt.zzm(bArr, i23, zzdsVar);
                                    zzhi.zzk(obj, j6, zzdsVar.zzb != 0);
                                    int i43 = i21 | i40;
                                    i12 = i12;
                                    i29 = i26;
                                    iZzi = iZzm;
                                    i28 = i25;
                                    i32 = i19;
                                    i11 = i11;
                                    i30 = i43;
                                    i31 = i14;
                                } else {
                                    i38 = i25;
                                    i24 = i26;
                                    i16 = i21;
                                    unsafe = unsafe2;
                                    i18 = i23;
                                    i17 = i24;
                                    i15 = i38;
                                    i32 = i19;
                                }
                                break;
                            case 8:
                                i23 = i37;
                                i25 = i38;
                                bArr = bArr;
                                i14 = i34;
                                i26 = iZzr;
                                if (i35 == 2) {
                                    iZzm = (536870912 & i36) == 0 ? zzdt.zzg(bArr, i23, zzdsVar) : zzdt.zzh(bArr, i23, zzdsVar);
                                    unsafe2.putObject(obj, j6, zzdsVar.zzc);
                                    int i44 = i21 | i40;
                                    i12 = i12;
                                    i29 = i26;
                                    iZzi = iZzm;
                                    i28 = i25;
                                    i32 = i19;
                                    i11 = i11;
                                    i30 = i44;
                                    i31 = i14;
                                } else {
                                    i38 = i25;
                                    i24 = i26;
                                    i16 = i21;
                                    unsafe = unsafe2;
                                    i18 = i23;
                                    i17 = i24;
                                    i15 = i38;
                                    i32 = i19;
                                }
                                break;
                            case 9:
                                i22 = iZzr;
                                i23 = i37;
                                i27 = i38;
                                bArr = bArr;
                                i14 = i34;
                                if (i35 == 2) {
                                    iZzi = zzdt.zzd(this.zzy(i22), bArr, i23, i11, zzdsVar);
                                    if ((i21 & i40) == 0) {
                                        unsafe2.putObject(obj, j6, zzdsVar.zzc);
                                    } else {
                                        unsafe2.putObject(obj, j6, zzez.zzg(unsafe2.getObject(obj, j6), zzdsVar.zzc));
                                    }
                                    int i45 = i21 | i40;
                                    i12 = i12;
                                    i29 = i22;
                                    i31 = i14;
                                    i32 = i19;
                                    i30 = i45;
                                    i28 = i27;
                                    i11 = i11;
                                } else {
                                    i38 = i27;
                                    i24 = i22;
                                    i16 = i21;
                                    unsafe = unsafe2;
                                    i18 = i23;
                                    i17 = i24;
                                    i15 = i38;
                                    i32 = i19;
                                }
                                break;
                            case 10:
                                i22 = iZzr;
                                i23 = i37;
                                i27 = i38;
                                bArr = bArr;
                                i14 = i34;
                                if (i35 == 2) {
                                    iZzi = zzdt.zza(bArr, i23, zzdsVar);
                                    unsafe2.putObject(obj, j6, zzdsVar.zzc);
                                    i30 = i21 | i40;
                                    i29 = i22;
                                    i28 = i27;
                                    i31 = i14;
                                    i32 = i19;
                                    i11 = i11;
                                } else {
                                    i38 = i27;
                                    i24 = i22;
                                    i16 = i21;
                                    unsafe = unsafe2;
                                    i18 = i23;
                                    i17 = i24;
                                    i15 = i38;
                                    i32 = i19;
                                }
                                break;
                            case 12:
                                i22 = iZzr;
                                i23 = i37;
                                i27 = i38;
                                bArr = bArr;
                                i14 = i34;
                                if (i35 == 0) {
                                    iZzi = zzdt.zzj(bArr, i23, zzdsVar);
                                    int i46 = zzdsVar.zza;
                                    zzex zzexVarZzx = this.zzx(i22);
                                    if (zzexVarZzx == null || zzexVarZzx.zza()) {
                                        unsafe2.putInt(obj, j6, i46);
                                        i30 = i21 | i40;
                                    } else {
                                        zzc(obj).zzf(i27, Long.valueOf(i46));
                                        i30 = i21;
                                    }
                                    i29 = i22;
                                    i28 = i27;
                                    i31 = i14;
                                    i32 = i19;
                                    i11 = i11;
                                } else {
                                    i38 = i27;
                                    i24 = i22;
                                    i16 = i21;
                                    unsafe = unsafe2;
                                    i18 = i23;
                                    i17 = i24;
                                    i15 = i38;
                                    i32 = i19;
                                }
                                break;
                            case 15:
                                i22 = iZzr;
                                i23 = i37;
                                i27 = i38;
                                bArr = bArr;
                                i14 = i34;
                                if (i35 == 0) {
                                    iZzi = zzdt.zzj(bArr, i23, zzdsVar);
                                    unsafe2.putInt(obj, j6, zzei.zzb(zzdsVar.zza));
                                    i30 = i21 | i40;
                                    i29 = i22;
                                    i28 = i27;
                                    i31 = i14;
                                    i32 = i19;
                                    i11 = i11;
                                } else {
                                    i38 = i27;
                                    i24 = i22;
                                    i16 = i21;
                                    unsafe = unsafe2;
                                    i18 = i23;
                                    i17 = i24;
                                    i15 = i38;
                                    i32 = i19;
                                }
                                break;
                            case 16:
                                i22 = iZzr;
                                i23 = i37;
                                i14 = i34;
                                if (i35 == 0) {
                                    bArr = bArr;
                                    int iZzm3 = zzdt.zzm(bArr, i23, zzdsVar);
                                    i27 = i38;
                                    unsafe2.putLong(obj, j6, zzei.zzc(zzdsVar.zzb));
                                    i30 = i21 | i40;
                                    i12 = i12;
                                    i29 = i22;
                                    iZzi = iZzm3;
                                    i28 = i27;
                                    i31 = i14;
                                    i32 = i19;
                                    i11 = i11;
                                } else {
                                    i38 = i38;
                                    i24 = i22;
                                    i16 = i21;
                                    unsafe = unsafe2;
                                    i18 = i23;
                                    i17 = i24;
                                    i15 = i38;
                                    i32 = i19;
                                }
                                break;
                            default:
                                if (i35 == 3) {
                                    iZzi = zzdt.zzc(this.zzy(iZzr), bArr, i37, i11, (i34 << 3) | 4, zzdsVar);
                                    if ((i21 & i40) == 0) {
                                        unsafe2.putObject(obj, j6, zzdsVar.zzc);
                                    } else {
                                        unsafe2.putObject(obj, j6, zzez.zzg(unsafe2.getObject(obj, j6), zzdsVar.zzc));
                                    }
                                    i30 = i21 | i40;
                                    bArr = bArr;
                                    i11 = i11;
                                    i12 = i12;
                                    i29 = iZzr;
                                    i28 = i38;
                                    i31 = i34;
                                    i32 = i19;
                                } else {
                                    i22 = iZzr;
                                    i23 = i37;
                                    i14 = i34;
                                    i24 = i22;
                                    i16 = i21;
                                    unsafe = unsafe2;
                                    i18 = i23;
                                    i17 = i24;
                                    i15 = i38;
                                    i32 = i19;
                                }
                                break;
                        }
                    } else {
                        i14 = i34;
                        bArr = bArr;
                        if (iZzu != 27) {
                            i16 = i30;
                            i19 = i32;
                            if (iZzu <= 49) {
                                unsafe = unsafe2;
                                i17 = iZzr;
                                iZzi = zzp(obj, bArr, i37, i11, i38, i14, i35, iZzr, i36, iZzu, j6, zzdsVar);
                                if (iZzi != i37) {
                                    i12 = i12;
                                    i31 = i14;
                                    i29 = i17;
                                    i28 = i38;
                                    i30 = i16;
                                    i32 = i19;
                                } else {
                                    i18 = iZzi;
                                    i15 = i38;
                                    i32 = i19;
                                }
                                unsafe2 = unsafe;
                            } else {
                                i20 = i37;
                                unsafe = unsafe2;
                                i17 = iZzr;
                                if (iZzu == 50) {
                                    if (i35 == 2) {
                                        iZzi = zzm(obj, bArr, i20, i11, i17, j6, zzdsVar);
                                        if (iZzi != i20) {
                                            i12 = i12;
                                            i31 = i14;
                                            i29 = i17;
                                            i28 = i38;
                                            i30 = i16;
                                            i32 = i19;
                                        } else {
                                            i18 = iZzi;
                                        }
                                        unsafe2 = unsafe;
                                    }
                                    i15 = i38;
                                    i32 = i19;
                                } else {
                                    iZzi = zzn(obj, bArr, i20, i11, i38, i14, i35, i36, iZzu, j6, i17, zzdsVar);
                                    if (iZzi != i20) {
                                        i12 = i12;
                                        i31 = i14;
                                        i29 = i17;
                                        i28 = i38;
                                        i30 = i16;
                                        i32 = i19;
                                    } else {
                                        i18 = iZzi;
                                        i15 = i38;
                                        i32 = i19;
                                    }
                                    unsafe2 = unsafe;
                                }
                            }
                        } else if (i35 == 2) {
                            zzey zzeyVarZzd = (zzey) unsafe2.getObject(obj, j6);
                            if (!zzeyVarZzd.zzc()) {
                                int size = zzeyVarZzd.size();
                                zzeyVarZzd = zzeyVarZzd.zzd(size == 0 ? 10 : size + size);
                                unsafe2.putObject(obj, j6, zzeyVarZzd);
                            }
                            i28 = i38;
                            i19 = i32;
                            iZzi = zzdt.zze(this.zzy(iZzr), i28, bArr, i37, i11, zzeyVarZzd, zzdsVar);
                            i12 = i12;
                            i29 = iZzr;
                            i31 = i14;
                            i30 = i30;
                            i32 = i19;
                            i11 = i11;
                        } else {
                            i16 = i30;
                            i19 = i32;
                            i20 = i37;
                            unsafe = unsafe2;
                            i17 = iZzr;
                        }
                        i18 = i20;
                        i15 = i38;
                        i32 = i19;
                    }
                }
                if (i15 != i12 || i12 == 0) {
                    iZzi = zzdt.zzi(i15, bArr, i18, i11, zzc(obj), zzdsVar);
                    i12 = i12;
                    i28 = i15;
                    i31 = i14;
                    i29 = i17;
                    i30 = i16;
                    unsafe2 = unsafe;
                } else {
                    iZzi = i18;
                    i28 = i15;
                    i30 = i16;
                }
            } else {
                unsafe = unsafe2;
                i12 = i12;
            }
        }
        if (i32 != 1048575) {
            long j10 = i32;
            obj2 = obj;
            unsafe.putInt(obj2, j10, i30);
        } else {
            obj2 = obj;
        }
        for (int i47 = this.zzj; i47 < this.zzk; i47++) {
            int i48 = this.zzi[i47];
            int i49 = this.zzc[i48];
            Object objZzf = zzhi.zzf(obj2, zzv(i48) & 1048575);
            if (objZzf != null && zzx(i48) != null) {
                throw null;
            }
        }
        if (i12 == 0) {
            if (iZzi != i11) {
                throw zzfa.zzd();
            }
        } else if (iZzi > i11 || i28 != i12) {
            throw zzfa.zzd();
        }
        return iZzi;
    }

    static zzgz zzc(Object obj) {
        zzeu zzeuVar = (zzeu) obj;
        zzgz zzgzVar = zzeuVar.zzc;
        if (zzgzVar != zzgz.zza()) {
            return zzgzVar;
        }
        zzgz zzgzVarZzc = zzgz.zzc();
        zzeuVar.zzc = zzgzVarZzc;
        return zzgzVarZzc;
    }

    static zzfz zzj(Class cls, zzft zzftVar, zzgb zzgbVar, zzfk zzfkVar, zzgy zzgyVar, zzel zzelVar, zzfr zzfrVar) {
        if (zzftVar instanceof zzgg) {
            return zzk((zzgg) zzftVar, zzgbVar, zzfkVar, zzgyVar, zzelVar, zzfrVar);
        }
        throw null;
    }

    private final int zzm(Object obj, byte[] bArr, int i10, int i11, int i12, long j6, zzds zzdsVar) throws IOException {
        Unsafe unsafe = zzb;
        Object objZzz = zzz(i12);
        Object object = unsafe.getObject(obj, j6);
        if (!((zzfq) object).zze()) {
            zzfq zzfqVarZzb = zzfq.zza().zzb();
            zzfr.zza(zzfqVarZzb, object);
            unsafe.putObject(obj, j6, zzfqVarZzb);
        }
        throw null;
    }

    private final int zzq(int i10) {
        if (i10 < this.zze || i10 > this.zzf) {
            return -1;
        }
        return zzt(i10, 0);
    }

    private final int zzr(int i10, int i11) {
        if (i10 < this.zze || i10 > this.zzf) {
            return -1;
        }
        return zzt(i10, i11);
    }

    private final int zzs(int i10) {
        return this.zzc[i10 + 2];
    }

    private final int zzt(int i10, int i11) {
        int length = (this.zzc.length / 3) - 1;
        while (i11 <= length) {
            int i12 = (length + i11) >>> 1;
            int i13 = i12 * 3;
            int i14 = this.zzc[i13];
            if (i10 == i14) {
                return i13;
            }
            if (i10 < i14) {
                length = i12 - 1;
            } else {
                i11 = i12 + 1;
            }
        }
        return -1;
    }

    private final int zzv(int i10) {
        return this.zzc[i10 + 1];
    }

    private final zzex zzx(int i10) {
        int i11 = i10 / 3;
        return (zzex) this.zzd[i11 + i11 + 1];
    }

    private final zzgh zzy(int i10) {
        int i11 = i10 / 3;
        int i12 = i11 + i11;
        zzgh zzghVar = (zzgh) this.zzd[i12];
        if (zzghVar != null) {
            return zzghVar;
        }
        zzgh zzghVarZzb = zzge.zza().zzb((Class) this.zzd[i12 + 1]);
        this.zzd[i12] = zzghVarZzb;
        return zzghVarZzb;
    }

    private final Object zzz(int i10) {
        int i11 = i10 / 3;
        return this.zzd[i11 + i11];
    }

    @Override // com.google.android.gms.internal.auth.zzgh
    public final int zza(Object obj) {
        int i10;
        int iZzc;
        int length = this.zzc.length;
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12 += 3) {
            int iZzv = zzv(i12);
            int i13 = this.zzc[i12];
            long j6 = 1048575 & iZzv;
            int iHashCode = 37;
            switch (zzu(iZzv)) {
                case 0:
                    i10 = i11 * 53;
                    iZzc = zzez.zzc(Double.doubleToLongBits(zzhi.zza(obj, j6)));
                    i11 = i10 + iZzc;
                    break;
                case 1:
                    i10 = i11 * 53;
                    iZzc = Float.floatToIntBits(zzhi.zzb(obj, j6));
                    i11 = i10 + iZzc;
                    break;
                case 2:
                    i10 = i11 * 53;
                    iZzc = zzez.zzc(zzhi.zzd(obj, j6));
                    i11 = i10 + iZzc;
                    break;
                case 3:
                    i10 = i11 * 53;
                    iZzc = zzez.zzc(zzhi.zzd(obj, j6));
                    i11 = i10 + iZzc;
                    break;
                case 4:
                    i10 = i11 * 53;
                    iZzc = zzhi.zzc(obj, j6);
                    i11 = i10 + iZzc;
                    break;
                case 5:
                    i10 = i11 * 53;
                    iZzc = zzez.zzc(zzhi.zzd(obj, j6));
                    i11 = i10 + iZzc;
                    break;
                case 6:
                    i10 = i11 * 53;
                    iZzc = zzhi.zzc(obj, j6);
                    i11 = i10 + iZzc;
                    break;
                case 7:
                    i10 = i11 * 53;
                    iZzc = zzez.zza(zzhi.zzt(obj, j6));
                    i11 = i10 + iZzc;
                    break;
                case 8:
                    i10 = i11 * 53;
                    iZzc = ((String) zzhi.zzf(obj, j6)).hashCode();
                    i11 = i10 + iZzc;
                    break;
                case 9:
                    Object objZzf = zzhi.zzf(obj, j6);
                    if (objZzf != null) {
                        iHashCode = objZzf.hashCode();
                    }
                    i11 = (i11 * 53) + iHashCode;
                    break;
                case 10:
                    i10 = i11 * 53;
                    iZzc = zzhi.zzf(obj, j6).hashCode();
                    i11 = i10 + iZzc;
                    break;
                case 11:
                    i10 = i11 * 53;
                    iZzc = zzhi.zzc(obj, j6);
                    i11 = i10 + iZzc;
                    break;
                case 12:
                    i10 = i11 * 53;
                    iZzc = zzhi.zzc(obj, j6);
                    i11 = i10 + iZzc;
                    break;
                case 13:
                    i10 = i11 * 53;
                    iZzc = zzhi.zzc(obj, j6);
                    i11 = i10 + iZzc;
                    break;
                case 14:
                    i10 = i11 * 53;
                    iZzc = zzez.zzc(zzhi.zzd(obj, j6));
                    i11 = i10 + iZzc;
                    break;
                case 15:
                    i10 = i11 * 53;
                    iZzc = zzhi.zzc(obj, j6);
                    i11 = i10 + iZzc;
                    break;
                case 16:
                    i10 = i11 * 53;
                    iZzc = zzez.zzc(zzhi.zzd(obj, j6));
                    i11 = i10 + iZzc;
                    break;
                case 17:
                    Object objZzf2 = zzhi.zzf(obj, j6);
                    if (objZzf2 != null) {
                        iHashCode = objZzf2.hashCode();
                    }
                    i11 = (i11 * 53) + iHashCode;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    i10 = i11 * 53;
                    iZzc = zzhi.zzf(obj, j6).hashCode();
                    i11 = i10 + iZzc;
                    break;
                case 50:
                    i10 = i11 * 53;
                    iZzc = zzhi.zzf(obj, j6).hashCode();
                    i11 = i10 + iZzc;
                    break;
                case 51:
                    if (zzJ(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iZzc = zzez.zzc(Double.doubleToLongBits(((Double) zzhi.zzf(obj, j6)).doubleValue()));
                        i11 = i10 + iZzc;
                    }
                    break;
                case 52:
                    if (zzJ(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iZzc = Float.floatToIntBits(((Float) zzhi.zzf(obj, j6)).floatValue());
                        i11 = i10 + iZzc;
                    }
                    break;
                case 53:
                    if (zzJ(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iZzc = zzez.zzc(zzw(obj, j6));
                        i11 = i10 + iZzc;
                    }
                    break;
                case 54:
                    if (zzJ(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iZzc = zzez.zzc(zzw(obj, j6));
                        i11 = i10 + iZzc;
                    }
                    break;
                case 55:
                    if (zzJ(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iZzc = zzl(obj, j6);
                        i11 = i10 + iZzc;
                    }
                    break;
                case 56:
                    if (zzJ(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iZzc = zzez.zzc(zzw(obj, j6));
                        i11 = i10 + iZzc;
                    }
                    break;
                case 57:
                    if (zzJ(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iZzc = zzl(obj, j6);
                        i11 = i10 + iZzc;
                    }
                    break;
                case 58:
                    if (zzJ(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iZzc = zzez.zza(((Boolean) zzhi.zzf(obj, j6)).booleanValue());
                        i11 = i10 + iZzc;
                    }
                    break;
                case 59:
                    if (zzJ(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iZzc = ((String) zzhi.zzf(obj, j6)).hashCode();
                        i11 = i10 + iZzc;
                    }
                    break;
                case 60:
                    if (zzJ(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iZzc = zzhi.zzf(obj, j6).hashCode();
                        i11 = i10 + iZzc;
                    }
                    break;
                case 61:
                    if (zzJ(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iZzc = zzhi.zzf(obj, j6).hashCode();
                        i11 = i10 + iZzc;
                    }
                    break;
                case 62:
                    if (zzJ(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iZzc = zzl(obj, j6);
                        i11 = i10 + iZzc;
                    }
                    break;
                case 63:
                    if (zzJ(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iZzc = zzl(obj, j6);
                        i11 = i10 + iZzc;
                    }
                    break;
                case 64:
                    if (zzJ(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iZzc = zzl(obj, j6);
                        i11 = i10 + iZzc;
                    }
                    break;
                case 65:
                    if (zzJ(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iZzc = zzez.zzc(zzw(obj, j6));
                        i11 = i10 + iZzc;
                    }
                    break;
                case 66:
                    if (zzJ(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iZzc = zzl(obj, j6);
                        i11 = i10 + iZzc;
                    }
                    break;
                case 67:
                    if (zzJ(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iZzc = zzez.zzc(zzw(obj, j6));
                        i11 = i10 + iZzc;
                    }
                    break;
                case 68:
                    if (zzJ(obj, i13, i12)) {
                        i10 = i11 * 53;
                        iZzc = zzhi.zzf(obj, j6).hashCode();
                        i11 = i10 + iZzc;
                    }
                    break;
            }
        }
        return (i11 * 53) + this.zzm.zza(obj).hashCode();
    }

    @Override // com.google.android.gms.internal.auth.zzgh
    public final Object zzd() {
        return ((zzeu) this.zzg).zzi(4, null, null);
    }

    @Override // com.google.android.gms.internal.auth.zzgh
    public final void zze(Object obj) {
        int i10;
        int i11 = this.zzj;
        while (true) {
            i10 = this.zzk;
            if (i11 >= i10) {
                break;
            }
            long jZzv = zzv(this.zzi[i11]) & 1048575;
            Object objZzf = zzhi.zzf(obj, jZzv);
            if (objZzf != null) {
                ((zzfq) objZzf).zzc();
                zzhi.zzp(obj, jZzv, objZzf);
            }
            i11++;
        }
        int length = this.zzi.length;
        while (i10 < length) {
            this.zzl.zza(obj, this.zzi[i10]);
            i10++;
        }
        this.zzm.zze(obj);
    }

    @Override // com.google.android.gms.internal.auth.zzgh
    public final void zzg(Object obj, byte[] bArr, int i10, int i11, zzds zzdsVar) throws IOException {
        if (this.zzh) {
            zzo(obj, bArr, i10, i11, zzdsVar);
        } else {
            zzb(obj, bArr, i10, i11, 0, zzdsVar);
        }
    }

    @Override // com.google.android.gms.internal.auth.zzgh
    public final boolean zzh(Object obj, Object obj2) {
        boolean zZzh;
        int length = this.zzc.length;
        for (int i10 = 0; i10 < length; i10 += 3) {
            int iZzv = zzv(i10);
            long j6 = iZzv & 1048575;
            switch (zzu(iZzv)) {
                case 0:
                    if (!zzF(obj, obj2, i10) || Double.doubleToLongBits(zzhi.zza(obj, j6)) != Double.doubleToLongBits(zzhi.zza(obj2, j6))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 1:
                    if (!zzF(obj, obj2, i10) || Float.floatToIntBits(zzhi.zzb(obj, j6)) != Float.floatToIntBits(zzhi.zzb(obj2, j6))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 2:
                    if (!zzF(obj, obj2, i10) || zzhi.zzd(obj, j6) != zzhi.zzd(obj2, j6)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 3:
                    if (!zzF(obj, obj2, i10) || zzhi.zzd(obj, j6) != zzhi.zzd(obj2, j6)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 4:
                    if (!zzF(obj, obj2, i10) || zzhi.zzc(obj, j6) != zzhi.zzc(obj2, j6)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 5:
                    if (!zzF(obj, obj2, i10) || zzhi.zzd(obj, j6) != zzhi.zzd(obj2, j6)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 6:
                    if (!zzF(obj, obj2, i10) || zzhi.zzc(obj, j6) != zzhi.zzc(obj2, j6)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 7:
                    if (!zzF(obj, obj2, i10) || zzhi.zzt(obj, j6) != zzhi.zzt(obj2, j6)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 8:
                    if (!zzF(obj, obj2, i10) || !zzgj.zzh(zzhi.zzf(obj, j6), zzhi.zzf(obj2, j6))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 9:
                    if (!zzF(obj, obj2, i10) || !zzgj.zzh(zzhi.zzf(obj, j6), zzhi.zzf(obj2, j6))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 10:
                    if (!zzF(obj, obj2, i10) || !zzgj.zzh(zzhi.zzf(obj, j6), zzhi.zzf(obj2, j6))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 11:
                    if (!zzF(obj, obj2, i10) || zzhi.zzc(obj, j6) != zzhi.zzc(obj2, j6)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 12:
                    if (!zzF(obj, obj2, i10) || zzhi.zzc(obj, j6) != zzhi.zzc(obj2, j6)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 13:
                    if (!zzF(obj, obj2, i10) || zzhi.zzc(obj, j6) != zzhi.zzc(obj2, j6)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 14:
                    if (!zzF(obj, obj2, i10) || zzhi.zzd(obj, j6) != zzhi.zzd(obj2, j6)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 15:
                    if (!zzF(obj, obj2, i10) || zzhi.zzc(obj, j6) != zzhi.zzc(obj2, j6)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 16:
                    if (!zzF(obj, obj2, i10) || zzhi.zzd(obj, j6) != zzhi.zzd(obj2, j6)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 17:
                    if (!zzF(obj, obj2, i10) || !zzgj.zzh(zzhi.zzf(obj, j6), zzhi.zzf(obj2, j6))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    zZzh = zzgj.zzh(zzhi.zzf(obj, j6), zzhi.zzf(obj2, j6));
                    break;
                case 50:
                    zZzh = zzgj.zzh(zzhi.zzf(obj, j6), zzhi.zzf(obj2, j6));
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                case 60:
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                case 68:
                    long jZzs = zzs(i10) & 1048575;
                    if (zzhi.zzc(obj, jZzs) != zzhi.zzc(obj2, jZzs) || !zzgj.zzh(zzhi.zzf(obj, j6), zzhi.zzf(obj2, j6))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                default:
                    continue;
                    break;
            }
            if (!zZzh) {
                return false;
            }
        }
        return this.zzm.zza(obj).equals(this.zzm.zza(obj2));
    }

    /* JADX WARN: Code duplicated, block: B:42:0x009b  */
    /* JADX WARN: Code duplicated, block: B:44:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:47:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:50:0x00c0 A[LOOP:1: B:45:0x00af->B:50:0x00c0, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:62:0x00bf A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:66:0x00dd A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.auth.zzgh
    public final boolean zzi(Object obj) {
        int i10;
        int i11;
        List list;
        zzgh zzghVarZzy;
        int i12;
        int i13 = 1048575;
        int i14 = 0;
        int i15 = 0;
        while (i15 < this.zzj) {
            int i16 = this.zzi[i15];
            int i17 = this.zzc[i16];
            int iZzv = zzv(i16);
            int i18 = this.zzc[i16 + 2];
            int i19 = i18 & 1048575;
            int i20 = 1 << (i18 >>> 20);
            if (i19 != i13) {
                if (i19 != 1048575) {
                    i14 = zzb.getInt(obj, i19);
                }
                i11 = i14;
                i10 = i19;
            } else {
                i10 = i13;
                i11 = i14;
            }
            if ((268435456 & iZzv) != 0 && !zzH(obj, i16, i10, i11, i20)) {
                return false;
            }
            int iZzu = zzu(iZzv);
            if (iZzu == 9 || iZzu == 17) {
                if (zzH(obj, i16, i10, i11, i20) && !zzI(obj, iZzv, zzy(i16))) {
                    return false;
                }
            } else if (iZzu == 27) {
                list = (List) zzhi.zzf(obj, iZzv & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    zzghVarZzy = zzy(i16);
                    for (i12 = 0; i12 < list.size(); i12++) {
                        if (!zzghVarZzy.zzi(list.get(i12))) {
                            return false;
                        }
                    }
                }
            } else if (iZzu == 60 || iZzu == 68) {
                if (zzJ(obj, i17, i16) && !zzI(obj, iZzv, zzy(i16))) {
                    return false;
                }
            } else if (iZzu == 49) {
                list = (List) zzhi.zzf(obj, iZzv & 1048575);
                if (list.isEmpty()) {
                    zzghVarZzy = zzy(i16);
                    while (i12 < list.size()) {
                        if (!zzghVarZzy.zzi(list.get(i12))) {
                            return false;
                        }
                    }
                } else {
                    continue;
                }
            } else if (iZzu == 50 && !((zzfq) zzhi.zzf(obj, iZzv & 1048575)).isEmpty()) {
                throw null;
            }
            i15++;
            i13 = i10;
            i14 = i11;
        }
        return true;
    }

    private static Field zzA(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            throw new RuntimeException("Field " + str + " for " + cls.getName() + " not found. Known fields are " + Arrays.toString(declaredFields));
        }
    }

    private final void zzB(Object obj, Object obj2, int i10) {
        long jZzv = zzv(i10) & 1048575;
        if (!zzG(obj2, i10)) {
            return;
        }
        Object objZzf = zzhi.zzf(obj, jZzv);
        Object objZzf2 = zzhi.zzf(obj2, jZzv);
        if (objZzf != null && objZzf2 != null) {
            zzhi.zzp(obj, jZzv, zzez.zzg(objZzf, objZzf2));
            zzD(obj, i10);
        } else if (objZzf2 != null) {
            zzhi.zzp(obj, jZzv, objZzf2);
            zzD(obj, i10);
        }
    }

    private final void zzC(Object obj, Object obj2, int i10) {
        Object objZzf;
        int iZzv = zzv(i10);
        int i11 = this.zzc[i10];
        long j6 = iZzv & 1048575;
        if (!zzJ(obj2, i11, i10)) {
            return;
        }
        if (zzJ(obj, i11, i10)) {
            objZzf = zzhi.zzf(obj, j6);
        } else {
            objZzf = null;
        }
        Object objZzf2 = zzhi.zzf(obj2, j6);
        if (objZzf != null && objZzf2 != null) {
            zzhi.zzp(obj, j6, zzez.zzg(objZzf, objZzf2));
            zzE(obj, i11, i10);
        } else if (objZzf2 != null) {
            zzhi.zzp(obj, j6, objZzf2);
            zzE(obj, i11, i10);
        }
    }

    private final void zzD(Object obj, int i10) {
        int iZzs = zzs(i10);
        long j6 = 1048575 & iZzs;
        if (j6 == 1048575) {
            return;
        }
        zzhi.zzn(obj, j6, (1 << (iZzs >>> 20)) | zzhi.zzc(obj, j6));
    }

    private final void zzE(Object obj, int i10, int i11) {
        zzhi.zzn(obj, zzs(i11) & 1048575, i10);
    }

    private final boolean zzF(Object obj, Object obj2, int i10) {
        if (zzG(obj, i10) == zzG(obj2, i10)) {
            return true;
        }
        return false;
    }

    private final boolean zzG(Object obj, int i10) {
        int iZzs = zzs(i10);
        long j6 = iZzs & 1048575;
        if (j6 == 1048575) {
            int iZzv = zzv(i10);
            long j10 = iZzv & 1048575;
            switch (zzu(iZzv)) {
                case 0:
                    if (Double.doubleToRawLongBits(zzhi.zza(obj, j10)) == 0) {
                        return false;
                    }
                    return true;
                case 1:
                    if (Float.floatToRawIntBits(zzhi.zzb(obj, j10)) == 0) {
                        return false;
                    }
                    return true;
                case 2:
                    if (zzhi.zzd(obj, j10) == 0) {
                        return false;
                    }
                    return true;
                case 3:
                    if (zzhi.zzd(obj, j10) == 0) {
                        return false;
                    }
                    return true;
                case 4:
                    if (zzhi.zzc(obj, j10) == 0) {
                        return false;
                    }
                    return true;
                case 5:
                    if (zzhi.zzd(obj, j10) == 0) {
                        return false;
                    }
                    return true;
                case 6:
                    if (zzhi.zzc(obj, j10) == 0) {
                        return false;
                    }
                    return true;
                case 7:
                    return zzhi.zzt(obj, j10);
                case 8:
                    Object objZzf = zzhi.zzf(obj, j10);
                    if (objZzf instanceof String) {
                        if (((String) objZzf).isEmpty()) {
                            return false;
                        }
                        return true;
                    }
                    if (objZzf instanceof zzee) {
                        if (zzee.zzb.equals(objZzf)) {
                            return false;
                        }
                        return true;
                    }
                    throw new IllegalArgumentException();
                case 9:
                    if (zzhi.zzf(obj, j10) == null) {
                        return false;
                    }
                    return true;
                case 10:
                    if (zzee.zzb.equals(zzhi.zzf(obj, j10))) {
                        return false;
                    }
                    return true;
                case 11:
                    if (zzhi.zzc(obj, j10) == 0) {
                        return false;
                    }
                    return true;
                case 12:
                    if (zzhi.zzc(obj, j10) == 0) {
                        return false;
                    }
                    return true;
                case 13:
                    if (zzhi.zzc(obj, j10) == 0) {
                        return false;
                    }
                    return true;
                case 14:
                    if (zzhi.zzd(obj, j10) == 0) {
                        return false;
                    }
                    return true;
                case 15:
                    if (zzhi.zzc(obj, j10) == 0) {
                        return false;
                    }
                    return true;
                case 16:
                    if (zzhi.zzd(obj, j10) == 0) {
                        return false;
                    }
                    return true;
                case 17:
                    if (zzhi.zzf(obj, j10) == null) {
                        return false;
                    }
                    return true;
                default:
                    throw new IllegalArgumentException();
            }
        }
        if ((zzhi.zzc(obj, j6) & (1 << (iZzs >>> 20))) == 0) {
            return false;
        }
        return true;
    }

    private final boolean zzH(Object obj, int i10, int i11, int i12, int i13) {
        if (i11 == 1048575) {
            return zzG(obj, i10);
        }
        if ((i12 & i13) != 0) {
            return true;
        }
        return false;
    }

    private static boolean zzI(Object obj, int i10, zzgh zzghVar) {
        return zzghVar.zzi(zzhi.zzf(obj, i10 & 1048575));
    }

    private final boolean zzJ(Object obj, int i10, int i11) {
        if (zzhi.zzc(obj, zzs(i11) & 1048575) == i10) {
            return true;
        }
        return false;
    }

    private static int zzl(Object obj, long j6) {
        return ((Integer) zzhi.zzf(obj, j6)).intValue();
    }

    private static long zzw(Object obj, long j6) {
        return ((Long) zzhi.zzf(obj, j6)).longValue();
    }

    @Override // com.google.android.gms.internal.auth.zzgh
    public final void zzf(Object obj, Object obj2) {
        obj2.getClass();
        for (int i10 = 0; i10 < this.zzc.length; i10 += 3) {
            int iZzv = zzv(i10);
            long j6 = 1048575 & iZzv;
            int i11 = this.zzc[i10];
            switch (zzu(iZzv)) {
                case 0:
                    if (zzG(obj2, i10)) {
                        zzhi.zzl(obj, j6, zzhi.zza(obj2, j6));
                        zzD(obj, i10);
                    }
                    break;
                case 1:
                    if (zzG(obj2, i10)) {
                        zzhi.zzm(obj, j6, zzhi.zzb(obj2, j6));
                        zzD(obj, i10);
                    }
                    break;
                case 2:
                    if (zzG(obj2, i10)) {
                        zzhi.zzo(obj, j6, zzhi.zzd(obj2, j6));
                        zzD(obj, i10);
                    }
                    break;
                case 3:
                    if (zzG(obj2, i10)) {
                        zzhi.zzo(obj, j6, zzhi.zzd(obj2, j6));
                        zzD(obj, i10);
                    }
                    break;
                case 4:
                    if (zzG(obj2, i10)) {
                        zzhi.zzn(obj, j6, zzhi.zzc(obj2, j6));
                        zzD(obj, i10);
                    }
                    break;
                case 5:
                    if (zzG(obj2, i10)) {
                        zzhi.zzo(obj, j6, zzhi.zzd(obj2, j6));
                        zzD(obj, i10);
                    }
                    break;
                case 6:
                    if (zzG(obj2, i10)) {
                        zzhi.zzn(obj, j6, zzhi.zzc(obj2, j6));
                        zzD(obj, i10);
                    }
                    break;
                case 7:
                    if (zzG(obj2, i10)) {
                        zzhi.zzk(obj, j6, zzhi.zzt(obj2, j6));
                        zzD(obj, i10);
                    }
                    break;
                case 8:
                    if (zzG(obj2, i10)) {
                        zzhi.zzp(obj, j6, zzhi.zzf(obj2, j6));
                        zzD(obj, i10);
                    }
                    break;
                case 9:
                    zzB(obj, obj2, i10);
                    break;
                case 10:
                    if (zzG(obj2, i10)) {
                        zzhi.zzp(obj, j6, zzhi.zzf(obj2, j6));
                        zzD(obj, i10);
                    }
                    break;
                case 11:
                    if (zzG(obj2, i10)) {
                        zzhi.zzn(obj, j6, zzhi.zzc(obj2, j6));
                        zzD(obj, i10);
                    }
                    break;
                case 12:
                    if (zzG(obj2, i10)) {
                        zzhi.zzn(obj, j6, zzhi.zzc(obj2, j6));
                        zzD(obj, i10);
                    }
                    break;
                case 13:
                    if (zzG(obj2, i10)) {
                        zzhi.zzn(obj, j6, zzhi.zzc(obj2, j6));
                        zzD(obj, i10);
                    }
                    break;
                case 14:
                    if (zzG(obj2, i10)) {
                        zzhi.zzo(obj, j6, zzhi.zzd(obj2, j6));
                        zzD(obj, i10);
                    }
                    break;
                case 15:
                    if (zzG(obj2, i10)) {
                        zzhi.zzn(obj, j6, zzhi.zzc(obj2, j6));
                        zzD(obj, i10);
                    }
                    break;
                case 16:
                    if (zzG(obj2, i10)) {
                        zzhi.zzo(obj, j6, zzhi.zzd(obj2, j6));
                        zzD(obj, i10);
                    }
                    break;
                case 17:
                    zzB(obj, obj2, i10);
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    this.zzl.zzb(obj, obj2, j6);
                    break;
                case 50:
                    zzgj.zzi(this.zzp, obj, obj2, j6);
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                    if (zzJ(obj2, i11, i10)) {
                        zzhi.zzp(obj, j6, zzhi.zzf(obj2, j6));
                        zzE(obj, i11, i10);
                    }
                    break;
                case 60:
                    zzC(obj, obj2, i10);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (zzJ(obj2, i11, i10)) {
                        zzhi.zzp(obj, j6, zzhi.zzf(obj2, j6));
                        zzE(obj, i11, i10);
                    }
                    break;
                case 68:
                    zzC(obj, obj2, i10);
                    break;
            }
        }
        zzgj.zzf(this.zzm, obj, obj2);
    }
}
