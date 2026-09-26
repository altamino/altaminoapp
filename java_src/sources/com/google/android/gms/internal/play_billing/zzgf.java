package com.google.android.gms.internal.play_billing;

import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.RandomAccess;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes10.dex */
final class zzgf<T> implements zzgm<T> {
    private static final int[] zza = new int[0];
    private static final Unsafe zzb = zzhn.zzg();
    private final int[] zzc;
    private final Object[] zzd;
    private final int zze;
    private final int zzf;
    private final zzgc zzg;
    private final boolean zzh;
    private final int[] zzi;
    private final int zzj;
    private final int zzk;
    private final zzfq zzl;
    private final zzhd zzm;
    private final zzek zzn;
    private final zzgh zzo;
    private final zzfx zzp;

    private zzgf(int[] iArr, Object[] objArr, int i10, int i11, zzgc zzgcVar, int i12, boolean z6, int[] iArr2, int i13, int i14, zzgh zzghVar, zzfq zzfqVar, zzhd zzhdVar, zzek zzekVar, zzfx zzfxVar) {
        this.zzc = iArr;
        this.zzd = objArr;
        this.zze = i10;
        this.zzf = i11;
        boolean z10 = false;
        if (zzekVar != null && zzekVar.zzc(zzgcVar)) {
            z10 = true;
        }
        this.zzh = z10;
        this.zzi = iArr2;
        this.zzj = i13;
        this.zzk = i14;
        this.zzo = zzghVar;
        this.zzl = zzfqVar;
        this.zzm = zzhdVar;
        this.zzn = zzekVar;
        this.zzg = zzgcVar;
        this.zzp = zzfxVar;
    }

    private static int zzr(int i10) {
        return (i10 >>> 20) & 255;
    }

    @Override // com.google.android.gms.internal.play_billing.zzgm
    public final int zzb(Object obj) {
        int i10;
        long jDoubleToLongBits;
        int iFloatToIntBits;
        int i11;
        int i12 = 0;
        for (int i13 = 0; i13 < this.zzc.length; i13 += 3) {
            int iZzs = zzs(i13);
            int[] iArr = this.zzc;
            int i14 = 1048575 & iZzs;
            int iZzr = zzr(iZzs);
            int i15 = iArr[i13];
            long j6 = i14;
            int iHashCode = 37;
            switch (iZzr) {
                case 0:
                    i10 = i12 * 53;
                    jDoubleToLongBits = Double.doubleToLongBits(zzhn.zza(obj, j6));
                    byte[] bArr = zzfd.zzd;
                    iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                    i12 = i10 + iFloatToIntBits;
                    break;
                case 1:
                    i10 = i12 * 53;
                    iFloatToIntBits = Float.floatToIntBits(zzhn.zzb(obj, j6));
                    i12 = i10 + iFloatToIntBits;
                    break;
                case 2:
                    i10 = i12 * 53;
                    jDoubleToLongBits = zzhn.zzd(obj, j6);
                    byte[] bArr2 = zzfd.zzd;
                    iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                    i12 = i10 + iFloatToIntBits;
                    break;
                case 3:
                    i10 = i12 * 53;
                    jDoubleToLongBits = zzhn.zzd(obj, j6);
                    byte[] bArr3 = zzfd.zzd;
                    iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                    i12 = i10 + iFloatToIntBits;
                    break;
                case 4:
                    i10 = i12 * 53;
                    iFloatToIntBits = zzhn.zzc(obj, j6);
                    i12 = i10 + iFloatToIntBits;
                    break;
                case 5:
                    i10 = i12 * 53;
                    jDoubleToLongBits = zzhn.zzd(obj, j6);
                    byte[] bArr4 = zzfd.zzd;
                    iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                    i12 = i10 + iFloatToIntBits;
                    break;
                case 6:
                    i10 = i12 * 53;
                    iFloatToIntBits = zzhn.zzc(obj, j6);
                    i12 = i10 + iFloatToIntBits;
                    break;
                case 7:
                    i10 = i12 * 53;
                    iFloatToIntBits = zzfd.zza(zzhn.zzw(obj, j6));
                    i12 = i10 + iFloatToIntBits;
                    break;
                case 8:
                    i10 = i12 * 53;
                    iFloatToIntBits = ((String) zzhn.zzf(obj, j6)).hashCode();
                    i12 = i10 + iFloatToIntBits;
                    break;
                case 9:
                    i11 = i12 * 53;
                    Object objZzf = zzhn.zzf(obj, j6);
                    if (objZzf != null) {
                        iHashCode = objZzf.hashCode();
                    }
                    i12 = i11 + iHashCode;
                    break;
                case 10:
                    i10 = i12 * 53;
                    iFloatToIntBits = zzhn.zzf(obj, j6).hashCode();
                    i12 = i10 + iFloatToIntBits;
                    break;
                case 11:
                    i10 = i12 * 53;
                    iFloatToIntBits = zzhn.zzc(obj, j6);
                    i12 = i10 + iFloatToIntBits;
                    break;
                case 12:
                    i10 = i12 * 53;
                    iFloatToIntBits = zzhn.zzc(obj, j6);
                    i12 = i10 + iFloatToIntBits;
                    break;
                case 13:
                    i10 = i12 * 53;
                    iFloatToIntBits = zzhn.zzc(obj, j6);
                    i12 = i10 + iFloatToIntBits;
                    break;
                case 14:
                    i10 = i12 * 53;
                    jDoubleToLongBits = zzhn.zzd(obj, j6);
                    byte[] bArr5 = zzfd.zzd;
                    iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                    i12 = i10 + iFloatToIntBits;
                    break;
                case 15:
                    i10 = i12 * 53;
                    iFloatToIntBits = zzhn.zzc(obj, j6);
                    i12 = i10 + iFloatToIntBits;
                    break;
                case 16:
                    i10 = i12 * 53;
                    jDoubleToLongBits = zzhn.zzd(obj, j6);
                    byte[] bArr6 = zzfd.zzd;
                    iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                    i12 = i10 + iFloatToIntBits;
                    break;
                case 17:
                    i11 = i12 * 53;
                    Object objZzf2 = zzhn.zzf(obj, j6);
                    if (objZzf2 != null) {
                        iHashCode = objZzf2.hashCode();
                    }
                    i12 = i11 + iHashCode;
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
                    i10 = i12 * 53;
                    iFloatToIntBits = zzhn.zzf(obj, j6).hashCode();
                    i12 = i10 + iFloatToIntBits;
                    break;
                case 50:
                    i10 = i12 * 53;
                    iFloatToIntBits = zzhn.zzf(obj, j6).hashCode();
                    i12 = i10 + iFloatToIntBits;
                    break;
                case 51:
                    if (zzM(obj, i15, i13)) {
                        i10 = i12 * 53;
                        jDoubleToLongBits = Double.doubleToLongBits(zzm(obj, j6));
                        byte[] bArr7 = zzfd.zzd;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        i12 = i10 + iFloatToIntBits;
                    }
                    break;
                case 52:
                    if (zzM(obj, i15, i13)) {
                        i10 = i12 * 53;
                        iFloatToIntBits = Float.floatToIntBits(zzn(obj, j6));
                        i12 = i10 + iFloatToIntBits;
                    }
                    break;
                case 53:
                    if (zzM(obj, i15, i13)) {
                        i10 = i12 * 53;
                        jDoubleToLongBits = zzt(obj, j6);
                        byte[] bArr8 = zzfd.zzd;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        i12 = i10 + iFloatToIntBits;
                    }
                    break;
                case 54:
                    if (zzM(obj, i15, i13)) {
                        i10 = i12 * 53;
                        jDoubleToLongBits = zzt(obj, j6);
                        byte[] bArr9 = zzfd.zzd;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        i12 = i10 + iFloatToIntBits;
                    }
                    break;
                case 55:
                    if (zzM(obj, i15, i13)) {
                        i10 = i12 * 53;
                        iFloatToIntBits = zzo(obj, j6);
                        i12 = i10 + iFloatToIntBits;
                    }
                    break;
                case 56:
                    if (zzM(obj, i15, i13)) {
                        i10 = i12 * 53;
                        jDoubleToLongBits = zzt(obj, j6);
                        byte[] bArr10 = zzfd.zzd;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        i12 = i10 + iFloatToIntBits;
                    }
                    break;
                case 57:
                    if (zzM(obj, i15, i13)) {
                        i10 = i12 * 53;
                        iFloatToIntBits = zzo(obj, j6);
                        i12 = i10 + iFloatToIntBits;
                    }
                    break;
                case 58:
                    if (zzM(obj, i15, i13)) {
                        i10 = i12 * 53;
                        iFloatToIntBits = zzfd.zza(zzN(obj, j6));
                        i12 = i10 + iFloatToIntBits;
                    }
                    break;
                case 59:
                    if (zzM(obj, i15, i13)) {
                        i10 = i12 * 53;
                        iFloatToIntBits = ((String) zzhn.zzf(obj, j6)).hashCode();
                        i12 = i10 + iFloatToIntBits;
                    }
                    break;
                case 60:
                    if (zzM(obj, i15, i13)) {
                        i10 = i12 * 53;
                        iFloatToIntBits = zzhn.zzf(obj, j6).hashCode();
                        i12 = i10 + iFloatToIntBits;
                    }
                    break;
                case 61:
                    if (zzM(obj, i15, i13)) {
                        i10 = i12 * 53;
                        iFloatToIntBits = zzhn.zzf(obj, j6).hashCode();
                        i12 = i10 + iFloatToIntBits;
                    }
                    break;
                case 62:
                    if (zzM(obj, i15, i13)) {
                        i10 = i12 * 53;
                        iFloatToIntBits = zzo(obj, j6);
                        i12 = i10 + iFloatToIntBits;
                    }
                    break;
                case 63:
                    if (zzM(obj, i15, i13)) {
                        i10 = i12 * 53;
                        iFloatToIntBits = zzo(obj, j6);
                        i12 = i10 + iFloatToIntBits;
                    }
                    break;
                case 64:
                    if (zzM(obj, i15, i13)) {
                        i10 = i12 * 53;
                        iFloatToIntBits = zzo(obj, j6);
                        i12 = i10 + iFloatToIntBits;
                    }
                    break;
                case 65:
                    if (zzM(obj, i15, i13)) {
                        i10 = i12 * 53;
                        jDoubleToLongBits = zzt(obj, j6);
                        byte[] bArr11 = zzfd.zzd;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        i12 = i10 + iFloatToIntBits;
                    }
                    break;
                case 66:
                    if (zzM(obj, i15, i13)) {
                        i10 = i12 * 53;
                        iFloatToIntBits = zzo(obj, j6);
                        i12 = i10 + iFloatToIntBits;
                    }
                    break;
                case 67:
                    if (zzM(obj, i15, i13)) {
                        i10 = i12 * 53;
                        jDoubleToLongBits = zzt(obj, j6);
                        byte[] bArr12 = zzfd.zzd;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        i12 = i10 + iFloatToIntBits;
                    }
                    break;
                case 68:
                    if (zzM(obj, i15, i13)) {
                        i10 = i12 * 53;
                        iFloatToIntBits = zzhn.zzf(obj, j6).hashCode();
                        i12 = i10 + iFloatToIntBits;
                    }
                    break;
            }
        }
        int iHashCode2 = (i12 * 53) + this.zzm.zzd(obj).hashCode();
        if (!this.zzh) {
            return iHashCode2;
        }
        this.zzn.zza(obj);
        throw null;
    }

    /* JADX WARN: Code duplicated, block: B:103:0x02a3  */
    /* JADX WARN: Code duplicated, block: B:107:0x02ab  */
    /* JADX WARN: Code duplicated, block: B:112:0x02c8  */
    /* JADX WARN: Code duplicated, block: B:121:0x031e  */
    /* JADX WARN: Code duplicated, block: B:123:0x0327  */
    /* JADX WARN: Code duplicated, block: B:125:0x032b  */
    /* JADX WARN: Code duplicated, block: B:127:0x032f  */
    /* JADX WARN: Code duplicated, block: B:136:0x036e  */
    /* JADX WARN: Code duplicated, block: B:137:0x0370  */
    /* JADX WARN: Code duplicated, block: B:165:0x048f  */
    /* JADX WARN: Code duplicated, block: B:168:0x0498  */
    /* JADX WARN: Code duplicated, block: B:176:0x04fa  */
    /* JADX WARN: Code duplicated, block: B:179:0x0503  */
    /* JADX WARN: Code duplicated, block: B:183:0x0511  */
    /* JADX WARN: Code duplicated, block: B:185:0x0514  */
    /* JADX WARN: Code duplicated, block: B:187:0x0532  */
    /* JADX WARN: Code duplicated, block: B:189:0x053c A[LOOP:2: B:186:0x0530->B:189:0x053c, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:194:0x0560  */
    /* JADX WARN: Code duplicated, block: B:196:0x056b  */
    /* JADX WARN: Code duplicated, block: B:198:0x0572  */
    /* JADX WARN: Code duplicated, block: B:200:0x057d A[LOOP:3: B:199:0x057b->B:200:0x057d, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:205:0x0593 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:206:0x0595  */
    /* JADX WARN: Code duplicated, block: B:208:0x05a6  */
    /* JADX WARN: Code duplicated, block: B:210:0x05ae A[LOOP:4: B:207:0x05a4->B:210:0x05ae, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:213:0x05c2  */
    /* JADX WARN: Code duplicated, block: B:215:0x05c9  */
    /* JADX WARN: Code duplicated, block: B:217:0x05d4 A[LOOP:5: B:216:0x05d2->B:217:0x05d4, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:222:0x05eb A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:223:0x05ed  */
    /* JADX WARN: Code duplicated, block: B:225:0x05fe  */
    /* JADX WARN: Code duplicated, block: B:227:0x0606 A[LOOP:6: B:224:0x05fc->B:227:0x0606, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:228:0x0614  */
    /* JADX WARN: Code duplicated, block: B:230:0x061b  */
    /* JADX WARN: Code duplicated, block: B:231:0x0620 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:232:0x0622  */
    /* JADX WARN: Code duplicated, block: B:235:0x0639  */
    /* JADX WARN: Code duplicated, block: B:237:0x063d  */
    /* JADX WARN: Code duplicated, block: B:239:0x0648  */
    /* JADX WARN: Code duplicated, block: B:241:0x065a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:242:0x065c  */
    /* JADX WARN: Code duplicated, block: B:244:0x0668  */
    /* JADX WARN: Code duplicated, block: B:248:0x067d  */
    /* JADX WARN: Code duplicated, block: B:249:0x0685  */
    /* JADX WARN: Code duplicated, block: B:252:0x0695  */
    /* JADX WARN: Code duplicated, block: B:255:0x06ad  */
    /* JADX WARN: Code duplicated, block: B:258:0x06b9  */
    /* JADX WARN: Code duplicated, block: B:259:0x06bd  */
    /* JADX WARN: Code duplicated, block: B:261:0x06c6  */
    /* JADX WARN: Code duplicated, block: B:263:0x06ce  */
    /* JADX WARN: Code duplicated, block: B:265:0x06d2 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:266:0x06d4  */
    /* JADX WARN: Code duplicated, block: B:267:0x06da  */
    /* JADX WARN: Code duplicated, block: B:26:0x006a  */
    /* JADX WARN: Code duplicated, block: B:270:0x06e4  */
    /* JADX WARN: Code duplicated, block: B:272:0x06ec  */
    /* JADX WARN: Code duplicated, block: B:274:0x06f4  */
    /* JADX WARN: Code duplicated, block: B:276:0x06f8 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:288:0x071f  */
    /* JADX WARN: Code duplicated, block: B:289:0x0725  */
    /* JADX WARN: Code duplicated, block: B:291:0x072e  */
    /* JADX WARN: Code duplicated, block: B:293:0x0755  */
    /* JADX WARN: Code duplicated, block: B:294:0x075c  */
    /* JADX WARN: Code duplicated, block: B:296:0x076b  */
    /* JADX WARN: Code duplicated, block: B:298:0x0774  */
    /* JADX WARN: Code duplicated, block: B:300:0x077c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:301:0x077e  */
    /* JADX WARN: Code duplicated, block: B:302:0x0782  */
    /* JADX WARN: Code duplicated, block: B:305:0x078f  */
    /* JADX WARN: Code duplicated, block: B:307:0x0797  */
    /* JADX WARN: Code duplicated, block: B:309:0x079f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:30:0x009c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:317:0x07c1  */
    /* JADX WARN: Code duplicated, block: B:319:0x07c9 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:31:0x009e  */
    /* JADX WARN: Code duplicated, block: B:320:0x07cb  */
    /* JADX WARN: Code duplicated, block: B:321:0x07cf  */
    /* JADX WARN: Code duplicated, block: B:323:0x07d7  */
    /* JADX WARN: Code duplicated, block: B:326:0x07e4  */
    /* JADX WARN: Code duplicated, block: B:328:0x07ec  */
    /* JADX WARN: Code duplicated, block: B:330:0x07f4 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:334:0x0802  */
    /* JADX WARN: Code duplicated, block: B:33:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:343:0x0821 A[PHI: r1 r3 r4 r5 r7 r13 r14
      0x0821: PHI (r1v116 sun.misc.Unsafe) = 
      (r1v106 sun.misc.Unsafe)
      (r1v109 sun.misc.Unsafe)
      (r1v112 sun.misc.Unsafe)
      (r1v114 sun.misc.Unsafe)
      (r1v119 sun.misc.Unsafe)
     binds: [B:407:0x0941, B:398:0x090c, B:381:0x08b9, B:357:0x085b, B:295:0x0769] A[DONT_GENERATE, DONT_INLINE]
      0x0821: PHI (r3v57 int) = (r3v52 int), (r3v53 int), (r3v55 int), (r3v56 int), (r3v59 int) binds: [B:407:0x0941, B:398:0x090c, B:381:0x08b9, B:357:0x085b, B:295:0x0769] A[DONT_GENERATE, DONT_INLINE]
      0x0821: PHI (r4v36 int) = (r4v30 int), (r4v32 int), (r4v34 int), (r4v35 int), (r4v38 int) binds: [B:407:0x0941, B:398:0x090c, B:381:0x08b9, B:357:0x085b, B:295:0x0769] A[DONT_GENERATE, DONT_INLINE]
      0x0821: PHI (r5v61 int) = (r5v55 int), (r5v57 int), (r5v59 int), (r5v60 int), (r5v63 int) binds: [B:407:0x0941, B:398:0x090c, B:381:0x08b9, B:357:0x085b, B:295:0x0769] A[DONT_GENERATE, DONT_INLINE]
      0x0821: PHI (r7v15 int) = (r7v10 int), (r7v11 int), (r7v13 int), (r7v14 int), (r7v17 int) binds: [B:407:0x0941, B:398:0x090c, B:381:0x08b9, B:357:0x085b, B:295:0x0769] A[DONT_GENERATE, DONT_INLINE]
      0x0821: PHI (r13v49 com.google.android.gms.internal.play_billing.zzdj) = 
      (r13v44 com.google.android.gms.internal.play_billing.zzdj)
      (r13v45 com.google.android.gms.internal.play_billing.zzdj)
      (r13v47 com.google.android.gms.internal.play_billing.zzdj)
      (r13v48 com.google.android.gms.internal.play_billing.zzdj)
      (r13v51 com.google.android.gms.internal.play_billing.zzdj)
     binds: [B:407:0x0941, B:398:0x090c, B:381:0x08b9, B:357:0x085b, B:295:0x0769] A[DONT_GENERATE, DONT_INLINE]
      0x0821: PHI (r14v44 byte[]) = (r14v39 byte[]), (r14v40 byte[]), (r14v42 byte[]), (r14v43 byte[]), (r14v46 byte[]) binds: [B:407:0x0941, B:398:0x090c, B:381:0x08b9, B:357:0x085b, B:295:0x0769] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:344:0x0827  */
    /* JADX WARN: Code duplicated, block: B:346:0x0835  */
    /* JADX WARN: Code duplicated, block: B:348:0x0840  */
    /* JADX WARN: Code duplicated, block: B:34:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:350:0x084a  */
    /* JADX WARN: Code duplicated, block: B:351:0x084c  */
    /* JADX WARN: Code duplicated, block: B:357:0x085b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:358:0x085d  */
    /* JADX WARN: Code duplicated, block: B:360:0x0869  */
    /* JADX WARN: Code duplicated, block: B:361:0x086b  */
    /* JADX WARN: Code duplicated, block: B:364:0x0872  */
    /* JADX WARN: Code duplicated, block: B:366:0x087a  */
    /* JADX WARN: Code duplicated, block: B:368:0x0884  */
    /* JADX WARN: Code duplicated, block: B:369:0x0886  */
    /* JADX WARN: Code duplicated, block: B:36:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:371:0x088c  */
    /* JADX WARN: Code duplicated, block: B:373:0x089a  */
    /* JADX WARN: Code duplicated, block: B:375:0x08a5 A[LOOP:14: B:374:0x08a3->B:375:0x08a5, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:380:0x08b8  */
    /* JADX WARN: Code duplicated, block: B:382:0x08bb  */
    /* JADX WARN: Code duplicated, block: B:384:0x08c8  */
    /* JADX WARN: Code duplicated, block: B:386:0x08d0 A[LOOP:15: B:383:0x08c6->B:386:0x08d0, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:388:0x08df  */
    /* JADX WARN: Code duplicated, block: B:390:0x08ed  */
    /* JADX WARN: Code duplicated, block: B:392:0x08f8 A[LOOP:16: B:391:0x08f6->B:392:0x08f8, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:397:0x090b  */
    /* JADX WARN: Code duplicated, block: B:399:0x090e  */
    /* JADX WARN: Code duplicated, block: B:401:0x091b  */
    /* JADX WARN: Code duplicated, block: B:403:0x0923 A[LOOP:17: B:400:0x0919->B:403:0x0923, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:404:0x092d  */
    /* JADX WARN: Code duplicated, block: B:406:0x093b  */
    /* JADX WARN: Code duplicated, block: B:407:0x0941 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:408:0x0943  */
    /* JADX WARN: Code duplicated, block: B:409:0x0955  */
    /* JADX WARN: Code duplicated, block: B:411:0x0961  */
    /* JADX WARN: Code duplicated, block: B:413:0x096c A[LOOP:18: B:412:0x096a->B:413:0x096c, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:418:0x097f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:419:0x0981  */
    /* JADX WARN: Code duplicated, block: B:421:0x098e  */
    /* JADX WARN: Code duplicated, block: B:423:0x0996 A[LOOP:19: B:420:0x098c->B:423:0x0996, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:424:0x09a0  */
    /* JADX WARN: Code duplicated, block: B:426:0x09ac  */
    /* JADX WARN: Code duplicated, block: B:428:0x09b7 A[LOOP:20: B:427:0x09b5->B:428:0x09b7, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:433:0x09ce  */
    /* JADX WARN: Code duplicated, block: B:435:0x09d1  */
    /* JADX WARN: Code duplicated, block: B:437:0x09e2  */
    /* JADX WARN: Code duplicated, block: B:439:0x09ea A[LOOP:21: B:436:0x09e0->B:439:0x09ea, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:440:0x09f8  */
    /* JADX WARN: Code duplicated, block: B:442:0x0a04  */
    /* JADX WARN: Code duplicated, block: B:444:0x0a0f A[LOOP:22: B:443:0x0a0d->B:444:0x0a0f, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:449:0x0a25  */
    /* JADX WARN: Code duplicated, block: B:451:0x0a28  */
    /* JADX WARN: Code duplicated, block: B:453:0x0a39  */
    /* JADX WARN: Code duplicated, block: B:455:0x0a41 A[LOOP:23: B:452:0x0a37->B:455:0x0a41, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:456:0x0a4f A[PHI: r0 r7 r8 r9 r10 r12 r13 r14
      0x0a4f: PHI (r0v28 com.google.android.gms.internal.play_billing.zzgf<T>) = 
      (r0v1 com.google.android.gms.internal.play_billing.zzgf<T>)
      (r0v1 com.google.android.gms.internal.play_billing.zzgf<T>)
      (r0v1 com.google.android.gms.internal.play_billing.zzgf<T>)
      (r0v1 com.google.android.gms.internal.play_billing.zzgf<T>)
      (r0v29 com.google.android.gms.internal.play_billing.zzgf<T>)
     binds: [B:450:0x0a26, B:434:0x09cf, B:418:0x097f, B:343:0x0821, B:195:0x0567] A[DONT_GENERATE, DONT_INLINE]
      0x0a4f: PHI (r7v27 int) = (r7v7 int), (r7v8 int), (r7v9 int), (r7v15 int), (r7v28 int) binds: [B:450:0x0a26, B:434:0x09cf, B:418:0x097f, B:343:0x0821, B:195:0x0567] A[DONT_GENERATE, DONT_INLINE]
      0x0a4f: PHI (r8v106 int) = (r8v72 int), (r8v72 int), (r8v72 int), (r8v92 int), (r8v72 int) binds: [B:450:0x0a26, B:434:0x09cf, B:418:0x097f, B:343:0x0821, B:195:0x0567] A[DONT_GENERATE, DONT_INLINE]
      0x0a4f: PHI (r9v80 int) = (r9v51 int), (r9v52 int), (r9v53 int), (r9v57 int), (r9v81 int) binds: [B:450:0x0a26, B:434:0x09cf, B:418:0x097f, B:343:0x0821, B:195:0x0567] A[DONT_GENERATE, DONT_INLINE]
      0x0a4f: PHI (r10v61 int) = (r10v47 int), (r10v47 int), (r10v47 int), (r10v50 int), (r10v47 int) binds: [B:450:0x0a26, B:434:0x09cf, B:418:0x097f, B:343:0x0821, B:195:0x0567] A[DONT_GENERATE, DONT_INLINE]
      0x0a4f: PHI (r12v61 sun.misc.Unsafe) = 
      (r12v49 sun.misc.Unsafe)
      (r12v50 sun.misc.Unsafe)
      (r12v51 sun.misc.Unsafe)
      (r12v54 sun.misc.Unsafe)
      (r12v62 sun.misc.Unsafe)
     binds: [B:450:0x0a26, B:434:0x09cf, B:418:0x097f, B:343:0x0821, B:195:0x0567] A[DONT_GENERATE, DONT_INLINE]
      0x0a4f: PHI (r13v64 com.google.android.gms.internal.play_billing.zzdj) = 
      (r13v41 com.google.android.gms.internal.play_billing.zzdj)
      (r13v42 com.google.android.gms.internal.play_billing.zzdj)
      (r13v43 com.google.android.gms.internal.play_billing.zzdj)
      (r13v49 com.google.android.gms.internal.play_billing.zzdj)
      (r12v48 com.google.android.gms.internal.play_billing.zzdj)
     binds: [B:450:0x0a26, B:434:0x09cf, B:418:0x097f, B:343:0x0821, B:195:0x0567] A[DONT_GENERATE, DONT_INLINE]
      0x0a4f: PHI (r14v57 byte[]) = (r14v36 byte[]), (r14v37 byte[]), (r14v38 byte[]), (r14v44 byte[]), (r14v58 byte[]) binds: [B:450:0x0a26, B:434:0x09cf, B:418:0x097f, B:343:0x0821, B:195:0x0567] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:467:0x0a99  */
    /* JADX WARN: Code duplicated, block: B:470:0x0aaa  */
    /* JADX WARN: Code duplicated, block: B:472:0x0ab8  */
    /* JADX WARN: Code duplicated, block: B:474:0x0acc  */
    /* JADX WARN: Code duplicated, block: B:475:0x0add  */
    /* JADX WARN: Code duplicated, block: B:477:0x0ae0  */
    /* JADX WARN: Code duplicated, block: B:479:0x0b12  */
    /* JADX WARN: Code duplicated, block: B:480:0x0b23  */
    /* JADX WARN: Code duplicated, block: B:482:0x0b34  */
    /* JADX WARN: Code duplicated, block: B:486:0x0b58  */
    /* JADX WARN: Code duplicated, block: B:488:0x0b69  */
    /* JADX WARN: Code duplicated, block: B:489:0x0b7e  */
    /* JADX WARN: Code duplicated, block: B:491:0x0b8f  */
    /* JADX WARN: Code duplicated, block: B:495:0x0ba1  */
    /* JADX WARN: Code duplicated, block: B:499:0x0bc5  */
    /* JADX WARN: Code duplicated, block: B:501:0x0bce  */
    /* JADX WARN: Code duplicated, block: B:503:0x0bdf  */
    /* JADX WARN: Code duplicated, block: B:504:0x0bec  */
    /* JADX WARN: Code duplicated, block: B:506:0x0bf9  */
    /* JADX WARN: Code duplicated, block: B:507:0x0c1d  */
    /* JADX WARN: Code duplicated, block: B:508:0x0c22  */
    /* JADX WARN: Code duplicated, block: B:510:0x0c34  */
    /* JADX WARN: Code duplicated, block: B:512:0x0c3c  */
    /* JADX WARN: Code duplicated, block: B:513:0x0c44  */
    /* JADX WARN: Code duplicated, block: B:522:0x0c6c  */
    /* JADX WARN: Code duplicated, block: B:523:0x0c70  */
    /* JADX WARN: Code duplicated, block: B:525:0x0c82  */
    /* JADX WARN: Code duplicated, block: B:527:0x0c8d  */
    /* JADX WARN: Code duplicated, block: B:528:0x0c8f  */
    /* JADX WARN: Code duplicated, block: B:531:0x0c9e  */
    /* JADX WARN: Code duplicated, block: B:533:0x0cb1  */
    /* JADX WARN: Code duplicated, block: B:534:0x0cc3  */
    /* JADX WARN: Code duplicated, block: B:536:0x0cd6  */
    /* JADX WARN: Code duplicated, block: B:537:0x0ce8  */
    /* JADX WARN: Code duplicated, block: B:539:0x0cfa  */
    /* JADX WARN: Code duplicated, block: B:540:0x0d0c  */
    /* JADX WARN: Code duplicated, block: B:542:0x0d1e  */
    /* JADX WARN: Code duplicated, block: B:543:0x0d31  */
    /* JADX WARN: Code duplicated, block: B:545:0x0d44  */
    /* JADX WARN: Code duplicated, block: B:546:0x0d59  */
    /* JADX WARN: Code duplicated, block: B:548:0x0d6c  */
    /* JADX WARN: Code duplicated, block: B:549:0x0d81 A[PHI: r5 r7 r8 r13 r14 r15 r20 r35
      0x0d81: PHI (r5v104 int) = 
      (r5v78 int)
      (r5v79 int)
      (r5v80 int)
      (r5v81 int)
      (r5v82 int)
      (r5v83 int)
      (r5v85 int)
      (r5v86 int)
      (r5v91 int)
      (r5v95 int)
      (r5v100 int)
      (r5v105 int)
     binds: [B:547:0x0d6a, B:544:0x0d42, B:541:0x0d1c, B:538:0x0cf8, B:535:0x0cd4, B:532:0x0caf, B:524:0x0c80, B:522:0x0c6c, B:500:0x0bc7, B:485:0x0b54, B:479:0x0b12, B:474:0x0acc] A[DONT_GENERATE, DONT_INLINE]
      0x0d81: PHI (r7v63 java.lang.Object) = 
      (r7v40 java.lang.Object)
      (r7v41 java.lang.Object)
      (r7v42 java.lang.Object)
      (r7v43 java.lang.Object)
      (r7v44 java.lang.Object)
      (r7v45 java.lang.Object)
      (r7v47 java.lang.Object)
      (r7v48 java.lang.Object)
      (r7v51 java.lang.Object)
      (r7v55 java.lang.Object)
      (r7v60 java.lang.Object)
      (r7v64 java.lang.Object)
     binds: [B:547:0x0d6a, B:544:0x0d42, B:541:0x0d1c, B:538:0x0cf8, B:535:0x0cd4, B:532:0x0caf, B:524:0x0c80, B:522:0x0c6c, B:500:0x0bc7, B:485:0x0b54, B:479:0x0b12, B:474:0x0acc] A[DONT_GENERATE, DONT_INLINE]
      0x0d81: PHI (r8v136 int) = 
      (r8v110 int)
      (r8v111 int)
      (r8v112 int)
      (r8v113 int)
      (r8v114 int)
      (r8v115 int)
      (r8v117 int)
      (r8v118 int)
      (r8v121 int)
      (r8v125 int)
      (r8v130 int)
      (r8v137 int)
     binds: [B:547:0x0d6a, B:544:0x0d42, B:541:0x0d1c, B:538:0x0cf8, B:535:0x0cd4, B:532:0x0caf, B:524:0x0c80, B:522:0x0c6c, B:500:0x0bc7, B:485:0x0b54, B:479:0x0b12, B:474:0x0acc] A[DONT_GENERATE, DONT_INLINE]
      0x0d81: PHI (r13v112 byte[]) = 
      (r13v79 byte[])
      (r13v80 byte[])
      (r13v81 byte[])
      (r13v82 byte[])
      (r13v83 byte[])
      (r13v84 byte[])
      (r13v86 byte[])
      (r13v87 byte[])
      (r13v93 byte[])
      (r13v100 byte[])
      (r13v107 byte[])
      (r13v113 byte[])
     binds: [B:547:0x0d6a, B:544:0x0d42, B:541:0x0d1c, B:538:0x0cf8, B:535:0x0cd4, B:532:0x0caf, B:524:0x0c80, B:522:0x0c6c, B:500:0x0bc7, B:485:0x0b54, B:479:0x0b12, B:474:0x0acc] A[DONT_GENERATE, DONT_INLINE]
      0x0d81: PHI (r14v90 int) = 
      (r14v64 int)
      (r14v65 int)
      (r14v66 int)
      (r14v67 int)
      (r14v68 int)
      (r14v69 int)
      (r14v71 int)
      (r14v72 int)
      (r14v75 int)
      (r14v82 int)
      (r14v86 int)
      (r14v91 int)
     binds: [B:547:0x0d6a, B:544:0x0d42, B:541:0x0d1c, B:538:0x0cf8, B:535:0x0cd4, B:532:0x0caf, B:524:0x0c80, B:522:0x0c6c, B:500:0x0bc7, B:485:0x0b54, B:479:0x0b12, B:474:0x0acc] A[DONT_GENERATE, DONT_INLINE]
      0x0d81: PHI (r15v65 com.google.android.gms.internal.play_billing.zzdj) = 
      (r15v41 com.google.android.gms.internal.play_billing.zzdj)
      (r15v42 com.google.android.gms.internal.play_billing.zzdj)
      (r15v43 com.google.android.gms.internal.play_billing.zzdj)
      (r15v44 com.google.android.gms.internal.play_billing.zzdj)
      (r15v45 com.google.android.gms.internal.play_billing.zzdj)
      (r15v46 com.google.android.gms.internal.play_billing.zzdj)
      (r15v48 com.google.android.gms.internal.play_billing.zzdj)
      (r15v49 com.google.android.gms.internal.play_billing.zzdj)
      (r15v52 com.google.android.gms.internal.play_billing.zzdj)
      (r15v56 com.google.android.gms.internal.play_billing.zzdj)
      (r15v61 com.google.android.gms.internal.play_billing.zzdj)
      (r15v66 com.google.android.gms.internal.play_billing.zzdj)
     binds: [B:547:0x0d6a, B:544:0x0d42, B:541:0x0d1c, B:538:0x0cf8, B:535:0x0cd4, B:532:0x0caf, B:524:0x0c80, B:522:0x0c6c, B:500:0x0bc7, B:485:0x0b54, B:479:0x0b12, B:474:0x0acc] A[DONT_GENERATE, DONT_INLINE]
      0x0d81: PHI (r20v34 int) = 
      (r20v8 int)
      (r20v9 int)
      (r20v10 int)
      (r20v11 int)
      (r20v12 int)
      (r20v13 int)
      (r20v15 int)
      (r20v16 int)
      (r20v21 int)
      (r20v25 int)
      (r20v31 int)
      (r20v35 int)
     binds: [B:547:0x0d6a, B:544:0x0d42, B:541:0x0d1c, B:538:0x0cf8, B:535:0x0cd4, B:532:0x0caf, B:524:0x0c80, B:522:0x0c6c, B:500:0x0bc7, B:485:0x0b54, B:479:0x0b12, B:474:0x0acc] A[DONT_GENERATE, DONT_INLINE]
      0x0d81: PHI (r35v55 sun.misc.Unsafe) = 
      (r35v35 sun.misc.Unsafe)
      (r35v36 sun.misc.Unsafe)
      (r35v37 sun.misc.Unsafe)
      (r35v38 sun.misc.Unsafe)
      (r35v39 sun.misc.Unsafe)
      (r35v40 sun.misc.Unsafe)
      (r35v42 sun.misc.Unsafe)
      (r35v43 sun.misc.Unsafe)
      (r35v46 sun.misc.Unsafe)
      (r35v48 sun.misc.Unsafe)
      (r35v52 sun.misc.Unsafe)
      (r35v56 sun.misc.Unsafe)
     binds: [B:547:0x0d6a, B:544:0x0d42, B:541:0x0d1c, B:538:0x0cf8, B:535:0x0cd4, B:532:0x0caf, B:524:0x0c80, B:522:0x0c6c, B:500:0x0bc7, B:485:0x0b54, B:479:0x0b12, B:474:0x0acc] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:598:0x00b7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:599:0x010b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:600:0x0160 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:601:0x018f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:602:0x01da A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:603:0x01fa A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:604:0x0229 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:605:0x0363 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:606:0x0389 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:607:0x03a8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:608:0x03d6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:609:0x03f5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:610:0x0420 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:611:0x0444 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:612:0x0483 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:613:0x058e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:614:0x05e6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:615:0x071a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:616:0x0715 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:617:0x070d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:618:0x0708 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:619:0x07bc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:620:0x07b0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:621:0x081c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:622:0x0817 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:623:0x0812 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:624:0x080d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:625:0x0856 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:626:0x08b3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:627:0x0906 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:628:0x097a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:629:0x09c9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:630:0x0a20 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:631:0x0a52 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:632:0x0a84 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:634:0x0d84 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:637:0x0059 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:638:0x0465 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:639:0x0100 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:640:0x014a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:641:0x0179 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:642:0x01c3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:643:0x01e5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:644:0x0216 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:645:0x0350 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:646:0x0375 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:647:0x0394 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:648:0x03c3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:649:0x03e2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:650:0x040c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:651:0x0430 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:652:0x00ee A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:653:0x00b4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:654:0x0143 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:655:0x00fd A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:656:0x00fd A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:657:0x00fd A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:658:0x00fd A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:659:0x00fd A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:660:0x0319 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:661:0x02f5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:662:0x029e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:663:0x02bf A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:664:0x02e0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:665:0x034b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:666:0x0454 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:667:0x0454 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:668:0x0454 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:669:0x0454 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:66:0x01be  */
    /* JADX WARN: Code duplicated, block: B:670:0x0454 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:671:0x0454 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:672:0x0454 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:673:0x008a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:674:0x04dc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:675:0x04ce A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:676:0x0480 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:677:0x0a78 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:678:0x0a65 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:679:0x0d99 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:680:0x04eb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:681:0x0a81 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:693:0x0555 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:694:0x0553 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:696:0x0557 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:700:0x0557 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:705:0x06a5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:707:0x068f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:709:0x0700 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:711:0x0712 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:712:0x06fa A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:718:0x07b5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:719:0x07a5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:720:0x07a1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:726:0x07b5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:727:0x07fa A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:728:0x07f6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:737:0x07b5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:741:0x08da A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:745:0x08da A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:748:0x0a50 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:751:0x0a50 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:754:0x0a50 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:756:0x0263 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:758:0x0289 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:759:0x02a7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:760:0x026f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:761:0x028f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:762:0x02c4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:767:0x0263 A[EDGE_INSN: B:767:0x0263->B:763:0x0263 BREAK  A[LOOP:26: B:92:0x0276->B:95:0x0280], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:77:0x022d  */
    /* JADX WARN: Code duplicated, block: B:79:0x0237 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:80:0x0239  */
    /* JADX WARN: Code duplicated, block: B:81:0x0240  */
    /* JADX WARN: Code duplicated, block: B:83:0x024b  */
    /* JADX WARN: Code duplicated, block: B:85:0x0252  */
    /* JADX WARN: Code duplicated, block: B:87:0x025a A[LOOP:24: B:84:0x0250->B:87:0x025a, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:89:0x0265  */
    /* JADX WARN: Code duplicated, block: B:93:0x0278  */
    /* JADX WARN: Code duplicated, block: B:95:0x0280 A[LOOP:26: B:92:0x0276->B:95:0x0280, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:99:0x0291  */
    final int zzc(Object obj, byte[] bArr, int i10, int i11, int i12, zzdj zzdjVar) throws IOException {
        Unsafe unsafe;
        int i13;
        int iZzi;
        int i14;
        int i15;
        int iZzq;
        int i16;
        int i17;
        byte[] bArr2;
        zzdj zzdjVar2;
        int i18;
        int i19;
        int i20;
        int iZzg;
        zzej zzejVar;
        int i21;
        int[] iArr;
        int i22;
        int iZzr;
        long j6;
        int i23;
        int i24;
        int i25;
        int i26;
        int i27;
        int i28;
        int i29;
        int i30;
        int i31;
        byte b7;
        int i32;
        zzdj zzdjVar3;
        int i33;
        Unsafe unsafe2;
        int iZzh;
        boolean z6;
        int i34;
        int i35;
        int iZzh2;
        int i36;
        int length;
        int i37;
        char[] cArr;
        int i38;
        int i39;
        int i40;
        int i41;
        byte b10;
        byte b11;
        int i42;
        byte b12;
        int i43;
        int i44;
        zzdj zzdjVar4;
        int i45;
        int i46;
        Unsafe unsafe3;
        int i47;
        Unsafe unsafe4;
        int i48;
        int i49;
        byte[] bArr3;
        int i50;
        zzfc zzfcVarZzd;
        long j10;
        Unsafe unsafe5;
        zzfc zzfcVarZzd2;
        zzfc zzfcVar;
        int i51;
        Unsafe unsafe6;
        int iZzh3;
        zzeg zzegVar;
        int iZzh4;
        zzeg zzegVar2;
        int i52;
        zzeq zzeqVar;
        int iZzh5;
        zzeq zzeqVar2;
        int i53;
        zzfr zzfrVar;
        int iZzh6;
        zzfr zzfrVar2;
        int i54;
        Unsafe unsafe7;
        int i55;
        int i56;
        int i57;
        int iZzf;
        int iZze;
        zzfr zzfrVar3;
        int iZzh7;
        zzfr zzfrVar4;
        int i58;
        zzey zzeyVar;
        int iZzh8;
        zzey zzeyVar2;
        int i59;
        zzdl zzdlVar;
        boolean z10;
        int iZzh9;
        boolean z11;
        zzdl zzdlVar2;
        int i60;
        boolean z12;
        int i61;
        int i62;
        int iZzh10;
        int i63;
        int i64;
        int i65;
        int iZzh11;
        int i66;
        byte[] bArr4;
        int i67;
        int iZzh12;
        int i68;
        int i69;
        int iZzj;
        zzfb zzfbVarZzu;
        zzhd zzhdVar;
        int i70;
        int i71;
        Iterator it;
        Object objZzo;
        int iIntValue;
        int size;
        Object objZzo2;
        int i72;
        int i73;
        int iIntValue2;
        int i74;
        zzey zzeyVar3;
        int iZzh13;
        zzey zzeyVar4;
        int i75;
        zzfr zzfrVar5;
        int iZzh14;
        zzfr zzfrVar6;
        int i76;
        int i77;
        zzgm zzgmVarZzv;
        int iZzh15;
        Unsafe unsafe8;
        Object object;
        Unsafe unsafe9;
        long j11;
        int i78;
        int i79;
        int iZzh16;
        int iZzk;
        boolean z13;
        int iZzh17;
        int i80;
        int i81;
        int i82;
        Unsafe unsafe10;
        byte[] bArr5;
        int i83;
        int iZza;
        int i84;
        zzfb zzfbVarZzu2;
        Unsafe unsafe11;
        byte[] bArr6;
        int i85;
        int iZzh18;
        zzgf<T> zzgfVar = this;
        Object obj2 = obj;
        byte[] bArr7 = bArr;
        i11 = i11;
        i12 = i12;
        zzdj zzdjVar5 = zzdjVar;
        zzA(obj);
        Unsafe unsafe12 = zzb;
        int i86 = 0;
        int iZzl = i10;
        int i87 = 0;
        int i88 = 0;
        int i89 = 0;
        int i90 = -1;
        int i91 = 1048575;
        while (true) {
            if (iZzl < i11) {
                int i92 = iZzl + 1;
                byte b13 = bArr7[iZzl];
                if (b13 < 0) {
                    iZzi = zzdk.zzi(b13, bArr7, i92, zzdjVar5);
                    i13 = zzdjVar5.zza;
                } else {
                    i13 = b13;
                    iZzi = i92;
                }
                int i93 = i13 >>> 3;
                if (i93 > i90) {
                    iZzq = (i93 < zzgfVar.zze || i93 > zzgfVar.zzf) ? -1 : zzgfVar.zzq(i93, i87 / 3);
                } else {
                    if (i93 < zzgfVar.zze || i93 > zzgfVar.zzf) {
                        i14 = -1;
                        i15 = -1;
                    } else {
                        iZzq = zzgfVar.zzq(i93, i86);
                    }
                    if (i15 == i14) {
                        i21 = i13 & 7;
                        iArr = zzgfVar.zzc;
                        i22 = iArr[i15 + 1];
                        iZzr = zzr(i22);
                        j6 = i22 & 1048575;
                        i23 = iZzi;
                        if (iZzr <= 17) {
                            int i94 = iArr[i15 + 2];
                            i24 = 1 << (i94 >>> 20);
                            i25 = 1048575;
                            i26 = i94 & 1048575;
                            if (i26 != i91) {
                                if (i91 != 1048575) {
                                    unsafe12.putInt(obj2, i91, i89);
                                    i25 = 1048575;
                                }
                                if (i26 == i25) {
                                    i89 = 0;
                                } else {
                                    i89 = unsafe12.getInt(obj2, i26);
                                }
                                i27 = i26;
                            } else {
                                i27 = i91;
                            }
                            switch (iZzr) {
                                case 0:
                                    zzdjVar3 = zzdjVar5;
                                    i28 = i15;
                                    i29 = i27;
                                    i30 = i93;
                                    i31 = i23;
                                    i33 = 0;
                                    unsafe2 = unsafe12;
                                    i32 = i13;
                                    bArr = bArr;
                                    if (i21 == 1) {
                                        iZzh = i31 + 8;
                                        i89 |= i24;
                                        zzhn.zzo(obj2, j6, Double.longBitsToDouble(zzdk.zzn(bArr, i31)));
                                        i12 = i12;
                                        i86 = i33;
                                        unsafe12 = unsafe2;
                                        zzdjVar5 = zzdjVar3;
                                        i87 = i28;
                                        i90 = i30;
                                        i91 = i29;
                                        iZzl = iZzh;
                                        int i95 = i32;
                                        bArr7 = bArr;
                                        i88 = i95;
                                    } else {
                                        i17 = i29;
                                        i12 = i12;
                                        i18 = i31;
                                        i16 = i33;
                                        unsafe = unsafe2;
                                        i87 = i28;
                                        i20 = i32;
                                        i19 = i30;
                                        zzdjVar2 = zzdjVar3;
                                        bArr2 = bArr;
                                    }
                                    break;
                                case 1:
                                    zzdjVar3 = zzdjVar5;
                                    i28 = i15;
                                    i29 = i27;
                                    i30 = i93;
                                    i31 = i23;
                                    i33 = 0;
                                    unsafe2 = unsafe12;
                                    i32 = i13;
                                    bArr = bArr;
                                    if (i21 == 5) {
                                        iZzh = i31 + 4;
                                        i89 |= i24;
                                        zzhn.zzp(obj2, j6, Float.intBitsToFloat(zzdk.zzb(bArr, i31)));
                                        i12 = i12;
                                        i86 = i33;
                                        unsafe12 = unsafe2;
                                        zzdjVar5 = zzdjVar3;
                                        i87 = i28;
                                        i90 = i30;
                                        i91 = i29;
                                        iZzl = iZzh;
                                        int i96 = i32;
                                        bArr7 = bArr;
                                        i88 = i96;
                                    } else {
                                        i17 = i29;
                                        i12 = i12;
                                        i18 = i31;
                                        i16 = i33;
                                        unsafe = unsafe2;
                                        i87 = i28;
                                        i20 = i32;
                                        i19 = i30;
                                        zzdjVar2 = zzdjVar3;
                                        bArr2 = bArr;
                                    }
                                    break;
                                case 2:
                                case 3:
                                    zzdjVar3 = zzdjVar5;
                                    i28 = i15;
                                    i29 = i27;
                                    i30 = i93;
                                    i31 = i23;
                                    i33 = 0;
                                    unsafe2 = unsafe12;
                                    i32 = i13;
                                    bArr = bArr;
                                    if (i21 == 0) {
                                        i89 |= i24;
                                        int iZzk2 = zzdk.zzk(bArr, i31, zzdjVar3);
                                        unsafe2.putLong(obj, j6, zzdjVar3.zzb);
                                        i86 = 0;
                                        iZzl = iZzk2;
                                        unsafe12 = unsafe2;
                                        zzdjVar5 = zzdjVar3;
                                        i87 = i28;
                                        i90 = i30;
                                        i91 = i29;
                                        int i97 = i32;
                                        bArr7 = bArr;
                                        i88 = i97;
                                    } else {
                                        i17 = i29;
                                        i12 = i12;
                                        i18 = i31;
                                        i16 = i33;
                                        unsafe = unsafe2;
                                        i87 = i28;
                                        i20 = i32;
                                        i19 = i30;
                                        zzdjVar2 = zzdjVar3;
                                        bArr2 = bArr;
                                    }
                                    break;
                                case 4:
                                case 11:
                                    zzdjVar3 = zzdjVar5;
                                    i28 = i15;
                                    i29 = i27;
                                    i30 = i93;
                                    i31 = i23;
                                    i33 = 0;
                                    unsafe2 = unsafe12;
                                    i32 = i13;
                                    bArr = bArr;
                                    if (i21 == 0) {
                                        i89 |= i24;
                                        iZzh = zzdk.zzh(bArr, i31, zzdjVar3);
                                        unsafe2.putInt(obj2, j6, zzdjVar3.zza);
                                        i12 = i12;
                                        i86 = i33;
                                        unsafe12 = unsafe2;
                                        zzdjVar5 = zzdjVar3;
                                        i87 = i28;
                                        i90 = i30;
                                        i91 = i29;
                                        iZzl = iZzh;
                                        int i98 = i32;
                                        bArr7 = bArr;
                                        i88 = i98;
                                    } else {
                                        i17 = i29;
                                        i12 = i12;
                                        i18 = i31;
                                        i16 = i33;
                                        unsafe = unsafe2;
                                        i87 = i28;
                                        i20 = i32;
                                        i19 = i30;
                                        zzdjVar2 = zzdjVar3;
                                        bArr2 = bArr;
                                    }
                                    break;
                                case 5:
                                case 14:
                                    zzdjVar3 = zzdjVar5;
                                    i28 = i15;
                                    i29 = i27;
                                    i30 = i93;
                                    i31 = i23;
                                    i33 = 0;
                                    unsafe2 = unsafe12;
                                    i32 = i13;
                                    bArr = bArr;
                                    if (i21 == 1) {
                                        i89 |= i24;
                                        unsafe2.putLong(obj, j6, zzdk.zzn(bArr, i31));
                                        i86 = 0;
                                        unsafe12 = unsafe2;
                                        zzdjVar5 = zzdjVar3;
                                        i87 = i28;
                                        iZzl = i31 + 8;
                                        i90 = i30;
                                        i91 = i29;
                                        int i99 = i32;
                                        bArr7 = bArr;
                                        i88 = i99;
                                    } else {
                                        i17 = i29;
                                        i12 = i12;
                                        i18 = i31;
                                        i16 = i33;
                                        unsafe = unsafe2;
                                        i87 = i28;
                                        i20 = i32;
                                        i19 = i30;
                                        zzdjVar2 = zzdjVar3;
                                        bArr2 = bArr;
                                    }
                                    break;
                                case 6:
                                case 13:
                                    zzdjVar3 = zzdjVar5;
                                    i28 = i15;
                                    i29 = i27;
                                    i30 = i93;
                                    i31 = i23;
                                    i33 = 0;
                                    unsafe2 = unsafe12;
                                    i32 = i13;
                                    bArr = bArr;
                                    if (i21 == 5) {
                                        iZzh = i31 + 4;
                                        i89 |= i24;
                                        unsafe2.putInt(obj2, j6, zzdk.zzb(bArr, i31));
                                        i12 = i12;
                                        i86 = i33;
                                        unsafe12 = unsafe2;
                                        zzdjVar5 = zzdjVar3;
                                        i87 = i28;
                                        i90 = i30;
                                        i91 = i29;
                                        iZzl = iZzh;
                                        int i910 = i32;
                                        bArr7 = bArr;
                                        i88 = i910;
                                    } else {
                                        i17 = i29;
                                        i12 = i12;
                                        i18 = i31;
                                        i16 = i33;
                                        unsafe = unsafe2;
                                        i87 = i28;
                                        i20 = i32;
                                        i19 = i30;
                                        zzdjVar2 = zzdjVar3;
                                        bArr2 = bArr;
                                    }
                                    break;
                                case 7:
                                    zzdjVar3 = zzdjVar5;
                                    i28 = i15;
                                    i29 = i27;
                                    i30 = i93;
                                    i31 = i23;
                                    i33 = 0;
                                    unsafe2 = unsafe12;
                                    i32 = i13;
                                    bArr = bArr;
                                    if (i21 == 0) {
                                        i89 |= i24;
                                        iZzh = zzdk.zzk(bArr, i31, zzdjVar3);
                                        if (zzdjVar3.zzb != 0) {
                                            z6 = true;
                                        } else {
                                            z6 = false;
                                        }
                                        zzhn.zzm(obj2, j6, z6);
                                        i12 = i12;
                                        i86 = i33;
                                        unsafe12 = unsafe2;
                                        zzdjVar5 = zzdjVar3;
                                        i87 = i28;
                                        i90 = i30;
                                        i91 = i29;
                                        iZzl = iZzh;
                                        int i911 = i32;
                                        bArr7 = bArr;
                                        i88 = i911;
                                    } else {
                                        i17 = i29;
                                        i12 = i12;
                                        i18 = i31;
                                        i16 = i33;
                                        unsafe = unsafe2;
                                        i87 = i28;
                                        i20 = i32;
                                        i19 = i30;
                                        zzdjVar2 = zzdjVar3;
                                        bArr2 = bArr;
                                    }
                                    break;
                                case 8:
                                    zzdjVar3 = zzdjVar5;
                                    i28 = i15;
                                    i29 = i27;
                                    i30 = i93;
                                    i31 = i23;
                                    unsafe2 = unsafe12;
                                    i32 = i13;
                                    bArr = bArr;
                                    if (i21 == 2) {
                                        if ((i22 & 536870912) != 0) {
                                            i35 = i89 | i24;
                                            iZzh2 = zzdk.zzh(bArr, i31, zzdjVar3);
                                            i36 = zzdjVar3.zza;
                                            if (i36 >= 0) {
                                                throw zzff.zzd();
                                            }
                                            if (i36 == 0) {
                                                zzdjVar3.zzc = "";
                                                i39 = i35;
                                                i40 = 0;
                                            } else {
                                                int i100 = zzhs.zza;
                                                length = bArr.length;
                                                if ((((length - iZzh2) - i36) | iZzh2 | i36) >= 0) {
                                                    throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(length), Integer.valueOf(iZzh2), Integer.valueOf(i36)));
                                                }
                                                i37 = iZzh2 + i36;
                                                cArr = new char[i36];
                                                i38 = 0;
                                                while (iZzh2 < i37) {
                                                    b12 = bArr[iZzh2];
                                                    if (zzho.zzd(b12)) {
                                                        iZzh2++;
                                                        cArr[i38] = (char) b12;
                                                        i38++;
                                                    } else {
                                                        while (iZzh2 < i37) {
                                                            i41 = iZzh2 + 1;
                                                            b10 = bArr[iZzh2];
                                                            if (zzho.zzd(b10)) {
                                                                cArr[i38] = (char) b10;
                                                                i38++;
                                                                iZzh2 = i41;
                                                                while (iZzh2 < i37) {
                                                                    b11 = bArr[iZzh2];
                                                                    if (zzho.zzd(b11)) {
                                                                    }
                                                                    iZzh2++;
                                                                    cArr[i38] = (char) b11;
                                                                    i38++;
                                                                }
                                                            } else {
                                                                i42 = i35;
                                                                if (b10 < -32) {
                                                                    if (i41 < i37) {
                                                                        throw zzff.zzc();
                                                                    }
                                                                    iZzh2 += 2;
                                                                    zzho.zzc(b10, bArr[i41], cArr, i38);
                                                                    i38++;
                                                                } else if (b10 < -16) {
                                                                    if (i41 < i37 - 1) {
                                                                        throw zzff.zzc();
                                                                    }
                                                                    int i101 = iZzh2 + 2;
                                                                    iZzh2 += 3;
                                                                    zzho.zzb(b10, bArr[i41], bArr[i101], cArr, i38);
                                                                    i35 = i42;
                                                                    i38++;
                                                                } else {
                                                                    if (i41 < i37 - 2) {
                                                                        throw zzff.zzc();
                                                                    }
                                                                    byte b14 = bArr[i41];
                                                                    int i102 = iZzh2 + 3;
                                                                    byte b15 = bArr[iZzh2 + 2];
                                                                    iZzh2 += 4;
                                                                    zzho.zza(b10, b14, b15, bArr[i102], cArr, i38);
                                                                    i38 += 2;
                                                                }
                                                                i35 = i42;
                                                            }
                                                            break;
                                                        }
                                                        i39 = i35;
                                                        i40 = 0;
                                                        zzdjVar3.zzc = new String(cArr, 0, i38);
                                                        iZzh2 = i37;
                                                    }
                                                }
                                                while (iZzh2 < i37) {
                                                    i41 = iZzh2 + 1;
                                                    b10 = bArr[iZzh2];
                                                    if (zzho.zzd(b10)) {
                                                        cArr[i38] = (char) b10;
                                                        i38++;
                                                        iZzh2 = i41;
                                                        while (iZzh2 < i37) {
                                                            b11 = bArr[iZzh2];
                                                            if (zzho.zzd(b11)) {
                                                            }
                                                            iZzh2++;
                                                            cArr[i38] = (char) b11;
                                                            i38++;
                                                        }
                                                    } else {
                                                        i42 = i35;
                                                        if (b10 < -32) {
                                                            if (i41 < i37) {
                                                                throw zzff.zzc();
                                                            }
                                                            iZzh2 += 2;
                                                            zzho.zzc(b10, bArr[i41], cArr, i38);
                                                            i38++;
                                                        } else if (b10 < -16) {
                                                            if (i41 < i37 - 1) {
                                                                throw zzff.zzc();
                                                            }
                                                            int i103 = iZzh2 + 2;
                                                            iZzh2 += 3;
                                                            zzho.zzb(b10, bArr[i41], bArr[i103], cArr, i38);
                                                            i35 = i42;
                                                            i38++;
                                                        } else {
                                                            if (i41 < i37 - 2) {
                                                                throw zzff.zzc();
                                                            }
                                                            byte b16 = bArr[i41];
                                                            int i104 = iZzh2 + 3;
                                                            byte b17 = bArr[iZzh2 + 2];
                                                            iZzh2 += 4;
                                                            zzho.zza(b10, b16, b17, bArr[i104], cArr, i38);
                                                            i38 += 2;
                                                        }
                                                        i35 = i42;
                                                    }
                                                    break;
                                                }
                                                i39 = i35;
                                                i40 = 0;
                                                zzdjVar3.zzc = new String(cArr, 0, i38);
                                                iZzh2 = i37;
                                            }
                                            iZzh = iZzh2;
                                            i33 = i40;
                                            i89 = i39;
                                        } else {
                                            i33 = 0;
                                            iZzh = zzdk.zzh(bArr, i31, zzdjVar3);
                                            i34 = zzdjVar3.zza;
                                            if (i34 >= 0) {
                                                throw zzff.zzd();
                                            }
                                            int i105 = i89 | i24;
                                            if (i34 == 0) {
                                                zzdjVar3.zzc = "";
                                            } else {
                                                zzdjVar3.zzc = new String(bArr, iZzh, i34, zzfd.zzb);
                                                iZzh += i34;
                                            }
                                            i89 = i105;
                                        }
                                        unsafe2.putObject(obj2, j6, zzdjVar3.zzc);
                                        i12 = i12;
                                        i86 = i33;
                                        unsafe12 = unsafe2;
                                        zzdjVar5 = zzdjVar3;
                                        i87 = i28;
                                        i90 = i30;
                                        i91 = i29;
                                        iZzl = iZzh;
                                        int i912 = i32;
                                        bArr7 = bArr;
                                        i88 = i912;
                                    } else {
                                        i33 = 0;
                                        i17 = i29;
                                        i12 = i12;
                                        i18 = i31;
                                        i16 = i33;
                                        unsafe = unsafe2;
                                        i87 = i28;
                                        i20 = i32;
                                        i19 = i30;
                                        zzdjVar2 = zzdjVar3;
                                        bArr2 = bArr;
                                    }
                                    break;
                                case 9:
                                    zzdjVar3 = zzdjVar5;
                                    i28 = i15;
                                    i29 = i27;
                                    i30 = i93;
                                    i31 = i23;
                                    unsafe2 = unsafe12;
                                    i32 = i13;
                                    bArr = bArr;
                                    if (i21 == 2) {
                                        i89 |= i24;
                                        Object objZzx = zzgfVar.zzx(obj2, i28);
                                        iZzh = zzdk.zzm(objZzx, zzgfVar.zzv(i28), bArr, i31, i11, zzdjVar);
                                        zzgfVar.zzF(obj2, i28, objZzx);
                                        unsafe12 = unsafe2;
                                        zzdjVar5 = zzdjVar3;
                                        i87 = i28;
                                        i90 = i30;
                                        i86 = 0;
                                        i91 = i29;
                                        iZzl = iZzh;
                                        int i913 = i32;
                                        bArr7 = bArr;
                                        i88 = i913;
                                    } else {
                                        i33 = 0;
                                        i17 = i29;
                                        i12 = i12;
                                        i18 = i31;
                                        i16 = i33;
                                        unsafe = unsafe2;
                                        i87 = i28;
                                        i20 = i32;
                                        i19 = i30;
                                        zzdjVar2 = zzdjVar3;
                                        bArr2 = bArr;
                                    }
                                    break;
                                case 10:
                                    zzdjVar3 = zzdjVar5;
                                    i28 = i15;
                                    i29 = i27;
                                    i30 = i93;
                                    i31 = i23;
                                    unsafe2 = unsafe12;
                                    i32 = i13;
                                    bArr = bArr;
                                    if (i21 == 2) {
                                        i89 |= i24;
                                        iZzh = zzdk.zza(bArr, i31, zzdjVar3);
                                        unsafe2.putObject(obj2, j6, zzdjVar3.zzc);
                                        unsafe12 = unsafe2;
                                        zzdjVar5 = zzdjVar3;
                                        i87 = i28;
                                        i90 = i30;
                                        i86 = 0;
                                        i91 = i29;
                                        iZzl = iZzh;
                                        int i914 = i32;
                                        bArr7 = bArr;
                                        i88 = i914;
                                    } else {
                                        i33 = 0;
                                        i17 = i29;
                                        i12 = i12;
                                        i18 = i31;
                                        i16 = i33;
                                        unsafe = unsafe2;
                                        i87 = i28;
                                        i20 = i32;
                                        i19 = i30;
                                        zzdjVar2 = zzdjVar3;
                                        bArr2 = bArr;
                                    }
                                    break;
                                case 12:
                                    i12 = i12;
                                    zzdjVar3 = zzdjVar5;
                                    i28 = i15;
                                    i29 = i27;
                                    i30 = i93;
                                    i31 = i23;
                                    unsafe2 = unsafe12;
                                    i32 = i13;
                                    bArr = bArr;
                                    if (i21 == 0) {
                                        int iZzh19 = zzdk.zzh(bArr, i31, zzdjVar3);
                                        i43 = zzdjVar3.zza;
                                        zzfb zzfbVarZzu3 = zzgfVar.zzu(i28);
                                        if ((i22 & Integer.MIN_VALUE) != 0 || zzfbVarZzu3 == null || zzfbVarZzu3.zza(i43)) {
                                            i89 |= i24;
                                            unsafe2.putInt(obj2, j6, i43);
                                        } else {
                                            zzd(obj).zzj(i32, Long.valueOf(i43));
                                        }
                                        i11 = i11;
                                        unsafe12 = unsafe2;
                                        zzdjVar5 = zzdjVar3;
                                        i87 = i28;
                                        iZzl = iZzh19;
                                        i90 = i30;
                                        i86 = 0;
                                        i91 = i29;
                                        int i915 = i32;
                                        bArr7 = bArr;
                                        i88 = i915;
                                    } else {
                                        i33 = 0;
                                        i17 = i29;
                                        i12 = i12;
                                        i18 = i31;
                                        i16 = i33;
                                        unsafe = unsafe2;
                                        i87 = i28;
                                        i20 = i32;
                                        i19 = i30;
                                        zzdjVar2 = zzdjVar3;
                                        bArr2 = bArr;
                                    }
                                    break;
                                case 15:
                                    zzdjVar3 = zzdjVar5;
                                    i28 = i15;
                                    i29 = i27;
                                    i30 = i93;
                                    i31 = i23;
                                    unsafe2 = unsafe12;
                                    i32 = i13;
                                    bArr = bArr;
                                    if (i21 == 0) {
                                        i89 |= i24;
                                        iZzh = zzdk.zzh(bArr, i31, zzdjVar3);
                                        unsafe2.putInt(obj2, j6, zzea.zzb(zzdjVar3.zza));
                                        unsafe12 = unsafe2;
                                        zzdjVar5 = zzdjVar3;
                                        i87 = i28;
                                        i90 = i30;
                                        i86 = 0;
                                        i91 = i29;
                                        iZzl = iZzh;
                                        int i916 = i32;
                                        bArr7 = bArr;
                                        i88 = i916;
                                    } else {
                                        i33 = 0;
                                        i17 = i29;
                                        i12 = i12;
                                        i18 = i31;
                                        i16 = i33;
                                        unsafe = unsafe2;
                                        i87 = i28;
                                        i20 = i32;
                                        i19 = i30;
                                        zzdjVar2 = zzdjVar3;
                                        bArr2 = bArr;
                                    }
                                    break;
                                case 16:
                                    i28 = i15;
                                    i29 = i27;
                                    i30 = i93;
                                    i31 = i23;
                                    b7 = -1;
                                    i32 = i13;
                                    if (i21 == 0) {
                                        i89 |= i24;
                                        bArr = bArr;
                                        int iZzk3 = zzdk.zzk(bArr, i31, zzdjVar5);
                                        unsafe12.putLong(obj, j6, zzea.zzc(zzdjVar5.zzb));
                                        i11 = i11;
                                        i12 = i12;
                                        unsafe12 = unsafe12;
                                        zzdjVar5 = zzdjVar5;
                                        i87 = i28;
                                        iZzl = iZzk3;
                                        i90 = i30;
                                        i86 = 0;
                                        i91 = i29;
                                        int i917 = i32;
                                        bArr7 = bArr;
                                        i88 = i917;
                                    } else {
                                        zzdjVar3 = zzdjVar5;
                                        unsafe2 = unsafe12;
                                        i33 = 0;
                                        i17 = i29;
                                        i12 = i12;
                                        i18 = i31;
                                        i16 = i33;
                                        unsafe = unsafe2;
                                        i87 = i28;
                                        i20 = i32;
                                        i19 = i30;
                                        zzdjVar2 = zzdjVar3;
                                        bArr2 = bArr;
                                    }
                                    break;
                                default:
                                    if (i21 == 3) {
                                        int i106 = i89 | i24;
                                        Object objZzx2 = zzgfVar.zzx(obj2, i15);
                                        int i107 = i15;
                                        iZzl = zzdk.zzl(objZzx2, zzgfVar.zzv(i15), bArr, i23, i11, (i93 << 3) | 4, zzdjVar);
                                        zzgfVar.zzF(obj2, i107, objZzx2);
                                        i91 = i27;
                                        i12 = i12;
                                        i89 = i106;
                                        i87 = i107;
                                        i88 = i13;
                                        i90 = i93;
                                        i86 = 0;
                                        bArr7 = bArr;
                                        i11 = i11;
                                    } else {
                                        i28 = i15;
                                        i29 = i27;
                                        i30 = i93;
                                        i31 = i23;
                                        b7 = -1;
                                        i32 = i13;
                                        zzdjVar3 = zzdjVar5;
                                        unsafe2 = unsafe12;
                                        i33 = 0;
                                        i17 = i29;
                                        i12 = i12;
                                        i18 = i31;
                                        i16 = i33;
                                        unsafe = unsafe2;
                                        i87 = i28;
                                        i20 = i32;
                                        i19 = i30;
                                        zzdjVar2 = zzdjVar3;
                                        bArr2 = bArr;
                                    }
                                    break;
                            }
                        } else {
                            i17 = i91;
                            i44 = i93;
                            i16 = 0;
                            zzdjVar4 = zzdjVar5;
                            i45 = i13;
                            i46 = i15;
                            unsafe3 = unsafe12;
                            if (iZzr == 27) {
                                i48 = i46;
                                i49 = i23;
                                bArr3 = bArr;
                                i47 = i89;
                                zzdjVar4 = zzdjVar4;
                                if (iZzr <= 49) {
                                    j10 = i22;
                                    unsafe5 = zzb;
                                    zzfcVarZzd2 = (zzfc) unsafe5.getObject(obj2, j6);
                                    if (!zzfcVarZzd2.zzc()) {
                                        int size2 = zzfcVarZzd2.size();
                                        zzfcVarZzd2 = zzfcVarZzd2.zzd(size2 != 0 ? size2 + size2 : 10);
                                        unsafe5.putObject(obj2, j6, zzfcVarZzd2);
                                    }
                                    zzfcVar = zzfcVarZzd2;
                                    switch (iZzr) {
                                        case 18:
                                        case 35:
                                            bArr3 = bArr;
                                            i51 = i11;
                                            zzdjVar4 = zzdjVar4;
                                            i90 = i44;
                                            unsafe6 = unsafe3;
                                            if (i21 == 2) {
                                                zzegVar2 = (zzeg) zzfcVar;
                                                iZzh3 = zzdk.zzh(bArr3, i49, zzdjVar4);
                                                i52 = zzdjVar4.zza + iZzh3;
                                                while (iZzh3 < i52) {
                                                    zzegVar2.zze(Double.longBitsToDouble(zzdk.zzn(bArr3, iZzh3)));
                                                    iZzh3 += 8;
                                                }
                                                if (iZzh3 != i52) {
                                                    throw zzff.zzg();
                                                }
                                            } else if (i21 == 1) {
                                                iZzh3 = i49 + 8;
                                                zzegVar = (zzeg) zzfcVar;
                                                zzegVar.zze(Double.longBitsToDouble(zzdk.zzn(bArr3, i49)));
                                                while (iZzh3 < i51) {
                                                    iZzh4 = zzdk.zzh(bArr3, iZzh3, zzdjVar4);
                                                    if (i45 == zzdjVar4.zza) {
                                                        zzegVar.zze(Double.longBitsToDouble(zzdk.zzn(bArr3, iZzh4)));
                                                        iZzh3 = iZzh4 + 8;
                                                    }
                                                }
                                            } else {
                                                iZzh3 = i49;
                                            }
                                            if (iZzh3 != i49) {
                                                i12 = i12;
                                                i11 = i51;
                                                i87 = i48;
                                                unsafe12 = unsafe6;
                                                zzdjVar5 = zzdjVar4;
                                                i88 = i45;
                                                i86 = 0;
                                                i91 = i17;
                                                i89 = i47;
                                                obj2 = obj;
                                                iZzl = iZzh3;
                                                bArr7 = bArr3;
                                            } else {
                                                obj2 = obj;
                                                i18 = iZzh3;
                                                i87 = i48;
                                                i19 = i90;
                                                unsafe = unsafe6;
                                                i89 = i47;
                                                zzdjVar2 = zzdjVar4;
                                                bArr2 = bArr3;
                                                i20 = i45;
                                            }
                                            break;
                                        case 19:
                                        case 36:
                                            bArr3 = bArr;
                                            i51 = i11;
                                            zzdjVar4 = zzdjVar4;
                                            i90 = i44;
                                            unsafe6 = unsafe3;
                                            if (i21 == 2) {
                                                zzeqVar2 = (zzeq) zzfcVar;
                                                iZzh3 = zzdk.zzh(bArr3, i49, zzdjVar4);
                                                i53 = zzdjVar4.zza + iZzh3;
                                                while (iZzh3 < i53) {
                                                    zzeqVar2.zze(Float.intBitsToFloat(zzdk.zzb(bArr3, iZzh3)));
                                                    iZzh3 += 4;
                                                }
                                                if (iZzh3 != i53) {
                                                    throw zzff.zzg();
                                                }
                                            } else if (i21 == 5) {
                                                iZzh3 = i49 + 4;
                                                zzeqVar = (zzeq) zzfcVar;
                                                zzeqVar.zze(Float.intBitsToFloat(zzdk.zzb(bArr3, i49)));
                                                while (iZzh3 < i51) {
                                                    iZzh5 = zzdk.zzh(bArr3, iZzh3, zzdjVar4);
                                                    if (i45 == zzdjVar4.zza) {
                                                        zzeqVar.zze(Float.intBitsToFloat(zzdk.zzb(bArr3, iZzh5)));
                                                        iZzh3 = iZzh5 + 4;
                                                    }
                                                }
                                            } else {
                                                iZzh3 = i49;
                                            }
                                            if (iZzh3 != i49) {
                                                i12 = i12;
                                                i11 = i51;
                                                i87 = i48;
                                                unsafe12 = unsafe6;
                                                zzdjVar5 = zzdjVar4;
                                                i88 = i45;
                                                i86 = 0;
                                                i91 = i17;
                                                i89 = i47;
                                                obj2 = obj;
                                                iZzl = iZzh3;
                                                bArr7 = bArr3;
                                            } else {
                                                obj2 = obj;
                                                i18 = iZzh3;
                                                i87 = i48;
                                                i19 = i90;
                                                unsafe = unsafe6;
                                                i89 = i47;
                                                zzdjVar2 = zzdjVar4;
                                                bArr2 = bArr3;
                                                i20 = i45;
                                            }
                                            break;
                                        case 20:
                                        case 21:
                                        case 37:
                                        case 38:
                                            bArr3 = bArr;
                                            i51 = i11;
                                            zzdjVar4 = zzdjVar4;
                                            i90 = i44;
                                            unsafe6 = unsafe3;
                                            if (i21 == 2) {
                                                zzfrVar2 = (zzfr) zzfcVar;
                                                iZzh3 = zzdk.zzh(bArr3, i49, zzdjVar4);
                                                i54 = zzdjVar4.zza + iZzh3;
                                                while (iZzh3 < i54) {
                                                    iZzh3 = zzdk.zzk(bArr3, iZzh3, zzdjVar4);
                                                    zzfrVar2.zzf(zzdjVar4.zzb);
                                                }
                                                if (iZzh3 != i54) {
                                                    throw zzff.zzg();
                                                }
                                            } else if (i21 == 0) {
                                                zzfrVar = (zzfr) zzfcVar;
                                                iZzh3 = zzdk.zzk(bArr3, i49, zzdjVar4);
                                                zzfrVar.zzf(zzdjVar4.zzb);
                                                while (iZzh3 < i51) {
                                                    iZzh6 = zzdk.zzh(bArr3, iZzh3, zzdjVar4);
                                                    if (i45 == zzdjVar4.zza) {
                                                        iZzh3 = zzdk.zzk(bArr3, iZzh6, zzdjVar4);
                                                        zzfrVar.zzf(zzdjVar4.zzb);
                                                    }
                                                }
                                            } else {
                                                iZzh3 = i49;
                                            }
                                            if (iZzh3 != i49) {
                                                i12 = i12;
                                                i11 = i51;
                                                i87 = i48;
                                                unsafe12 = unsafe6;
                                                zzdjVar5 = zzdjVar4;
                                                i88 = i45;
                                                i86 = 0;
                                                i91 = i17;
                                                i89 = i47;
                                                obj2 = obj;
                                                iZzl = iZzh3;
                                                bArr7 = bArr3;
                                            } else {
                                                obj2 = obj;
                                                i18 = iZzh3;
                                                i87 = i48;
                                                i19 = i90;
                                                unsafe = unsafe6;
                                                i89 = i47;
                                                zzdjVar2 = zzdjVar4;
                                                bArr2 = bArr3;
                                                i20 = i45;
                                            }
                                            break;
                                        case 22:
                                        case 29:
                                        case 39:
                                        case 43:
                                            bArr3 = bArr;
                                            unsafe7 = unsafe3;
                                            i51 = i11;
                                            i55 = i48;
                                            i56 = i49;
                                            zzdjVar4 = zzdjVar4;
                                            i57 = i44;
                                            if (i21 == 2) {
                                                iZzf = zzdk.zzf(bArr3, i56, zzfcVar, zzdjVar4);
                                                unsafe6 = unsafe7;
                                                iZzh3 = iZzf;
                                                i49 = i56;
                                                i48 = i55;
                                                i90 = i57;
                                            } else if (i21 == 0) {
                                                unsafe6 = unsafe7;
                                                i49 = i56;
                                                i48 = i55;
                                                i90 = i57;
                                                iZzh3 = zzdk.zzj(i45, bArr, i56, i11, zzfcVar, zzdjVar);
                                            } else {
                                                unsafe6 = unsafe7;
                                                i49 = i56;
                                                i48 = i55;
                                                i90 = i57;
                                                iZzh3 = i49;
                                            }
                                            if (iZzh3 != i49) {
                                                i12 = i12;
                                                i11 = i51;
                                                i87 = i48;
                                                unsafe12 = unsafe6;
                                                zzdjVar5 = zzdjVar4;
                                                i88 = i45;
                                                i86 = 0;
                                                i91 = i17;
                                                i89 = i47;
                                                obj2 = obj;
                                                iZzl = iZzh3;
                                                bArr7 = bArr3;
                                            } else {
                                                obj2 = obj;
                                                i18 = iZzh3;
                                                i87 = i48;
                                                i19 = i90;
                                                unsafe = unsafe6;
                                                i89 = i47;
                                                zzdjVar2 = zzdjVar4;
                                                bArr2 = bArr3;
                                                i20 = i45;
                                            }
                                            break;
                                        case 23:
                                        case 32:
                                        case 40:
                                        case 46:
                                            bArr3 = bArr;
                                            unsafe7 = unsafe3;
                                            i51 = i11;
                                            i55 = i48;
                                            i56 = i49;
                                            zzdjVar4 = zzdjVar4;
                                            i57 = i44;
                                            if (i21 == 2) {
                                                if (i21 == 1) {
                                                    iZze = i56 + 8;
                                                    zzfrVar3 = (zzfr) zzfcVar;
                                                    zzfrVar3.zzf(zzdk.zzn(bArr3, i56));
                                                    while (iZze < i51) {
                                                        iZzh7 = zzdk.zzh(bArr3, iZze, zzdjVar4);
                                                        if (i45 == zzdjVar4.zza) {
                                                            unsafe6 = unsafe7;
                                                            i49 = i56;
                                                            i90 = i57;
                                                            iZzh3 = iZze;
                                                            i48 = i55;
                                                            if (iZzh3 != i49) {
                                                                i12 = i12;
                                                                i11 = i51;
                                                                i87 = i48;
                                                                unsafe12 = unsafe6;
                                                                zzdjVar5 = zzdjVar4;
                                                                i88 = i45;
                                                                i86 = 0;
                                                                i91 = i17;
                                                                i89 = i47;
                                                                obj2 = obj;
                                                                iZzl = iZzh3;
                                                                bArr7 = bArr3;
                                                            } else {
                                                                obj2 = obj;
                                                                i18 = iZzh3;
                                                                i87 = i48;
                                                                i19 = i90;
                                                                unsafe = unsafe6;
                                                                i89 = i47;
                                                                zzdjVar2 = zzdjVar4;
                                                                bArr2 = bArr3;
                                                                i20 = i45;
                                                            }
                                                        } else {
                                                            zzfrVar3.zzf(zzdk.zzn(bArr3, iZzh7));
                                                            iZze = iZzh7 + 8;
                                                        }
                                                        break;
                                                    }
                                                    unsafe6 = unsafe7;
                                                    i49 = i56;
                                                    i90 = i57;
                                                    iZzh3 = iZze;
                                                    i48 = i55;
                                                    if (iZzh3 != i49) {
                                                        i12 = i12;
                                                        i11 = i51;
                                                        i87 = i48;
                                                        unsafe12 = unsafe6;
                                                        zzdjVar5 = zzdjVar4;
                                                        i88 = i45;
                                                        i86 = 0;
                                                        i91 = i17;
                                                        i89 = i47;
                                                        obj2 = obj;
                                                        iZzl = iZzh3;
                                                        bArr7 = bArr3;
                                                    } else {
                                                        obj2 = obj;
                                                        i18 = iZzh3;
                                                        i87 = i48;
                                                        i19 = i90;
                                                        unsafe = unsafe6;
                                                        i89 = i47;
                                                        zzdjVar2 = zzdjVar4;
                                                        bArr2 = bArr3;
                                                        i20 = i45;
                                                    }
                                                }
                                                unsafe6 = unsafe7;
                                                i49 = i56;
                                                i48 = i55;
                                                i90 = i57;
                                                iZzh3 = i49;
                                                if (iZzh3 != i49) {
                                                    i12 = i12;
                                                    i11 = i51;
                                                    i87 = i48;
                                                    unsafe12 = unsafe6;
                                                    zzdjVar5 = zzdjVar4;
                                                    i88 = i45;
                                                    i86 = 0;
                                                    i91 = i17;
                                                    i89 = i47;
                                                    obj2 = obj;
                                                    iZzl = iZzh3;
                                                    bArr7 = bArr3;
                                                } else {
                                                    obj2 = obj;
                                                    i18 = iZzh3;
                                                    i87 = i48;
                                                    i19 = i90;
                                                    unsafe = unsafe6;
                                                    i89 = i47;
                                                    zzdjVar2 = zzdjVar4;
                                                    bArr2 = bArr3;
                                                    i20 = i45;
                                                }
                                                break;
                                            } else {
                                                zzfrVar4 = (zzfr) zzfcVar;
                                                iZzf = zzdk.zzh(bArr3, i56, zzdjVar4);
                                                i58 = zzdjVar4.zza + iZzf;
                                                while (iZzf < i58) {
                                                    zzfrVar4.zzf(zzdk.zzn(bArr3, iZzf));
                                                    iZzf += 8;
                                                }
                                                if (iZzf != i58) {
                                                    throw zzff.zzg();
                                                }
                                                unsafe6 = unsafe7;
                                                iZzh3 = iZzf;
                                                i49 = i56;
                                                i48 = i55;
                                                i90 = i57;
                                                if (iZzh3 != i49) {
                                                    i12 = i12;
                                                    i11 = i51;
                                                    i87 = i48;
                                                    unsafe12 = unsafe6;
                                                    zzdjVar5 = zzdjVar4;
                                                    i88 = i45;
                                                    i86 = 0;
                                                    i91 = i17;
                                                    i89 = i47;
                                                    obj2 = obj;
                                                    iZzl = iZzh3;
                                                    bArr7 = bArr3;
                                                } else {
                                                    obj2 = obj;
                                                    i18 = iZzh3;
                                                    i87 = i48;
                                                    i19 = i90;
                                                    unsafe = unsafe6;
                                                    i89 = i47;
                                                    zzdjVar2 = zzdjVar4;
                                                    bArr2 = bArr3;
                                                    i20 = i45;
                                                }
                                            }
                                            break;
                                        case 24:
                                        case 31:
                                        case 41:
                                        case 45:
                                            bArr3 = bArr;
                                            unsafe7 = unsafe3;
                                            i51 = i11;
                                            i55 = i48;
                                            i56 = i49;
                                            zzdjVar4 = zzdjVar4;
                                            i57 = i44;
                                            if (i21 == 2) {
                                                if (i21 == 5) {
                                                    iZze = i56 + 4;
                                                    zzeyVar = (zzey) zzfcVar;
                                                    zzeyVar.zzf(zzdk.zzb(bArr3, i56));
                                                    while (iZze < i51) {
                                                        iZzh8 = zzdk.zzh(bArr3, iZze, zzdjVar4);
                                                        if (i45 == zzdjVar4.zza) {
                                                            unsafe6 = unsafe7;
                                                            i49 = i56;
                                                            i90 = i57;
                                                            iZzh3 = iZze;
                                                            i48 = i55;
                                                            if (iZzh3 != i49) {
                                                                i12 = i12;
                                                                i11 = i51;
                                                                i87 = i48;
                                                                unsafe12 = unsafe6;
                                                                zzdjVar5 = zzdjVar4;
                                                                i88 = i45;
                                                                i86 = 0;
                                                                i91 = i17;
                                                                i89 = i47;
                                                                obj2 = obj;
                                                                iZzl = iZzh3;
                                                                bArr7 = bArr3;
                                                            } else {
                                                                obj2 = obj;
                                                                i18 = iZzh3;
                                                                i87 = i48;
                                                                i19 = i90;
                                                                unsafe = unsafe6;
                                                                i89 = i47;
                                                                zzdjVar2 = zzdjVar4;
                                                                bArr2 = bArr3;
                                                                i20 = i45;
                                                            }
                                                        } else {
                                                            zzeyVar.zzf(zzdk.zzb(bArr3, iZzh8));
                                                            iZze = iZzh8 + 4;
                                                        }
                                                        break;
                                                    }
                                                    unsafe6 = unsafe7;
                                                    i49 = i56;
                                                    i90 = i57;
                                                    iZzh3 = iZze;
                                                    i48 = i55;
                                                    if (iZzh3 != i49) {
                                                        i12 = i12;
                                                        i11 = i51;
                                                        i87 = i48;
                                                        unsafe12 = unsafe6;
                                                        zzdjVar5 = zzdjVar4;
                                                        i88 = i45;
                                                        i86 = 0;
                                                        i91 = i17;
                                                        i89 = i47;
                                                        obj2 = obj;
                                                        iZzl = iZzh3;
                                                        bArr7 = bArr3;
                                                    } else {
                                                        obj2 = obj;
                                                        i18 = iZzh3;
                                                        i87 = i48;
                                                        i19 = i90;
                                                        unsafe = unsafe6;
                                                        i89 = i47;
                                                        zzdjVar2 = zzdjVar4;
                                                        bArr2 = bArr3;
                                                        i20 = i45;
                                                    }
                                                }
                                                unsafe6 = unsafe7;
                                                i49 = i56;
                                                i48 = i55;
                                                i90 = i57;
                                                iZzh3 = i49;
                                                if (iZzh3 != i49) {
                                                    i12 = i12;
                                                    i11 = i51;
                                                    i87 = i48;
                                                    unsafe12 = unsafe6;
                                                    zzdjVar5 = zzdjVar4;
                                                    i88 = i45;
                                                    i86 = 0;
                                                    i91 = i17;
                                                    i89 = i47;
                                                    obj2 = obj;
                                                    iZzl = iZzh3;
                                                    bArr7 = bArr3;
                                                } else {
                                                    obj2 = obj;
                                                    i18 = iZzh3;
                                                    i87 = i48;
                                                    i19 = i90;
                                                    unsafe = unsafe6;
                                                    i89 = i47;
                                                    zzdjVar2 = zzdjVar4;
                                                    bArr2 = bArr3;
                                                    i20 = i45;
                                                }
                                                break;
                                            } else {
                                                zzeyVar2 = (zzey) zzfcVar;
                                                iZzf = zzdk.zzh(bArr3, i56, zzdjVar4);
                                                i59 = zzdjVar4.zza + iZzf;
                                                while (iZzf < i59) {
                                                    zzeyVar2.zzf(zzdk.zzb(bArr3, iZzf));
                                                    iZzf += 4;
                                                }
                                                if (iZzf != i59) {
                                                    throw zzff.zzg();
                                                }
                                                unsafe6 = unsafe7;
                                                iZzh3 = iZzf;
                                                i49 = i56;
                                                i48 = i55;
                                                i90 = i57;
                                                if (iZzh3 != i49) {
                                                    i12 = i12;
                                                    i11 = i51;
                                                    i87 = i48;
                                                    unsafe12 = unsafe6;
                                                    zzdjVar5 = zzdjVar4;
                                                    i88 = i45;
                                                    i86 = 0;
                                                    i91 = i17;
                                                    i89 = i47;
                                                    obj2 = obj;
                                                    iZzl = iZzh3;
                                                    bArr7 = bArr3;
                                                } else {
                                                    obj2 = obj;
                                                    i18 = iZzh3;
                                                    i87 = i48;
                                                    i19 = i90;
                                                    unsafe = unsafe6;
                                                    i89 = i47;
                                                    zzdjVar2 = zzdjVar4;
                                                    bArr2 = bArr3;
                                                    i20 = i45;
                                                }
                                            }
                                            break;
                                        case 25:
                                        case 42:
                                            bArr3 = bArr;
                                            unsafe7 = unsafe3;
                                            i51 = i11;
                                            i55 = i48;
                                            i56 = i49;
                                            zzdjVar4 = zzdjVar4;
                                            i57 = i44;
                                            if (i21 == 2) {
                                                if (i21 == 0) {
                                                    zzdlVar = (zzdl) zzfcVar;
                                                    iZzf = zzdk.zzk(bArr3, i56, zzdjVar4);
                                                    if (zzdjVar4.zzb != 0) {
                                                        z10 = true;
                                                    } else {
                                                        z10 = false;
                                                    }
                                                    zzdlVar.zze(z10);
                                                    while (iZzf < i51) {
                                                        iZzh9 = zzdk.zzh(bArr3, iZzf, zzdjVar4);
                                                        if (i45 == zzdjVar4.zza) {
                                                            iZzf = zzdk.zzk(bArr3, iZzh9, zzdjVar4);
                                                            if (zzdjVar4.zzb != 0) {
                                                                z11 = true;
                                                            } else {
                                                                z11 = false;
                                                            }
                                                            zzdlVar.zze(z11);
                                                        }
                                                    }
                                                }
                                                unsafe6 = unsafe7;
                                                i49 = i56;
                                                i48 = i55;
                                                i90 = i57;
                                                iZzh3 = i49;
                                                if (iZzh3 != i49) {
                                                    i12 = i12;
                                                    i11 = i51;
                                                    i87 = i48;
                                                    unsafe12 = unsafe6;
                                                    zzdjVar5 = zzdjVar4;
                                                    i88 = i45;
                                                    i86 = 0;
                                                    i91 = i17;
                                                    i89 = i47;
                                                    obj2 = obj;
                                                    iZzl = iZzh3;
                                                    bArr7 = bArr3;
                                                } else {
                                                    obj2 = obj;
                                                    i18 = iZzh3;
                                                    i87 = i48;
                                                    i19 = i90;
                                                    unsafe = unsafe6;
                                                    i89 = i47;
                                                    zzdjVar2 = zzdjVar4;
                                                    bArr2 = bArr3;
                                                    i20 = i45;
                                                }
                                            } else {
                                                zzdlVar2 = (zzdl) zzfcVar;
                                                iZzf = zzdk.zzh(bArr3, i56, zzdjVar4);
                                                i60 = zzdjVar4.zza + iZzf;
                                                while (iZzf < i60) {
                                                    iZzf = zzdk.zzk(bArr3, iZzf, zzdjVar4);
                                                    if (zzdjVar4.zzb != 0) {
                                                        z12 = true;
                                                    } else {
                                                        z12 = false;
                                                    }
                                                    zzdlVar2.zze(z12);
                                                }
                                                if (iZzf != i60) {
                                                    throw zzff.zzg();
                                                }
                                            }
                                            unsafe6 = unsafe7;
                                            iZzh3 = iZzf;
                                            i49 = i56;
                                            i48 = i55;
                                            i90 = i57;
                                            if (iZzh3 != i49) {
                                                i12 = i12;
                                                i11 = i51;
                                                i87 = i48;
                                                unsafe12 = unsafe6;
                                                zzdjVar5 = zzdjVar4;
                                                i88 = i45;
                                                i86 = 0;
                                                i91 = i17;
                                                i89 = i47;
                                                obj2 = obj;
                                                iZzl = iZzh3;
                                                bArr7 = bArr3;
                                            } else {
                                                obj2 = obj;
                                                i18 = iZzh3;
                                                i87 = i48;
                                                i19 = i90;
                                                unsafe = unsafe6;
                                                i89 = i47;
                                                zzdjVar2 = zzdjVar4;
                                                bArr2 = bArr3;
                                                i20 = i45;
                                            }
                                            break;
                                        case 26:
                                            unsafe7 = unsafe3;
                                            i51 = i11;
                                            i55 = i48;
                                            i56 = i49;
                                            i57 = i44;
                                            bArr3 = bArr;
                                            zzdjVar4 = zzdjVar4;
                                            if (i21 == 2) {
                                                if ((j10 & 536870912) == 0) {
                                                    iZzf = zzdk.zzh(bArr3, i56, zzdjVar4);
                                                    i65 = zzdjVar4.zza;
                                                    if (i65 >= 0) {
                                                        throw zzff.zzd();
                                                    }
                                                    if (i65 == 0) {
                                                        zzfcVar.add("");
                                                    } else {
                                                        zzfcVar.add(new String(bArr3, iZzf, i65, zzfd.zzb));
                                                        iZzf += i65;
                                                    }
                                                    while (iZzf < i51) {
                                                        iZzh11 = zzdk.zzh(bArr3, iZzf, zzdjVar4);
                                                        if (i45 == zzdjVar4.zza) {
                                                            iZzf = zzdk.zzh(bArr3, iZzh11, zzdjVar4);
                                                            i66 = zzdjVar4.zza;
                                                            if (i66 >= 0) {
                                                                throw zzff.zzd();
                                                            }
                                                            if (i66 == 0) {
                                                                zzfcVar.add("");
                                                            } else {
                                                                zzfcVar.add(new String(bArr3, iZzf, i66, zzfd.zzb));
                                                                iZzf += i66;
                                                            }
                                                        }
                                                    }
                                                } else {
                                                    iZzf = zzdk.zzh(bArr3, i56, zzdjVar4);
                                                    i61 = zzdjVar4.zza;
                                                    if (i61 >= 0) {
                                                        throw zzff.zzd();
                                                    }
                                                    if (i61 == 0) {
                                                        zzfcVar.add("");
                                                    } else {
                                                        i62 = iZzf + i61;
                                                        if (zzhs.zze(bArr3, iZzf, i62)) {
                                                            throw zzff.zzc();
                                                        }
                                                        zzfcVar.add(new String(bArr3, iZzf, i61, zzfd.zzb));
                                                        iZzf = i62;
                                                    }
                                                    while (iZzf < i51) {
                                                        iZzh10 = zzdk.zzh(bArr3, iZzf, zzdjVar4);
                                                        if (i45 == zzdjVar4.zza) {
                                                            iZzf = zzdk.zzh(bArr3, iZzh10, zzdjVar4);
                                                            i63 = zzdjVar4.zza;
                                                            if (i63 >= 0) {
                                                                throw zzff.zzd();
                                                            }
                                                            if (i63 == 0) {
                                                                zzfcVar.add("");
                                                            } else {
                                                                i64 = iZzf + i63;
                                                                if (zzhs.zze(bArr3, iZzf, i64)) {
                                                                    throw zzff.zzc();
                                                                }
                                                                zzfcVar.add(new String(bArr3, iZzf, i63, zzfd.zzb));
                                                                iZzf = i64;
                                                            }
                                                        }
                                                    }
                                                }
                                                unsafe6 = unsafe7;
                                                iZzh3 = iZzf;
                                                i49 = i56;
                                                i48 = i55;
                                                i90 = i57;
                                                if (iZzh3 != i49) {
                                                    i12 = i12;
                                                    i11 = i51;
                                                    i87 = i48;
                                                    unsafe12 = unsafe6;
                                                    zzdjVar5 = zzdjVar4;
                                                    i88 = i45;
                                                    i86 = 0;
                                                    i91 = i17;
                                                    i89 = i47;
                                                    obj2 = obj;
                                                    iZzl = iZzh3;
                                                    bArr7 = bArr3;
                                                } else {
                                                    obj2 = obj;
                                                    i18 = iZzh3;
                                                    i87 = i48;
                                                    i19 = i90;
                                                    unsafe = unsafe6;
                                                    i89 = i47;
                                                    zzdjVar2 = zzdjVar4;
                                                    bArr2 = bArr3;
                                                    i20 = i45;
                                                }
                                            }
                                            unsafe6 = unsafe7;
                                            i49 = i56;
                                            i48 = i55;
                                            i90 = i57;
                                            iZzh3 = i49;
                                            if (iZzh3 != i49) {
                                                i12 = i12;
                                                i11 = i51;
                                                i87 = i48;
                                                unsafe12 = unsafe6;
                                                zzdjVar5 = zzdjVar4;
                                                i88 = i45;
                                                i86 = 0;
                                                i91 = i17;
                                                i89 = i47;
                                                obj2 = obj;
                                                iZzl = iZzh3;
                                                bArr7 = bArr3;
                                            } else {
                                                obj2 = obj;
                                                i18 = iZzh3;
                                                i87 = i48;
                                                i19 = i90;
                                                unsafe = unsafe6;
                                                i89 = i47;
                                                zzdjVar2 = zzdjVar4;
                                                bArr2 = bArr3;
                                                i20 = i45;
                                            }
                                            break;
                                        case 27:
                                            bArr4 = bArr;
                                            if (i21 == 2) {
                                                zzgfVar = this;
                                                i55 = i48;
                                                i51 = i11;
                                                iZze = zzdk.zze(zzgfVar.zzv(i48), i45, bArr, i49, i11, zzfcVar, zzdjVar);
                                                unsafe6 = unsafe3;
                                                bArr3 = bArr;
                                                i49 = i49;
                                                i90 = i44;
                                                zzdjVar4 = zzdjVar4;
                                                iZzh3 = iZze;
                                                i48 = i55;
                                                if (iZzh3 != i49) {
                                                    i12 = i12;
                                                    i11 = i51;
                                                    i87 = i48;
                                                    unsafe12 = unsafe6;
                                                    zzdjVar5 = zzdjVar4;
                                                    i88 = i45;
                                                    i86 = 0;
                                                    i91 = i17;
                                                    i89 = i47;
                                                    obj2 = obj;
                                                    iZzl = iZzh3;
                                                    bArr7 = bArr3;
                                                } else {
                                                    obj2 = obj;
                                                    i18 = iZzh3;
                                                    i87 = i48;
                                                    i19 = i90;
                                                    unsafe = unsafe6;
                                                    i89 = i47;
                                                    zzdjVar2 = zzdjVar4;
                                                    bArr2 = bArr3;
                                                    i20 = i45;
                                                }
                                            } else {
                                                i51 = i11;
                                                zzgfVar = this;
                                                i90 = i44;
                                                bArr3 = bArr4;
                                                unsafe6 = unsafe3;
                                                iZzh3 = i49;
                                                if (iZzh3 != i49) {
                                                    i12 = i12;
                                                    i11 = i51;
                                                    i87 = i48;
                                                    unsafe12 = unsafe6;
                                                    zzdjVar5 = zzdjVar4;
                                                    i88 = i45;
                                                    i86 = 0;
                                                    i91 = i17;
                                                    i89 = i47;
                                                    obj2 = obj;
                                                    iZzl = iZzh3;
                                                    bArr7 = bArr3;
                                                } else {
                                                    obj2 = obj;
                                                    i18 = iZzh3;
                                                    i87 = i48;
                                                    i19 = i90;
                                                    unsafe = unsafe6;
                                                    i89 = i47;
                                                    zzdjVar2 = zzdjVar4;
                                                    bArr2 = bArr3;
                                                    i20 = i45;
                                                }
                                            }
                                            break;
                                        case 28:
                                            bArr4 = bArr;
                                            if (i21 == 2) {
                                                iZzh3 = zzdk.zzh(bArr4, i49, zzdjVar4);
                                                i67 = zzdjVar4.zza;
                                                if (i67 >= 0) {
                                                    throw zzff.zzd();
                                                }
                                                if (i67 <= bArr4.length - iZzh3) {
                                                    throw zzff.zzg();
                                                }
                                                if (i67 == 0) {
                                                    zzfcVar.add(zzdw.zzb);
                                                } else {
                                                    zzfcVar.add(zzdw.zzl(bArr4, iZzh3, i67));
                                                    iZzh3 += i67;
                                                }
                                                while (iZzh3 < i11) {
                                                    iZzh12 = zzdk.zzh(bArr4, iZzh3, zzdjVar4);
                                                    if (i45 == zzdjVar4.zza) {
                                                        i90 = i44;
                                                        i51 = i11;
                                                        zzgfVar = this;
                                                        bArr3 = bArr4;
                                                        zzdjVar4 = zzdjVar4;
                                                        unsafe6 = unsafe3;
                                                        if (iZzh3 != i49) {
                                                            i12 = i12;
                                                            i11 = i51;
                                                            i87 = i48;
                                                            unsafe12 = unsafe6;
                                                            zzdjVar5 = zzdjVar4;
                                                            i88 = i45;
                                                            i86 = 0;
                                                            i91 = i17;
                                                            i89 = i47;
                                                            obj2 = obj;
                                                            iZzl = iZzh3;
                                                            bArr7 = bArr3;
                                                        } else {
                                                            obj2 = obj;
                                                            i18 = iZzh3;
                                                            i87 = i48;
                                                            i19 = i90;
                                                            unsafe = unsafe6;
                                                            i89 = i47;
                                                            zzdjVar2 = zzdjVar4;
                                                            bArr2 = bArr3;
                                                            i20 = i45;
                                                        }
                                                        break;
                                                    } else {
                                                        iZzh3 = zzdk.zzh(bArr4, iZzh12, zzdjVar4);
                                                        i68 = zzdjVar4.zza;
                                                        if (i68 >= 0) {
                                                            throw zzff.zzd();
                                                        }
                                                        if (i68 <= bArr4.length - iZzh3) {
                                                            throw zzff.zzg();
                                                        }
                                                        if (i68 == 0) {
                                                            zzfcVar.add(zzdw.zzb);
                                                        } else {
                                                            zzfcVar.add(zzdw.zzl(bArr4, iZzh3, i68));
                                                            iZzh3 += i68;
                                                        }
                                                    }
                                                }
                                                i90 = i44;
                                                i51 = i11;
                                                zzgfVar = this;
                                                bArr3 = bArr4;
                                                zzdjVar4 = zzdjVar4;
                                                unsafe6 = unsafe3;
                                                if (iZzh3 != i49) {
                                                    i12 = i12;
                                                    i11 = i51;
                                                    i87 = i48;
                                                    unsafe12 = unsafe6;
                                                    zzdjVar5 = zzdjVar4;
                                                    i88 = i45;
                                                    i86 = 0;
                                                    i91 = i17;
                                                    i89 = i47;
                                                    obj2 = obj;
                                                    iZzl = iZzh3;
                                                    bArr7 = bArr3;
                                                } else {
                                                    obj2 = obj;
                                                    i18 = iZzh3;
                                                    i87 = i48;
                                                    i19 = i90;
                                                    unsafe = unsafe6;
                                                    i89 = i47;
                                                    zzdjVar2 = zzdjVar4;
                                                    bArr2 = bArr3;
                                                    i20 = i45;
                                                }
                                            } else {
                                                i90 = i44;
                                                i51 = i11;
                                                zzgfVar = this;
                                                bArr3 = bArr4;
                                                unsafe6 = unsafe3;
                                                iZzh3 = i49;
                                                if (iZzh3 != i49) {
                                                    i12 = i12;
                                                    i11 = i51;
                                                    i87 = i48;
                                                    unsafe12 = unsafe6;
                                                    zzdjVar5 = zzdjVar4;
                                                    i88 = i45;
                                                    i86 = 0;
                                                    i91 = i17;
                                                    i89 = i47;
                                                    obj2 = obj;
                                                    iZzl = iZzh3;
                                                    bArr7 = bArr3;
                                                } else {
                                                    obj2 = obj;
                                                    i18 = iZzh3;
                                                    i87 = i48;
                                                    i19 = i90;
                                                    unsafe = unsafe6;
                                                    i89 = i47;
                                                    zzdjVar2 = zzdjVar4;
                                                    bArr2 = bArr3;
                                                    i20 = i45;
                                                }
                                            }
                                            break;
                                        case 30:
                                        case 44:
                                            bArr4 = bArr;
                                            i69 = i11;
                                            if (i21 == 2) {
                                                iZzj = zzdk.zzf(bArr4, i49, zzfcVar, zzdjVar4);
                                            } else if (i21 == 0) {
                                                zzgfVar = this;
                                                i51 = i69;
                                                i90 = i44;
                                                bArr3 = bArr4;
                                                unsafe6 = unsafe3;
                                                iZzh3 = i49;
                                                if (iZzh3 != i49) {
                                                    i12 = i12;
                                                    i11 = i51;
                                                    i87 = i48;
                                                    unsafe12 = unsafe6;
                                                    zzdjVar5 = zzdjVar4;
                                                    i88 = i45;
                                                    i86 = 0;
                                                    i91 = i17;
                                                    i89 = i47;
                                                    obj2 = obj;
                                                    iZzl = iZzh3;
                                                    bArr7 = bArr3;
                                                } else {
                                                    obj2 = obj;
                                                    i18 = iZzh3;
                                                    i87 = i48;
                                                    i19 = i90;
                                                    unsafe = unsafe6;
                                                    i89 = i47;
                                                    zzdjVar2 = zzdjVar4;
                                                    bArr2 = bArr3;
                                                    i20 = i45;
                                                }
                                            } else {
                                                iZzj = zzdk.zzj(i45, bArr, i49, i11, zzfcVar, zzdjVar);
                                            }
                                            zzfbVarZzu = zzgfVar.zzu(i48);
                                            zzhdVar = zzgfVar.zzm;
                                            int i108 = zzgo.zza;
                                            if (zzfbVarZzu != null) {
                                                i70 = iZzj;
                                                i71 = i44;
                                            } else if (zzfcVar instanceof RandomAccess) {
                                                size = zzfcVar.size();
                                                objZzo2 = null;
                                                i72 = 0;
                                                i73 = 0;
                                                while (i72 < size) {
                                                    int i109 = iZzj;
                                                    iIntValue2 = ((Integer) zzfcVar.get(i72)).intValue();
                                                    if (zzfbVarZzu.zza(iIntValue2)) {
                                                        if (i72 != i73) {
                                                            zzfcVar.set(i73, Integer.valueOf(iIntValue2));
                                                        }
                                                        i73++;
                                                        i74 = i44;
                                                    } else {
                                                        i74 = i44;
                                                        objZzo2 = zzgo.zzo(obj2, i74, iIntValue2, objZzo2, zzhdVar);
                                                    }
                                                    i72++;
                                                    i44 = i74;
                                                    iZzj = i109;
                                                }
                                                i70 = iZzj;
                                                i71 = i44;
                                                if (i73 != size) {
                                                    zzfcVar.subList(i73, size).clear();
                                                }
                                            } else {
                                                i70 = iZzj;
                                                i71 = i44;
                                                it = zzfcVar.iterator();
                                                objZzo = null;
                                                while (it.hasNext()) {
                                                    iIntValue = ((Integer) it.next()).intValue();
                                                    if (!zzfbVarZzu.zza(iIntValue)) {
                                                        objZzo = zzgo.zzo(obj2, i71, iIntValue, objZzo, zzhdVar);
                                                        it.remove();
                                                    }
                                                }
                                            }
                                            i90 = i71;
                                            i51 = i69;
                                            iZzh3 = i70;
                                            zzgfVar = this;
                                            bArr3 = bArr4;
                                            zzdjVar4 = zzdjVar4;
                                            unsafe6 = unsafe3;
                                            if (iZzh3 != i49) {
                                                i12 = i12;
                                                i11 = i51;
                                                i87 = i48;
                                                unsafe12 = unsafe6;
                                                zzdjVar5 = zzdjVar4;
                                                i88 = i45;
                                                i86 = 0;
                                                i91 = i17;
                                                i89 = i47;
                                                obj2 = obj;
                                                iZzl = iZzh3;
                                                bArr7 = bArr3;
                                            } else {
                                                obj2 = obj;
                                                i18 = iZzh3;
                                                i87 = i48;
                                                i19 = i90;
                                                unsafe = unsafe6;
                                                i89 = i47;
                                                zzdjVar2 = zzdjVar4;
                                                bArr2 = bArr3;
                                                i20 = i45;
                                            }
                                            break;
                                        case 33:
                                        case 47:
                                            bArr4 = bArr;
                                            i69 = i11;
                                            if (i21 == 2) {
                                                if (i21 == 0) {
                                                    zzeyVar3 = (zzey) zzfcVar;
                                                    iZzh3 = zzdk.zzh(bArr4, i49, zzdjVar4);
                                                    zzeyVar3.zzf(zzea.zzb(zzdjVar4.zza));
                                                    while (iZzh3 < i69) {
                                                        iZzh13 = zzdk.zzh(bArr4, iZzh3, zzdjVar4);
                                                        if (i45 == zzdjVar4.zza) {
                                                            iZzh3 = zzdk.zzh(bArr4, iZzh13, zzdjVar4);
                                                            zzeyVar3.zzf(zzea.zzb(zzdjVar4.zza));
                                                        }
                                                    }
                                                }
                                                i51 = i69;
                                                i90 = i44;
                                                bArr3 = bArr4;
                                                unsafe6 = unsafe3;
                                                iZzh3 = i49;
                                                if (iZzh3 != i49) {
                                                    i12 = i12;
                                                    i11 = i51;
                                                    i87 = i48;
                                                    unsafe12 = unsafe6;
                                                    zzdjVar5 = zzdjVar4;
                                                    i88 = i45;
                                                    i86 = 0;
                                                    i91 = i17;
                                                    i89 = i47;
                                                    obj2 = obj;
                                                    iZzl = iZzh3;
                                                    bArr7 = bArr3;
                                                } else {
                                                    obj2 = obj;
                                                    i18 = iZzh3;
                                                    i87 = i48;
                                                    i19 = i90;
                                                    unsafe = unsafe6;
                                                    i89 = i47;
                                                    zzdjVar2 = zzdjVar4;
                                                    bArr2 = bArr3;
                                                    i20 = i45;
                                                }
                                            } else {
                                                zzeyVar4 = (zzey) zzfcVar;
                                                iZzh3 = zzdk.zzh(bArr4, i49, zzdjVar4);
                                                i75 = zzdjVar4.zza + iZzh3;
                                                while (iZzh3 < i75) {
                                                    iZzh3 = zzdk.zzh(bArr4, iZzh3, zzdjVar4);
                                                    zzeyVar4.zzf(zzea.zzb(zzdjVar4.zza));
                                                }
                                                if (iZzh3 != i75) {
                                                    throw zzff.zzg();
                                                }
                                            }
                                            i51 = i69;
                                            i90 = i44;
                                            bArr3 = bArr4;
                                            zzdjVar4 = zzdjVar4;
                                            unsafe6 = unsafe3;
                                            if (iZzh3 != i49) {
                                                i12 = i12;
                                                i11 = i51;
                                                i87 = i48;
                                                unsafe12 = unsafe6;
                                                zzdjVar5 = zzdjVar4;
                                                i88 = i45;
                                                i86 = 0;
                                                i91 = i17;
                                                i89 = i47;
                                                obj2 = obj;
                                                iZzl = iZzh3;
                                                bArr7 = bArr3;
                                            } else {
                                                obj2 = obj;
                                                i18 = iZzh3;
                                                i87 = i48;
                                                i19 = i90;
                                                unsafe = unsafe6;
                                                i89 = i47;
                                                zzdjVar2 = zzdjVar4;
                                                bArr2 = bArr3;
                                                i20 = i45;
                                            }
                                            break;
                                        case 34:
                                        case 48:
                                            bArr4 = bArr;
                                            i69 = i11;
                                            if (i21 == 2) {
                                                if (i21 == 0) {
                                                    zzfrVar5 = (zzfr) zzfcVar;
                                                    iZzh3 = zzdk.zzk(bArr4, i49, zzdjVar4);
                                                    zzfrVar5.zzf(zzea.zzc(zzdjVar4.zzb));
                                                    while (iZzh3 < i69) {
                                                        iZzh14 = zzdk.zzh(bArr4, iZzh3, zzdjVar4);
                                                        if (i45 == zzdjVar4.zza) {
                                                            iZzh3 = zzdk.zzk(bArr4, iZzh14, zzdjVar4);
                                                            zzfrVar5.zzf(zzea.zzc(zzdjVar4.zzb));
                                                        }
                                                    }
                                                }
                                                i51 = i69;
                                                i90 = i44;
                                                bArr3 = bArr4;
                                                unsafe6 = unsafe3;
                                                iZzh3 = i49;
                                                if (iZzh3 != i49) {
                                                    i12 = i12;
                                                    i11 = i51;
                                                    i87 = i48;
                                                    unsafe12 = unsafe6;
                                                    zzdjVar5 = zzdjVar4;
                                                    i88 = i45;
                                                    i86 = 0;
                                                    i91 = i17;
                                                    i89 = i47;
                                                    obj2 = obj;
                                                    iZzl = iZzh3;
                                                    bArr7 = bArr3;
                                                } else {
                                                    obj2 = obj;
                                                    i18 = iZzh3;
                                                    i87 = i48;
                                                    i19 = i90;
                                                    unsafe = unsafe6;
                                                    i89 = i47;
                                                    zzdjVar2 = zzdjVar4;
                                                    bArr2 = bArr3;
                                                    i20 = i45;
                                                }
                                            } else {
                                                zzfrVar6 = (zzfr) zzfcVar;
                                                iZzh3 = zzdk.zzh(bArr4, i49, zzdjVar4);
                                                i76 = zzdjVar4.zza + iZzh3;
                                                while (iZzh3 < i76) {
                                                    iZzh3 = zzdk.zzk(bArr4, iZzh3, zzdjVar4);
                                                    zzfrVar6.zzf(zzea.zzc(zzdjVar4.zzb));
                                                }
                                                if (iZzh3 != i76) {
                                                    throw zzff.zzg();
                                                }
                                            }
                                            i51 = i69;
                                            i90 = i44;
                                            bArr3 = bArr4;
                                            zzdjVar4 = zzdjVar4;
                                            unsafe6 = unsafe3;
                                            if (iZzh3 != i49) {
                                                i12 = i12;
                                                i11 = i51;
                                                i87 = i48;
                                                unsafe12 = unsafe6;
                                                zzdjVar5 = zzdjVar4;
                                                i88 = i45;
                                                i86 = 0;
                                                i91 = i17;
                                                i89 = i47;
                                                obj2 = obj;
                                                iZzl = iZzh3;
                                                bArr7 = bArr3;
                                            } else {
                                                obj2 = obj;
                                                i18 = iZzh3;
                                                i87 = i48;
                                                i19 = i90;
                                                unsafe = unsafe6;
                                                i89 = i47;
                                                zzdjVar2 = zzdjVar4;
                                                bArr2 = bArr3;
                                                i20 = i45;
                                            }
                                            break;
                                        default:
                                            if (i21 == 3) {
                                                i77 = (i45 & (-8)) | 4;
                                                zzgmVarZzv = zzgfVar.zzv(i48);
                                                iZzh3 = zzdk.zzc(zzgmVarZzv, bArr, i49, i11, i77, zzdjVar);
                                                zzfcVar.add(zzdjVar4.zzc);
                                                i69 = i11;
                                                while (true) {
                                                    if (iZzh3 < i69) {
                                                        iZzh15 = zzdk.zzh(bArr, iZzh3, zzdjVar4);
                                                        if (i45 == zzdjVar4.zza) {
                                                            iZzh3 = zzdk.zzc(zzgmVarZzv, bArr, iZzh15, i11, i77, zzdjVar);
                                                            zzfcVar.add(zzdjVar4.zzc);
                                                            zzgmVarZzv = zzgmVarZzv;
                                                        } else {
                                                            bArr4 = bArr;
                                                        }
                                                    } else {
                                                        bArr4 = bArr;
                                                    }
                                                }
                                                i51 = i69;
                                                i90 = i44;
                                                bArr3 = bArr4;
                                                zzdjVar4 = zzdjVar4;
                                                unsafe6 = unsafe3;
                                                if (iZzh3 != i49) {
                                                    i12 = i12;
                                                    i11 = i51;
                                                    i87 = i48;
                                                    unsafe12 = unsafe6;
                                                    zzdjVar5 = zzdjVar4;
                                                    i88 = i45;
                                                    i86 = 0;
                                                    i91 = i17;
                                                    i89 = i47;
                                                    obj2 = obj;
                                                    iZzl = iZzh3;
                                                    bArr7 = bArr3;
                                                } else {
                                                    obj2 = obj;
                                                    i18 = iZzh3;
                                                    i87 = i48;
                                                    i19 = i90;
                                                    unsafe = unsafe6;
                                                    i89 = i47;
                                                    zzdjVar2 = zzdjVar4;
                                                    bArr2 = bArr3;
                                                    i20 = i45;
                                                }
                                            } else {
                                                bArr3 = bArr;
                                                i51 = i11;
                                                i90 = i44;
                                                unsafe6 = unsafe3;
                                                iZzh3 = i49;
                                                if (iZzh3 != i49) {
                                                    i12 = i12;
                                                    i11 = i51;
                                                    i87 = i48;
                                                    unsafe12 = unsafe6;
                                                    zzdjVar5 = zzdjVar4;
                                                    i88 = i45;
                                                    i86 = 0;
                                                    i91 = i17;
                                                    i89 = i47;
                                                    obj2 = obj;
                                                    iZzl = iZzh3;
                                                    bArr7 = bArr3;
                                                } else {
                                                    obj2 = obj;
                                                    i18 = iZzh3;
                                                    i87 = i48;
                                                    i19 = i90;
                                                    unsafe = unsafe6;
                                                    i89 = i47;
                                                    zzdjVar2 = zzdjVar4;
                                                    bArr2 = bArr3;
                                                    i20 = i45;
                                                }
                                            }
                                            break;
                                    }
                                } else {
                                    zzdjVar4 = zzdjVar4;
                                    i50 = i44;
                                    unsafe4 = unsafe3;
                                    if (iZzr == 50) {
                                        unsafe9 = zzb;
                                        j11 = iArr[i48 + 2] & 1048575;
                                        switch (iZzr) {
                                            case 51:
                                                i78 = i49;
                                                i79 = i48;
                                                i19 = i50;
                                                unsafe = unsafe4;
                                                obj2 = obj;
                                                zzdjVar2 = zzdjVar4;
                                                bArr2 = bArr3;
                                                i20 = i45;
                                                if (i21 == 1) {
                                                    iZzh16 = i78 + 8;
                                                    unsafe9.putObject(obj2, j6, Double.valueOf(Double.longBitsToDouble(zzdk.zzn(bArr2, i78))));
                                                    unsafe9.putInt(obj2, j11, i19);
                                                } else {
                                                    iZzh16 = i78;
                                                }
                                                if (iZzh16 != i78) {
                                                    i78 = i78;
                                                    unsafe12 = unsafe;
                                                    i11 = i11;
                                                    i12 = i12;
                                                    i90 = i19;
                                                    i88 = i20;
                                                    zzdjVar5 = zzdjVar2;
                                                    i86 = 0;
                                                    i87 = i79;
                                                    i89 = i47;
                                                    iZzl = iZzh16;
                                                    bArr7 = bArr2;
                                                    i91 = i17;
                                                } else {
                                                    i78 = i78;
                                                    i12 = i12;
                                                    i18 = iZzh16;
                                                    i87 = i79;
                                                    i89 = i47;
                                                }
                                                break;
                                            case 52:
                                                i78 = i49;
                                                i79 = i48;
                                                i19 = i50;
                                                unsafe = unsafe4;
                                                obj2 = obj;
                                                zzdjVar2 = zzdjVar4;
                                                bArr2 = bArr3;
                                                i20 = i45;
                                                if (i21 == 5) {
                                                    iZzh16 = i78 + 4;
                                                    unsafe9.putObject(obj2, j6, Float.valueOf(Float.intBitsToFloat(zzdk.zzb(bArr2, i78))));
                                                    unsafe9.putInt(obj2, j11, i19);
                                                } else {
                                                    iZzh16 = i78;
                                                }
                                                if (iZzh16 != i78) {
                                                    i78 = i78;
                                                    unsafe12 = unsafe;
                                                    i11 = i11;
                                                    i12 = i12;
                                                    i90 = i19;
                                                    i88 = i20;
                                                    zzdjVar5 = zzdjVar2;
                                                    i86 = 0;
                                                    i87 = i79;
                                                    i89 = i47;
                                                    iZzl = iZzh16;
                                                    bArr7 = bArr2;
                                                    i91 = i17;
                                                } else {
                                                    i78 = i78;
                                                    i12 = i12;
                                                    i18 = iZzh16;
                                                    i87 = i79;
                                                    i89 = i47;
                                                }
                                                break;
                                            case 53:
                                            case 54:
                                                i78 = i49;
                                                i79 = i48;
                                                i19 = i50;
                                                unsafe = unsafe4;
                                                obj2 = obj;
                                                zzdjVar2 = zzdjVar4;
                                                bArr2 = bArr3;
                                                i20 = i45;
                                                if (i21 == 0) {
                                                    iZzk = zzdk.zzk(bArr2, i78, zzdjVar2);
                                                    unsafe9.putObject(obj2, j6, Long.valueOf(zzdjVar2.zzb));
                                                    unsafe9.putInt(obj2, j11, i19);
                                                    iZzh16 = iZzk;
                                                } else {
                                                    iZzh16 = i78;
                                                }
                                                if (iZzh16 != i78) {
                                                    i78 = i78;
                                                    unsafe12 = unsafe;
                                                    i11 = i11;
                                                    i12 = i12;
                                                    i90 = i19;
                                                    i88 = i20;
                                                    zzdjVar5 = zzdjVar2;
                                                    i86 = 0;
                                                    i87 = i79;
                                                    i89 = i47;
                                                    iZzl = iZzh16;
                                                    bArr7 = bArr2;
                                                    i91 = i17;
                                                } else {
                                                    i78 = i78;
                                                    i12 = i12;
                                                    i18 = iZzh16;
                                                    i87 = i79;
                                                    i89 = i47;
                                                }
                                                break;
                                            case 55:
                                            case 62:
                                                i78 = i49;
                                                i79 = i48;
                                                i19 = i50;
                                                unsafe = unsafe4;
                                                obj2 = obj;
                                                zzdjVar2 = zzdjVar4;
                                                bArr2 = bArr3;
                                                i20 = i45;
                                                if (i21 == 0) {
                                                    iZzh16 = zzdk.zzh(bArr2, i78, zzdjVar2);
                                                    unsafe9.putObject(obj2, j6, Integer.valueOf(zzdjVar2.zza));
                                                    unsafe9.putInt(obj2, j11, i19);
                                                } else {
                                                    iZzh16 = i78;
                                                }
                                                if (iZzh16 != i78) {
                                                    i78 = i78;
                                                    unsafe12 = unsafe;
                                                    i11 = i11;
                                                    i12 = i12;
                                                    i90 = i19;
                                                    i88 = i20;
                                                    zzdjVar5 = zzdjVar2;
                                                    i86 = 0;
                                                    i87 = i79;
                                                    i89 = i47;
                                                    iZzl = iZzh16;
                                                    bArr7 = bArr2;
                                                    i91 = i17;
                                                } else {
                                                    i78 = i78;
                                                    i12 = i12;
                                                    i18 = iZzh16;
                                                    i87 = i79;
                                                    i89 = i47;
                                                }
                                                break;
                                            case 56:
                                            case 65:
                                                i78 = i49;
                                                i79 = i48;
                                                i19 = i50;
                                                unsafe = unsafe4;
                                                obj2 = obj;
                                                zzdjVar2 = zzdjVar4;
                                                bArr2 = bArr3;
                                                i20 = i45;
                                                if (i21 == 1) {
                                                    iZzh16 = i78 + 8;
                                                    unsafe9.putObject(obj2, j6, Long.valueOf(zzdk.zzn(bArr2, i78)));
                                                    unsafe9.putInt(obj2, j11, i19);
                                                } else {
                                                    iZzh16 = i78;
                                                }
                                                if (iZzh16 != i78) {
                                                    i78 = i78;
                                                    unsafe12 = unsafe;
                                                    i11 = i11;
                                                    i12 = i12;
                                                    i90 = i19;
                                                    i88 = i20;
                                                    zzdjVar5 = zzdjVar2;
                                                    i86 = 0;
                                                    i87 = i79;
                                                    i89 = i47;
                                                    iZzl = iZzh16;
                                                    bArr7 = bArr2;
                                                    i91 = i17;
                                                } else {
                                                    i78 = i78;
                                                    i12 = i12;
                                                    i18 = iZzh16;
                                                    i87 = i79;
                                                    i89 = i47;
                                                }
                                                break;
                                            case 57:
                                            case 64:
                                                i78 = i49;
                                                i79 = i48;
                                                i19 = i50;
                                                unsafe = unsafe4;
                                                obj2 = obj;
                                                zzdjVar2 = zzdjVar4;
                                                bArr2 = bArr3;
                                                i20 = i45;
                                                if (i21 == 5) {
                                                    iZzh16 = i78 + 4;
                                                    unsafe9.putObject(obj2, j6, Integer.valueOf(zzdk.zzb(bArr2, i78)));
                                                    unsafe9.putInt(obj2, j11, i19);
                                                } else {
                                                    iZzh16 = i78;
                                                }
                                                if (iZzh16 != i78) {
                                                    i78 = i78;
                                                    unsafe12 = unsafe;
                                                    i11 = i11;
                                                    i12 = i12;
                                                    i90 = i19;
                                                    i88 = i20;
                                                    zzdjVar5 = zzdjVar2;
                                                    i86 = 0;
                                                    i87 = i79;
                                                    i89 = i47;
                                                    iZzl = iZzh16;
                                                    bArr7 = bArr2;
                                                    i91 = i17;
                                                } else {
                                                    i78 = i78;
                                                    i12 = i12;
                                                    i18 = iZzh16;
                                                    i87 = i79;
                                                    i89 = i47;
                                                }
                                                break;
                                            case 58:
                                                i78 = i49;
                                                i79 = i48;
                                                i19 = i50;
                                                unsafe = unsafe4;
                                                obj2 = obj;
                                                zzdjVar2 = zzdjVar4;
                                                bArr2 = bArr3;
                                                i20 = i45;
                                                if (i21 == 0) {
                                                    iZzk = zzdk.zzk(bArr2, i78, zzdjVar2);
                                                    if (zzdjVar2.zzb != 0) {
                                                        z13 = true;
                                                    } else {
                                                        z13 = false;
                                                    }
                                                    unsafe9.putObject(obj2, j6, Boolean.valueOf(z13));
                                                    unsafe9.putInt(obj2, j11, i19);
                                                    iZzh16 = iZzk;
                                                } else {
                                                    iZzh16 = i78;
                                                }
                                                if (iZzh16 != i78) {
                                                    i78 = i78;
                                                    unsafe12 = unsafe;
                                                    i11 = i11;
                                                    i12 = i12;
                                                    i90 = i19;
                                                    i88 = i20;
                                                    zzdjVar5 = zzdjVar2;
                                                    i86 = 0;
                                                    i87 = i79;
                                                    i89 = i47;
                                                    iZzl = iZzh16;
                                                    bArr7 = bArr2;
                                                    i91 = i17;
                                                } else {
                                                    i78 = i78;
                                                    i12 = i12;
                                                    i18 = iZzh16;
                                                    i87 = i79;
                                                    i89 = i47;
                                                }
                                                break;
                                            case 59:
                                                i78 = i49;
                                                i79 = i48;
                                                i19 = i50;
                                                unsafe = unsafe4;
                                                obj2 = obj;
                                                zzdjVar2 = zzdjVar4;
                                                bArr2 = bArr3;
                                                i20 = i45;
                                                if (i21 == 2) {
                                                    iZzh17 = zzdk.zzh(bArr2, i78, zzdjVar2);
                                                    i80 = zzdjVar2.zza;
                                                    if (i80 == 0) {
                                                        unsafe9.putObject(obj2, j6, "");
                                                    } else {
                                                        i81 = iZzh17 + i80;
                                                        if ((i22 & 536870912) == 0 && !zzhs.zze(bArr2, iZzh17, i81)) {
                                                            throw zzff.zzc();
                                                        }
                                                        unsafe9.putObject(obj2, j6, new String(bArr2, iZzh17, i80, zzfd.zzb));
                                                        iZzh17 = i81;
                                                    }
                                                    unsafe9.putInt(obj2, j11, i19);
                                                    iZzh16 = iZzh17;
                                                } else {
                                                    i79 = i79;
                                                    iZzh16 = i78;
                                                }
                                                if (iZzh16 != i78) {
                                                    i78 = i78;
                                                    unsafe12 = unsafe;
                                                    i11 = i11;
                                                    i12 = i12;
                                                    i90 = i19;
                                                    i88 = i20;
                                                    zzdjVar5 = zzdjVar2;
                                                    i86 = 0;
                                                    i87 = i79;
                                                    i89 = i47;
                                                    iZzl = iZzh16;
                                                    bArr7 = bArr2;
                                                    i91 = i17;
                                                } else {
                                                    i78 = i78;
                                                    i12 = i12;
                                                    i18 = iZzh16;
                                                    i87 = i79;
                                                    i89 = i47;
                                                }
                                                break;
                                            case 60:
                                                obj2 = obj;
                                                i78 = i49;
                                                i82 = i48;
                                                i19 = i50;
                                                i20 = i45;
                                                zzdjVar2 = zzdjVar4;
                                                if (i21 == 2) {
                                                    Object objZzy = zzgfVar.zzy(obj2, i19, i82);
                                                    bArr2 = bArr3;
                                                    unsafe = unsafe4;
                                                    iZzh16 = zzdk.zzm(objZzy, zzgfVar.zzv(i82), bArr, i78, i11, zzdjVar);
                                                    zzgfVar.zzG(obj2, i19, i82, objZzy);
                                                    i79 = i82;
                                                } else {
                                                    bArr2 = bArr3;
                                                    unsafe = unsafe4;
                                                    i79 = i82;
                                                    iZzh16 = i78;
                                                }
                                                if (iZzh16 != i78) {
                                                    i78 = i78;
                                                    unsafe12 = unsafe;
                                                    i11 = i11;
                                                    i12 = i12;
                                                    i90 = i19;
                                                    i88 = i20;
                                                    zzdjVar5 = zzdjVar2;
                                                    i86 = 0;
                                                    i87 = i79;
                                                    i89 = i47;
                                                    iZzl = iZzh16;
                                                    bArr7 = bArr2;
                                                    i91 = i17;
                                                } else {
                                                    i78 = i78;
                                                    i12 = i12;
                                                    i18 = iZzh16;
                                                    i87 = i79;
                                                    i89 = i47;
                                                }
                                                break;
                                            case 61:
                                                i78 = i49;
                                                unsafe10 = unsafe4;
                                                bArr5 = bArr3;
                                                i20 = i45;
                                                zzdjVar2 = zzdjVar4;
                                                obj2 = obj;
                                                i83 = i48;
                                                i19 = i50;
                                                if (i21 == 2) {
                                                    iZza = zzdk.zza(bArr5, i78, zzdjVar2);
                                                    unsafe9.putObject(obj2, j6, zzdjVar2.zzc);
                                                    unsafe9.putInt(obj2, j11, i19);
                                                    bArr2 = bArr5;
                                                    iZzh16 = iZza;
                                                    i79 = i83;
                                                    unsafe = unsafe10;
                                                    if (iZzh16 != i78) {
                                                        i78 = i78;
                                                        unsafe12 = unsafe;
                                                        i11 = i11;
                                                        i12 = i12;
                                                        i90 = i19;
                                                        i88 = i20;
                                                        zzdjVar5 = zzdjVar2;
                                                        i86 = 0;
                                                        i87 = i79;
                                                        i89 = i47;
                                                        iZzl = iZzh16;
                                                        bArr7 = bArr2;
                                                        i91 = i17;
                                                    } else {
                                                        i78 = i78;
                                                        i12 = i12;
                                                        i18 = iZzh16;
                                                        i87 = i79;
                                                        i89 = i47;
                                                    }
                                                }
                                                bArr2 = bArr5;
                                                i79 = i83;
                                                unsafe = unsafe10;
                                                iZzh16 = i78;
                                                if (iZzh16 != i78) {
                                                    i78 = i78;
                                                    unsafe12 = unsafe;
                                                    i11 = i11;
                                                    i12 = i12;
                                                    i90 = i19;
                                                    i88 = i20;
                                                    zzdjVar5 = zzdjVar2;
                                                    i86 = 0;
                                                    i87 = i79;
                                                    i89 = i47;
                                                    iZzl = iZzh16;
                                                    bArr7 = bArr2;
                                                    i91 = i17;
                                                } else {
                                                    i78 = i78;
                                                    i12 = i12;
                                                    i18 = iZzh16;
                                                    i87 = i79;
                                                    i89 = i47;
                                                }
                                                break;
                                            case 63:
                                                i78 = i49;
                                                unsafe10 = unsafe4;
                                                bArr5 = bArr3;
                                                zzdjVar2 = zzdjVar4;
                                                obj2 = obj;
                                                i83 = i48;
                                                i19 = i50;
                                                if (i21 == 0) {
                                                    iZza = zzdk.zzh(bArr5, i78, zzdjVar2);
                                                    i84 = zzdjVar2.zza;
                                                    zzfbVarZzu2 = zzgfVar.zzu(i83);
                                                    if (zzfbVarZzu2 != null || zzfbVarZzu2.zza(i84)) {
                                                        i20 = i45;
                                                        unsafe9.putObject(obj2, j6, Integer.valueOf(i84));
                                                        unsafe9.putInt(obj2, j11, i19);
                                                    } else {
                                                        i20 = i45;
                                                        zzd(obj).zzj(i20, Long.valueOf(i84));
                                                    }
                                                    bArr2 = bArr5;
                                                    iZzh16 = iZza;
                                                    i79 = i83;
                                                    unsafe = unsafe10;
                                                    if (iZzh16 != i78) {
                                                        i78 = i78;
                                                        unsafe12 = unsafe;
                                                        i11 = i11;
                                                        i12 = i12;
                                                        i90 = i19;
                                                        i88 = i20;
                                                        zzdjVar5 = zzdjVar2;
                                                        i86 = 0;
                                                        i87 = i79;
                                                        i89 = i47;
                                                        iZzl = iZzh16;
                                                        bArr7 = bArr2;
                                                        i91 = i17;
                                                    } else {
                                                        i78 = i78;
                                                        i12 = i12;
                                                        i18 = iZzh16;
                                                        i87 = i79;
                                                        i89 = i47;
                                                    }
                                                } else {
                                                    i20 = i45;
                                                    bArr2 = bArr5;
                                                    i79 = i83;
                                                    unsafe = unsafe10;
                                                    iZzh16 = i78;
                                                    if (iZzh16 != i78) {
                                                        i78 = i78;
                                                        unsafe12 = unsafe;
                                                        i11 = i11;
                                                        i12 = i12;
                                                        i90 = i19;
                                                        i88 = i20;
                                                        zzdjVar5 = zzdjVar2;
                                                        i86 = 0;
                                                        i87 = i79;
                                                        i89 = i47;
                                                        iZzl = iZzh16;
                                                        bArr7 = bArr2;
                                                        i91 = i17;
                                                    } else {
                                                        i78 = i78;
                                                        i12 = i12;
                                                        i18 = iZzh16;
                                                        i87 = i79;
                                                        i89 = i47;
                                                    }
                                                }
                                                break;
                                            case 66:
                                                i78 = i49;
                                                unsafe11 = unsafe4;
                                                bArr6 = bArr3;
                                                i85 = i45;
                                                zzdjVar2 = zzdjVar4;
                                                obj2 = obj;
                                                i82 = i48;
                                                i19 = i50;
                                                if (i21 == 0) {
                                                    iZzh18 = zzdk.zzh(bArr6, i78, zzdjVar2);
                                                    unsafe9.putObject(obj2, j6, Integer.valueOf(zzea.zzb(zzdjVar2.zza)));
                                                    unsafe9.putInt(obj2, j11, i19);
                                                    bArr2 = bArr6;
                                                    iZzh16 = iZzh18;
                                                    unsafe = unsafe11;
                                                    i20 = i85;
                                                    i79 = i82;
                                                    if (iZzh16 != i78) {
                                                        i78 = i78;
                                                        unsafe12 = unsafe;
                                                        i11 = i11;
                                                        i12 = i12;
                                                        i90 = i19;
                                                        i88 = i20;
                                                        zzdjVar5 = zzdjVar2;
                                                        i86 = 0;
                                                        i87 = i79;
                                                        i89 = i47;
                                                        iZzl = iZzh16;
                                                        bArr7 = bArr2;
                                                        i91 = i17;
                                                    } else {
                                                        i78 = i78;
                                                        i12 = i12;
                                                        i18 = iZzh16;
                                                        i87 = i79;
                                                        i89 = i47;
                                                    }
                                                }
                                                bArr2 = bArr6;
                                                unsafe = unsafe11;
                                                i20 = i85;
                                                i79 = i82;
                                                iZzh16 = i78;
                                                if (iZzh16 != i78) {
                                                    i78 = i78;
                                                    unsafe12 = unsafe;
                                                    i11 = i11;
                                                    i12 = i12;
                                                    i90 = i19;
                                                    i88 = i20;
                                                    zzdjVar5 = zzdjVar2;
                                                    i86 = 0;
                                                    i87 = i79;
                                                    i89 = i47;
                                                    iZzl = iZzh16;
                                                    bArr7 = bArr2;
                                                    i91 = i17;
                                                } else {
                                                    i78 = i78;
                                                    i12 = i12;
                                                    i18 = iZzh16;
                                                    i87 = i79;
                                                    i89 = i47;
                                                }
                                                break;
                                            case 67:
                                                i78 = i49;
                                                unsafe11 = unsafe4;
                                                bArr6 = bArr3;
                                                i85 = i45;
                                                zzdjVar2 = zzdjVar4;
                                                obj2 = obj;
                                                i82 = i48;
                                                i19 = i50;
                                                if (i21 == 0) {
                                                    iZzh18 = zzdk.zzk(bArr6, i78, zzdjVar2);
                                                    unsafe9.putObject(obj2, j6, Long.valueOf(zzea.zzc(zzdjVar2.zzb)));
                                                    unsafe9.putInt(obj2, j11, i19);
                                                    bArr2 = bArr6;
                                                    iZzh16 = iZzh18;
                                                    unsafe = unsafe11;
                                                    i20 = i85;
                                                    i79 = i82;
                                                    if (iZzh16 != i78) {
                                                        i78 = i78;
                                                        unsafe12 = unsafe;
                                                        i11 = i11;
                                                        i12 = i12;
                                                        i90 = i19;
                                                        i88 = i20;
                                                        zzdjVar5 = zzdjVar2;
                                                        i86 = 0;
                                                        i87 = i79;
                                                        i89 = i47;
                                                        iZzl = iZzh16;
                                                        bArr7 = bArr2;
                                                        i91 = i17;
                                                    } else {
                                                        i78 = i78;
                                                        i12 = i12;
                                                        i18 = iZzh16;
                                                        i87 = i79;
                                                        i89 = i47;
                                                    }
                                                }
                                                bArr2 = bArr6;
                                                unsafe = unsafe11;
                                                i20 = i85;
                                                i79 = i82;
                                                iZzh16 = i78;
                                                if (iZzh16 != i78) {
                                                    i78 = i78;
                                                    unsafe12 = unsafe;
                                                    i11 = i11;
                                                    i12 = i12;
                                                    i90 = i19;
                                                    i88 = i20;
                                                    zzdjVar5 = zzdjVar2;
                                                    i86 = 0;
                                                    i87 = i79;
                                                    i89 = i47;
                                                    iZzl = iZzh16;
                                                    bArr7 = bArr2;
                                                    i91 = i17;
                                                } else {
                                                    i78 = i78;
                                                    i12 = i12;
                                                    i18 = iZzh16;
                                                    i87 = i79;
                                                    i89 = i47;
                                                }
                                                break;
                                            case 68:
                                                if (i21 == 3) {
                                                    obj2 = obj;
                                                    Object objZzy2 = zzgfVar.zzy(obj2, i50, i48);
                                                    i82 = i48;
                                                    i78 = i49;
                                                    zzdjVar2 = zzdjVar4;
                                                    int iZzl2 = zzdk.zzl(objZzy2, zzgfVar.zzv(i48), bArr, i78, i11, (i45 & (-8)) | 4, zzdjVar);
                                                    zzgfVar.zzG(obj2, i50, i82, objZzy2);
                                                    bArr2 = bArr3;
                                                    unsafe = unsafe4;
                                                    iZzh16 = iZzl2;
                                                    i20 = i45;
                                                    i19 = i50;
                                                    i79 = i82;
                                                    if (iZzh16 != i78) {
                                                        i78 = i78;
                                                        unsafe12 = unsafe;
                                                        i11 = i11;
                                                        i12 = i12;
                                                        i90 = i19;
                                                        i88 = i20;
                                                        zzdjVar5 = zzdjVar2;
                                                        i86 = 0;
                                                        i87 = i79;
                                                        i89 = i47;
                                                        iZzl = iZzh16;
                                                        bArr7 = bArr2;
                                                        i91 = i17;
                                                    } else {
                                                        i78 = i78;
                                                        i12 = i12;
                                                        i18 = iZzh16;
                                                        i87 = i79;
                                                        i89 = i47;
                                                    }
                                                } else {
                                                    obj2 = obj;
                                                    zzdjVar2 = zzdjVar4;
                                                    i78 = i49;
                                                    unsafe = unsafe4;
                                                    bArr2 = bArr3;
                                                    i20 = i45;
                                                    i79 = i48;
                                                    i19 = i50;
                                                    iZzh16 = i78;
                                                    if (iZzh16 != i78) {
                                                        i78 = i78;
                                                        unsafe12 = unsafe;
                                                        i11 = i11;
                                                        i12 = i12;
                                                        i90 = i19;
                                                        i88 = i20;
                                                        zzdjVar5 = zzdjVar2;
                                                        i86 = 0;
                                                        i87 = i79;
                                                        i89 = i47;
                                                        iZzl = iZzh16;
                                                        bArr7 = bArr2;
                                                        i91 = i17;
                                                    } else {
                                                        i78 = i78;
                                                        i12 = i12;
                                                        i18 = iZzh16;
                                                        i87 = i79;
                                                        i89 = i47;
                                                    }
                                                }
                                                break;
                                            default:
                                                obj2 = obj;
                                                i78 = i49;
                                                i79 = i48;
                                                i19 = i50;
                                                unsafe = unsafe4;
                                                zzdjVar2 = zzdjVar4;
                                                bArr2 = bArr3;
                                                i20 = i45;
                                                iZzh16 = i78;
                                                if (iZzh16 != i78) {
                                                    i78 = i78;
                                                    unsafe12 = unsafe;
                                                    i11 = i11;
                                                    i12 = i12;
                                                    i90 = i19;
                                                    i88 = i20;
                                                    zzdjVar5 = zzdjVar2;
                                                    i86 = 0;
                                                    i87 = i79;
                                                    i89 = i47;
                                                    iZzl = iZzh16;
                                                    bArr7 = bArr2;
                                                    i91 = i17;
                                                } else {
                                                    i78 = i78;
                                                    i12 = i12;
                                                    i18 = iZzh16;
                                                    i87 = i79;
                                                    i89 = i47;
                                                }
                                                break;
                                        }
                                    } else {
                                        if (i21 == 2) {
                                            unsafe8 = zzb;
                                            Object objZzw = zzgfVar.zzw(i48);
                                            object = unsafe8.getObject(obj, j6);
                                            if (!((zzfw) object).zze()) {
                                                zzfw zzfwVarZzb = zzfw.zza().zzb();
                                                zzfx.zza(zzfwVarZzb, object);
                                                unsafe8.putObject(obj, j6, zzfwVarZzb);
                                            }
                                            throw null;
                                        }
                                        obj2 = obj;
                                        i18 = i49;
                                        unsafe = unsafe4;
                                        i89 = i47;
                                        i87 = i48;
                                        i19 = i50;
                                        zzdjVar2 = zzdjVar4;
                                        bArr2 = bArr3;
                                        i20 = i45;
                                    }
                                }
                            } else if (i21 == 2) {
                                zzfcVarZzd = (zzfc) unsafe3.getObject(obj2, j6);
                                if (!zzfcVarZzd.zzc()) {
                                    int size3 = zzfcVarZzd.size();
                                    zzfcVarZzd = zzfcVarZzd.zzd(size3 != 0 ? size3 + size3 : 10);
                                    unsafe3.putObject(obj2, j6, zzfcVarZzd);
                                }
                                unsafe12 = unsafe3;
                                iZzl = zzdk.zze(zzgfVar.zzv(i46), i45, bArr, i23, i11, zzfcVarZzd, zzdjVar);
                                i87 = i46;
                                zzdjVar5 = zzdjVar4;
                                i88 = i45;
                                i91 = i17;
                                i89 = i89;
                                i90 = i44;
                                i12 = i12;
                                bArr7 = bArr;
                                i11 = i11;
                                i86 = 0;
                            } else {
                                i47 = i89;
                                unsafe4 = unsafe3;
                                i48 = i46;
                                i49 = i23;
                                bArr3 = bArr;
                                i50 = i44;
                                i18 = i49;
                                unsafe = unsafe4;
                                i89 = i47;
                                i87 = i48;
                                i19 = i50;
                                zzdjVar2 = zzdjVar4;
                                bArr2 = bArr3;
                                i20 = i45;
                            }
                        }
                    } else {
                        i87 = i86;
                        i16 = i87;
                        unsafe = unsafe12;
                        i17 = i91;
                        bArr2 = bArr7;
                        zzdjVar2 = zzdjVar5;
                        i12 = i12;
                        i18 = iZzi;
                        i19 = i93;
                        i20 = i13;
                    }
                    if (i20 == i12 || i12 == 0) {
                        if (!zzgfVar.zzh && (zzejVar = zzdjVar2.zzd) != zzej.zza && zzejVar.zzb(zzgfVar.zzg, i19) != null) {
                            throw null;
                        }
                        iZzg = zzdk.zzg(i20, bArr, i18, i11, zzd(obj), zzdjVar);
                        unsafe12 = unsafe;
                        i11 = i11;
                        i12 = i12;
                        i88 = i20;
                        zzdjVar5 = zzdjVar2;
                        i86 = i16;
                        i90 = i19;
                        bArr7 = bArr2;
                        i91 = i17;
                        iZzl = iZzg;
                    } else {
                        iZzl = i18;
                        i88 = i20;
                        i91 = i17;
                    }
                }
                i15 = iZzq;
                i14 = -1;
                if (i15 == i14) {
                    i21 = i13 & 7;
                    iArr = zzgfVar.zzc;
                    i22 = iArr[i15 + 1];
                    iZzr = zzr(i22);
                    j6 = i22 & 1048575;
                    i23 = iZzi;
                    if (iZzr <= 17) {
                        int i918 = iArr[i15 + 2];
                        i24 = 1 << (i918 >>> 20);
                        i25 = 1048575;
                        i26 = i918 & 1048575;
                        if (i26 != i91) {
                            if (i91 != 1048575) {
                                unsafe12.putInt(obj2, i91, i89);
                                i25 = 1048575;
                            }
                            if (i26 == i25) {
                                i89 = 0;
                            } else {
                                i89 = unsafe12.getInt(obj2, i26);
                            }
                            i27 = i26;
                        } else {
                            i27 = i91;
                        }
                        switch (iZzr) {
                            case 0:
                                zzdjVar3 = zzdjVar5;
                                i28 = i15;
                                i29 = i27;
                                i30 = i93;
                                i31 = i23;
                                i33 = 0;
                                unsafe2 = unsafe12;
                                i32 = i13;
                                bArr = bArr;
                                if (i21 == 1) {
                                    iZzh = i31 + 8;
                                    i89 |= i24;
                                    zzhn.zzo(obj2, j6, Double.longBitsToDouble(zzdk.zzn(bArr, i31)));
                                    i12 = i12;
                                    i86 = i33;
                                    unsafe12 = unsafe2;
                                    zzdjVar5 = zzdjVar3;
                                    i87 = i28;
                                    i90 = i30;
                                    i91 = i29;
                                    iZzl = iZzh;
                                    int i919 = i32;
                                    bArr7 = bArr;
                                    i88 = i919;
                                } else {
                                    i17 = i29;
                                    i12 = i12;
                                    i18 = i31;
                                    i16 = i33;
                                    unsafe = unsafe2;
                                    i87 = i28;
                                    i20 = i32;
                                    i19 = i30;
                                    zzdjVar2 = zzdjVar3;
                                    bArr2 = bArr;
                                }
                                break;
                            case 1:
                                zzdjVar3 = zzdjVar5;
                                i28 = i15;
                                i29 = i27;
                                i30 = i93;
                                i31 = i23;
                                i33 = 0;
                                unsafe2 = unsafe12;
                                i32 = i13;
                                bArr = bArr;
                                if (i21 == 5) {
                                    iZzh = i31 + 4;
                                    i89 |= i24;
                                    zzhn.zzp(obj2, j6, Float.intBitsToFloat(zzdk.zzb(bArr, i31)));
                                    i12 = i12;
                                    i86 = i33;
                                    unsafe12 = unsafe2;
                                    zzdjVar5 = zzdjVar3;
                                    i87 = i28;
                                    i90 = i30;
                                    i91 = i29;
                                    iZzl = iZzh;
                                    int i9110 = i32;
                                    bArr7 = bArr;
                                    i88 = i9110;
                                } else {
                                    i17 = i29;
                                    i12 = i12;
                                    i18 = i31;
                                    i16 = i33;
                                    unsafe = unsafe2;
                                    i87 = i28;
                                    i20 = i32;
                                    i19 = i30;
                                    zzdjVar2 = zzdjVar3;
                                    bArr2 = bArr;
                                }
                                break;
                            case 2:
                            case 3:
                                zzdjVar3 = zzdjVar5;
                                i28 = i15;
                                i29 = i27;
                                i30 = i93;
                                i31 = i23;
                                i33 = 0;
                                unsafe2 = unsafe12;
                                i32 = i13;
                                bArr = bArr;
                                if (i21 == 0) {
                                    i89 |= i24;
                                    int iZzk4 = zzdk.zzk(bArr, i31, zzdjVar3);
                                    unsafe2.putLong(obj, j6, zzdjVar3.zzb);
                                    i86 = 0;
                                    iZzl = iZzk4;
                                    unsafe12 = unsafe2;
                                    zzdjVar5 = zzdjVar3;
                                    i87 = i28;
                                    i90 = i30;
                                    i91 = i29;
                                    int i9111 = i32;
                                    bArr7 = bArr;
                                    i88 = i9111;
                                } else {
                                    i17 = i29;
                                    i12 = i12;
                                    i18 = i31;
                                    i16 = i33;
                                    unsafe = unsafe2;
                                    i87 = i28;
                                    i20 = i32;
                                    i19 = i30;
                                    zzdjVar2 = zzdjVar3;
                                    bArr2 = bArr;
                                }
                                break;
                            case 4:
                            case 11:
                                zzdjVar3 = zzdjVar5;
                                i28 = i15;
                                i29 = i27;
                                i30 = i93;
                                i31 = i23;
                                i33 = 0;
                                unsafe2 = unsafe12;
                                i32 = i13;
                                bArr = bArr;
                                if (i21 == 0) {
                                    i89 |= i24;
                                    iZzh = zzdk.zzh(bArr, i31, zzdjVar3);
                                    unsafe2.putInt(obj2, j6, zzdjVar3.zza);
                                    i12 = i12;
                                    i86 = i33;
                                    unsafe12 = unsafe2;
                                    zzdjVar5 = zzdjVar3;
                                    i87 = i28;
                                    i90 = i30;
                                    i91 = i29;
                                    iZzl = iZzh;
                                    int i9112 = i32;
                                    bArr7 = bArr;
                                    i88 = i9112;
                                } else {
                                    i17 = i29;
                                    i12 = i12;
                                    i18 = i31;
                                    i16 = i33;
                                    unsafe = unsafe2;
                                    i87 = i28;
                                    i20 = i32;
                                    i19 = i30;
                                    zzdjVar2 = zzdjVar3;
                                    bArr2 = bArr;
                                }
                                break;
                            case 5:
                            case 14:
                                zzdjVar3 = zzdjVar5;
                                i28 = i15;
                                i29 = i27;
                                i30 = i93;
                                i31 = i23;
                                i33 = 0;
                                unsafe2 = unsafe12;
                                i32 = i13;
                                bArr = bArr;
                                if (i21 == 1) {
                                    i89 |= i24;
                                    unsafe2.putLong(obj, j6, zzdk.zzn(bArr, i31));
                                    i86 = 0;
                                    unsafe12 = unsafe2;
                                    zzdjVar5 = zzdjVar3;
                                    i87 = i28;
                                    iZzl = i31 + 8;
                                    i90 = i30;
                                    i91 = i29;
                                    int i9113 = i32;
                                    bArr7 = bArr;
                                    i88 = i9113;
                                } else {
                                    i17 = i29;
                                    i12 = i12;
                                    i18 = i31;
                                    i16 = i33;
                                    unsafe = unsafe2;
                                    i87 = i28;
                                    i20 = i32;
                                    i19 = i30;
                                    zzdjVar2 = zzdjVar3;
                                    bArr2 = bArr;
                                }
                                break;
                            case 6:
                            case 13:
                                zzdjVar3 = zzdjVar5;
                                i28 = i15;
                                i29 = i27;
                                i30 = i93;
                                i31 = i23;
                                i33 = 0;
                                unsafe2 = unsafe12;
                                i32 = i13;
                                bArr = bArr;
                                if (i21 == 5) {
                                    iZzh = i31 + 4;
                                    i89 |= i24;
                                    unsafe2.putInt(obj2, j6, zzdk.zzb(bArr, i31));
                                    i12 = i12;
                                    i86 = i33;
                                    unsafe12 = unsafe2;
                                    zzdjVar5 = zzdjVar3;
                                    i87 = i28;
                                    i90 = i30;
                                    i91 = i29;
                                    iZzl = iZzh;
                                    int i9114 = i32;
                                    bArr7 = bArr;
                                    i88 = i9114;
                                } else {
                                    i17 = i29;
                                    i12 = i12;
                                    i18 = i31;
                                    i16 = i33;
                                    unsafe = unsafe2;
                                    i87 = i28;
                                    i20 = i32;
                                    i19 = i30;
                                    zzdjVar2 = zzdjVar3;
                                    bArr2 = bArr;
                                }
                                break;
                            case 7:
                                zzdjVar3 = zzdjVar5;
                                i28 = i15;
                                i29 = i27;
                                i30 = i93;
                                i31 = i23;
                                i33 = 0;
                                unsafe2 = unsafe12;
                                i32 = i13;
                                bArr = bArr;
                                if (i21 == 0) {
                                    i89 |= i24;
                                    iZzh = zzdk.zzk(bArr, i31, zzdjVar3);
                                    if (zzdjVar3.zzb != 0) {
                                        z6 = true;
                                    } else {
                                        z6 = false;
                                    }
                                    zzhn.zzm(obj2, j6, z6);
                                    i12 = i12;
                                    i86 = i33;
                                    unsafe12 = unsafe2;
                                    zzdjVar5 = zzdjVar3;
                                    i87 = i28;
                                    i90 = i30;
                                    i91 = i29;
                                    iZzl = iZzh;
                                    int i9115 = i32;
                                    bArr7 = bArr;
                                    i88 = i9115;
                                } else {
                                    i17 = i29;
                                    i12 = i12;
                                    i18 = i31;
                                    i16 = i33;
                                    unsafe = unsafe2;
                                    i87 = i28;
                                    i20 = i32;
                                    i19 = i30;
                                    zzdjVar2 = zzdjVar3;
                                    bArr2 = bArr;
                                }
                                break;
                            case 8:
                                zzdjVar3 = zzdjVar5;
                                i28 = i15;
                                i29 = i27;
                                i30 = i93;
                                i31 = i23;
                                unsafe2 = unsafe12;
                                i32 = i13;
                                bArr = bArr;
                                if (i21 == 2) {
                                    if ((i22 & 536870912) != 0) {
                                        i35 = i89 | i24;
                                        iZzh2 = zzdk.zzh(bArr, i31, zzdjVar3);
                                        i36 = zzdjVar3.zza;
                                        if (i36 >= 0) {
                                            throw zzff.zzd();
                                        }
                                        if (i36 == 0) {
                                            zzdjVar3.zzc = "";
                                            i39 = i35;
                                            i40 = 0;
                                        } else {
                                            int i1010 = zzhs.zza;
                                            length = bArr.length;
                                            if ((((length - iZzh2) - i36) | iZzh2 | i36) >= 0) {
                                                throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(length), Integer.valueOf(iZzh2), Integer.valueOf(i36)));
                                            }
                                            i37 = iZzh2 + i36;
                                            cArr = new char[i36];
                                            i38 = 0;
                                            while (iZzh2 < i37) {
                                                b12 = bArr[iZzh2];
                                                if (zzho.zzd(b12)) {
                                                    iZzh2++;
                                                    cArr[i38] = (char) b12;
                                                    i38++;
                                                } else {
                                                    while (iZzh2 < i37) {
                                                        i41 = iZzh2 + 1;
                                                        b10 = bArr[iZzh2];
                                                        if (zzho.zzd(b10)) {
                                                            cArr[i38] = (char) b10;
                                                            i38++;
                                                            iZzh2 = i41;
                                                            while (iZzh2 < i37) {
                                                                b11 = bArr[iZzh2];
                                                                if (zzho.zzd(b11)) {
                                                                }
                                                                iZzh2++;
                                                                cArr[i38] = (char) b11;
                                                                i38++;
                                                            }
                                                        } else {
                                                            i42 = i35;
                                                            if (b10 < -32) {
                                                                if (i41 < i37) {
                                                                    throw zzff.zzc();
                                                                }
                                                                iZzh2 += 2;
                                                                zzho.zzc(b10, bArr[i41], cArr, i38);
                                                                i38++;
                                                            } else if (b10 < -16) {
                                                                if (i41 < i37 - 1) {
                                                                    throw zzff.zzc();
                                                                }
                                                                int i1011 = iZzh2 + 2;
                                                                iZzh2 += 3;
                                                                zzho.zzb(b10, bArr[i41], bArr[i1011], cArr, i38);
                                                                i35 = i42;
                                                                i38++;
                                                            } else {
                                                                if (i41 < i37 - 2) {
                                                                    throw zzff.zzc();
                                                                }
                                                                byte b18 = bArr[i41];
                                                                int i1012 = iZzh2 + 3;
                                                                byte b19 = bArr[iZzh2 + 2];
                                                                iZzh2 += 4;
                                                                zzho.zza(b10, b18, b19, bArr[i1012], cArr, i38);
                                                                i38 += 2;
                                                            }
                                                            i35 = i42;
                                                        }
                                                        break;
                                                    }
                                                    i39 = i35;
                                                    i40 = 0;
                                                    zzdjVar3.zzc = new String(cArr, 0, i38);
                                                    iZzh2 = i37;
                                                }
                                            }
                                            while (iZzh2 < i37) {
                                                i41 = iZzh2 + 1;
                                                b10 = bArr[iZzh2];
                                                if (zzho.zzd(b10)) {
                                                    cArr[i38] = (char) b10;
                                                    i38++;
                                                    iZzh2 = i41;
                                                    while (iZzh2 < i37) {
                                                        b11 = bArr[iZzh2];
                                                        if (zzho.zzd(b11)) {
                                                        }
                                                        iZzh2++;
                                                        cArr[i38] = (char) b11;
                                                        i38++;
                                                    }
                                                } else {
                                                    i42 = i35;
                                                    if (b10 < -32) {
                                                        if (i41 < i37) {
                                                            throw zzff.zzc();
                                                        }
                                                        iZzh2 += 2;
                                                        zzho.zzc(b10, bArr[i41], cArr, i38);
                                                        i38++;
                                                    } else if (b10 < -16) {
                                                        if (i41 < i37 - 1) {
                                                            throw zzff.zzc();
                                                        }
                                                        int i1013 = iZzh2 + 2;
                                                        iZzh2 += 3;
                                                        zzho.zzb(b10, bArr[i41], bArr[i1013], cArr, i38);
                                                        i35 = i42;
                                                        i38++;
                                                    } else {
                                                        if (i41 < i37 - 2) {
                                                            throw zzff.zzc();
                                                        }
                                                        byte b110 = bArr[i41];
                                                        int i1014 = iZzh2 + 3;
                                                        byte b111 = bArr[iZzh2 + 2];
                                                        iZzh2 += 4;
                                                        zzho.zza(b10, b110, b111, bArr[i1014], cArr, i38);
                                                        i38 += 2;
                                                    }
                                                    i35 = i42;
                                                }
                                                break;
                                            }
                                            i39 = i35;
                                            i40 = 0;
                                            zzdjVar3.zzc = new String(cArr, 0, i38);
                                            iZzh2 = i37;
                                        }
                                        iZzh = iZzh2;
                                        i33 = i40;
                                        i89 = i39;
                                    } else {
                                        i33 = 0;
                                        iZzh = zzdk.zzh(bArr, i31, zzdjVar3);
                                        i34 = zzdjVar3.zza;
                                        if (i34 >= 0) {
                                            throw zzff.zzd();
                                        }
                                        int i1015 = i89 | i24;
                                        if (i34 == 0) {
                                            zzdjVar3.zzc = "";
                                        } else {
                                            zzdjVar3.zzc = new String(bArr, iZzh, i34, zzfd.zzb);
                                            iZzh += i34;
                                        }
                                        i89 = i1015;
                                    }
                                    unsafe2.putObject(obj2, j6, zzdjVar3.zzc);
                                    i12 = i12;
                                    i86 = i33;
                                    unsafe12 = unsafe2;
                                    zzdjVar5 = zzdjVar3;
                                    i87 = i28;
                                    i90 = i30;
                                    i91 = i29;
                                    iZzl = iZzh;
                                    int i9116 = i32;
                                    bArr7 = bArr;
                                    i88 = i9116;
                                } else {
                                    i33 = 0;
                                    i17 = i29;
                                    i12 = i12;
                                    i18 = i31;
                                    i16 = i33;
                                    unsafe = unsafe2;
                                    i87 = i28;
                                    i20 = i32;
                                    i19 = i30;
                                    zzdjVar2 = zzdjVar3;
                                    bArr2 = bArr;
                                }
                                break;
                            case 9:
                                zzdjVar3 = zzdjVar5;
                                i28 = i15;
                                i29 = i27;
                                i30 = i93;
                                i31 = i23;
                                unsafe2 = unsafe12;
                                i32 = i13;
                                bArr = bArr;
                                if (i21 == 2) {
                                    i89 |= i24;
                                    Object objZzx3 = zzgfVar.zzx(obj2, i28);
                                    iZzh = zzdk.zzm(objZzx3, zzgfVar.zzv(i28), bArr, i31, i11, zzdjVar);
                                    zzgfVar.zzF(obj2, i28, objZzx3);
                                    unsafe12 = unsafe2;
                                    zzdjVar5 = zzdjVar3;
                                    i87 = i28;
                                    i90 = i30;
                                    i86 = 0;
                                    i91 = i29;
                                    iZzl = iZzh;
                                    int i9117 = i32;
                                    bArr7 = bArr;
                                    i88 = i9117;
                                } else {
                                    i33 = 0;
                                    i17 = i29;
                                    i12 = i12;
                                    i18 = i31;
                                    i16 = i33;
                                    unsafe = unsafe2;
                                    i87 = i28;
                                    i20 = i32;
                                    i19 = i30;
                                    zzdjVar2 = zzdjVar3;
                                    bArr2 = bArr;
                                }
                                break;
                            case 10:
                                zzdjVar3 = zzdjVar5;
                                i28 = i15;
                                i29 = i27;
                                i30 = i93;
                                i31 = i23;
                                unsafe2 = unsafe12;
                                i32 = i13;
                                bArr = bArr;
                                if (i21 == 2) {
                                    i89 |= i24;
                                    iZzh = zzdk.zza(bArr, i31, zzdjVar3);
                                    unsafe2.putObject(obj2, j6, zzdjVar3.zzc);
                                    unsafe12 = unsafe2;
                                    zzdjVar5 = zzdjVar3;
                                    i87 = i28;
                                    i90 = i30;
                                    i86 = 0;
                                    i91 = i29;
                                    iZzl = iZzh;
                                    int i9118 = i32;
                                    bArr7 = bArr;
                                    i88 = i9118;
                                } else {
                                    i33 = 0;
                                    i17 = i29;
                                    i12 = i12;
                                    i18 = i31;
                                    i16 = i33;
                                    unsafe = unsafe2;
                                    i87 = i28;
                                    i20 = i32;
                                    i19 = i30;
                                    zzdjVar2 = zzdjVar3;
                                    bArr2 = bArr;
                                }
                                break;
                            case 12:
                                i12 = i12;
                                zzdjVar3 = zzdjVar5;
                                i28 = i15;
                                i29 = i27;
                                i30 = i93;
                                i31 = i23;
                                unsafe2 = unsafe12;
                                i32 = i13;
                                bArr = bArr;
                                if (i21 == 0) {
                                    int iZzh110 = zzdk.zzh(bArr, i31, zzdjVar3);
                                    i43 = zzdjVar3.zza;
                                    zzfb zzfbVarZzu4 = zzgfVar.zzu(i28);
                                    if ((i22 & Integer.MIN_VALUE) != 0) {
                                        i89 |= i24;
                                        unsafe2.putInt(obj2, j6, i43);
                                    } else {
                                        i89 |= i24;
                                        unsafe2.putInt(obj2, j6, i43);
                                    }
                                    i11 = i11;
                                    unsafe12 = unsafe2;
                                    zzdjVar5 = zzdjVar3;
                                    i87 = i28;
                                    iZzl = iZzh110;
                                    i90 = i30;
                                    i86 = 0;
                                    i91 = i29;
                                    int i9119 = i32;
                                    bArr7 = bArr;
                                    i88 = i9119;
                                } else {
                                    i33 = 0;
                                    i17 = i29;
                                    i12 = i12;
                                    i18 = i31;
                                    i16 = i33;
                                    unsafe = unsafe2;
                                    i87 = i28;
                                    i20 = i32;
                                    i19 = i30;
                                    zzdjVar2 = zzdjVar3;
                                    bArr2 = bArr;
                                }
                                break;
                            case 15:
                                zzdjVar3 = zzdjVar5;
                                i28 = i15;
                                i29 = i27;
                                i30 = i93;
                                i31 = i23;
                                unsafe2 = unsafe12;
                                i32 = i13;
                                bArr = bArr;
                                if (i21 == 0) {
                                    i89 |= i24;
                                    iZzh = zzdk.zzh(bArr, i31, zzdjVar3);
                                    unsafe2.putInt(obj2, j6, zzea.zzb(zzdjVar3.zza));
                                    unsafe12 = unsafe2;
                                    zzdjVar5 = zzdjVar3;
                                    i87 = i28;
                                    i90 = i30;
                                    i86 = 0;
                                    i91 = i29;
                                    iZzl = iZzh;
                                    int i91110 = i32;
                                    bArr7 = bArr;
                                    i88 = i91110;
                                } else {
                                    i33 = 0;
                                    i17 = i29;
                                    i12 = i12;
                                    i18 = i31;
                                    i16 = i33;
                                    unsafe = unsafe2;
                                    i87 = i28;
                                    i20 = i32;
                                    i19 = i30;
                                    zzdjVar2 = zzdjVar3;
                                    bArr2 = bArr;
                                }
                                break;
                            case 16:
                                i28 = i15;
                                i29 = i27;
                                i30 = i93;
                                i31 = i23;
                                b7 = -1;
                                i32 = i13;
                                if (i21 == 0) {
                                    i89 |= i24;
                                    bArr = bArr;
                                    int iZzk5 = zzdk.zzk(bArr, i31, zzdjVar5);
                                    unsafe12.putLong(obj, j6, zzea.zzc(zzdjVar5.zzb));
                                    i11 = i11;
                                    i12 = i12;
                                    unsafe12 = unsafe12;
                                    zzdjVar5 = zzdjVar5;
                                    i87 = i28;
                                    iZzl = iZzk5;
                                    i90 = i30;
                                    i86 = 0;
                                    i91 = i29;
                                    int i91111 = i32;
                                    bArr7 = bArr;
                                    i88 = i91111;
                                } else {
                                    zzdjVar3 = zzdjVar5;
                                    unsafe2 = unsafe12;
                                    i33 = 0;
                                    i17 = i29;
                                    i12 = i12;
                                    i18 = i31;
                                    i16 = i33;
                                    unsafe = unsafe2;
                                    i87 = i28;
                                    i20 = i32;
                                    i19 = i30;
                                    zzdjVar2 = zzdjVar3;
                                    bArr2 = bArr;
                                }
                                break;
                            default:
                                if (i21 == 3) {
                                    int i1016 = i89 | i24;
                                    Object objZzx4 = zzgfVar.zzx(obj2, i15);
                                    int i1017 = i15;
                                    iZzl = zzdk.zzl(objZzx4, zzgfVar.zzv(i15), bArr, i23, i11, (i93 << 3) | 4, zzdjVar);
                                    zzgfVar.zzF(obj2, i1017, objZzx4);
                                    i91 = i27;
                                    i12 = i12;
                                    i89 = i1016;
                                    i87 = i1017;
                                    i88 = i13;
                                    i90 = i93;
                                    i86 = 0;
                                    bArr7 = bArr;
                                    i11 = i11;
                                } else {
                                    i28 = i15;
                                    i29 = i27;
                                    i30 = i93;
                                    i31 = i23;
                                    b7 = -1;
                                    i32 = i13;
                                    zzdjVar3 = zzdjVar5;
                                    unsafe2 = unsafe12;
                                    i33 = 0;
                                    i17 = i29;
                                    i12 = i12;
                                    i18 = i31;
                                    i16 = i33;
                                    unsafe = unsafe2;
                                    i87 = i28;
                                    i20 = i32;
                                    i19 = i30;
                                    zzdjVar2 = zzdjVar3;
                                    bArr2 = bArr;
                                }
                                break;
                        }
                    } else {
                        i17 = i91;
                        i44 = i93;
                        i16 = 0;
                        zzdjVar4 = zzdjVar5;
                        i45 = i13;
                        i46 = i15;
                        unsafe3 = unsafe12;
                        if (iZzr == 27) {
                            i48 = i46;
                            i49 = i23;
                            bArr3 = bArr;
                            i47 = i89;
                            zzdjVar4 = zzdjVar4;
                            if (iZzr <= 49) {
                                j10 = i22;
                                unsafe5 = zzb;
                                zzfcVarZzd2 = (zzfc) unsafe5.getObject(obj2, j6);
                                if (!zzfcVarZzd2.zzc()) {
                                    int size4 = zzfcVarZzd2.size();
                                    zzfcVarZzd2 = zzfcVarZzd2.zzd(size4 != 0 ? size4 + size4 : 10);
                                    unsafe5.putObject(obj2, j6, zzfcVarZzd2);
                                }
                                zzfcVar = zzfcVarZzd2;
                                switch (iZzr) {
                                    case 18:
                                    case 35:
                                        bArr3 = bArr;
                                        i51 = i11;
                                        zzdjVar4 = zzdjVar4;
                                        i90 = i44;
                                        unsafe6 = unsafe3;
                                        if (i21 == 2) {
                                            zzegVar2 = (zzeg) zzfcVar;
                                            iZzh3 = zzdk.zzh(bArr3, i49, zzdjVar4);
                                            i52 = zzdjVar4.zza + iZzh3;
                                            while (iZzh3 < i52) {
                                                zzegVar2.zze(Double.longBitsToDouble(zzdk.zzn(bArr3, iZzh3)));
                                                iZzh3 += 8;
                                            }
                                            if (iZzh3 != i52) {
                                                throw zzff.zzg();
                                            }
                                        } else if (i21 == 1) {
                                            iZzh3 = i49 + 8;
                                            zzegVar = (zzeg) zzfcVar;
                                            zzegVar.zze(Double.longBitsToDouble(zzdk.zzn(bArr3, i49)));
                                            while (iZzh3 < i51) {
                                                iZzh4 = zzdk.zzh(bArr3, iZzh3, zzdjVar4);
                                                if (i45 == zzdjVar4.zza) {
                                                    zzegVar.zze(Double.longBitsToDouble(zzdk.zzn(bArr3, iZzh4)));
                                                    iZzh3 = iZzh4 + 8;
                                                }
                                            }
                                        } else {
                                            iZzh3 = i49;
                                        }
                                        if (iZzh3 != i49) {
                                            i12 = i12;
                                            i11 = i51;
                                            i87 = i48;
                                            unsafe12 = unsafe6;
                                            zzdjVar5 = zzdjVar4;
                                            i88 = i45;
                                            i86 = 0;
                                            i91 = i17;
                                            i89 = i47;
                                            obj2 = obj;
                                            iZzl = iZzh3;
                                            bArr7 = bArr3;
                                        } else {
                                            obj2 = obj;
                                            i18 = iZzh3;
                                            i87 = i48;
                                            i19 = i90;
                                            unsafe = unsafe6;
                                            i89 = i47;
                                            zzdjVar2 = zzdjVar4;
                                            bArr2 = bArr3;
                                            i20 = i45;
                                        }
                                        break;
                                    case 19:
                                    case 36:
                                        bArr3 = bArr;
                                        i51 = i11;
                                        zzdjVar4 = zzdjVar4;
                                        i90 = i44;
                                        unsafe6 = unsafe3;
                                        if (i21 == 2) {
                                            zzeqVar2 = (zzeq) zzfcVar;
                                            iZzh3 = zzdk.zzh(bArr3, i49, zzdjVar4);
                                            i53 = zzdjVar4.zza + iZzh3;
                                            while (iZzh3 < i53) {
                                                zzeqVar2.zze(Float.intBitsToFloat(zzdk.zzb(bArr3, iZzh3)));
                                                iZzh3 += 4;
                                            }
                                            if (iZzh3 != i53) {
                                                throw zzff.zzg();
                                            }
                                        } else if (i21 == 5) {
                                            iZzh3 = i49 + 4;
                                            zzeqVar = (zzeq) zzfcVar;
                                            zzeqVar.zze(Float.intBitsToFloat(zzdk.zzb(bArr3, i49)));
                                            while (iZzh3 < i51) {
                                                iZzh5 = zzdk.zzh(bArr3, iZzh3, zzdjVar4);
                                                if (i45 == zzdjVar4.zza) {
                                                    zzeqVar.zze(Float.intBitsToFloat(zzdk.zzb(bArr3, iZzh5)));
                                                    iZzh3 = iZzh5 + 4;
                                                }
                                            }
                                        } else {
                                            iZzh3 = i49;
                                        }
                                        if (iZzh3 != i49) {
                                            i12 = i12;
                                            i11 = i51;
                                            i87 = i48;
                                            unsafe12 = unsafe6;
                                            zzdjVar5 = zzdjVar4;
                                            i88 = i45;
                                            i86 = 0;
                                            i91 = i17;
                                            i89 = i47;
                                            obj2 = obj;
                                            iZzl = iZzh3;
                                            bArr7 = bArr3;
                                        } else {
                                            obj2 = obj;
                                            i18 = iZzh3;
                                            i87 = i48;
                                            i19 = i90;
                                            unsafe = unsafe6;
                                            i89 = i47;
                                            zzdjVar2 = zzdjVar4;
                                            bArr2 = bArr3;
                                            i20 = i45;
                                        }
                                        break;
                                    case 20:
                                    case 21:
                                    case 37:
                                    case 38:
                                        bArr3 = bArr;
                                        i51 = i11;
                                        zzdjVar4 = zzdjVar4;
                                        i90 = i44;
                                        unsafe6 = unsafe3;
                                        if (i21 == 2) {
                                            zzfrVar2 = (zzfr) zzfcVar;
                                            iZzh3 = zzdk.zzh(bArr3, i49, zzdjVar4);
                                            i54 = zzdjVar4.zza + iZzh3;
                                            while (iZzh3 < i54) {
                                                iZzh3 = zzdk.zzk(bArr3, iZzh3, zzdjVar4);
                                                zzfrVar2.zzf(zzdjVar4.zzb);
                                            }
                                            if (iZzh3 != i54) {
                                                throw zzff.zzg();
                                            }
                                        } else if (i21 == 0) {
                                            zzfrVar = (zzfr) zzfcVar;
                                            iZzh3 = zzdk.zzk(bArr3, i49, zzdjVar4);
                                            zzfrVar.zzf(zzdjVar4.zzb);
                                            while (iZzh3 < i51) {
                                                iZzh6 = zzdk.zzh(bArr3, iZzh3, zzdjVar4);
                                                if (i45 == zzdjVar4.zza) {
                                                    iZzh3 = zzdk.zzk(bArr3, iZzh6, zzdjVar4);
                                                    zzfrVar.zzf(zzdjVar4.zzb);
                                                }
                                            }
                                        } else {
                                            iZzh3 = i49;
                                        }
                                        if (iZzh3 != i49) {
                                            i12 = i12;
                                            i11 = i51;
                                            i87 = i48;
                                            unsafe12 = unsafe6;
                                            zzdjVar5 = zzdjVar4;
                                            i88 = i45;
                                            i86 = 0;
                                            i91 = i17;
                                            i89 = i47;
                                            obj2 = obj;
                                            iZzl = iZzh3;
                                            bArr7 = bArr3;
                                        } else {
                                            obj2 = obj;
                                            i18 = iZzh3;
                                            i87 = i48;
                                            i19 = i90;
                                            unsafe = unsafe6;
                                            i89 = i47;
                                            zzdjVar2 = zzdjVar4;
                                            bArr2 = bArr3;
                                            i20 = i45;
                                        }
                                        break;
                                    case 22:
                                    case 29:
                                    case 39:
                                    case 43:
                                        bArr3 = bArr;
                                        unsafe7 = unsafe3;
                                        i51 = i11;
                                        i55 = i48;
                                        i56 = i49;
                                        zzdjVar4 = zzdjVar4;
                                        i57 = i44;
                                        if (i21 == 2) {
                                            iZzf = zzdk.zzf(bArr3, i56, zzfcVar, zzdjVar4);
                                            unsafe6 = unsafe7;
                                            iZzh3 = iZzf;
                                            i49 = i56;
                                            i48 = i55;
                                            i90 = i57;
                                        } else if (i21 == 0) {
                                            unsafe6 = unsafe7;
                                            i49 = i56;
                                            i48 = i55;
                                            i90 = i57;
                                            iZzh3 = zzdk.zzj(i45, bArr, i56, i11, zzfcVar, zzdjVar);
                                        } else {
                                            unsafe6 = unsafe7;
                                            i49 = i56;
                                            i48 = i55;
                                            i90 = i57;
                                            iZzh3 = i49;
                                        }
                                        if (iZzh3 != i49) {
                                            i12 = i12;
                                            i11 = i51;
                                            i87 = i48;
                                            unsafe12 = unsafe6;
                                            zzdjVar5 = zzdjVar4;
                                            i88 = i45;
                                            i86 = 0;
                                            i91 = i17;
                                            i89 = i47;
                                            obj2 = obj;
                                            iZzl = iZzh3;
                                            bArr7 = bArr3;
                                        } else {
                                            obj2 = obj;
                                            i18 = iZzh3;
                                            i87 = i48;
                                            i19 = i90;
                                            unsafe = unsafe6;
                                            i89 = i47;
                                            zzdjVar2 = zzdjVar4;
                                            bArr2 = bArr3;
                                            i20 = i45;
                                        }
                                        break;
                                    case 23:
                                    case 32:
                                    case 40:
                                    case 46:
                                        bArr3 = bArr;
                                        unsafe7 = unsafe3;
                                        i51 = i11;
                                        i55 = i48;
                                        i56 = i49;
                                        zzdjVar4 = zzdjVar4;
                                        i57 = i44;
                                        if (i21 == 2) {
                                            if (i21 == 1) {
                                                iZze = i56 + 8;
                                                zzfrVar3 = (zzfr) zzfcVar;
                                                zzfrVar3.zzf(zzdk.zzn(bArr3, i56));
                                                while (iZze < i51) {
                                                    iZzh7 = zzdk.zzh(bArr3, iZze, zzdjVar4);
                                                    if (i45 == zzdjVar4.zza) {
                                                        unsafe6 = unsafe7;
                                                        i49 = i56;
                                                        i90 = i57;
                                                        iZzh3 = iZze;
                                                        i48 = i55;
                                                        if (iZzh3 != i49) {
                                                            i12 = i12;
                                                            i11 = i51;
                                                            i87 = i48;
                                                            unsafe12 = unsafe6;
                                                            zzdjVar5 = zzdjVar4;
                                                            i88 = i45;
                                                            i86 = 0;
                                                            i91 = i17;
                                                            i89 = i47;
                                                            obj2 = obj;
                                                            iZzl = iZzh3;
                                                            bArr7 = bArr3;
                                                        } else {
                                                            obj2 = obj;
                                                            i18 = iZzh3;
                                                            i87 = i48;
                                                            i19 = i90;
                                                            unsafe = unsafe6;
                                                            i89 = i47;
                                                            zzdjVar2 = zzdjVar4;
                                                            bArr2 = bArr3;
                                                            i20 = i45;
                                                        }
                                                    } else {
                                                        zzfrVar3.zzf(zzdk.zzn(bArr3, iZzh7));
                                                        iZze = iZzh7 + 8;
                                                    }
                                                    break;
                                                }
                                                unsafe6 = unsafe7;
                                                i49 = i56;
                                                i90 = i57;
                                                iZzh3 = iZze;
                                                i48 = i55;
                                                if (iZzh3 != i49) {
                                                    i12 = i12;
                                                    i11 = i51;
                                                    i87 = i48;
                                                    unsafe12 = unsafe6;
                                                    zzdjVar5 = zzdjVar4;
                                                    i88 = i45;
                                                    i86 = 0;
                                                    i91 = i17;
                                                    i89 = i47;
                                                    obj2 = obj;
                                                    iZzl = iZzh3;
                                                    bArr7 = bArr3;
                                                } else {
                                                    obj2 = obj;
                                                    i18 = iZzh3;
                                                    i87 = i48;
                                                    i19 = i90;
                                                    unsafe = unsafe6;
                                                    i89 = i47;
                                                    zzdjVar2 = zzdjVar4;
                                                    bArr2 = bArr3;
                                                    i20 = i45;
                                                }
                                            }
                                            unsafe6 = unsafe7;
                                            i49 = i56;
                                            i48 = i55;
                                            i90 = i57;
                                            iZzh3 = i49;
                                            if (iZzh3 != i49) {
                                                i12 = i12;
                                                i11 = i51;
                                                i87 = i48;
                                                unsafe12 = unsafe6;
                                                zzdjVar5 = zzdjVar4;
                                                i88 = i45;
                                                i86 = 0;
                                                i91 = i17;
                                                i89 = i47;
                                                obj2 = obj;
                                                iZzl = iZzh3;
                                                bArr7 = bArr3;
                                            } else {
                                                obj2 = obj;
                                                i18 = iZzh3;
                                                i87 = i48;
                                                i19 = i90;
                                                unsafe = unsafe6;
                                                i89 = i47;
                                                zzdjVar2 = zzdjVar4;
                                                bArr2 = bArr3;
                                                i20 = i45;
                                            }
                                            break;
                                        } else {
                                            zzfrVar4 = (zzfr) zzfcVar;
                                            iZzf = zzdk.zzh(bArr3, i56, zzdjVar4);
                                            i58 = zzdjVar4.zza + iZzf;
                                            while (iZzf < i58) {
                                                zzfrVar4.zzf(zzdk.zzn(bArr3, iZzf));
                                                iZzf += 8;
                                            }
                                            if (iZzf != i58) {
                                                throw zzff.zzg();
                                            }
                                            unsafe6 = unsafe7;
                                            iZzh3 = iZzf;
                                            i49 = i56;
                                            i48 = i55;
                                            i90 = i57;
                                            if (iZzh3 != i49) {
                                                i12 = i12;
                                                i11 = i51;
                                                i87 = i48;
                                                unsafe12 = unsafe6;
                                                zzdjVar5 = zzdjVar4;
                                                i88 = i45;
                                                i86 = 0;
                                                i91 = i17;
                                                i89 = i47;
                                                obj2 = obj;
                                                iZzl = iZzh3;
                                                bArr7 = bArr3;
                                            } else {
                                                obj2 = obj;
                                                i18 = iZzh3;
                                                i87 = i48;
                                                i19 = i90;
                                                unsafe = unsafe6;
                                                i89 = i47;
                                                zzdjVar2 = zzdjVar4;
                                                bArr2 = bArr3;
                                                i20 = i45;
                                            }
                                        }
                                        break;
                                    case 24:
                                    case 31:
                                    case 41:
                                    case 45:
                                        bArr3 = bArr;
                                        unsafe7 = unsafe3;
                                        i51 = i11;
                                        i55 = i48;
                                        i56 = i49;
                                        zzdjVar4 = zzdjVar4;
                                        i57 = i44;
                                        if (i21 == 2) {
                                            if (i21 == 5) {
                                                iZze = i56 + 4;
                                                zzeyVar = (zzey) zzfcVar;
                                                zzeyVar.zzf(zzdk.zzb(bArr3, i56));
                                                while (iZze < i51) {
                                                    iZzh8 = zzdk.zzh(bArr3, iZze, zzdjVar4);
                                                    if (i45 == zzdjVar4.zza) {
                                                        unsafe6 = unsafe7;
                                                        i49 = i56;
                                                        i90 = i57;
                                                        iZzh3 = iZze;
                                                        i48 = i55;
                                                        if (iZzh3 != i49) {
                                                            i12 = i12;
                                                            i11 = i51;
                                                            i87 = i48;
                                                            unsafe12 = unsafe6;
                                                            zzdjVar5 = zzdjVar4;
                                                            i88 = i45;
                                                            i86 = 0;
                                                            i91 = i17;
                                                            i89 = i47;
                                                            obj2 = obj;
                                                            iZzl = iZzh3;
                                                            bArr7 = bArr3;
                                                        } else {
                                                            obj2 = obj;
                                                            i18 = iZzh3;
                                                            i87 = i48;
                                                            i19 = i90;
                                                            unsafe = unsafe6;
                                                            i89 = i47;
                                                            zzdjVar2 = zzdjVar4;
                                                            bArr2 = bArr3;
                                                            i20 = i45;
                                                        }
                                                    } else {
                                                        zzeyVar.zzf(zzdk.zzb(bArr3, iZzh8));
                                                        iZze = iZzh8 + 4;
                                                    }
                                                    break;
                                                }
                                                unsafe6 = unsafe7;
                                                i49 = i56;
                                                i90 = i57;
                                                iZzh3 = iZze;
                                                i48 = i55;
                                                if (iZzh3 != i49) {
                                                    i12 = i12;
                                                    i11 = i51;
                                                    i87 = i48;
                                                    unsafe12 = unsafe6;
                                                    zzdjVar5 = zzdjVar4;
                                                    i88 = i45;
                                                    i86 = 0;
                                                    i91 = i17;
                                                    i89 = i47;
                                                    obj2 = obj;
                                                    iZzl = iZzh3;
                                                    bArr7 = bArr3;
                                                } else {
                                                    obj2 = obj;
                                                    i18 = iZzh3;
                                                    i87 = i48;
                                                    i19 = i90;
                                                    unsafe = unsafe6;
                                                    i89 = i47;
                                                    zzdjVar2 = zzdjVar4;
                                                    bArr2 = bArr3;
                                                    i20 = i45;
                                                }
                                            }
                                            unsafe6 = unsafe7;
                                            i49 = i56;
                                            i48 = i55;
                                            i90 = i57;
                                            iZzh3 = i49;
                                            if (iZzh3 != i49) {
                                                i12 = i12;
                                                i11 = i51;
                                                i87 = i48;
                                                unsafe12 = unsafe6;
                                                zzdjVar5 = zzdjVar4;
                                                i88 = i45;
                                                i86 = 0;
                                                i91 = i17;
                                                i89 = i47;
                                                obj2 = obj;
                                                iZzl = iZzh3;
                                                bArr7 = bArr3;
                                            } else {
                                                obj2 = obj;
                                                i18 = iZzh3;
                                                i87 = i48;
                                                i19 = i90;
                                                unsafe = unsafe6;
                                                i89 = i47;
                                                zzdjVar2 = zzdjVar4;
                                                bArr2 = bArr3;
                                                i20 = i45;
                                            }
                                            break;
                                        } else {
                                            zzeyVar2 = (zzey) zzfcVar;
                                            iZzf = zzdk.zzh(bArr3, i56, zzdjVar4);
                                            i59 = zzdjVar4.zza + iZzf;
                                            while (iZzf < i59) {
                                                zzeyVar2.zzf(zzdk.zzb(bArr3, iZzf));
                                                iZzf += 4;
                                            }
                                            if (iZzf != i59) {
                                                throw zzff.zzg();
                                            }
                                            unsafe6 = unsafe7;
                                            iZzh3 = iZzf;
                                            i49 = i56;
                                            i48 = i55;
                                            i90 = i57;
                                            if (iZzh3 != i49) {
                                                i12 = i12;
                                                i11 = i51;
                                                i87 = i48;
                                                unsafe12 = unsafe6;
                                                zzdjVar5 = zzdjVar4;
                                                i88 = i45;
                                                i86 = 0;
                                                i91 = i17;
                                                i89 = i47;
                                                obj2 = obj;
                                                iZzl = iZzh3;
                                                bArr7 = bArr3;
                                            } else {
                                                obj2 = obj;
                                                i18 = iZzh3;
                                                i87 = i48;
                                                i19 = i90;
                                                unsafe = unsafe6;
                                                i89 = i47;
                                                zzdjVar2 = zzdjVar4;
                                                bArr2 = bArr3;
                                                i20 = i45;
                                            }
                                        }
                                        break;
                                    case 25:
                                    case 42:
                                        bArr3 = bArr;
                                        unsafe7 = unsafe3;
                                        i51 = i11;
                                        i55 = i48;
                                        i56 = i49;
                                        zzdjVar4 = zzdjVar4;
                                        i57 = i44;
                                        if (i21 == 2) {
                                            if (i21 == 0) {
                                                zzdlVar = (zzdl) zzfcVar;
                                                iZzf = zzdk.zzk(bArr3, i56, zzdjVar4);
                                                if (zzdjVar4.zzb != 0) {
                                                    z10 = true;
                                                } else {
                                                    z10 = false;
                                                }
                                                zzdlVar.zze(z10);
                                                while (iZzf < i51) {
                                                    iZzh9 = zzdk.zzh(bArr3, iZzf, zzdjVar4);
                                                    if (i45 == zzdjVar4.zza) {
                                                        iZzf = zzdk.zzk(bArr3, iZzh9, zzdjVar4);
                                                        if (zzdjVar4.zzb != 0) {
                                                            z11 = true;
                                                        } else {
                                                            z11 = false;
                                                        }
                                                        zzdlVar.zze(z11);
                                                    }
                                                }
                                            }
                                            unsafe6 = unsafe7;
                                            i49 = i56;
                                            i48 = i55;
                                            i90 = i57;
                                            iZzh3 = i49;
                                            if (iZzh3 != i49) {
                                                i12 = i12;
                                                i11 = i51;
                                                i87 = i48;
                                                unsafe12 = unsafe6;
                                                zzdjVar5 = zzdjVar4;
                                                i88 = i45;
                                                i86 = 0;
                                                i91 = i17;
                                                i89 = i47;
                                                obj2 = obj;
                                                iZzl = iZzh3;
                                                bArr7 = bArr3;
                                            } else {
                                                obj2 = obj;
                                                i18 = iZzh3;
                                                i87 = i48;
                                                i19 = i90;
                                                unsafe = unsafe6;
                                                i89 = i47;
                                                zzdjVar2 = zzdjVar4;
                                                bArr2 = bArr3;
                                                i20 = i45;
                                            }
                                        } else {
                                            zzdlVar2 = (zzdl) zzfcVar;
                                            iZzf = zzdk.zzh(bArr3, i56, zzdjVar4);
                                            i60 = zzdjVar4.zza + iZzf;
                                            while (iZzf < i60) {
                                                iZzf = zzdk.zzk(bArr3, iZzf, zzdjVar4);
                                                if (zzdjVar4.zzb != 0) {
                                                    z12 = true;
                                                } else {
                                                    z12 = false;
                                                }
                                                zzdlVar2.zze(z12);
                                            }
                                            if (iZzf != i60) {
                                                throw zzff.zzg();
                                            }
                                        }
                                        unsafe6 = unsafe7;
                                        iZzh3 = iZzf;
                                        i49 = i56;
                                        i48 = i55;
                                        i90 = i57;
                                        if (iZzh3 != i49) {
                                            i12 = i12;
                                            i11 = i51;
                                            i87 = i48;
                                            unsafe12 = unsafe6;
                                            zzdjVar5 = zzdjVar4;
                                            i88 = i45;
                                            i86 = 0;
                                            i91 = i17;
                                            i89 = i47;
                                            obj2 = obj;
                                            iZzl = iZzh3;
                                            bArr7 = bArr3;
                                        } else {
                                            obj2 = obj;
                                            i18 = iZzh3;
                                            i87 = i48;
                                            i19 = i90;
                                            unsafe = unsafe6;
                                            i89 = i47;
                                            zzdjVar2 = zzdjVar4;
                                            bArr2 = bArr3;
                                            i20 = i45;
                                        }
                                        break;
                                    case 26:
                                        unsafe7 = unsafe3;
                                        i51 = i11;
                                        i55 = i48;
                                        i56 = i49;
                                        i57 = i44;
                                        bArr3 = bArr;
                                        zzdjVar4 = zzdjVar4;
                                        if (i21 == 2) {
                                            if ((j10 & 536870912) == 0) {
                                                iZzf = zzdk.zzh(bArr3, i56, zzdjVar4);
                                                i65 = zzdjVar4.zza;
                                                if (i65 >= 0) {
                                                    throw zzff.zzd();
                                                }
                                                if (i65 == 0) {
                                                    zzfcVar.add("");
                                                } else {
                                                    zzfcVar.add(new String(bArr3, iZzf, i65, zzfd.zzb));
                                                    iZzf += i65;
                                                }
                                                while (iZzf < i51) {
                                                    iZzh11 = zzdk.zzh(bArr3, iZzf, zzdjVar4);
                                                    if (i45 == zzdjVar4.zza) {
                                                        iZzf = zzdk.zzh(bArr3, iZzh11, zzdjVar4);
                                                        i66 = zzdjVar4.zza;
                                                        if (i66 >= 0) {
                                                            throw zzff.zzd();
                                                        }
                                                        if (i66 == 0) {
                                                            zzfcVar.add("");
                                                        } else {
                                                            zzfcVar.add(new String(bArr3, iZzf, i66, zzfd.zzb));
                                                            iZzf += i66;
                                                        }
                                                    }
                                                }
                                            } else {
                                                iZzf = zzdk.zzh(bArr3, i56, zzdjVar4);
                                                i61 = zzdjVar4.zza;
                                                if (i61 >= 0) {
                                                    throw zzff.zzd();
                                                }
                                                if (i61 == 0) {
                                                    zzfcVar.add("");
                                                } else {
                                                    i62 = iZzf + i61;
                                                    if (zzhs.zze(bArr3, iZzf, i62)) {
                                                        throw zzff.zzc();
                                                    }
                                                    zzfcVar.add(new String(bArr3, iZzf, i61, zzfd.zzb));
                                                    iZzf = i62;
                                                }
                                                while (iZzf < i51) {
                                                    iZzh10 = zzdk.zzh(bArr3, iZzf, zzdjVar4);
                                                    if (i45 == zzdjVar4.zza) {
                                                        iZzf = zzdk.zzh(bArr3, iZzh10, zzdjVar4);
                                                        i63 = zzdjVar4.zza;
                                                        if (i63 >= 0) {
                                                            throw zzff.zzd();
                                                        }
                                                        if (i63 == 0) {
                                                            zzfcVar.add("");
                                                        } else {
                                                            i64 = iZzf + i63;
                                                            if (zzhs.zze(bArr3, iZzf, i64)) {
                                                                throw zzff.zzc();
                                                            }
                                                            zzfcVar.add(new String(bArr3, iZzf, i63, zzfd.zzb));
                                                            iZzf = i64;
                                                        }
                                                    }
                                                }
                                            }
                                            unsafe6 = unsafe7;
                                            iZzh3 = iZzf;
                                            i49 = i56;
                                            i48 = i55;
                                            i90 = i57;
                                            if (iZzh3 != i49) {
                                                i12 = i12;
                                                i11 = i51;
                                                i87 = i48;
                                                unsafe12 = unsafe6;
                                                zzdjVar5 = zzdjVar4;
                                                i88 = i45;
                                                i86 = 0;
                                                i91 = i17;
                                                i89 = i47;
                                                obj2 = obj;
                                                iZzl = iZzh3;
                                                bArr7 = bArr3;
                                            } else {
                                                obj2 = obj;
                                                i18 = iZzh3;
                                                i87 = i48;
                                                i19 = i90;
                                                unsafe = unsafe6;
                                                i89 = i47;
                                                zzdjVar2 = zzdjVar4;
                                                bArr2 = bArr3;
                                                i20 = i45;
                                            }
                                        }
                                        unsafe6 = unsafe7;
                                        i49 = i56;
                                        i48 = i55;
                                        i90 = i57;
                                        iZzh3 = i49;
                                        if (iZzh3 != i49) {
                                            i12 = i12;
                                            i11 = i51;
                                            i87 = i48;
                                            unsafe12 = unsafe6;
                                            zzdjVar5 = zzdjVar4;
                                            i88 = i45;
                                            i86 = 0;
                                            i91 = i17;
                                            i89 = i47;
                                            obj2 = obj;
                                            iZzl = iZzh3;
                                            bArr7 = bArr3;
                                        } else {
                                            obj2 = obj;
                                            i18 = iZzh3;
                                            i87 = i48;
                                            i19 = i90;
                                            unsafe = unsafe6;
                                            i89 = i47;
                                            zzdjVar2 = zzdjVar4;
                                            bArr2 = bArr3;
                                            i20 = i45;
                                        }
                                        break;
                                    case 27:
                                        bArr4 = bArr;
                                        if (i21 == 2) {
                                            zzgfVar = this;
                                            i55 = i48;
                                            i51 = i11;
                                            iZze = zzdk.zze(zzgfVar.zzv(i48), i45, bArr, i49, i11, zzfcVar, zzdjVar);
                                            unsafe6 = unsafe3;
                                            bArr3 = bArr;
                                            i49 = i49;
                                            i90 = i44;
                                            zzdjVar4 = zzdjVar4;
                                            iZzh3 = iZze;
                                            i48 = i55;
                                            if (iZzh3 != i49) {
                                                i12 = i12;
                                                i11 = i51;
                                                i87 = i48;
                                                unsafe12 = unsafe6;
                                                zzdjVar5 = zzdjVar4;
                                                i88 = i45;
                                                i86 = 0;
                                                i91 = i17;
                                                i89 = i47;
                                                obj2 = obj;
                                                iZzl = iZzh3;
                                                bArr7 = bArr3;
                                            } else {
                                                obj2 = obj;
                                                i18 = iZzh3;
                                                i87 = i48;
                                                i19 = i90;
                                                unsafe = unsafe6;
                                                i89 = i47;
                                                zzdjVar2 = zzdjVar4;
                                                bArr2 = bArr3;
                                                i20 = i45;
                                            }
                                        } else {
                                            i51 = i11;
                                            zzgfVar = this;
                                            i90 = i44;
                                            bArr3 = bArr4;
                                            unsafe6 = unsafe3;
                                            iZzh3 = i49;
                                            if (iZzh3 != i49) {
                                                i12 = i12;
                                                i11 = i51;
                                                i87 = i48;
                                                unsafe12 = unsafe6;
                                                zzdjVar5 = zzdjVar4;
                                                i88 = i45;
                                                i86 = 0;
                                                i91 = i17;
                                                i89 = i47;
                                                obj2 = obj;
                                                iZzl = iZzh3;
                                                bArr7 = bArr3;
                                            } else {
                                                obj2 = obj;
                                                i18 = iZzh3;
                                                i87 = i48;
                                                i19 = i90;
                                                unsafe = unsafe6;
                                                i89 = i47;
                                                zzdjVar2 = zzdjVar4;
                                                bArr2 = bArr3;
                                                i20 = i45;
                                            }
                                        }
                                        break;
                                    case 28:
                                        bArr4 = bArr;
                                        if (i21 == 2) {
                                            iZzh3 = zzdk.zzh(bArr4, i49, zzdjVar4);
                                            i67 = zzdjVar4.zza;
                                            if (i67 >= 0) {
                                                throw zzff.zzd();
                                            }
                                            if (i67 <= bArr4.length - iZzh3) {
                                                throw zzff.zzg();
                                            }
                                            if (i67 == 0) {
                                                zzfcVar.add(zzdw.zzb);
                                            } else {
                                                zzfcVar.add(zzdw.zzl(bArr4, iZzh3, i67));
                                                iZzh3 += i67;
                                            }
                                            while (iZzh3 < i11) {
                                                iZzh12 = zzdk.zzh(bArr4, iZzh3, zzdjVar4);
                                                if (i45 == zzdjVar4.zza) {
                                                    i90 = i44;
                                                    i51 = i11;
                                                    zzgfVar = this;
                                                    bArr3 = bArr4;
                                                    zzdjVar4 = zzdjVar4;
                                                    unsafe6 = unsafe3;
                                                    if (iZzh3 != i49) {
                                                        i12 = i12;
                                                        i11 = i51;
                                                        i87 = i48;
                                                        unsafe12 = unsafe6;
                                                        zzdjVar5 = zzdjVar4;
                                                        i88 = i45;
                                                        i86 = 0;
                                                        i91 = i17;
                                                        i89 = i47;
                                                        obj2 = obj;
                                                        iZzl = iZzh3;
                                                        bArr7 = bArr3;
                                                    } else {
                                                        obj2 = obj;
                                                        i18 = iZzh3;
                                                        i87 = i48;
                                                        i19 = i90;
                                                        unsafe = unsafe6;
                                                        i89 = i47;
                                                        zzdjVar2 = zzdjVar4;
                                                        bArr2 = bArr3;
                                                        i20 = i45;
                                                    }
                                                    break;
                                                } else {
                                                    iZzh3 = zzdk.zzh(bArr4, iZzh12, zzdjVar4);
                                                    i68 = zzdjVar4.zza;
                                                    if (i68 >= 0) {
                                                        throw zzff.zzd();
                                                    }
                                                    if (i68 <= bArr4.length - iZzh3) {
                                                        throw zzff.zzg();
                                                    }
                                                    if (i68 == 0) {
                                                        zzfcVar.add(zzdw.zzb);
                                                    } else {
                                                        zzfcVar.add(zzdw.zzl(bArr4, iZzh3, i68));
                                                        iZzh3 += i68;
                                                    }
                                                }
                                            }
                                            i90 = i44;
                                            i51 = i11;
                                            zzgfVar = this;
                                            bArr3 = bArr4;
                                            zzdjVar4 = zzdjVar4;
                                            unsafe6 = unsafe3;
                                            if (iZzh3 != i49) {
                                                i12 = i12;
                                                i11 = i51;
                                                i87 = i48;
                                                unsafe12 = unsafe6;
                                                zzdjVar5 = zzdjVar4;
                                                i88 = i45;
                                                i86 = 0;
                                                i91 = i17;
                                                i89 = i47;
                                                obj2 = obj;
                                                iZzl = iZzh3;
                                                bArr7 = bArr3;
                                            } else {
                                                obj2 = obj;
                                                i18 = iZzh3;
                                                i87 = i48;
                                                i19 = i90;
                                                unsafe = unsafe6;
                                                i89 = i47;
                                                zzdjVar2 = zzdjVar4;
                                                bArr2 = bArr3;
                                                i20 = i45;
                                            }
                                        } else {
                                            i90 = i44;
                                            i51 = i11;
                                            zzgfVar = this;
                                            bArr3 = bArr4;
                                            unsafe6 = unsafe3;
                                            iZzh3 = i49;
                                            if (iZzh3 != i49) {
                                                i12 = i12;
                                                i11 = i51;
                                                i87 = i48;
                                                unsafe12 = unsafe6;
                                                zzdjVar5 = zzdjVar4;
                                                i88 = i45;
                                                i86 = 0;
                                                i91 = i17;
                                                i89 = i47;
                                                obj2 = obj;
                                                iZzl = iZzh3;
                                                bArr7 = bArr3;
                                            } else {
                                                obj2 = obj;
                                                i18 = iZzh3;
                                                i87 = i48;
                                                i19 = i90;
                                                unsafe = unsafe6;
                                                i89 = i47;
                                                zzdjVar2 = zzdjVar4;
                                                bArr2 = bArr3;
                                                i20 = i45;
                                            }
                                        }
                                        break;
                                    case 30:
                                    case 44:
                                        bArr4 = bArr;
                                        i69 = i11;
                                        if (i21 == 2) {
                                            iZzj = zzdk.zzf(bArr4, i49, zzfcVar, zzdjVar4);
                                        } else if (i21 == 0) {
                                            zzgfVar = this;
                                            i51 = i69;
                                            i90 = i44;
                                            bArr3 = bArr4;
                                            unsafe6 = unsafe3;
                                            iZzh3 = i49;
                                            if (iZzh3 != i49) {
                                                i12 = i12;
                                                i11 = i51;
                                                i87 = i48;
                                                unsafe12 = unsafe6;
                                                zzdjVar5 = zzdjVar4;
                                                i88 = i45;
                                                i86 = 0;
                                                i91 = i17;
                                                i89 = i47;
                                                obj2 = obj;
                                                iZzl = iZzh3;
                                                bArr7 = bArr3;
                                            } else {
                                                obj2 = obj;
                                                i18 = iZzh3;
                                                i87 = i48;
                                                i19 = i90;
                                                unsafe = unsafe6;
                                                i89 = i47;
                                                zzdjVar2 = zzdjVar4;
                                                bArr2 = bArr3;
                                                i20 = i45;
                                            }
                                        } else {
                                            iZzj = zzdk.zzj(i45, bArr, i49, i11, zzfcVar, zzdjVar);
                                        }
                                        zzfbVarZzu = zzgfVar.zzu(i48);
                                        zzhdVar = zzgfVar.zzm;
                                        int i1018 = zzgo.zza;
                                        if (zzfbVarZzu != null) {
                                            i70 = iZzj;
                                            i71 = i44;
                                        } else if (zzfcVar instanceof RandomAccess) {
                                            size = zzfcVar.size();
                                            objZzo2 = null;
                                            i72 = 0;
                                            i73 = 0;
                                            while (i72 < size) {
                                                int i1019 = iZzj;
                                                iIntValue2 = ((Integer) zzfcVar.get(i72)).intValue();
                                                if (zzfbVarZzu.zza(iIntValue2)) {
                                                    if (i72 != i73) {
                                                        zzfcVar.set(i73, Integer.valueOf(iIntValue2));
                                                    }
                                                    i73++;
                                                    i74 = i44;
                                                } else {
                                                    i74 = i44;
                                                    objZzo2 = zzgo.zzo(obj2, i74, iIntValue2, objZzo2, zzhdVar);
                                                }
                                                i72++;
                                                i44 = i74;
                                                iZzj = i1019;
                                            }
                                            i70 = iZzj;
                                            i71 = i44;
                                            if (i73 != size) {
                                                zzfcVar.subList(i73, size).clear();
                                            }
                                        } else {
                                            i70 = iZzj;
                                            i71 = i44;
                                            it = zzfcVar.iterator();
                                            objZzo = null;
                                            while (it.hasNext()) {
                                                iIntValue = ((Integer) it.next()).intValue();
                                                if (!zzfbVarZzu.zza(iIntValue)) {
                                                    objZzo = zzgo.zzo(obj2, i71, iIntValue, objZzo, zzhdVar);
                                                    it.remove();
                                                }
                                            }
                                        }
                                        i90 = i71;
                                        i51 = i69;
                                        iZzh3 = i70;
                                        zzgfVar = this;
                                        bArr3 = bArr4;
                                        zzdjVar4 = zzdjVar4;
                                        unsafe6 = unsafe3;
                                        if (iZzh3 != i49) {
                                            i12 = i12;
                                            i11 = i51;
                                            i87 = i48;
                                            unsafe12 = unsafe6;
                                            zzdjVar5 = zzdjVar4;
                                            i88 = i45;
                                            i86 = 0;
                                            i91 = i17;
                                            i89 = i47;
                                            obj2 = obj;
                                            iZzl = iZzh3;
                                            bArr7 = bArr3;
                                        } else {
                                            obj2 = obj;
                                            i18 = iZzh3;
                                            i87 = i48;
                                            i19 = i90;
                                            unsafe = unsafe6;
                                            i89 = i47;
                                            zzdjVar2 = zzdjVar4;
                                            bArr2 = bArr3;
                                            i20 = i45;
                                        }
                                        break;
                                    case 33:
                                    case 47:
                                        bArr4 = bArr;
                                        i69 = i11;
                                        if (i21 == 2) {
                                            if (i21 == 0) {
                                                zzeyVar3 = (zzey) zzfcVar;
                                                iZzh3 = zzdk.zzh(bArr4, i49, zzdjVar4);
                                                zzeyVar3.zzf(zzea.zzb(zzdjVar4.zza));
                                                while (iZzh3 < i69) {
                                                    iZzh13 = zzdk.zzh(bArr4, iZzh3, zzdjVar4);
                                                    if (i45 == zzdjVar4.zza) {
                                                        iZzh3 = zzdk.zzh(bArr4, iZzh13, zzdjVar4);
                                                        zzeyVar3.zzf(zzea.zzb(zzdjVar4.zza));
                                                    }
                                                }
                                            }
                                            i51 = i69;
                                            i90 = i44;
                                            bArr3 = bArr4;
                                            unsafe6 = unsafe3;
                                            iZzh3 = i49;
                                            if (iZzh3 != i49) {
                                                i12 = i12;
                                                i11 = i51;
                                                i87 = i48;
                                                unsafe12 = unsafe6;
                                                zzdjVar5 = zzdjVar4;
                                                i88 = i45;
                                                i86 = 0;
                                                i91 = i17;
                                                i89 = i47;
                                                obj2 = obj;
                                                iZzl = iZzh3;
                                                bArr7 = bArr3;
                                            } else {
                                                obj2 = obj;
                                                i18 = iZzh3;
                                                i87 = i48;
                                                i19 = i90;
                                                unsafe = unsafe6;
                                                i89 = i47;
                                                zzdjVar2 = zzdjVar4;
                                                bArr2 = bArr3;
                                                i20 = i45;
                                            }
                                        } else {
                                            zzeyVar4 = (zzey) zzfcVar;
                                            iZzh3 = zzdk.zzh(bArr4, i49, zzdjVar4);
                                            i75 = zzdjVar4.zza + iZzh3;
                                            while (iZzh3 < i75) {
                                                iZzh3 = zzdk.zzh(bArr4, iZzh3, zzdjVar4);
                                                zzeyVar4.zzf(zzea.zzb(zzdjVar4.zza));
                                            }
                                            if (iZzh3 != i75) {
                                                throw zzff.zzg();
                                            }
                                        }
                                        i51 = i69;
                                        i90 = i44;
                                        bArr3 = bArr4;
                                        zzdjVar4 = zzdjVar4;
                                        unsafe6 = unsafe3;
                                        if (iZzh3 != i49) {
                                            i12 = i12;
                                            i11 = i51;
                                            i87 = i48;
                                            unsafe12 = unsafe6;
                                            zzdjVar5 = zzdjVar4;
                                            i88 = i45;
                                            i86 = 0;
                                            i91 = i17;
                                            i89 = i47;
                                            obj2 = obj;
                                            iZzl = iZzh3;
                                            bArr7 = bArr3;
                                        } else {
                                            obj2 = obj;
                                            i18 = iZzh3;
                                            i87 = i48;
                                            i19 = i90;
                                            unsafe = unsafe6;
                                            i89 = i47;
                                            zzdjVar2 = zzdjVar4;
                                            bArr2 = bArr3;
                                            i20 = i45;
                                        }
                                        break;
                                    case 34:
                                    case 48:
                                        bArr4 = bArr;
                                        i69 = i11;
                                        if (i21 == 2) {
                                            if (i21 == 0) {
                                                zzfrVar5 = (zzfr) zzfcVar;
                                                iZzh3 = zzdk.zzk(bArr4, i49, zzdjVar4);
                                                zzfrVar5.zzf(zzea.zzc(zzdjVar4.zzb));
                                                while (iZzh3 < i69) {
                                                    iZzh14 = zzdk.zzh(bArr4, iZzh3, zzdjVar4);
                                                    if (i45 == zzdjVar4.zza) {
                                                        iZzh3 = zzdk.zzk(bArr4, iZzh14, zzdjVar4);
                                                        zzfrVar5.zzf(zzea.zzc(zzdjVar4.zzb));
                                                    }
                                                }
                                            }
                                            i51 = i69;
                                            i90 = i44;
                                            bArr3 = bArr4;
                                            unsafe6 = unsafe3;
                                            iZzh3 = i49;
                                            if (iZzh3 != i49) {
                                                i12 = i12;
                                                i11 = i51;
                                                i87 = i48;
                                                unsafe12 = unsafe6;
                                                zzdjVar5 = zzdjVar4;
                                                i88 = i45;
                                                i86 = 0;
                                                i91 = i17;
                                                i89 = i47;
                                                obj2 = obj;
                                                iZzl = iZzh3;
                                                bArr7 = bArr3;
                                            } else {
                                                obj2 = obj;
                                                i18 = iZzh3;
                                                i87 = i48;
                                                i19 = i90;
                                                unsafe = unsafe6;
                                                i89 = i47;
                                                zzdjVar2 = zzdjVar4;
                                                bArr2 = bArr3;
                                                i20 = i45;
                                            }
                                        } else {
                                            zzfrVar6 = (zzfr) zzfcVar;
                                            iZzh3 = zzdk.zzh(bArr4, i49, zzdjVar4);
                                            i76 = zzdjVar4.zza + iZzh3;
                                            while (iZzh3 < i76) {
                                                iZzh3 = zzdk.zzk(bArr4, iZzh3, zzdjVar4);
                                                zzfrVar6.zzf(zzea.zzc(zzdjVar4.zzb));
                                            }
                                            if (iZzh3 != i76) {
                                                throw zzff.zzg();
                                            }
                                        }
                                        i51 = i69;
                                        i90 = i44;
                                        bArr3 = bArr4;
                                        zzdjVar4 = zzdjVar4;
                                        unsafe6 = unsafe3;
                                        if (iZzh3 != i49) {
                                            i12 = i12;
                                            i11 = i51;
                                            i87 = i48;
                                            unsafe12 = unsafe6;
                                            zzdjVar5 = zzdjVar4;
                                            i88 = i45;
                                            i86 = 0;
                                            i91 = i17;
                                            i89 = i47;
                                            obj2 = obj;
                                            iZzl = iZzh3;
                                            bArr7 = bArr3;
                                        } else {
                                            obj2 = obj;
                                            i18 = iZzh3;
                                            i87 = i48;
                                            i19 = i90;
                                            unsafe = unsafe6;
                                            i89 = i47;
                                            zzdjVar2 = zzdjVar4;
                                            bArr2 = bArr3;
                                            i20 = i45;
                                        }
                                        break;
                                    default:
                                        if (i21 == 3) {
                                            i77 = (i45 & (-8)) | 4;
                                            zzgmVarZzv = zzgfVar.zzv(i48);
                                            iZzh3 = zzdk.zzc(zzgmVarZzv, bArr, i49, i11, i77, zzdjVar);
                                            zzfcVar.add(zzdjVar4.zzc);
                                            i69 = i11;
                                            while (true) {
                                                if (iZzh3 < i69) {
                                                    iZzh15 = zzdk.zzh(bArr, iZzh3, zzdjVar4);
                                                    if (i45 == zzdjVar4.zza) {
                                                        iZzh3 = zzdk.zzc(zzgmVarZzv, bArr, iZzh15, i11, i77, zzdjVar);
                                                        zzfcVar.add(zzdjVar4.zzc);
                                                        zzgmVarZzv = zzgmVarZzv;
                                                    } else {
                                                        bArr4 = bArr;
                                                    }
                                                } else {
                                                    bArr4 = bArr;
                                                }
                                            }
                                            i51 = i69;
                                            i90 = i44;
                                            bArr3 = bArr4;
                                            zzdjVar4 = zzdjVar4;
                                            unsafe6 = unsafe3;
                                            if (iZzh3 != i49) {
                                                i12 = i12;
                                                i11 = i51;
                                                i87 = i48;
                                                unsafe12 = unsafe6;
                                                zzdjVar5 = zzdjVar4;
                                                i88 = i45;
                                                i86 = 0;
                                                i91 = i17;
                                                i89 = i47;
                                                obj2 = obj;
                                                iZzl = iZzh3;
                                                bArr7 = bArr3;
                                            } else {
                                                obj2 = obj;
                                                i18 = iZzh3;
                                                i87 = i48;
                                                i19 = i90;
                                                unsafe = unsafe6;
                                                i89 = i47;
                                                zzdjVar2 = zzdjVar4;
                                                bArr2 = bArr3;
                                                i20 = i45;
                                            }
                                        } else {
                                            bArr3 = bArr;
                                            i51 = i11;
                                            i90 = i44;
                                            unsafe6 = unsafe3;
                                            iZzh3 = i49;
                                            if (iZzh3 != i49) {
                                                i12 = i12;
                                                i11 = i51;
                                                i87 = i48;
                                                unsafe12 = unsafe6;
                                                zzdjVar5 = zzdjVar4;
                                                i88 = i45;
                                                i86 = 0;
                                                i91 = i17;
                                                i89 = i47;
                                                obj2 = obj;
                                                iZzl = iZzh3;
                                                bArr7 = bArr3;
                                            } else {
                                                obj2 = obj;
                                                i18 = iZzh3;
                                                i87 = i48;
                                                i19 = i90;
                                                unsafe = unsafe6;
                                                i89 = i47;
                                                zzdjVar2 = zzdjVar4;
                                                bArr2 = bArr3;
                                                i20 = i45;
                                            }
                                        }
                                        break;
                                }
                            } else {
                                zzdjVar4 = zzdjVar4;
                                i50 = i44;
                                unsafe4 = unsafe3;
                                if (iZzr == 50) {
                                    unsafe9 = zzb;
                                    j11 = iArr[i48 + 2] & 1048575;
                                    switch (iZzr) {
                                        case 51:
                                            i78 = i49;
                                            i79 = i48;
                                            i19 = i50;
                                            unsafe = unsafe4;
                                            obj2 = obj;
                                            zzdjVar2 = zzdjVar4;
                                            bArr2 = bArr3;
                                            i20 = i45;
                                            if (i21 == 1) {
                                                iZzh16 = i78 + 8;
                                                unsafe9.putObject(obj2, j6, Double.valueOf(Double.longBitsToDouble(zzdk.zzn(bArr2, i78))));
                                                unsafe9.putInt(obj2, j11, i19);
                                            } else {
                                                iZzh16 = i78;
                                            }
                                            if (iZzh16 != i78) {
                                                i78 = i78;
                                                unsafe12 = unsafe;
                                                i11 = i11;
                                                i12 = i12;
                                                i90 = i19;
                                                i88 = i20;
                                                zzdjVar5 = zzdjVar2;
                                                i86 = 0;
                                                i87 = i79;
                                                i89 = i47;
                                                iZzl = iZzh16;
                                                bArr7 = bArr2;
                                                i91 = i17;
                                            } else {
                                                i78 = i78;
                                                i12 = i12;
                                                i18 = iZzh16;
                                                i87 = i79;
                                                i89 = i47;
                                            }
                                            break;
                                        case 52:
                                            i78 = i49;
                                            i79 = i48;
                                            i19 = i50;
                                            unsafe = unsafe4;
                                            obj2 = obj;
                                            zzdjVar2 = zzdjVar4;
                                            bArr2 = bArr3;
                                            i20 = i45;
                                            if (i21 == 5) {
                                                iZzh16 = i78 + 4;
                                                unsafe9.putObject(obj2, j6, Float.valueOf(Float.intBitsToFloat(zzdk.zzb(bArr2, i78))));
                                                unsafe9.putInt(obj2, j11, i19);
                                            } else {
                                                iZzh16 = i78;
                                            }
                                            if (iZzh16 != i78) {
                                                i78 = i78;
                                                unsafe12 = unsafe;
                                                i11 = i11;
                                                i12 = i12;
                                                i90 = i19;
                                                i88 = i20;
                                                zzdjVar5 = zzdjVar2;
                                                i86 = 0;
                                                i87 = i79;
                                                i89 = i47;
                                                iZzl = iZzh16;
                                                bArr7 = bArr2;
                                                i91 = i17;
                                            } else {
                                                i78 = i78;
                                                i12 = i12;
                                                i18 = iZzh16;
                                                i87 = i79;
                                                i89 = i47;
                                            }
                                            break;
                                        case 53:
                                        case 54:
                                            i78 = i49;
                                            i79 = i48;
                                            i19 = i50;
                                            unsafe = unsafe4;
                                            obj2 = obj;
                                            zzdjVar2 = zzdjVar4;
                                            bArr2 = bArr3;
                                            i20 = i45;
                                            if (i21 == 0) {
                                                iZzk = zzdk.zzk(bArr2, i78, zzdjVar2);
                                                unsafe9.putObject(obj2, j6, Long.valueOf(zzdjVar2.zzb));
                                                unsafe9.putInt(obj2, j11, i19);
                                                iZzh16 = iZzk;
                                            } else {
                                                iZzh16 = i78;
                                            }
                                            if (iZzh16 != i78) {
                                                i78 = i78;
                                                unsafe12 = unsafe;
                                                i11 = i11;
                                                i12 = i12;
                                                i90 = i19;
                                                i88 = i20;
                                                zzdjVar5 = zzdjVar2;
                                                i86 = 0;
                                                i87 = i79;
                                                i89 = i47;
                                                iZzl = iZzh16;
                                                bArr7 = bArr2;
                                                i91 = i17;
                                            } else {
                                                i78 = i78;
                                                i12 = i12;
                                                i18 = iZzh16;
                                                i87 = i79;
                                                i89 = i47;
                                            }
                                            break;
                                        case 55:
                                        case 62:
                                            i78 = i49;
                                            i79 = i48;
                                            i19 = i50;
                                            unsafe = unsafe4;
                                            obj2 = obj;
                                            zzdjVar2 = zzdjVar4;
                                            bArr2 = bArr3;
                                            i20 = i45;
                                            if (i21 == 0) {
                                                iZzh16 = zzdk.zzh(bArr2, i78, zzdjVar2);
                                                unsafe9.putObject(obj2, j6, Integer.valueOf(zzdjVar2.zza));
                                                unsafe9.putInt(obj2, j11, i19);
                                            } else {
                                                iZzh16 = i78;
                                            }
                                            if (iZzh16 != i78) {
                                                i78 = i78;
                                                unsafe12 = unsafe;
                                                i11 = i11;
                                                i12 = i12;
                                                i90 = i19;
                                                i88 = i20;
                                                zzdjVar5 = zzdjVar2;
                                                i86 = 0;
                                                i87 = i79;
                                                i89 = i47;
                                                iZzl = iZzh16;
                                                bArr7 = bArr2;
                                                i91 = i17;
                                            } else {
                                                i78 = i78;
                                                i12 = i12;
                                                i18 = iZzh16;
                                                i87 = i79;
                                                i89 = i47;
                                            }
                                            break;
                                        case 56:
                                        case 65:
                                            i78 = i49;
                                            i79 = i48;
                                            i19 = i50;
                                            unsafe = unsafe4;
                                            obj2 = obj;
                                            zzdjVar2 = zzdjVar4;
                                            bArr2 = bArr3;
                                            i20 = i45;
                                            if (i21 == 1) {
                                                iZzh16 = i78 + 8;
                                                unsafe9.putObject(obj2, j6, Long.valueOf(zzdk.zzn(bArr2, i78)));
                                                unsafe9.putInt(obj2, j11, i19);
                                            } else {
                                                iZzh16 = i78;
                                            }
                                            if (iZzh16 != i78) {
                                                i78 = i78;
                                                unsafe12 = unsafe;
                                                i11 = i11;
                                                i12 = i12;
                                                i90 = i19;
                                                i88 = i20;
                                                zzdjVar5 = zzdjVar2;
                                                i86 = 0;
                                                i87 = i79;
                                                i89 = i47;
                                                iZzl = iZzh16;
                                                bArr7 = bArr2;
                                                i91 = i17;
                                            } else {
                                                i78 = i78;
                                                i12 = i12;
                                                i18 = iZzh16;
                                                i87 = i79;
                                                i89 = i47;
                                            }
                                            break;
                                        case 57:
                                        case 64:
                                            i78 = i49;
                                            i79 = i48;
                                            i19 = i50;
                                            unsafe = unsafe4;
                                            obj2 = obj;
                                            zzdjVar2 = zzdjVar4;
                                            bArr2 = bArr3;
                                            i20 = i45;
                                            if (i21 == 5) {
                                                iZzh16 = i78 + 4;
                                                unsafe9.putObject(obj2, j6, Integer.valueOf(zzdk.zzb(bArr2, i78)));
                                                unsafe9.putInt(obj2, j11, i19);
                                            } else {
                                                iZzh16 = i78;
                                            }
                                            if (iZzh16 != i78) {
                                                i78 = i78;
                                                unsafe12 = unsafe;
                                                i11 = i11;
                                                i12 = i12;
                                                i90 = i19;
                                                i88 = i20;
                                                zzdjVar5 = zzdjVar2;
                                                i86 = 0;
                                                i87 = i79;
                                                i89 = i47;
                                                iZzl = iZzh16;
                                                bArr7 = bArr2;
                                                i91 = i17;
                                            } else {
                                                i78 = i78;
                                                i12 = i12;
                                                i18 = iZzh16;
                                                i87 = i79;
                                                i89 = i47;
                                            }
                                            break;
                                        case 58:
                                            i78 = i49;
                                            i79 = i48;
                                            i19 = i50;
                                            unsafe = unsafe4;
                                            obj2 = obj;
                                            zzdjVar2 = zzdjVar4;
                                            bArr2 = bArr3;
                                            i20 = i45;
                                            if (i21 == 0) {
                                                iZzk = zzdk.zzk(bArr2, i78, zzdjVar2);
                                                if (zzdjVar2.zzb != 0) {
                                                    z13 = true;
                                                } else {
                                                    z13 = false;
                                                }
                                                unsafe9.putObject(obj2, j6, Boolean.valueOf(z13));
                                                unsafe9.putInt(obj2, j11, i19);
                                                iZzh16 = iZzk;
                                            } else {
                                                iZzh16 = i78;
                                            }
                                            if (iZzh16 != i78) {
                                                i78 = i78;
                                                unsafe12 = unsafe;
                                                i11 = i11;
                                                i12 = i12;
                                                i90 = i19;
                                                i88 = i20;
                                                zzdjVar5 = zzdjVar2;
                                                i86 = 0;
                                                i87 = i79;
                                                i89 = i47;
                                                iZzl = iZzh16;
                                                bArr7 = bArr2;
                                                i91 = i17;
                                            } else {
                                                i78 = i78;
                                                i12 = i12;
                                                i18 = iZzh16;
                                                i87 = i79;
                                                i89 = i47;
                                            }
                                            break;
                                        case 59:
                                            i78 = i49;
                                            i79 = i48;
                                            i19 = i50;
                                            unsafe = unsafe4;
                                            obj2 = obj;
                                            zzdjVar2 = zzdjVar4;
                                            bArr2 = bArr3;
                                            i20 = i45;
                                            if (i21 == 2) {
                                                iZzh17 = zzdk.zzh(bArr2, i78, zzdjVar2);
                                                i80 = zzdjVar2.zza;
                                                if (i80 == 0) {
                                                    unsafe9.putObject(obj2, j6, "");
                                                } else {
                                                    i81 = iZzh17 + i80;
                                                    if ((i22 & 536870912) == 0) {
                                                    }
                                                    unsafe9.putObject(obj2, j6, new String(bArr2, iZzh17, i80, zzfd.zzb));
                                                    iZzh17 = i81;
                                                }
                                                unsafe9.putInt(obj2, j11, i19);
                                                iZzh16 = iZzh17;
                                            } else {
                                                i79 = i79;
                                                iZzh16 = i78;
                                            }
                                            if (iZzh16 != i78) {
                                                i78 = i78;
                                                unsafe12 = unsafe;
                                                i11 = i11;
                                                i12 = i12;
                                                i90 = i19;
                                                i88 = i20;
                                                zzdjVar5 = zzdjVar2;
                                                i86 = 0;
                                                i87 = i79;
                                                i89 = i47;
                                                iZzl = iZzh16;
                                                bArr7 = bArr2;
                                                i91 = i17;
                                            } else {
                                                i78 = i78;
                                                i12 = i12;
                                                i18 = iZzh16;
                                                i87 = i79;
                                                i89 = i47;
                                            }
                                            break;
                                        case 60:
                                            obj2 = obj;
                                            i78 = i49;
                                            i82 = i48;
                                            i19 = i50;
                                            i20 = i45;
                                            zzdjVar2 = zzdjVar4;
                                            if (i21 == 2) {
                                                Object objZzy3 = zzgfVar.zzy(obj2, i19, i82);
                                                bArr2 = bArr3;
                                                unsafe = unsafe4;
                                                iZzh16 = zzdk.zzm(objZzy3, zzgfVar.zzv(i82), bArr, i78, i11, zzdjVar);
                                                zzgfVar.zzG(obj2, i19, i82, objZzy3);
                                                i79 = i82;
                                            } else {
                                                bArr2 = bArr3;
                                                unsafe = unsafe4;
                                                i79 = i82;
                                                iZzh16 = i78;
                                            }
                                            if (iZzh16 != i78) {
                                                i78 = i78;
                                                unsafe12 = unsafe;
                                                i11 = i11;
                                                i12 = i12;
                                                i90 = i19;
                                                i88 = i20;
                                                zzdjVar5 = zzdjVar2;
                                                i86 = 0;
                                                i87 = i79;
                                                i89 = i47;
                                                iZzl = iZzh16;
                                                bArr7 = bArr2;
                                                i91 = i17;
                                            } else {
                                                i78 = i78;
                                                i12 = i12;
                                                i18 = iZzh16;
                                                i87 = i79;
                                                i89 = i47;
                                            }
                                            break;
                                        case 61:
                                            i78 = i49;
                                            unsafe10 = unsafe4;
                                            bArr5 = bArr3;
                                            i20 = i45;
                                            zzdjVar2 = zzdjVar4;
                                            obj2 = obj;
                                            i83 = i48;
                                            i19 = i50;
                                            if (i21 == 2) {
                                                iZza = zzdk.zza(bArr5, i78, zzdjVar2);
                                                unsafe9.putObject(obj2, j6, zzdjVar2.zzc);
                                                unsafe9.putInt(obj2, j11, i19);
                                                bArr2 = bArr5;
                                                iZzh16 = iZza;
                                                i79 = i83;
                                                unsafe = unsafe10;
                                                if (iZzh16 != i78) {
                                                    i78 = i78;
                                                    unsafe12 = unsafe;
                                                    i11 = i11;
                                                    i12 = i12;
                                                    i90 = i19;
                                                    i88 = i20;
                                                    zzdjVar5 = zzdjVar2;
                                                    i86 = 0;
                                                    i87 = i79;
                                                    i89 = i47;
                                                    iZzl = iZzh16;
                                                    bArr7 = bArr2;
                                                    i91 = i17;
                                                } else {
                                                    i78 = i78;
                                                    i12 = i12;
                                                    i18 = iZzh16;
                                                    i87 = i79;
                                                    i89 = i47;
                                                }
                                            }
                                            bArr2 = bArr5;
                                            i79 = i83;
                                            unsafe = unsafe10;
                                            iZzh16 = i78;
                                            if (iZzh16 != i78) {
                                                i78 = i78;
                                                unsafe12 = unsafe;
                                                i11 = i11;
                                                i12 = i12;
                                                i90 = i19;
                                                i88 = i20;
                                                zzdjVar5 = zzdjVar2;
                                                i86 = 0;
                                                i87 = i79;
                                                i89 = i47;
                                                iZzl = iZzh16;
                                                bArr7 = bArr2;
                                                i91 = i17;
                                            } else {
                                                i78 = i78;
                                                i12 = i12;
                                                i18 = iZzh16;
                                                i87 = i79;
                                                i89 = i47;
                                            }
                                            break;
                                        case 63:
                                            i78 = i49;
                                            unsafe10 = unsafe4;
                                            bArr5 = bArr3;
                                            zzdjVar2 = zzdjVar4;
                                            obj2 = obj;
                                            i83 = i48;
                                            i19 = i50;
                                            if (i21 == 0) {
                                                iZza = zzdk.zzh(bArr5, i78, zzdjVar2);
                                                i84 = zzdjVar2.zza;
                                                zzfbVarZzu2 = zzgfVar.zzu(i83);
                                                if (zzfbVarZzu2 != null) {
                                                    i20 = i45;
                                                    unsafe9.putObject(obj2, j6, Integer.valueOf(i84));
                                                    unsafe9.putInt(obj2, j11, i19);
                                                } else {
                                                    i20 = i45;
                                                    unsafe9.putObject(obj2, j6, Integer.valueOf(i84));
                                                    unsafe9.putInt(obj2, j11, i19);
                                                }
                                                bArr2 = bArr5;
                                                iZzh16 = iZza;
                                                i79 = i83;
                                                unsafe = unsafe10;
                                                if (iZzh16 != i78) {
                                                    i78 = i78;
                                                    unsafe12 = unsafe;
                                                    i11 = i11;
                                                    i12 = i12;
                                                    i90 = i19;
                                                    i88 = i20;
                                                    zzdjVar5 = zzdjVar2;
                                                    i86 = 0;
                                                    i87 = i79;
                                                    i89 = i47;
                                                    iZzl = iZzh16;
                                                    bArr7 = bArr2;
                                                    i91 = i17;
                                                } else {
                                                    i78 = i78;
                                                    i12 = i12;
                                                    i18 = iZzh16;
                                                    i87 = i79;
                                                    i89 = i47;
                                                }
                                            } else {
                                                i20 = i45;
                                                bArr2 = bArr5;
                                                i79 = i83;
                                                unsafe = unsafe10;
                                                iZzh16 = i78;
                                                if (iZzh16 != i78) {
                                                    i78 = i78;
                                                    unsafe12 = unsafe;
                                                    i11 = i11;
                                                    i12 = i12;
                                                    i90 = i19;
                                                    i88 = i20;
                                                    zzdjVar5 = zzdjVar2;
                                                    i86 = 0;
                                                    i87 = i79;
                                                    i89 = i47;
                                                    iZzl = iZzh16;
                                                    bArr7 = bArr2;
                                                    i91 = i17;
                                                } else {
                                                    i78 = i78;
                                                    i12 = i12;
                                                    i18 = iZzh16;
                                                    i87 = i79;
                                                    i89 = i47;
                                                }
                                            }
                                            break;
                                        case 66:
                                            i78 = i49;
                                            unsafe11 = unsafe4;
                                            bArr6 = bArr3;
                                            i85 = i45;
                                            zzdjVar2 = zzdjVar4;
                                            obj2 = obj;
                                            i82 = i48;
                                            i19 = i50;
                                            if (i21 == 0) {
                                                iZzh18 = zzdk.zzh(bArr6, i78, zzdjVar2);
                                                unsafe9.putObject(obj2, j6, Integer.valueOf(zzea.zzb(zzdjVar2.zza)));
                                                unsafe9.putInt(obj2, j11, i19);
                                                bArr2 = bArr6;
                                                iZzh16 = iZzh18;
                                                unsafe = unsafe11;
                                                i20 = i85;
                                                i79 = i82;
                                                if (iZzh16 != i78) {
                                                    i78 = i78;
                                                    unsafe12 = unsafe;
                                                    i11 = i11;
                                                    i12 = i12;
                                                    i90 = i19;
                                                    i88 = i20;
                                                    zzdjVar5 = zzdjVar2;
                                                    i86 = 0;
                                                    i87 = i79;
                                                    i89 = i47;
                                                    iZzl = iZzh16;
                                                    bArr7 = bArr2;
                                                    i91 = i17;
                                                } else {
                                                    i78 = i78;
                                                    i12 = i12;
                                                    i18 = iZzh16;
                                                    i87 = i79;
                                                    i89 = i47;
                                                }
                                            }
                                            bArr2 = bArr6;
                                            unsafe = unsafe11;
                                            i20 = i85;
                                            i79 = i82;
                                            iZzh16 = i78;
                                            if (iZzh16 != i78) {
                                                i78 = i78;
                                                unsafe12 = unsafe;
                                                i11 = i11;
                                                i12 = i12;
                                                i90 = i19;
                                                i88 = i20;
                                                zzdjVar5 = zzdjVar2;
                                                i86 = 0;
                                                i87 = i79;
                                                i89 = i47;
                                                iZzl = iZzh16;
                                                bArr7 = bArr2;
                                                i91 = i17;
                                            } else {
                                                i78 = i78;
                                                i12 = i12;
                                                i18 = iZzh16;
                                                i87 = i79;
                                                i89 = i47;
                                            }
                                            break;
                                        case 67:
                                            i78 = i49;
                                            unsafe11 = unsafe4;
                                            bArr6 = bArr3;
                                            i85 = i45;
                                            zzdjVar2 = zzdjVar4;
                                            obj2 = obj;
                                            i82 = i48;
                                            i19 = i50;
                                            if (i21 == 0) {
                                                iZzh18 = zzdk.zzk(bArr6, i78, zzdjVar2);
                                                unsafe9.putObject(obj2, j6, Long.valueOf(zzea.zzc(zzdjVar2.zzb)));
                                                unsafe9.putInt(obj2, j11, i19);
                                                bArr2 = bArr6;
                                                iZzh16 = iZzh18;
                                                unsafe = unsafe11;
                                                i20 = i85;
                                                i79 = i82;
                                                if (iZzh16 != i78) {
                                                    i78 = i78;
                                                    unsafe12 = unsafe;
                                                    i11 = i11;
                                                    i12 = i12;
                                                    i90 = i19;
                                                    i88 = i20;
                                                    zzdjVar5 = zzdjVar2;
                                                    i86 = 0;
                                                    i87 = i79;
                                                    i89 = i47;
                                                    iZzl = iZzh16;
                                                    bArr7 = bArr2;
                                                    i91 = i17;
                                                } else {
                                                    i78 = i78;
                                                    i12 = i12;
                                                    i18 = iZzh16;
                                                    i87 = i79;
                                                    i89 = i47;
                                                }
                                            }
                                            bArr2 = bArr6;
                                            unsafe = unsafe11;
                                            i20 = i85;
                                            i79 = i82;
                                            iZzh16 = i78;
                                            if (iZzh16 != i78) {
                                                i78 = i78;
                                                unsafe12 = unsafe;
                                                i11 = i11;
                                                i12 = i12;
                                                i90 = i19;
                                                i88 = i20;
                                                zzdjVar5 = zzdjVar2;
                                                i86 = 0;
                                                i87 = i79;
                                                i89 = i47;
                                                iZzl = iZzh16;
                                                bArr7 = bArr2;
                                                i91 = i17;
                                            } else {
                                                i78 = i78;
                                                i12 = i12;
                                                i18 = iZzh16;
                                                i87 = i79;
                                                i89 = i47;
                                            }
                                            break;
                                        case 68:
                                            if (i21 == 3) {
                                                obj2 = obj;
                                                Object objZzy4 = zzgfVar.zzy(obj2, i50, i48);
                                                i82 = i48;
                                                i78 = i49;
                                                zzdjVar2 = zzdjVar4;
                                                int iZzl3 = zzdk.zzl(objZzy4, zzgfVar.zzv(i48), bArr, i78, i11, (i45 & (-8)) | 4, zzdjVar);
                                                zzgfVar.zzG(obj2, i50, i82, objZzy4);
                                                bArr2 = bArr3;
                                                unsafe = unsafe4;
                                                iZzh16 = iZzl3;
                                                i20 = i45;
                                                i19 = i50;
                                                i79 = i82;
                                                if (iZzh16 != i78) {
                                                    i78 = i78;
                                                    unsafe12 = unsafe;
                                                    i11 = i11;
                                                    i12 = i12;
                                                    i90 = i19;
                                                    i88 = i20;
                                                    zzdjVar5 = zzdjVar2;
                                                    i86 = 0;
                                                    i87 = i79;
                                                    i89 = i47;
                                                    iZzl = iZzh16;
                                                    bArr7 = bArr2;
                                                    i91 = i17;
                                                } else {
                                                    i78 = i78;
                                                    i12 = i12;
                                                    i18 = iZzh16;
                                                    i87 = i79;
                                                    i89 = i47;
                                                }
                                            } else {
                                                obj2 = obj;
                                                zzdjVar2 = zzdjVar4;
                                                i78 = i49;
                                                unsafe = unsafe4;
                                                bArr2 = bArr3;
                                                i20 = i45;
                                                i79 = i48;
                                                i19 = i50;
                                                iZzh16 = i78;
                                                if (iZzh16 != i78) {
                                                    i78 = i78;
                                                    unsafe12 = unsafe;
                                                    i11 = i11;
                                                    i12 = i12;
                                                    i90 = i19;
                                                    i88 = i20;
                                                    zzdjVar5 = zzdjVar2;
                                                    i86 = 0;
                                                    i87 = i79;
                                                    i89 = i47;
                                                    iZzl = iZzh16;
                                                    bArr7 = bArr2;
                                                    i91 = i17;
                                                } else {
                                                    i78 = i78;
                                                    i12 = i12;
                                                    i18 = iZzh16;
                                                    i87 = i79;
                                                    i89 = i47;
                                                }
                                            }
                                            break;
                                        default:
                                            obj2 = obj;
                                            i78 = i49;
                                            i79 = i48;
                                            i19 = i50;
                                            unsafe = unsafe4;
                                            zzdjVar2 = zzdjVar4;
                                            bArr2 = bArr3;
                                            i20 = i45;
                                            iZzh16 = i78;
                                            if (iZzh16 != i78) {
                                                i78 = i78;
                                                unsafe12 = unsafe;
                                                i11 = i11;
                                                i12 = i12;
                                                i90 = i19;
                                                i88 = i20;
                                                zzdjVar5 = zzdjVar2;
                                                i86 = 0;
                                                i87 = i79;
                                                i89 = i47;
                                                iZzl = iZzh16;
                                                bArr7 = bArr2;
                                                i91 = i17;
                                            } else {
                                                i78 = i78;
                                                i12 = i12;
                                                i18 = iZzh16;
                                                i87 = i79;
                                                i89 = i47;
                                            }
                                            break;
                                    }
                                } else {
                                    if (i21 == 2) {
                                        unsafe8 = zzb;
                                        Object objZzw2 = zzgfVar.zzw(i48);
                                        object = unsafe8.getObject(obj, j6);
                                        if (!((zzfw) object).zze()) {
                                            zzfw zzfwVarZzb2 = zzfw.zza().zzb();
                                            zzfx.zza(zzfwVarZzb2, object);
                                            unsafe8.putObject(obj, j6, zzfwVarZzb2);
                                        }
                                        throw null;
                                    }
                                    obj2 = obj;
                                    i18 = i49;
                                    unsafe = unsafe4;
                                    i89 = i47;
                                    i87 = i48;
                                    i19 = i50;
                                    zzdjVar2 = zzdjVar4;
                                    bArr2 = bArr3;
                                    i20 = i45;
                                }
                            }
                        } else if (i21 == 2) {
                            zzfcVarZzd = (zzfc) unsafe3.getObject(obj2, j6);
                            if (!zzfcVarZzd.zzc()) {
                                int size5 = zzfcVarZzd.size();
                                zzfcVarZzd = zzfcVarZzd.zzd(size5 != 0 ? size5 + size5 : 10);
                                unsafe3.putObject(obj2, j6, zzfcVarZzd);
                            }
                            unsafe12 = unsafe3;
                            iZzl = zzdk.zze(zzgfVar.zzv(i46), i45, bArr, i23, i11, zzfcVarZzd, zzdjVar);
                            i87 = i46;
                            zzdjVar5 = zzdjVar4;
                            i88 = i45;
                            i91 = i17;
                            i89 = i89;
                            i90 = i44;
                            i12 = i12;
                            bArr7 = bArr;
                            i11 = i11;
                            i86 = 0;
                        } else {
                            i47 = i89;
                            unsafe4 = unsafe3;
                            i48 = i46;
                            i49 = i23;
                            bArr3 = bArr;
                            i50 = i44;
                            i18 = i49;
                            unsafe = unsafe4;
                            i89 = i47;
                            i87 = i48;
                            i19 = i50;
                            zzdjVar2 = zzdjVar4;
                            bArr2 = bArr3;
                            i20 = i45;
                        }
                    }
                } else {
                    i87 = i86;
                    i16 = i87;
                    unsafe = unsafe12;
                    i17 = i91;
                    bArr2 = bArr7;
                    zzdjVar2 = zzdjVar5;
                    i12 = i12;
                    i18 = iZzi;
                    i19 = i93;
                    i20 = i13;
                }
                if (i20 == i12) {
                }
                iZzg = !zzgfVar.zzh ? zzdk.zzg(i20, bArr, i18, i11, zzd(obj), zzdjVar) : zzdk.zzg(i20, bArr, i18, i11, zzd(obj), zzdjVar);
                unsafe12 = unsafe;
                i11 = i11;
                i12 = i12;
                i88 = i20;
                zzdjVar5 = zzdjVar2;
                i86 = i16;
                i90 = i19;
                bArr7 = bArr2;
                i91 = i17;
                iZzl = iZzg;
            } else {
                unsafe = unsafe12;
                i12 = i12;
            }
        }
        if (i91 != 1048575) {
            unsafe.putInt(obj2, i91, i89);
        }
        for (int i110 = zzgfVar.zzj; i110 < zzgfVar.zzk; i110++) {
            int[] iArr2 = zzgfVar.zzi;
            int[] iArr3 = zzgfVar.zzc;
            int i111 = iArr2[i110];
            int i112 = iArr3[i111];
            Object objZzf = zzhn.zzf(obj2, zzgfVar.zzs(i111) & 1048575);
            if (objZzf != null && zzgfVar.zzu(i111) != null) {
                throw null;
            }
        }
        if (i12 == 0) {
            if (iZzl != i11) {
                throw zzff.zze();
            }
        } else if (iZzl > i11 || i88 != i12) {
            throw zzff.zze();
        }
        return iZzl;
    }

    @Override // com.google.android.gms.internal.play_billing.zzgm
    public final void zzh(Object obj, byte[] bArr, int i10, int i11, zzdj zzdjVar) throws IOException {
        zzc(obj, bArr, i10, i11, 0, zzdjVar);
    }

    @Override // com.google.android.gms.internal.play_billing.zzgm
    public final boolean zzj(Object obj, Object obj2) {
        boolean zZzF;
        for (int i10 = 0; i10 < this.zzc.length; i10 += 3) {
            int iZzs = zzs(i10);
            long j6 = iZzs & 1048575;
            switch (zzr(iZzs)) {
                case 0:
                    if (!zzH(obj, obj2, i10) || Double.doubleToLongBits(zzhn.zza(obj, j6)) != Double.doubleToLongBits(zzhn.zza(obj2, j6))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 1:
                    if (!zzH(obj, obj2, i10) || Float.floatToIntBits(zzhn.zzb(obj, j6)) != Float.floatToIntBits(zzhn.zzb(obj2, j6))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 2:
                    if (!zzH(obj, obj2, i10) || zzhn.zzd(obj, j6) != zzhn.zzd(obj2, j6)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 3:
                    if (!zzH(obj, obj2, i10) || zzhn.zzd(obj, j6) != zzhn.zzd(obj2, j6)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 4:
                    if (!zzH(obj, obj2, i10) || zzhn.zzc(obj, j6) != zzhn.zzc(obj2, j6)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 5:
                    if (!zzH(obj, obj2, i10) || zzhn.zzd(obj, j6) != zzhn.zzd(obj2, j6)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 6:
                    if (!zzH(obj, obj2, i10) || zzhn.zzc(obj, j6) != zzhn.zzc(obj2, j6)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 7:
                    if (!zzH(obj, obj2, i10) || zzhn.zzw(obj, j6) != zzhn.zzw(obj2, j6)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 8:
                    if (!zzH(obj, obj2, i10) || !zzgo.zzF(zzhn.zzf(obj, j6), zzhn.zzf(obj2, j6))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 9:
                    if (!zzH(obj, obj2, i10) || !zzgo.zzF(zzhn.zzf(obj, j6), zzhn.zzf(obj2, j6))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 10:
                    if (!zzH(obj, obj2, i10) || !zzgo.zzF(zzhn.zzf(obj, j6), zzhn.zzf(obj2, j6))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 11:
                    if (!zzH(obj, obj2, i10) || zzhn.zzc(obj, j6) != zzhn.zzc(obj2, j6)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 12:
                    if (!zzH(obj, obj2, i10) || zzhn.zzc(obj, j6) != zzhn.zzc(obj2, j6)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 13:
                    if (!zzH(obj, obj2, i10) || zzhn.zzc(obj, j6) != zzhn.zzc(obj2, j6)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 14:
                    if (!zzH(obj, obj2, i10) || zzhn.zzd(obj, j6) != zzhn.zzd(obj2, j6)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 15:
                    if (!zzH(obj, obj2, i10) || zzhn.zzc(obj, j6) != zzhn.zzc(obj2, j6)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 16:
                    if (!zzH(obj, obj2, i10) || zzhn.zzd(obj, j6) != zzhn.zzd(obj2, j6)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 17:
                    if (!zzH(obj, obj2, i10) || !zzgo.zzF(zzhn.zzf(obj, j6), zzhn.zzf(obj2, j6))) {
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
                    zZzF = zzgo.zzF(zzhn.zzf(obj, j6), zzhn.zzf(obj2, j6));
                    break;
                case 50:
                    zZzF = zzgo.zzF(zzhn.zzf(obj, j6), zzhn.zzf(obj2, j6));
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
                    long jZzp = zzp(i10) & 1048575;
                    if (zzhn.zzc(obj, jZzp) != zzhn.zzc(obj2, jZzp) || !zzgo.zzF(zzhn.zzf(obj, j6), zzhn.zzf(obj2, j6))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                default:
                    continue;
                    break;
            }
            if (!zZzF) {
                return false;
            }
        }
        if (!this.zzm.zzd(obj).equals(this.zzm.zzd(obj2))) {
            return false;
        }
        if (!this.zzh) {
            return true;
        }
        this.zzn.zza(obj);
        this.zzn.zza(obj2);
        throw null;
    }

    private final void zzC(Object obj, Object obj2, int i10) {
        int i11 = this.zzc[i10];
        if (zzM(obj2, i11, i10)) {
            int iZzs = zzs(i10) & 1048575;
            Unsafe unsafe = zzb;
            long j6 = iZzs;
            Object object = unsafe.getObject(obj2, j6);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.zzc[i10] + " is present but null: " + obj2.toString());
            }
            zzgm zzgmVarZzv = zzv(i10);
            if (!zzM(obj, i11, i10)) {
                if (zzL(object)) {
                    Object objZze = zzgmVarZzv.zze();
                    zzgmVarZzv.zzg(objZze, object);
                    unsafe.putObject(obj, j6, objZze);
                } else {
                    unsafe.putObject(obj, j6, object);
                }
                zzE(obj, i11, i10);
                return;
            }
            Object object2 = unsafe.getObject(obj, j6);
            if (!zzL(object2)) {
                Object objZze2 = zzgmVarZzv.zze();
                zzgmVarZzv.zzg(objZze2, object2);
                unsafe.putObject(obj, j6, objZze2);
                object2 = objZze2;
            }
            zzgmVarZzv.zzg(object2, object);
        }
    }

    private final void zzF(Object obj, int i10, Object obj2) {
        zzb.putObject(obj, zzs(i10) & 1048575, obj2);
        zzD(obj, i10);
    }

    private final void zzG(Object obj, int i10, int i11, Object obj2) {
        zzb.putObject(obj, zzs(i11) & 1048575, obj2);
        zzE(obj, i10, i11);
    }

    private static boolean zzL(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof zzex) {
            return ((zzex) obj).zzt();
        }
        return true;
    }

    private static final void zzO(int i10, Object obj, zzhv zzhvVar) throws IOException {
        if (obj instanceof String) {
            zzhvVar.zzF(i10, (String) obj);
        } else {
            zzhvVar.zzd(i10, (zzdw) obj);
        }
    }

    static zzhe zzd(Object obj) {
        zzex zzexVar = (zzex) obj;
        zzhe zzheVar = zzexVar.zzc;
        if (zzheVar != zzhe.zzc()) {
            return zzheVar;
        }
        zzhe zzheVarZzf = zzhe.zzf();
        zzexVar.zzc = zzheVarZzf;
        return zzheVarZzf;
    }

    /* JADX WARN: Code duplicated, block: B:125:0x0266  */
    /* JADX WARN: Code duplicated, block: B:127:0x026b  */
    /* JADX WARN: Code duplicated, block: B:130:0x0281  */
    /* JADX WARN: Code duplicated, block: B:131:0x0284  */
    static zzgf zzl(Class cls, zzfz zzfzVar, zzgh zzghVar, zzfq zzfqVar, zzhd zzhdVar, zzek zzekVar, zzfx zzfxVar) {
        int i10;
        int iCharAt;
        int iCharAt2;
        int i11;
        int[] iArr;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        char cCharAt;
        int i17;
        char cCharAt2;
        int i18;
        char cCharAt3;
        int i19;
        char cCharAt4;
        int i20;
        char cCharAt5;
        int i21;
        char cCharAt6;
        int i22;
        char cCharAt7;
        int i23;
        char cCharAt8;
        int i24;
        int i25;
        int iObjectFieldOffset;
        int i26;
        int i27;
        int i28;
        int iObjectFieldOffset2;
        Field fieldZzz;
        char cCharAt9;
        int i29;
        int i30;
        int i31;
        int i32;
        int i33;
        Object obj;
        Field fieldZzz2;
        int i34;
        Object obj2;
        Field fieldZzz3;
        int i35;
        char cCharAt10;
        int i36;
        char cCharAt11;
        int i37;
        char cCharAt12;
        int i38;
        char cCharAt13;
        if (!(zzfzVar instanceof zzgl)) {
            throw null;
        }
        zzgl zzglVar = (zzgl) zzfzVar;
        String strZzd = zzglVar.zzd();
        int length = strZzd.length();
        char c7 = 55296;
        if (strZzd.charAt(0) >= 55296) {
            int i39 = 1;
            while (true) {
                i10 = i39 + 1;
                if (strZzd.charAt(i39) < 55296) {
                    break;
                }
                i39 = i10;
            }
        } else {
            i10 = 1;
        }
        int i40 = i10 + 1;
        int iCharAt3 = strZzd.charAt(i10);
        if (iCharAt3 >= 55296) {
            int i41 = iCharAt3 & 8191;
            int i42 = 13;
            while (true) {
                i38 = i40 + 1;
                cCharAt13 = strZzd.charAt(i40);
                if (cCharAt13 < 55296) {
                    break;
                }
                i41 |= (cCharAt13 & 8191) << i42;
                i42 += 13;
                i40 = i38;
            }
            iCharAt3 = i41 | (cCharAt13 << i42);
            i40 = i38;
        }
        if (iCharAt3 == 0) {
            iCharAt = 0;
            iCharAt2 = 0;
            i12 = 0;
            i15 = 0;
            i11 = 0;
            i13 = 0;
            iArr = zza;
            i14 = 0;
        } else {
            int i43 = i40 + 1;
            int iCharAt4 = strZzd.charAt(i40);
            if (iCharAt4 >= 55296) {
                int i44 = iCharAt4 & 8191;
                int i45 = 13;
                while (true) {
                    i23 = i43 + 1;
                    cCharAt8 = strZzd.charAt(i43);
                    if (cCharAt8 < 55296) {
                        break;
                    }
                    i44 |= (cCharAt8 & 8191) << i45;
                    i45 += 13;
                    i43 = i23;
                }
                iCharAt4 = i44 | (cCharAt8 << i45);
                i43 = i23;
            }
            int i46 = i43 + 1;
            int iCharAt5 = strZzd.charAt(i43);
            if (iCharAt5 >= 55296) {
                int i47 = iCharAt5 & 8191;
                int i48 = 13;
                while (true) {
                    i22 = i46 + 1;
                    cCharAt7 = strZzd.charAt(i46);
                    if (cCharAt7 < 55296) {
                        break;
                    }
                    i47 |= (cCharAt7 & 8191) << i48;
                    i48 += 13;
                    i46 = i22;
                }
                iCharAt5 = i47 | (cCharAt7 << i48);
                i46 = i22;
            }
            int i49 = i46 + 1;
            int iCharAt6 = strZzd.charAt(i46);
            if (iCharAt6 >= 55296) {
                int i50 = iCharAt6 & 8191;
                int i51 = 13;
                while (true) {
                    i21 = i49 + 1;
                    cCharAt6 = strZzd.charAt(i49);
                    if (cCharAt6 < 55296) {
                        break;
                    }
                    i50 |= (cCharAt6 & 8191) << i51;
                    i51 += 13;
                    i49 = i21;
                }
                iCharAt6 = i50 | (cCharAt6 << i51);
                i49 = i21;
            }
            int i52 = i49 + 1;
            int iCharAt7 = strZzd.charAt(i49);
            if (iCharAt7 >= 55296) {
                int i53 = iCharAt7 & 8191;
                int i54 = 13;
                while (true) {
                    i20 = i52 + 1;
                    cCharAt5 = strZzd.charAt(i52);
                    if (cCharAt5 < 55296) {
                        break;
                    }
                    i53 |= (cCharAt5 & 8191) << i54;
                    i54 += 13;
                    i52 = i20;
                }
                iCharAt7 = i53 | (cCharAt5 << i54);
                i52 = i20;
            }
            int i55 = i52 + 1;
            iCharAt = strZzd.charAt(i52);
            if (iCharAt >= 55296) {
                int i56 = iCharAt & 8191;
                int i57 = 13;
                while (true) {
                    i19 = i55 + 1;
                    cCharAt4 = strZzd.charAt(i55);
                    if (cCharAt4 < 55296) {
                        break;
                    }
                    i56 |= (cCharAt4 & 8191) << i57;
                    i57 += 13;
                    i55 = i19;
                }
                iCharAt = i56 | (cCharAt4 << i57);
                i55 = i19;
            }
            int i58 = i55 + 1;
            iCharAt2 = strZzd.charAt(i55);
            if (iCharAt2 >= 55296) {
                int i59 = iCharAt2 & 8191;
                int i60 = 13;
                while (true) {
                    i18 = i58 + 1;
                    cCharAt3 = strZzd.charAt(i58);
                    if (cCharAt3 < 55296) {
                        break;
                    }
                    i59 |= (cCharAt3 & 8191) << i60;
                    i60 += 13;
                    i58 = i18;
                }
                iCharAt2 = i59 | (cCharAt3 << i60);
                i58 = i18;
            }
            int i61 = i58 + 1;
            int iCharAt8 = strZzd.charAt(i58);
            if (iCharAt8 >= 55296) {
                int i62 = iCharAt8 & 8191;
                int i63 = 13;
                while (true) {
                    i17 = i61 + 1;
                    cCharAt2 = strZzd.charAt(i61);
                    if (cCharAt2 < 55296) {
                        break;
                    }
                    i62 |= (cCharAt2 & 8191) << i63;
                    i63 += 13;
                    i61 = i17;
                }
                iCharAt8 = i62 | (cCharAt2 << i63);
                i61 = i17;
            }
            int i64 = i61 + 1;
            int iCharAt9 = strZzd.charAt(i61);
            if (iCharAt9 >= 55296) {
                int i65 = iCharAt9 & 8191;
                int i66 = 13;
                while (true) {
                    i16 = i64 + 1;
                    cCharAt = strZzd.charAt(i64);
                    if (cCharAt < 55296) {
                        break;
                    }
                    i65 |= (cCharAt & 8191) << i66;
                    i66 += 13;
                    i64 = i16;
                }
                iCharAt9 = i65 | (cCharAt << i66);
                i64 = i16;
            }
            i11 = iCharAt4 + iCharAt4 + iCharAt5;
            iArr = new int[iCharAt9 + iCharAt2 + iCharAt8];
            i12 = iCharAt6;
            i13 = iCharAt9;
            i14 = iCharAt4;
            i15 = iCharAt7;
            i40 = i64;
        }
        Unsafe unsafe = zzb;
        Object[] objArrZze = zzglVar.zze();
        Class<?> cls2 = zzglVar.zza().getClass();
        int i67 = i13 + iCharAt2;
        int i68 = iCharAt + iCharAt;
        int[] iArr2 = new int[iCharAt * 3];
        Object[] objArr = new Object[i68];
        int i69 = 0;
        int i70 = 0;
        int i71 = i13;
        int i72 = i67;
        while (i40 < length) {
            int i73 = i40 + 1;
            int iCharAt10 = strZzd.charAt(i40);
            if (iCharAt10 >= c7) {
                int i74 = iCharAt10 & 8191;
                int i75 = i73;
                int i76 = 13;
                while (true) {
                    i37 = i75 + 1;
                    cCharAt12 = strZzd.charAt(i75);
                    if (cCharAt12 < c7) {
                        break;
                    }
                    i74 |= (cCharAt12 & 8191) << i76;
                    i76 += 13;
                    i75 = i37;
                }
                iCharAt10 = i74 | (cCharAt12 << i76);
                i24 = i37;
            } else {
                i24 = i73;
            }
            int i77 = i24 + 1;
            int iCharAt11 = strZzd.charAt(i24);
            if (iCharAt11 >= c7) {
                int i78 = iCharAt11 & 8191;
                int i79 = i77;
                int i80 = 13;
                while (true) {
                    i36 = i79 + 1;
                    cCharAt11 = strZzd.charAt(i79);
                    if (cCharAt11 < c7) {
                        break;
                    }
                    i78 |= (cCharAt11 & 8191) << i80;
                    i80 += 13;
                    i79 = i36;
                }
                iCharAt11 = i78 | (cCharAt11 << i80);
                i25 = i36;
            } else {
                i25 = i77;
            }
            if ((iCharAt11 & 1024) != 0) {
                iArr[i69] = i70;
                i69++;
            }
            int i81 = iCharAt11 & 255;
            int i82 = iCharAt11 & 2048;
            int i83 = length;
            if (i81 >= 51) {
                int i84 = i25 + 1;
                int iCharAt12 = strZzd.charAt(i25);
                char c10 = 55296;
                if (iCharAt12 >= 55296) {
                    int i85 = 13;
                    int i86 = iCharAt12 & 8191;
                    int i87 = i84;
                    while (true) {
                        i35 = i87 + 1;
                        cCharAt10 = strZzd.charAt(i87);
                        if (cCharAt10 < c10) {
                            break;
                        }
                        i86 |= (cCharAt10 & 8191) << i85;
                        i85 += 13;
                        i87 = i35;
                        c10 = 55296;
                    }
                    iCharAt12 = i86 | (cCharAt10 << i85);
                    i31 = i35;
                } else {
                    i31 = i84;
                }
                int i88 = i31;
                int i89 = i81 - 51;
                if (i89 == 9 || i89 == 17) {
                    i32 = i11 + 1;
                    int i90 = i70 / 3;
                    objArr[i90 + i90 + 1] = objArrZze[i11];
                } else {
                    if (i89 == 12) {
                        if (zzglVar.zzc() == 1 || i82 != 0) {
                            i32 = i11 + 1;
                            int i91 = i70 / 3;
                            objArr[i91 + i91 + 1] = objArrZze[i11];
                        } else {
                            i82 = 0;
                        }
                    }
                    i33 = iCharAt12 + iCharAt12;
                    obj = objArrZze[i33];
                    if (obj instanceof Field) {
                        fieldZzz2 = (Field) obj;
                    } else {
                        fieldZzz2 = zzz(cls2, (String) obj);
                        objArrZze[i33] = fieldZzz2;
                    }
                    iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldZzz2);
                    i34 = i33 + 1;
                    obj2 = objArrZze[i34];
                    if (obj2 instanceof Field) {
                        fieldZzz3 = (Field) obj2;
                    } else {
                        fieldZzz3 = zzz(cls2, (String) obj2);
                        objArrZze[i34] = fieldZzz3;
                    }
                    zzglVar = zzglVar;
                    strZzd = strZzd;
                    i28 = i11;
                    i26 = i88;
                    iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZzz3);
                    i27 = 0;
                }
                i11 = i32;
                i33 = iCharAt12 + iCharAt12;
                obj = objArrZze[i33];
                if (obj instanceof Field) {
                    fieldZzz2 = (Field) obj;
                } else {
                    fieldZzz2 = zzz(cls2, (String) obj);
                    objArrZze[i33] = fieldZzz2;
                }
                iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldZzz2);
                i34 = i33 + 1;
                obj2 = objArrZze[i34];
                if (obj2 instanceof Field) {
                    fieldZzz3 = (Field) obj2;
                } else {
                    fieldZzz3 = zzz(cls2, (String) obj2);
                    objArrZze[i34] = fieldZzz3;
                }
                zzglVar = zzglVar;
                strZzd = strZzd;
                i28 = i11;
                i26 = i88;
                iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZzz3);
                i27 = 0;
            } else {
                int i92 = i11 + 1;
                Field fieldZzz4 = zzz(cls2, (String) objArrZze[i11]);
                if (i81 == 9 || i81 == 17) {
                    zzglVar = zzglVar;
                    int i93 = i70 / 3;
                    objArr[i93 + i93 + 1] = fieldZzz4.getType();
                } else {
                    if (i81 == 27) {
                        i29 = 1;
                        i30 = i11 + 2;
                    } else if (i81 == 49) {
                        i30 = i11 + 2;
                        i29 = 1;
                    } else if (i81 == 12 || i81 == 30 || i81 == 44) {
                        zzglVar = zzglVar;
                        if (zzglVar.zzc() == 1 || i82 != 0) {
                            i30 = i11 + 2;
                            int i94 = i70 / 3;
                            objArr[i94 + i94 + 1] = objArrZze[i92];
                            i92 = i30;
                        } else {
                            i82 = 0;
                        }
                    } else {
                        if (i81 == 50) {
                            int i95 = i11 + 2;
                            int i96 = i71 + 1;
                            iArr[i71] = i70;
                            int i97 = i70 / 3;
                            int i98 = i97 + i97;
                            objArr[i98] = objArrZze[i92];
                            if (i82 != 0) {
                                i92 = i11 + 3;
                                objArr[i98 + 1] = objArrZze[i95];
                                i71 = i96;
                            } else {
                                i92 = i95;
                                i71 = i96;
                                i82 = 0;
                            }
                        }
                        zzglVar = zzglVar;
                    }
                    int i99 = i70 / 3;
                    objArr[i99 + i99 + i29] = objArrZze[i92];
                    i92 = i30;
                }
                int iObjectFieldOffset3 = (int) unsafe.objectFieldOffset(fieldZzz4);
                iObjectFieldOffset = 1048575;
                if ((iCharAt11 & 4096) == 0 || i81 > 17) {
                    i26 = i25;
                    i27 = 0;
                } else {
                    int i100 = i25 + 1;
                    int iCharAt13 = strZzd.charAt(i25);
                    if (iCharAt13 >= 55296) {
                        int i101 = iCharAt13 & 8191;
                        int i102 = 13;
                        while (true) {
                            i26 = i100 + 1;
                            cCharAt9 = strZzd.charAt(i100);
                            if (cCharAt9 < 55296) {
                                break;
                            }
                            i101 |= (cCharAt9 & 8191) << i102;
                            i102 += 13;
                            i100 = i26;
                        }
                        iCharAt13 = i101 | (cCharAt9 << i102);
                    } else {
                        i26 = i100;
                    }
                    int i103 = i14 + i14 + (iCharAt13 / 32);
                    Object obj3 = objArrZze[i103];
                    if (obj3 instanceof Field) {
                        fieldZzz = (Field) obj3;
                    } else {
                        fieldZzz = zzz(cls2, (String) obj3);
                        objArrZze[i103] = fieldZzz;
                    }
                    i27 = iCharAt13 % 32;
                    iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZzz);
                }
                if (i81 >= 18 && i81 <= 49) {
                    iArr[i72] = iObjectFieldOffset3;
                    i72++;
                }
                i28 = i92;
                iObjectFieldOffset2 = iObjectFieldOffset3;
            }
            int i104 = i70 + 1;
            iArr2[i70] = iCharAt10;
            int i105 = i70 + 2;
            iArr2[i104] = iObjectFieldOffset2 | ((iCharAt11 & 256) != 0 ? 268435456 : 0) | ((iCharAt11 & 512) != 0 ? 536870912 : 0) | (i82 != 0 ? Integer.MIN_VALUE : 0) | (i81 << 20);
            i70 += 3;
            iArr2[i105] = (i27 << 20) | iObjectFieldOffset;
            i11 = i28;
            i40 = i26;
            length = i83;
            zzglVar = zzglVar;
            strZzd = strZzd;
            i15 = i15;
            i12 = i12;
            c7 = 55296;
        }
        zzgl zzglVar2 = zzglVar;
        return new zzgf(iArr2, objArr, i12, i15, zzglVar2.zza(), zzglVar2.zzc(), false, iArr, i13, i67, zzghVar, zzfqVar, zzhdVar, zzekVar, zzfxVar);
    }

    private final int zzp(int i10) {
        return this.zzc[i10 + 2];
    }

    private final int zzq(int i10, int i11) {
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

    private final int zzs(int i10) {
        return this.zzc[i10 + 1];
    }

    private final zzfb zzu(int i10) {
        int i11 = i10 / 3;
        return (zzfb) this.zzd[i11 + i11 + 1];
    }

    private final zzgm zzv(int i10) {
        Object[] objArr = this.zzd;
        int i11 = i10 / 3;
        int i12 = i11 + i11;
        zzgm zzgmVar = (zzgm) objArr[i12];
        if (zzgmVar != null) {
            return zzgmVar;
        }
        zzgm zzgmVarZzb = zzgk.zza().zzb((Class) objArr[i12 + 1]);
        this.zzd[i12] = zzgmVarZzb;
        return zzgmVarZzb;
    }

    private final Object zzw(int i10) {
        int i11 = i10 / 3;
        return this.zzd[i11 + i11];
    }

    /* JADX WARN: Code duplicated, block: B:143:0x0390  */
    /* JADX WARN: Code duplicated, block: B:180:0x0486  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v108, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v109, types: [com.google.android.gms.internal.play_billing.zzfk] */
    /* JADX WARN: Type inference failed for: r0v111, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v113, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v130 */
    /* JADX WARN: Type inference failed for: r0v178, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v248, types: [int] */
    /* JADX WARN: Type inference failed for: r0v257 */
    /* JADX WARN: Type inference failed for: r0v258 */
    /* JADX WARN: Type inference failed for: r0v259 */
    /* JADX WARN: Type inference failed for: r0v260 */
    /* JADX WARN: Type inference failed for: r0v261 */
    /* JADX WARN: Type inference failed for: r0v262 */
    /* JADX WARN: Type inference failed for: r0v263 */
    /* JADX WARN: Type inference failed for: r0v264 */
    /* JADX WARN: Type inference failed for: r0v265 */
    /* JADX WARN: Type inference failed for: r0v266 */
    /* JADX WARN: Type inference failed for: r0v267 */
    /* JADX WARN: Type inference failed for: r0v268 */
    /* JADX WARN: Type inference failed for: r0v269 */
    /* JADX WARN: Type inference failed for: r0v270 */
    /* JADX WARN: Type inference failed for: r0v271 */
    /* JADX WARN: Type inference failed for: r0v272 */
    /* JADX WARN: Type inference failed for: r12v3, types: [int] */
    /* JADX WARN: Type inference failed for: r12v4, types: [int] */
    /* JADX WARN: Type inference failed for: r12v5, types: [int] */
    /* JADX WARN: Type inference failed for: r12v6, types: [int] */
    /* JADX WARN: Type inference failed for: r12v8, types: [int] */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v110, types: [int] */
    /* JADX WARN: Type inference failed for: r1v113, types: [int] */
    /* JADX WARN: Type inference failed for: r1v149 */
    /* JADX WARN: Type inference failed for: r1v152 */
    /* JADX WARN: Type inference failed for: r1v153 */
    /* JADX WARN: Type inference failed for: r1v154 */
    /* JADX WARN: Type inference failed for: r1v155 */
    /* JADX WARN: Type inference failed for: r1v156 */
    /* JADX WARN: Type inference failed for: r1v157 */
    /* JADX WARN: Type inference failed for: r1v158 */
    /* JADX WARN: Type inference failed for: r1v159 */
    /* JADX WARN: Type inference failed for: r1v70, types: [int] */
    /* JADX WARN: Type inference failed for: r1v72 */
    /* JADX WARN: Type inference failed for: r2v30, types: [int] */
    /* JADX WARN: Type inference failed for: r2v35, types: [int] */
    /* JADX WARN: Type inference failed for: r2v36 */
    /* JADX WARN: Type inference failed for: r2v40, types: [int] */
    /* JADX WARN: Type inference failed for: r2v44, types: [int] */
    /* JADX WARN: Type inference failed for: r2v52 */
    /* JADX WARN: Type inference failed for: r2v53, types: [int] */
    /* JADX WARN: Type inference failed for: r2v90 */
    /* JADX WARN: Type inference failed for: r2v91 */
    /* JADX WARN: Type inference failed for: r2v92 */
    /* JADX WARN: Type inference failed for: r2v93 */
    /* JADX WARN: Type inference failed for: r2v94 */
    /* JADX WARN: Type inference failed for: r3v22 */
    /* JADX WARN: Type inference failed for: r3v23, types: [int] */
    /* JADX WARN: Type inference failed for: r3v25 */
    /* JADX WARN: Type inference failed for: r3v26, types: [int] */
    /* JADX WARN: Type inference failed for: r3v31 */
    /* JADX WARN: Type inference failed for: r3v35, types: [int] */
    /* JADX WARN: Type inference failed for: r3v36 */
    /* JADX WARN: Type inference failed for: r3v42, types: [int] */
    /* JADX WARN: Type inference failed for: r3v47 */
    /* JADX WARN: Type inference failed for: r3v48 */
    /* JADX WARN: Type inference failed for: r3v49 */
    /* JADX WARN: Type inference failed for: r3v50 */
    /* JADX WARN: Type inference failed for: r3v51 */
    /* JADX WARN: Type inference failed for: r3v52 */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v15 */
    /* JADX WARN: Type inference failed for: r4v16 */
    /* JADX WARN: Type inference failed for: r4v17 */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v29 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v30, types: [int] */
    /* JADX WARN: Type inference failed for: r4v34 */
    /* JADX WARN: Type inference failed for: r4v35 */
    /* JADX WARN: Type inference failed for: r4v37, types: [int] */
    /* JADX WARN: Type inference failed for: r4v38 */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v58 */
    /* JADX WARN: Type inference failed for: r4v59 */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v20 */
    /* JADX WARN: Type inference failed for: r5v3, types: [int] */
    @Override // com.google.android.gms.internal.play_billing.zzgm
    public final int zza(Object obj) {
        int i10;
        ?? r15;
        ?? r5;
        int iZzx;
        int iZzx2;
        int iZzy;
        int iZzx3;
        int iZzx4;
        int iZzx5;
        int iZzx6;
        ?? Zzg;
        int size;
        int iZzx7;
        int iZzw;
        int iZzw2;
        ?? r10;
        int iZzv;
        ?? Zzx;
        ?? Zzh;
        int iZze;
        int iZzx8;
        int iZzx9;
        ?? r11;
        ?? r12;
        ?? r1;
        Unsafe unsafe = zzb;
        boolean z6 = false;
        int i11 = 1048575;
        ?? r13 = 0;
        int i12 = 0;
        int i13 = 0;
        int i14 = 1048575;
        while (i12 < this.zzc.length) {
            int iZzs = zzs(i12);
            int iZzr = zzr(iZzs);
            int[] iArr = this.zzc;
            int i15 = iArr[i12];
            int i16 = iArr[i12 + 2];
            int i17 = i16 & i11;
            if (iZzr <= 17) {
                if (i17 != i14) {
                    i14 = i17;
                    r1 = i17 == i11 ? z6 : unsafe.getInt(obj, i17);
                }
                i10 = i14;
                r15 = r1;
                r5 = 1 << (i16 >>> 20);
            } else {
                r1 = r13;
                i10 = i14;
                r15 = r13;
                r5 = z6;
            }
            int i18 = iZzs & i11;
            if (iZzr >= zzep.zzJ.zza()) {
                zzep.zzW.zza();
            }
            long j6 = i18;
            switch (iZzr) {
                case 0:
                    if (zzJ(obj, i12, i10, r15 == true ? 1 : 0, r5)) {
                        iZzx = zzee.zzx(i15 << 3);
                        Zzh = iZzx + 8;
                        i13 += Zzh;
                    }
                    i12 += 3;
                    i14 = i10;
                    r13 = r15;
                    z6 = false;
                    i11 = 1048575;
                    break;
                case 1:
                    if (zzJ(obj, i12, i10, r15 == true ? 1 : 0, r5)) {
                        iZzx2 = zzee.zzx(i15 << 3);
                        Zzh = iZzx2 + 4;
                        i13 += Zzh;
                    }
                    i12 += 3;
                    i14 = i10;
                    r13 = r15;
                    z6 = false;
                    i11 = 1048575;
                    break;
                case 2:
                    if (zzJ(obj, i12, i10, r15 == true ? 1 : 0, r5)) {
                        iZzy = zzee.zzy(unsafe.getLong(obj, j6));
                        iZzx3 = zzee.zzx(i15 << 3);
                        Zzh = iZzx3 + iZzy;
                        i13 += Zzh;
                    }
                    i12 += 3;
                    i14 = i10;
                    r13 = r15;
                    z6 = false;
                    i11 = 1048575;
                    break;
                case 3:
                    if (zzJ(obj, i12, i10, r15 == true ? 1 : 0, r5)) {
                        iZzy = zzee.zzy(unsafe.getLong(obj, j6));
                        iZzx3 = zzee.zzx(i15 << 3);
                        Zzh = iZzx3 + iZzy;
                        i13 += Zzh;
                    }
                    i12 += 3;
                    i14 = i10;
                    r13 = r15;
                    z6 = false;
                    i11 = 1048575;
                    break;
                case 4:
                    if (zzJ(obj, i12, i10, r15 == true ? 1 : 0, r5)) {
                        iZzy = zzee.zzu(unsafe.getInt(obj, j6));
                        iZzx3 = zzee.zzx(i15 << 3);
                        Zzh = iZzx3 + iZzy;
                        i13 += Zzh;
                    }
                    i12 += 3;
                    i14 = i10;
                    r13 = r15;
                    z6 = false;
                    i11 = 1048575;
                    break;
                case 5:
                    if (zzJ(obj, i12, i10, r15 == true ? 1 : 0, r5)) {
                        iZzx = zzee.zzx(i15 << 3);
                        Zzh = iZzx + 8;
                        i13 += Zzh;
                    }
                    i12 += 3;
                    i14 = i10;
                    r13 = r15;
                    z6 = false;
                    i11 = 1048575;
                    break;
                case 6:
                    if (zzJ(obj, i12, i10, r15 == true ? 1 : 0, r5)) {
                        iZzx2 = zzee.zzx(i15 << 3);
                        Zzh = iZzx2 + 4;
                        i13 += Zzh;
                    }
                    i12 += 3;
                    i14 = i10;
                    r13 = r15;
                    z6 = false;
                    i11 = 1048575;
                    break;
                case 7:
                    if (zzJ(obj, i12, i10, r15 == true ? 1 : 0, r5)) {
                        iZzx4 = zzee.zzx(i15 << 3);
                        Zzh = iZzx4 + 1;
                        i13 += Zzh;
                    }
                    i12 += 3;
                    i14 = i10;
                    r13 = r15;
                    z6 = false;
                    i11 = 1048575;
                    break;
                case 8:
                    if (zzJ(obj, i12, i10, r15 == true ? 1 : 0, r5)) {
                        int i19 = i15 << 3;
                        Object object = unsafe.getObject(obj, j6);
                        if (object instanceof zzdw) {
                            int i20 = zzee.zzb;
                            int iZzd = ((zzdw) object).zzd();
                            iZzx5 = zzee.zzx(iZzd) + iZzd;
                            iZzx6 = zzee.zzx(i19);
                            Zzh = iZzx6 + iZzx5;
                            i13 += Zzh;
                        } else {
                            iZzy = zzee.zzw((String) object);
                            iZzx3 = zzee.zzx(i19);
                            Zzh = iZzx3 + iZzy;
                            i13 += Zzh;
                        }
                    }
                    i12 += 3;
                    i14 = i10;
                    r13 = r15;
                    z6 = false;
                    i11 = 1048575;
                    break;
                case 9:
                    if (zzJ(obj, i12, i10, r15 == true ? 1 : 0, r5)) {
                        Zzh = zzgo.zzh(i15, unsafe.getObject(obj, j6), zzv(i12));
                        i13 += Zzh;
                    }
                    i12 += 3;
                    i14 = i10;
                    r13 = r15;
                    z6 = false;
                    i11 = 1048575;
                    break;
                case 10:
                    if (zzJ(obj, i12, i10, r15 == true ? 1 : 0, r5)) {
                        zzdw zzdwVar = (zzdw) unsafe.getObject(obj, j6);
                        int i21 = zzee.zzb;
                        int iZzd2 = zzdwVar.zzd();
                        iZzx5 = zzee.zzx(iZzd2) + iZzd2;
                        iZzx6 = zzee.zzx(i15 << 3);
                        Zzh = iZzx6 + iZzx5;
                        i13 += Zzh;
                    }
                    i12 += 3;
                    i14 = i10;
                    r13 = r15;
                    z6 = false;
                    i11 = 1048575;
                    break;
                case 11:
                    if (zzJ(obj, i12, i10, r15 == true ? 1 : 0, r5)) {
                        iZzy = zzee.zzx(unsafe.getInt(obj, j6));
                        iZzx3 = zzee.zzx(i15 << 3);
                        Zzh = iZzx3 + iZzy;
                        i13 += Zzh;
                    }
                    i12 += 3;
                    i14 = i10;
                    r13 = r15;
                    z6 = false;
                    i11 = 1048575;
                    break;
                case 12:
                    if (zzJ(obj, i12, i10, r15 == true ? 1 : 0, r5)) {
                        iZzy = zzee.zzu(unsafe.getInt(obj, j6));
                        iZzx3 = zzee.zzx(i15 << 3);
                        Zzh = iZzx3 + iZzy;
                        i13 += Zzh;
                    }
                    i12 += 3;
                    i14 = i10;
                    r13 = r15;
                    z6 = false;
                    i11 = 1048575;
                    break;
                case 13:
                    if (zzJ(obj, i12, i10, r15 == true ? 1 : 0, r5)) {
                        iZzx2 = zzee.zzx(i15 << 3);
                        Zzh = iZzx2 + 4;
                        i13 += Zzh;
                    }
                    i12 += 3;
                    i14 = i10;
                    r13 = r15;
                    z6 = false;
                    i11 = 1048575;
                    break;
                case 14:
                    if (zzJ(obj, i12, i10, r15 == true ? 1 : 0, r5)) {
                        iZzx = zzee.zzx(i15 << 3);
                        Zzh = iZzx + 8;
                        i13 += Zzh;
                    }
                    i12 += 3;
                    i14 = i10;
                    r13 = r15;
                    z6 = false;
                    i11 = 1048575;
                    break;
                case 15:
                    if (zzJ(obj, i12, i10, r15 == true ? 1 : 0, r5)) {
                        int i22 = unsafe.getInt(obj, j6);
                        iZzx3 = zzee.zzx(i15 << 3);
                        iZzy = zzee.zzx((i22 >> 31) ^ (i22 + i22));
                        Zzh = iZzx3 + iZzy;
                        i13 += Zzh;
                    }
                    i12 += 3;
                    i14 = i10;
                    r13 = r15;
                    z6 = false;
                    i11 = 1048575;
                    break;
                case 16:
                    if (zzJ(obj, i12, i10, r15 == true ? 1 : 0, r5)) {
                        long j10 = unsafe.getLong(obj, j6);
                        iZzx3 = zzee.zzx(i15 << 3);
                        iZzy = zzee.zzy((j10 >> 63) ^ (j10 + j10));
                        Zzh = iZzx3 + iZzy;
                        i13 += Zzh;
                    }
                    i12 += 3;
                    i14 = i10;
                    r13 = r15;
                    z6 = false;
                    i11 = 1048575;
                    break;
                case 17:
                    if (zzJ(obj, i12, i10, r15 == true ? 1 : 0, r5)) {
                        Zzh = zzee.zzt(i15, (zzgc) unsafe.getObject(obj, j6), zzv(i12));
                        i13 += Zzh;
                    }
                    i12 += 3;
                    i14 = i10;
                    r13 = r15;
                    z6 = false;
                    i11 = 1048575;
                    break;
                case 18:
                    Zzh = zzgo.zzd(i15, (List) unsafe.getObject(obj, j6), z6);
                    i13 += Zzh;
                    i12 += 3;
                    i14 = i10;
                    r13 = r15;
                    z6 = false;
                    i11 = 1048575;
                    break;
                case 19:
                    Zzh = zzgo.zzb(i15, (List) unsafe.getObject(obj, j6), z6);
                    i13 += Zzh;
                    i12 += 3;
                    i14 = i10;
                    r13 = r15;
                    z6 = false;
                    i11 = 1048575;
                    break;
                case 20:
                    List list = (List) unsafe.getObject(obj, j6);
                    int i23 = zzgo.zza;
                    if (list.size() == 0) {
                        Zzg = z6;
                    } else {
                        Zzg = zzgo.zzg(list) + (list.size() * zzee.zzx(i15 << 3));
                    }
                    i13 += Zzg;
                    i12 += 3;
                    i14 = i10;
                    r13 = r15;
                    z6 = false;
                    i11 = 1048575;
                    break;
                case 21:
                    List list2 = (List) unsafe.getObject(obj, j6);
                    int i24 = zzgo.zza;
                    size = list2.size();
                    if (size == 0) {
                        Zzh = z6;
                    } else {
                        iZzx3 = zzgo.zzl(list2);
                        iZzx7 = zzee.zzx(i15 << 3);
                        iZzy = size * iZzx7;
                        Zzh = iZzx3 + iZzy;
                    }
                    i13 += Zzh;
                    i12 += 3;
                    i14 = i10;
                    r13 = r15;
                    z6 = false;
                    i11 = 1048575;
                    break;
                case 22:
                    List list3 = (List) unsafe.getObject(obj, j6);
                    int i25 = zzgo.zza;
                    size = list3.size();
                    if (size == 0) {
                        Zzh = z6;
                    } else {
                        iZzx3 = zzgo.zzf(list3);
                        iZzx7 = zzee.zzx(i15 << 3);
                        iZzy = size * iZzx7;
                        Zzh = iZzx3 + iZzy;
                    }
                    i13 += Zzh;
                    i12 += 3;
                    i14 = i10;
                    r13 = r15;
                    z6 = false;
                    i11 = 1048575;
                    break;
                case 23:
                    Zzh = zzgo.zzd(i15, (List) unsafe.getObject(obj, j6), z6);
                    i13 += Zzh;
                    i12 += 3;
                    i14 = i10;
                    r13 = r15;
                    z6 = false;
                    i11 = 1048575;
                    break;
                case 24:
                    Zzh = zzgo.zzb(i15, (List) unsafe.getObject(obj, j6), z6);
                    i13 += Zzh;
                    i12 += 3;
                    i14 = i10;
                    r13 = r15;
                    z6 = false;
                    i11 = 1048575;
                    break;
                case 25:
                    List list4 = (List) unsafe.getObject(obj, j6);
                    int i26 = zzgo.zza;
                    int size2 = list4.size();
                    if (size2 == 0) {
                        Zzh = z6;
                    } else {
                        Zzh = size2 * (zzee.zzx(i15 << 3) + 1);
                    }
                    i13 += Zzh;
                    i12 += 3;
                    i14 = i10;
                    r13 = r15;
                    z6 = false;
                    i11 = 1048575;
                    break;
                case 26:
                    ?? r14 = (List) unsafe.getObject(obj, j6);
                    int i27 = zzgo.zza;
                    int size3 = r14.size();
                    if (size3 == 0) {
                        Zzg = z6;
                    } else {
                        boolean z10 = r14 instanceof zzfk;
                        int iZzx10 = zzee.zzx(i15 << 3) * size3;
                        if (z10) {
                            ?? r16 = (zzfk) r14;
                            for (?? r17 = z6; r17 < size3; r17++) {
                                Object objZzf = r16.zzf(r17);
                                if (objZzf instanceof zzdw) {
                                    Zzg = iZzx10;
                                    int iZzd3 = ((zzdw) objZzf).zzd();
                                    iZzw2 = Zzg + zzee.zzx(iZzd3) + iZzd3;
                                } else {
                                    Zzg = iZzx10;
                                    iZzw2 = Zzg + zzee.zzw((String) objZzf);
                                }
                                Zzg = iZzw2;
                            }
                            Zzg = iZzx10;
                        } else {
                            for (?? r18 = z6; r18 < size3; r18++) {
                                Object obj2 = r14.get(r18);
                                if (obj2 instanceof zzdw) {
                                    Zzg = iZzx10;
                                    int iZzd4 = ((zzdw) obj2).zzd();
                                    iZzw = Zzg + zzee.zzx(iZzd4) + iZzd4;
                                } else {
                                    Zzg = iZzx10;
                                    iZzw = Zzg + zzee.zzw((String) obj2);
                                }
                                Zzg = iZzw;
                            }
                            Zzg = iZzx10;
                        }
                    }
                    i13 += Zzg;
                    i12 += 3;
                    i14 = i10;
                    r13 = r15;
                    z6 = false;
                    i11 = 1048575;
                    break;
                case 27:
                    ?? r19 = (List) unsafe.getObject(obj, j6);
                    zzgm zzgmVarZzv = zzv(i12);
                    int i28 = zzgo.zza;
                    int size4 = r19.size();
                    if (size4 == 0) {
                        r10 = z6;
                    } else {
                        int iZzx11 = zzee.zzx(i15 << 3) * size4;
                        for (?? r20 = z6; r20 < size4; r20++) {
                            Object obj3 = r19.get(r20);
                            if (obj3 instanceof zzfi) {
                                r10 = iZzx11;
                                int iZza = ((zzfi) obj3).zza();
                                iZzv = (r10 == true ? 1 : 0) + zzee.zzx(iZza) + iZza;
                            } else {
                                r10 = iZzx11;
                                iZzv = (r10 == true ? 1 : 0) + zzee.zzv((zzgc) obj3, zzgmVarZzv);
                            }
                            r10 = iZzv;
                        }
                        r10 = iZzx11;
                    }
                    i13 += r10;
                    i12 += 3;
                    i14 = i10;
                    r13 = r15;
                    z6 = false;
                    i11 = 1048575;
                    break;
                case 28:
                    ?? r21 = (List) unsafe.getObject(obj, j6);
                    int i29 = zzgo.zza;
                    int size5 = r21.size();
                    if (size5 == 0) {
                        Zzx = z6;
                    } else {
                        Zzx = size5 * zzee.zzx(i15 << 3);
                        for (?? r22 = z6; r22 < r21.size(); r22++) {
                            int iZzd5 = ((zzdw) r21.get(r22)).zzd();
                            Zzx += zzee.zzx(iZzd5) + iZzd5;
                        }
                    }
                    i13 += Zzx;
                    i12 += 3;
                    i14 = i10;
                    r13 = r15;
                    z6 = false;
                    i11 = 1048575;
                    break;
                case 29:
                    List list5 = (List) unsafe.getObject(obj, j6);
                    int i30 = zzgo.zza;
                    size = list5.size();
                    if (size == 0) {
                        Zzh = z6;
                    } else {
                        iZzx3 = zzgo.zzk(list5);
                        iZzx7 = zzee.zzx(i15 << 3);
                        iZzy = size * iZzx7;
                        Zzh = iZzx3 + iZzy;
                    }
                    i13 += Zzh;
                    i12 += 3;
                    i14 = i10;
                    r13 = r15;
                    z6 = false;
                    i11 = 1048575;
                    break;
                case 30:
                    List list6 = (List) unsafe.getObject(obj, j6);
                    int i31 = zzgo.zza;
                    size = list6.size();
                    if (size == 0) {
                        Zzh = z6;
                    } else {
                        iZzx3 = zzgo.zza(list6);
                        iZzx7 = zzee.zzx(i15 << 3);
                        iZzy = size * iZzx7;
                        Zzh = iZzx3 + iZzy;
                    }
                    i13 += Zzh;
                    i12 += 3;
                    i14 = i10;
                    r13 = r15;
                    z6 = false;
                    i11 = 1048575;
                    break;
                case 31:
                    Zzh = zzgo.zzb(i15, (List) unsafe.getObject(obj, j6), z6);
                    i13 += Zzh;
                    i12 += 3;
                    i14 = i10;
                    r13 = r15;
                    z6 = false;
                    i11 = 1048575;
                    break;
                case 32:
                    Zzh = zzgo.zzd(i15, (List) unsafe.getObject(obj, j6), z6);
                    i13 += Zzh;
                    i12 += 3;
                    i14 = i10;
                    r13 = r15;
                    z6 = false;
                    i11 = 1048575;
                    break;
                case 33:
                    List list7 = (List) unsafe.getObject(obj, j6);
                    int i32 = zzgo.zza;
                    size = list7.size();
                    if (size == 0) {
                        Zzh = z6;
                    } else {
                        iZzx3 = zzgo.zzi(list7);
                        iZzx7 = zzee.zzx(i15 << 3);
                        iZzy = size * iZzx7;
                        Zzh = iZzx3 + iZzy;
                    }
                    i13 += Zzh;
                    i12 += 3;
                    i14 = i10;
                    r13 = r15;
                    z6 = false;
                    i11 = 1048575;
                    break;
                case 34:
                    List list8 = (List) unsafe.getObject(obj, j6);
                    int i33 = zzgo.zza;
                    size = list8.size();
                    if (size == 0) {
                        Zzh = z6;
                    } else {
                        iZzx3 = zzgo.zzj(list8);
                        iZzx7 = zzee.zzx(i15 << 3);
                        iZzy = size * iZzx7;
                        Zzh = iZzx3 + iZzy;
                    }
                    i13 += Zzh;
                    i12 += 3;
                    i14 = i10;
                    r13 = r15;
                    z6 = false;
                    i11 = 1048575;
                    break;
                case 35:
                    iZze = zzgo.zze((List) unsafe.getObject(obj, j6));
                    if (iZze > 0) {
                        iZzx8 = zzee.zzx(iZze);
                        iZzx9 = zzee.zzx(i15 << 3);
                        Zzx = iZzx9 + iZzx8 + iZze;
                        i13 += Zzx;
                    }
                    i12 += 3;
                    i14 = i10;
                    r13 = r15;
                    z6 = false;
                    i11 = 1048575;
                    break;
                case 36:
                    iZze = zzgo.zzc((List) unsafe.getObject(obj, j6));
                    if (iZze > 0) {
                        iZzx8 = zzee.zzx(iZze);
                        iZzx9 = zzee.zzx(i15 << 3);
                        Zzx = iZzx9 + iZzx8 + iZze;
                        i13 += Zzx;
                    }
                    i12 += 3;
                    i14 = i10;
                    r13 = r15;
                    z6 = false;
                    i11 = 1048575;
                    break;
                case 37:
                    iZze = zzgo.zzg((List) unsafe.getObject(obj, j6));
                    if (iZze > 0) {
                        iZzx8 = zzee.zzx(iZze);
                        iZzx9 = zzee.zzx(i15 << 3);
                        Zzx = iZzx9 + iZzx8 + iZze;
                        i13 += Zzx;
                    }
                    i12 += 3;
                    i14 = i10;
                    r13 = r15;
                    z6 = false;
                    i11 = 1048575;
                    break;
                case 38:
                    iZze = zzgo.zzl((List) unsafe.getObject(obj, j6));
                    if (iZze > 0) {
                        iZzx8 = zzee.zzx(iZze);
                        iZzx9 = zzee.zzx(i15 << 3);
                        Zzx = iZzx9 + iZzx8 + iZze;
                        i13 += Zzx;
                    }
                    i12 += 3;
                    i14 = i10;
                    r13 = r15;
                    z6 = false;
                    i11 = 1048575;
                    break;
                case 39:
                    iZze = zzgo.zzf((List) unsafe.getObject(obj, j6));
                    if (iZze > 0) {
                        iZzx8 = zzee.zzx(iZze);
                        iZzx9 = zzee.zzx(i15 << 3);
                        Zzx = iZzx9 + iZzx8 + iZze;
                        i13 += Zzx;
                    }
                    i12 += 3;
                    i14 = i10;
                    r13 = r15;
                    z6 = false;
                    i11 = 1048575;
                    break;
                case 40:
                    iZze = zzgo.zze((List) unsafe.getObject(obj, j6));
                    if (iZze > 0) {
                        iZzx8 = zzee.zzx(iZze);
                        iZzx9 = zzee.zzx(i15 << 3);
                        Zzx = iZzx9 + iZzx8 + iZze;
                        i13 += Zzx;
                    }
                    i12 += 3;
                    i14 = i10;
                    r13 = r15;
                    z6 = false;
                    i11 = 1048575;
                    break;
                case 41:
                    iZze = zzgo.zzc((List) unsafe.getObject(obj, j6));
                    if (iZze > 0) {
                        iZzx8 = zzee.zzx(iZze);
                        iZzx9 = zzee.zzx(i15 << 3);
                        Zzx = iZzx9 + iZzx8 + iZze;
                        i13 += Zzx;
                    }
                    i12 += 3;
                    i14 = i10;
                    r13 = r15;
                    z6 = false;
                    i11 = 1048575;
                    break;
                case 42:
                    List list9 = (List) unsafe.getObject(obj, j6);
                    int i34 = zzgo.zza;
                    iZze = list9.size();
                    if (iZze > 0) {
                        iZzx8 = zzee.zzx(iZze);
                        iZzx9 = zzee.zzx(i15 << 3);
                        Zzx = iZzx9 + iZzx8 + iZze;
                        i13 += Zzx;
                    }
                    i12 += 3;
                    i14 = i10;
                    r13 = r15;
                    z6 = false;
                    i11 = 1048575;
                    break;
                case 43:
                    iZze = zzgo.zzk((List) unsafe.getObject(obj, j6));
                    if (iZze > 0) {
                        iZzx8 = zzee.zzx(iZze);
                        iZzx9 = zzee.zzx(i15 << 3);
                        Zzx = iZzx9 + iZzx8 + iZze;
                        i13 += Zzx;
                    }
                    i12 += 3;
                    i14 = i10;
                    r13 = r15;
                    z6 = false;
                    i11 = 1048575;
                    break;
                case 44:
                    iZze = zzgo.zza((List) unsafe.getObject(obj, j6));
                    if (iZze > 0) {
                        iZzx8 = zzee.zzx(iZze);
                        iZzx9 = zzee.zzx(i15 << 3);
                        Zzx = iZzx9 + iZzx8 + iZze;
                        i13 += Zzx;
                    }
                    i12 += 3;
                    i14 = i10;
                    r13 = r15;
                    z6 = false;
                    i11 = 1048575;
                    break;
                case 45:
                    iZze = zzgo.zzc((List) unsafe.getObject(obj, j6));
                    if (iZze > 0) {
                        iZzx8 = zzee.zzx(iZze);
                        iZzx9 = zzee.zzx(i15 << 3);
                        Zzx = iZzx9 + iZzx8 + iZze;
                        i13 += Zzx;
                    }
                    i12 += 3;
                    i14 = i10;
                    r13 = r15;
                    z6 = false;
                    i11 = 1048575;
                    break;
                case 46:
                    iZze = zzgo.zze((List) unsafe.getObject(obj, j6));
                    if (iZze > 0) {
                        iZzx8 = zzee.zzx(iZze);
                        iZzx9 = zzee.zzx(i15 << 3);
                        Zzx = iZzx9 + iZzx8 + iZze;
                        i13 += Zzx;
                    }
                    i12 += 3;
                    i14 = i10;
                    r13 = r15;
                    z6 = false;
                    i11 = 1048575;
                    break;
                case 47:
                    iZze = zzgo.zzi((List) unsafe.getObject(obj, j6));
                    if (iZze > 0) {
                        iZzx8 = zzee.zzx(iZze);
                        iZzx9 = zzee.zzx(i15 << 3);
                        Zzx = iZzx9 + iZzx8 + iZze;
                        i13 += Zzx;
                    }
                    i12 += 3;
                    i14 = i10;
                    r13 = r15;
                    z6 = false;
                    i11 = 1048575;
                    break;
                case 48:
                    iZze = zzgo.zzj((List) unsafe.getObject(obj, j6));
                    if (iZze > 0) {
                        iZzx8 = zzee.zzx(iZze);
                        iZzx9 = zzee.zzx(i15 << 3);
                        Zzx = iZzx9 + iZzx8 + iZze;
                        i13 += Zzx;
                    }
                    i12 += 3;
                    i14 = i10;
                    r13 = r15;
                    z6 = false;
                    i11 = 1048575;
                    break;
                case 49:
                    ?? r23 = (List) unsafe.getObject(obj, j6);
                    zzgm zzgmVarZzv2 = zzv(i12);
                    int i35 = zzgo.zza;
                    int size6 = r23.size();
                    if (size6 == 0) {
                        r11 = z6;
                    } else {
                        boolean z11 = z6;
                        r11 = z11;
                        while (r12 < size6) {
                            r12 = z11;
                            int iZzt = zzee.zzt(i15, (zzgc) r23.get(r12), zzgmVarZzv2);
                            r12++;
                            r11 = (r11 == true ? 1 : 0) + iZzt;
                        }
                        r12 = z11;
                    }
                    i13 += r11;
                    i12 += 3;
                    i14 = i10;
                    r13 = r15;
                    z6 = false;
                    i11 = 1048575;
                    break;
                case 50:
                    zzfw zzfwVar = (zzfw) unsafe.getObject(obj, j6);
                    if (zzfwVar.isEmpty()) {
                        continue;
                    } else {
                        Iterator it = zzfwVar.entrySet().iterator();
                        if (it.hasNext()) {
                            Map.Entry entry = (Map.Entry) it.next();
                            entry.getKey();
                            entry.getValue();
                            throw null;
                        }
                    }
                    i12 += 3;
                    i14 = i10;
                    r13 = r15;
                    z6 = false;
                    i11 = 1048575;
                case 51:
                    if (zzM(obj, i15, i12)) {
                        iZzx = zzee.zzx(i15 << 3);
                        Zzh = iZzx + 8;
                        i13 += Zzh;
                    }
                    i12 += 3;
                    i14 = i10;
                    r13 = r15;
                    z6 = false;
                    i11 = 1048575;
                    break;
                case 52:
                    if (zzM(obj, i15, i12)) {
                        iZzx2 = zzee.zzx(i15 << 3);
                        Zzh = iZzx2 + 4;
                        i13 += Zzh;
                    }
                    i12 += 3;
                    i14 = i10;
                    r13 = r15;
                    z6 = false;
                    i11 = 1048575;
                    break;
                case 53:
                    if (zzM(obj, i15, i12)) {
                        iZzy = zzee.zzy(zzt(obj, j6));
                        iZzx3 = zzee.zzx(i15 << 3);
                        Zzh = iZzx3 + iZzy;
                        i13 += Zzh;
                    }
                    i12 += 3;
                    i14 = i10;
                    r13 = r15;
                    z6 = false;
                    i11 = 1048575;
                    break;
                case 54:
                    if (zzM(obj, i15, i12)) {
                        iZzy = zzee.zzy(zzt(obj, j6));
                        iZzx3 = zzee.zzx(i15 << 3);
                        Zzh = iZzx3 + iZzy;
                        i13 += Zzh;
                    }
                    i12 += 3;
                    i14 = i10;
                    r13 = r15;
                    z6 = false;
                    i11 = 1048575;
                    break;
                case 55:
                    if (zzM(obj, i15, i12)) {
                        iZzy = zzee.zzu(zzo(obj, j6));
                        iZzx3 = zzee.zzx(i15 << 3);
                        Zzh = iZzx3 + iZzy;
                        i13 += Zzh;
                    }
                    i12 += 3;
                    i14 = i10;
                    r13 = r15;
                    z6 = false;
                    i11 = 1048575;
                    break;
                case 56:
                    if (zzM(obj, i15, i12)) {
                        iZzx = zzee.zzx(i15 << 3);
                        Zzh = iZzx + 8;
                        i13 += Zzh;
                    }
                    i12 += 3;
                    i14 = i10;
                    r13 = r15;
                    z6 = false;
                    i11 = 1048575;
                    break;
                case 57:
                    if (zzM(obj, i15, i12)) {
                        iZzx2 = zzee.zzx(i15 << 3);
                        Zzh = iZzx2 + 4;
                        i13 += Zzh;
                    }
                    i12 += 3;
                    i14 = i10;
                    r13 = r15;
                    z6 = false;
                    i11 = 1048575;
                    break;
                case 58:
                    if (zzM(obj, i15, i12)) {
                        iZzx4 = zzee.zzx(i15 << 3);
                        Zzh = iZzx4 + 1;
                        i13 += Zzh;
                    }
                    i12 += 3;
                    i14 = i10;
                    r13 = r15;
                    z6 = false;
                    i11 = 1048575;
                    break;
                case 59:
                    if (zzM(obj, i15, i12)) {
                        int i36 = i15 << 3;
                        Object object2 = unsafe.getObject(obj, j6);
                        if (object2 instanceof zzdw) {
                            int i37 = zzee.zzb;
                            int iZzd6 = ((zzdw) object2).zzd();
                            iZzx5 = zzee.zzx(iZzd6) + iZzd6;
                            iZzx6 = zzee.zzx(i36);
                            Zzh = iZzx6 + iZzx5;
                            i13 += Zzh;
                        } else {
                            iZzy = zzee.zzw((String) object2);
                            iZzx3 = zzee.zzx(i36);
                            Zzh = iZzx3 + iZzy;
                            i13 += Zzh;
                        }
                    }
                    i12 += 3;
                    i14 = i10;
                    r13 = r15;
                    z6 = false;
                    i11 = 1048575;
                    break;
                case 60:
                    if (zzM(obj, i15, i12)) {
                        Zzh = zzgo.zzh(i15, unsafe.getObject(obj, j6), zzv(i12));
                        i13 += Zzh;
                    }
                    i12 += 3;
                    i14 = i10;
                    r13 = r15;
                    z6 = false;
                    i11 = 1048575;
                    break;
                case 61:
                    if (zzM(obj, i15, i12)) {
                        zzdw zzdwVar2 = (zzdw) unsafe.getObject(obj, j6);
                        int i38 = zzee.zzb;
                        int iZzd7 = zzdwVar2.zzd();
                        iZzx5 = zzee.zzx(iZzd7) + iZzd7;
                        iZzx6 = zzee.zzx(i15 << 3);
                        Zzh = iZzx6 + iZzx5;
                        i13 += Zzh;
                    }
                    i12 += 3;
                    i14 = i10;
                    r13 = r15;
                    z6 = false;
                    i11 = 1048575;
                    break;
                case 62:
                    if (zzM(obj, i15, i12)) {
                        iZzy = zzee.zzx(zzo(obj, j6));
                        iZzx3 = zzee.zzx(i15 << 3);
                        Zzh = iZzx3 + iZzy;
                        i13 += Zzh;
                    }
                    i12 += 3;
                    i14 = i10;
                    r13 = r15;
                    z6 = false;
                    i11 = 1048575;
                    break;
                case 63:
                    if (zzM(obj, i15, i12)) {
                        iZzy = zzee.zzu(zzo(obj, j6));
                        iZzx3 = zzee.zzx(i15 << 3);
                        Zzh = iZzx3 + iZzy;
                        i13 += Zzh;
                    }
                    i12 += 3;
                    i14 = i10;
                    r13 = r15;
                    z6 = false;
                    i11 = 1048575;
                    break;
                case 64:
                    if (zzM(obj, i15, i12)) {
                        iZzx2 = zzee.zzx(i15 << 3);
                        Zzh = iZzx2 + 4;
                        i13 += Zzh;
                    }
                    i12 += 3;
                    i14 = i10;
                    r13 = r15;
                    z6 = false;
                    i11 = 1048575;
                    break;
                case 65:
                    if (zzM(obj, i15, i12)) {
                        iZzx = zzee.zzx(i15 << 3);
                        Zzh = iZzx + 8;
                        i13 += Zzh;
                    }
                    i12 += 3;
                    i14 = i10;
                    r13 = r15;
                    z6 = false;
                    i11 = 1048575;
                    break;
                case 66:
                    if (zzM(obj, i15, i12)) {
                        int iZzo = zzo(obj, j6);
                        iZzx3 = zzee.zzx(i15 << 3);
                        iZzy = zzee.zzx((iZzo >> 31) ^ (iZzo + iZzo));
                        Zzh = iZzx3 + iZzy;
                        i13 += Zzh;
                    }
                    i12 += 3;
                    i14 = i10;
                    r13 = r15;
                    z6 = false;
                    i11 = 1048575;
                    break;
                case 67:
                    if (zzM(obj, i15, i12)) {
                        long jZzt = zzt(obj, j6);
                        iZzx3 = zzee.zzx(i15 << 3);
                        iZzy = zzee.zzy((jZzt >> 63) ^ (jZzt + jZzt));
                        Zzh = iZzx3 + iZzy;
                        i13 += Zzh;
                    }
                    i12 += 3;
                    i14 = i10;
                    r13 = r15;
                    z6 = false;
                    i11 = 1048575;
                    break;
                case 68:
                    if (zzM(obj, i15, i12)) {
                        Zzh = zzee.zzt(i15, (zzgc) unsafe.getObject(obj, j6), zzv(i12));
                        i13 += Zzh;
                    }
                    i12 += 3;
                    i14 = i10;
                    r13 = r15;
                    z6 = false;
                    i11 = 1048575;
                    break;
                default:
                    i12 += 3;
                    i14 = i10;
                    r13 = r15;
                    z6 = false;
                    i11 = 1048575;
                    break;
            }
        }
        zzhd zzhdVar = this.zzm;
        int iZza2 = i13 + zzhdVar.zza(zzhdVar.zzd(obj));
        if (!this.zzh) {
            return iZza2;
        }
        this.zzn.zza(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.play_billing.zzgm
    public final Object zze() {
        return ((zzex) this.zzg).zzi();
    }

    @Override // com.google.android.gms.internal.play_billing.zzgm
    public final void zzi(Object obj, zzhv zzhvVar) throws IOException {
        int i10;
        int i11;
        int i12;
        if (this.zzh) {
            this.zzn.zza(obj);
            throw null;
        }
        int[] iArr = this.zzc;
        Unsafe unsafe = zzb;
        int i13 = 1048575;
        int i14 = 1048575;
        int i15 = 0;
        int i16 = 0;
        while (i16 < iArr.length) {
            int iZzs = zzs(i16);
            int[] iArr2 = this.zzc;
            int iZzr = zzr(iZzs);
            int i17 = iArr2[i16];
            if (iZzr <= 17) {
                int i18 = iArr2[i16 + 2];
                int i19 = i18 & i13;
                if (i19 != i14) {
                    i15 = i19 == i13 ? 0 : unsafe.getInt(obj, i19);
                    i14 = i19;
                }
                i10 = i14;
                i11 = i15;
                i12 = 1 << (i18 >>> 20);
            } else {
                i10 = i14;
                i11 = i15;
                i12 = 0;
            }
            long j6 = iZzs & i13;
            switch (iZzr) {
                case 0:
                    if (zzJ(obj, i16, i10, i11, i12)) {
                        zzhvVar.zzf(i17, zzhn.zza(obj, j6));
                    }
                    break;
                case 1:
                    if (zzJ(obj, i16, i10, i11, i12)) {
                        zzhvVar.zzo(i17, zzhn.zzb(obj, j6));
                    }
                    break;
                case 2:
                    if (zzJ(obj, i16, i10, i11, i12)) {
                        zzhvVar.zzt(i17, unsafe.getLong(obj, j6));
                    }
                    break;
                case 3:
                    if (zzJ(obj, i16, i10, i11, i12)) {
                        zzhvVar.zzJ(i17, unsafe.getLong(obj, j6));
                    }
                    break;
                case 4:
                    if (zzJ(obj, i16, i10, i11, i12)) {
                        zzhvVar.zzr(i17, unsafe.getInt(obj, j6));
                    }
                    break;
                case 5:
                    if (zzJ(obj, i16, i10, i11, i12)) {
                        zzhvVar.zzm(i17, unsafe.getLong(obj, j6));
                    }
                    break;
                case 6:
                    if (zzJ(obj, i16, i10, i11, i12)) {
                        zzhvVar.zzk(i17, unsafe.getInt(obj, j6));
                    }
                    break;
                case 7:
                    if (zzJ(obj, i16, i10, i11, i12)) {
                        zzhvVar.zzb(i17, zzhn.zzw(obj, j6));
                    }
                    break;
                case 8:
                    if (zzJ(obj, i16, i10, i11, i12)) {
                        zzO(i17, unsafe.getObject(obj, j6), zzhvVar);
                    }
                    break;
                case 9:
                    if (zzJ(obj, i16, i10, i11, i12)) {
                        zzhvVar.zzv(i17, unsafe.getObject(obj, j6), zzv(i16));
                    }
                    break;
                case 10:
                    if (zzJ(obj, i16, i10, i11, i12)) {
                        zzhvVar.zzd(i17, (zzdw) unsafe.getObject(obj, j6));
                    }
                    break;
                case 11:
                    if (zzJ(obj, i16, i10, i11, i12)) {
                        zzhvVar.zzH(i17, unsafe.getInt(obj, j6));
                    }
                    break;
                case 12:
                    if (zzJ(obj, i16, i10, i11, i12)) {
                        zzhvVar.zzi(i17, unsafe.getInt(obj, j6));
                    }
                    break;
                case 13:
                    if (zzJ(obj, i16, i10, i11, i12)) {
                        zzhvVar.zzw(i17, unsafe.getInt(obj, j6));
                    }
                    break;
                case 14:
                    if (zzJ(obj, i16, i10, i11, i12)) {
                        zzhvVar.zzy(i17, unsafe.getLong(obj, j6));
                    }
                    break;
                case 15:
                    if (zzJ(obj, i16, i10, i11, i12)) {
                        zzhvVar.zzA(i17, unsafe.getInt(obj, j6));
                    }
                    break;
                case 16:
                    if (zzJ(obj, i16, i10, i11, i12)) {
                        zzhvVar.zzC(i17, unsafe.getLong(obj, j6));
                    }
                    break;
                case 17:
                    if (zzJ(obj, i16, i10, i11, i12)) {
                        zzhvVar.zzq(i17, unsafe.getObject(obj, j6), zzv(i16));
                    }
                    break;
                case 18:
                    zzgo.zzs(this.zzc[i16], (List) unsafe.getObject(obj, j6), zzhvVar, false);
                    break;
                case 19:
                    zzgo.zzw(this.zzc[i16], (List) unsafe.getObject(obj, j6), zzhvVar, false);
                    break;
                case 20:
                    zzgo.zzy(this.zzc[i16], (List) unsafe.getObject(obj, j6), zzhvVar, false);
                    break;
                case 21:
                    zzgo.zzE(this.zzc[i16], (List) unsafe.getObject(obj, j6), zzhvVar, false);
                    break;
                case 22:
                    zzgo.zzx(this.zzc[i16], (List) unsafe.getObject(obj, j6), zzhvVar, false);
                    break;
                case 23:
                    zzgo.zzv(this.zzc[i16], (List) unsafe.getObject(obj, j6), zzhvVar, false);
                    break;
                case 24:
                    zzgo.zzu(this.zzc[i16], (List) unsafe.getObject(obj, j6), zzhvVar, false);
                    break;
                case 25:
                    zzgo.zzr(this.zzc[i16], (List) unsafe.getObject(obj, j6), zzhvVar, false);
                    break;
                case 26:
                    int i20 = this.zzc[i16];
                    List list = (List) unsafe.getObject(obj, j6);
                    int i21 = zzgo.zza;
                    if (list != null && !list.isEmpty()) {
                        zzhvVar.zzG(i20, list);
                    }
                    break;
                case 27:
                    int i22 = this.zzc[i16];
                    List list2 = (List) unsafe.getObject(obj, j6);
                    zzgm zzgmVarZzv = zzv(i16);
                    int i23 = zzgo.zza;
                    if (list2 != null && !list2.isEmpty()) {
                        for (int i24 = 0; i24 < list2.size(); i24++) {
                            ((zzef) zzhvVar).zzv(i22, list2.get(i24), zzgmVarZzv);
                        }
                    }
                    break;
                case 28:
                    int i25 = this.zzc[i16];
                    List list3 = (List) unsafe.getObject(obj, j6);
                    int i26 = zzgo.zza;
                    if (list3 != null && !list3.isEmpty()) {
                        zzhvVar.zze(i25, list3);
                    }
                    break;
                case 29:
                    zzgo.zzD(this.zzc[i16], (List) unsafe.getObject(obj, j6), zzhvVar, false);
                    break;
                case 30:
                    zzgo.zzt(this.zzc[i16], (List) unsafe.getObject(obj, j6), zzhvVar, false);
                    break;
                case 31:
                    zzgo.zzz(this.zzc[i16], (List) unsafe.getObject(obj, j6), zzhvVar, false);
                    break;
                case 32:
                    zzgo.zzA(this.zzc[i16], (List) unsafe.getObject(obj, j6), zzhvVar, false);
                    break;
                case 33:
                    zzgo.zzB(this.zzc[i16], (List) unsafe.getObject(obj, j6), zzhvVar, false);
                    break;
                case 34:
                    zzgo.zzC(this.zzc[i16], (List) unsafe.getObject(obj, j6), zzhvVar, false);
                    break;
                case 35:
                    zzgo.zzs(this.zzc[i16], (List) unsafe.getObject(obj, j6), zzhvVar, true);
                    break;
                case 36:
                    zzgo.zzw(this.zzc[i16], (List) unsafe.getObject(obj, j6), zzhvVar, true);
                    break;
                case 37:
                    zzgo.zzy(this.zzc[i16], (List) unsafe.getObject(obj, j6), zzhvVar, true);
                    break;
                case 38:
                    zzgo.zzE(this.zzc[i16], (List) unsafe.getObject(obj, j6), zzhvVar, true);
                    break;
                case 39:
                    zzgo.zzx(this.zzc[i16], (List) unsafe.getObject(obj, j6), zzhvVar, true);
                    break;
                case 40:
                    zzgo.zzv(this.zzc[i16], (List) unsafe.getObject(obj, j6), zzhvVar, true);
                    break;
                case 41:
                    zzgo.zzu(this.zzc[i16], (List) unsafe.getObject(obj, j6), zzhvVar, true);
                    break;
                case 42:
                    zzgo.zzr(this.zzc[i16], (List) unsafe.getObject(obj, j6), zzhvVar, true);
                    break;
                case 43:
                    zzgo.zzD(this.zzc[i16], (List) unsafe.getObject(obj, j6), zzhvVar, true);
                    break;
                case 44:
                    zzgo.zzt(this.zzc[i16], (List) unsafe.getObject(obj, j6), zzhvVar, true);
                    break;
                case 45:
                    zzgo.zzz(this.zzc[i16], (List) unsafe.getObject(obj, j6), zzhvVar, true);
                    break;
                case 46:
                    zzgo.zzA(this.zzc[i16], (List) unsafe.getObject(obj, j6), zzhvVar, true);
                    break;
                case 47:
                    zzgo.zzB(this.zzc[i16], (List) unsafe.getObject(obj, j6), zzhvVar, true);
                    break;
                case 48:
                    zzgo.zzC(this.zzc[i16], (List) unsafe.getObject(obj, j6), zzhvVar, true);
                    break;
                case 49:
                    int i27 = this.zzc[i16];
                    List list4 = (List) unsafe.getObject(obj, j6);
                    zzgm zzgmVarZzv2 = zzv(i16);
                    int i28 = zzgo.zza;
                    if (list4 != null && !list4.isEmpty()) {
                        for (int i29 = 0; i29 < list4.size(); i29++) {
                            ((zzef) zzhvVar).zzq(i27, list4.get(i29), zzgmVarZzv2);
                        }
                    }
                    break;
                case 50:
                    if (unsafe.getObject(obj, j6) != null) {
                        throw null;
                    }
                    break;
                    break;
                case 51:
                    if (zzM(obj, i17, i16)) {
                        zzhvVar.zzf(i17, zzm(obj, j6));
                    }
                    break;
                case 52:
                    if (zzM(obj, i17, i16)) {
                        zzhvVar.zzo(i17, zzn(obj, j6));
                    }
                    break;
                case 53:
                    if (zzM(obj, i17, i16)) {
                        zzhvVar.zzt(i17, zzt(obj, j6));
                    }
                    break;
                case 54:
                    if (zzM(obj, i17, i16)) {
                        zzhvVar.zzJ(i17, zzt(obj, j6));
                    }
                    break;
                case 55:
                    if (zzM(obj, i17, i16)) {
                        zzhvVar.zzr(i17, zzo(obj, j6));
                    }
                    break;
                case 56:
                    if (zzM(obj, i17, i16)) {
                        zzhvVar.zzm(i17, zzt(obj, j6));
                    }
                    break;
                case 57:
                    if (zzM(obj, i17, i16)) {
                        zzhvVar.zzk(i17, zzo(obj, j6));
                    }
                    break;
                case 58:
                    if (zzM(obj, i17, i16)) {
                        zzhvVar.zzb(i17, zzN(obj, j6));
                    }
                    break;
                case 59:
                    if (zzM(obj, i17, i16)) {
                        zzO(i17, unsafe.getObject(obj, j6), zzhvVar);
                    }
                    break;
                case 60:
                    if (zzM(obj, i17, i16)) {
                        zzhvVar.zzv(i17, unsafe.getObject(obj, j6), zzv(i16));
                    }
                    break;
                case 61:
                    if (zzM(obj, i17, i16)) {
                        zzhvVar.zzd(i17, (zzdw) unsafe.getObject(obj, j6));
                    }
                    break;
                case 62:
                    if (zzM(obj, i17, i16)) {
                        zzhvVar.zzH(i17, zzo(obj, j6));
                    }
                    break;
                case 63:
                    if (zzM(obj, i17, i16)) {
                        zzhvVar.zzi(i17, zzo(obj, j6));
                    }
                    break;
                case 64:
                    if (zzM(obj, i17, i16)) {
                        zzhvVar.zzw(i17, zzo(obj, j6));
                    }
                    break;
                case 65:
                    if (zzM(obj, i17, i16)) {
                        zzhvVar.zzy(i17, zzt(obj, j6));
                    }
                    break;
                case 66:
                    if (zzM(obj, i17, i16)) {
                        zzhvVar.zzA(i17, zzo(obj, j6));
                    }
                    break;
                case 67:
                    if (zzM(obj, i17, i16)) {
                        zzhvVar.zzC(i17, zzt(obj, j6));
                    }
                    break;
                case 68:
                    if (zzM(obj, i17, i16)) {
                        zzhvVar.zzq(i17, unsafe.getObject(obj, j6), zzv(i16));
                    }
                    break;
            }
            i16 += 3;
            i14 = i10;
            i15 = i11;
            i13 = 1048575;
        }
        zzhd zzhdVar = this.zzm;
        zzhdVar.zzi(zzhdVar.zzd(obj), zzhvVar);
    }

    /* JADX WARN: Code duplicated, block: B:42:0x009e  */
    /* JADX WARN: Code duplicated, block: B:44:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:47:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:50:0x00c3 A[LOOP:1: B:45:0x00b2->B:50:0x00c3, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:66:0x00c2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:70:0x00e1 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.play_billing.zzgm
    public final boolean zzk(Object obj) {
        int i10;
        int i11;
        List list;
        zzgm zzgmVarZzv;
        int i12;
        int i13 = 0;
        int i14 = 0;
        int i15 = 1048575;
        while (i14 < this.zzj) {
            int[] iArr = this.zzi;
            int[] iArr2 = this.zzc;
            int i16 = iArr[i14];
            int i17 = iArr2[i16];
            int iZzs = zzs(i16);
            int i18 = this.zzc[i16 + 2];
            int i19 = i18 & 1048575;
            int i20 = 1 << (i18 >>> 20);
            if (i19 != i15) {
                if (i19 != 1048575) {
                    i13 = zzb.getInt(obj, i19);
                }
                i11 = i13;
                i10 = i19;
            } else {
                i10 = i15;
                i11 = i13;
            }
            if ((268435456 & iZzs) != 0 && !zzJ(obj, i16, i10, i11, i20)) {
                return false;
            }
            int iZzr = zzr(iZzs);
            if (iZzr == 9 || iZzr == 17) {
                if (zzJ(obj, i16, i10, i11, i20) && !zzK(obj, iZzs, zzv(i16))) {
                    return false;
                }
            } else if (iZzr == 27) {
                list = (List) zzhn.zzf(obj, iZzs & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    zzgmVarZzv = zzv(i16);
                    for (i12 = 0; i12 < list.size(); i12++) {
                        if (!zzgmVarZzv.zzk(list.get(i12))) {
                            return false;
                        }
                    }
                }
            } else if (iZzr == 60 || iZzr == 68) {
                if (zzM(obj, i17, i16) && !zzK(obj, iZzs, zzv(i16))) {
                    return false;
                }
            } else if (iZzr == 49) {
                list = (List) zzhn.zzf(obj, iZzs & 1048575);
                if (list.isEmpty()) {
                    zzgmVarZzv = zzv(i16);
                    while (i12 < list.size()) {
                        if (!zzgmVarZzv.zzk(list.get(i12))) {
                            return false;
                        }
                    }
                } else {
                    continue;
                }
            } else if (iZzr == 50 && !((zzfw) zzhn.zzf(obj, iZzs & 1048575)).isEmpty()) {
                throw null;
            }
            i14++;
            i15 = i10;
            i13 = i11;
        }
        if (!this.zzh) {
            return true;
        }
        this.zzn.zza(obj);
        throw null;
    }

    private static void zzA(Object obj) {
        if (zzL(obj)) {
        } else {
            throw new IllegalArgumentException("Mutating immutable message: ".concat(String.valueOf(obj)));
        }
    }

    private final void zzB(Object obj, Object obj2, int i10) {
        if (!zzI(obj2, i10)) {
            return;
        }
        int iZzs = zzs(i10) & 1048575;
        Unsafe unsafe = zzb;
        long j6 = iZzs;
        Object object = unsafe.getObject(obj2, j6);
        if (object != null) {
            zzgm zzgmVarZzv = zzv(i10);
            if (!zzI(obj, i10)) {
                if (!zzL(object)) {
                    unsafe.putObject(obj, j6, object);
                } else {
                    Object objZze = zzgmVarZzv.zze();
                    zzgmVarZzv.zzg(objZze, object);
                    unsafe.putObject(obj, j6, objZze);
                }
                zzD(obj, i10);
                return;
            }
            Object object2 = unsafe.getObject(obj, j6);
            if (!zzL(object2)) {
                Object objZze2 = zzgmVarZzv.zze();
                zzgmVarZzv.zzg(objZze2, object2);
                unsafe.putObject(obj, j6, objZze2);
                object2 = objZze2;
            }
            zzgmVarZzv.zzg(object2, object);
            return;
        }
        throw new IllegalStateException("Source subfield " + this.zzc[i10] + " is present but null: " + obj2.toString());
    }

    private final void zzD(Object obj, int i10) {
        int iZzp = zzp(i10);
        long j6 = 1048575 & iZzp;
        if (j6 == 1048575) {
            return;
        }
        zzhn.zzq(obj, j6, (1 << (iZzp >>> 20)) | zzhn.zzc(obj, j6));
    }

    private final void zzE(Object obj, int i10, int i11) {
        zzhn.zzq(obj, zzp(i11) & 1048575, i10);
    }

    private final boolean zzH(Object obj, Object obj2, int i10) {
        if (zzI(obj, i10) == zzI(obj2, i10)) {
            return true;
        }
        return false;
    }

    private final boolean zzI(Object obj, int i10) {
        int iZzp = zzp(i10);
        long j6 = iZzp & 1048575;
        if (j6 == 1048575) {
            int iZzs = zzs(i10);
            long j10 = iZzs & 1048575;
            switch (zzr(iZzs)) {
                case 0:
                    if (Double.doubleToRawLongBits(zzhn.zza(obj, j10)) == 0) {
                        return false;
                    }
                    return true;
                case 1:
                    if (Float.floatToRawIntBits(zzhn.zzb(obj, j10)) == 0) {
                        return false;
                    }
                    return true;
                case 2:
                    if (zzhn.zzd(obj, j10) == 0) {
                        return false;
                    }
                    return true;
                case 3:
                    if (zzhn.zzd(obj, j10) == 0) {
                        return false;
                    }
                    return true;
                case 4:
                    if (zzhn.zzc(obj, j10) == 0) {
                        return false;
                    }
                    return true;
                case 5:
                    if (zzhn.zzd(obj, j10) == 0) {
                        return false;
                    }
                    return true;
                case 6:
                    if (zzhn.zzc(obj, j10) == 0) {
                        return false;
                    }
                    return true;
                case 7:
                    return zzhn.zzw(obj, j10);
                case 8:
                    Object objZzf = zzhn.zzf(obj, j10);
                    if (objZzf instanceof String) {
                        if (((String) objZzf).isEmpty()) {
                            return false;
                        }
                        return true;
                    }
                    if (objZzf instanceof zzdw) {
                        if (zzdw.zzb.equals(objZzf)) {
                            return false;
                        }
                        return true;
                    }
                    throw new IllegalArgumentException();
                case 9:
                    if (zzhn.zzf(obj, j10) == null) {
                        return false;
                    }
                    return true;
                case 10:
                    if (zzdw.zzb.equals(zzhn.zzf(obj, j10))) {
                        return false;
                    }
                    return true;
                case 11:
                    if (zzhn.zzc(obj, j10) == 0) {
                        return false;
                    }
                    return true;
                case 12:
                    if (zzhn.zzc(obj, j10) == 0) {
                        return false;
                    }
                    return true;
                case 13:
                    if (zzhn.zzc(obj, j10) == 0) {
                        return false;
                    }
                    return true;
                case 14:
                    if (zzhn.zzd(obj, j10) == 0) {
                        return false;
                    }
                    return true;
                case 15:
                    if (zzhn.zzc(obj, j10) == 0) {
                        return false;
                    }
                    return true;
                case 16:
                    if (zzhn.zzd(obj, j10) == 0) {
                        return false;
                    }
                    return true;
                case 17:
                    if (zzhn.zzf(obj, j10) == null) {
                        return false;
                    }
                    return true;
                default:
                    throw new IllegalArgumentException();
            }
        }
        if ((zzhn.zzc(obj, j6) & (1 << (iZzp >>> 20))) == 0) {
            return false;
        }
        return true;
    }

    private final boolean zzJ(Object obj, int i10, int i11, int i12, int i13) {
        if (i11 == 1048575) {
            return zzI(obj, i10);
        }
        if ((i12 & i13) != 0) {
            return true;
        }
        return false;
    }

    private static boolean zzK(Object obj, int i10, zzgm zzgmVar) {
        return zzgmVar.zzk(zzhn.zzf(obj, i10 & 1048575));
    }

    private final boolean zzM(Object obj, int i10, int i11) {
        if (zzhn.zzc(obj, zzp(i11) & 1048575) == i10) {
            return true;
        }
        return false;
    }

    private static boolean zzN(Object obj, long j6) {
        return ((Boolean) zzhn.zzf(obj, j6)).booleanValue();
    }

    private static double zzm(Object obj, long j6) {
        return ((Double) zzhn.zzf(obj, j6)).doubleValue();
    }

    private static float zzn(Object obj, long j6) {
        return ((Float) zzhn.zzf(obj, j6)).floatValue();
    }

    private static int zzo(Object obj, long j6) {
        return ((Integer) zzhn.zzf(obj, j6)).intValue();
    }

    private static long zzt(Object obj, long j6) {
        return ((Long) zzhn.zzf(obj, j6)).longValue();
    }

    private final Object zzx(Object obj, int i10) {
        zzgm zzgmVarZzv = zzv(i10);
        int iZzs = zzs(i10) & 1048575;
        if (!zzI(obj, i10)) {
            return zzgmVarZzv.zze();
        }
        Object object = zzb.getObject(obj, iZzs);
        if (zzL(object)) {
            return object;
        }
        Object objZze = zzgmVarZzv.zze();
        if (object != null) {
            zzgmVarZzv.zzg(objZze, object);
        }
        return objZze;
    }

    private final Object zzy(Object obj, int i10, int i11) {
        zzgm zzgmVarZzv = zzv(i11);
        if (!zzM(obj, i10, i11)) {
            return zzgmVarZzv.zze();
        }
        Object object = zzb.getObject(obj, zzs(i11) & 1048575);
        if (zzL(object)) {
            return object;
        }
        Object objZze = zzgmVarZzv.zze();
        if (object != null) {
            zzgmVarZzv.zzg(objZze, object);
        }
        return objZze;
    }

    private static Field zzz(Class cls, String str) {
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

    /* JADX WARN: Code duplicated, block: B:26:0x006d  */
    /* JADX WARN: Code duplicated, block: B:28:0x0073  */
    /* JADX WARN: Code duplicated, block: B:41:0x0080 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.play_billing.zzgm
    public final void zzf(Object obj) {
        if (zzL(obj)) {
            if (obj instanceof zzex) {
                zzex zzexVar = (zzex) obj;
                zzexVar.zzq(Integer.MAX_VALUE);
                zzexVar.zza = 0;
                zzexVar.zzo();
            }
            int[] iArr = this.zzc;
            for (int i10 = 0; i10 < iArr.length; i10 += 3) {
                int iZzs = zzs(i10);
                int i11 = 1048575 & iZzs;
                int iZzr = zzr(iZzs);
                long j6 = i11;
                if (iZzr != 9) {
                    if (iZzr == 60 || iZzr == 68) {
                        if (zzM(obj, this.zzc[i10], i10)) {
                            zzv(i10).zzf(zzb.getObject(obj, j6));
                        }
                    } else {
                        switch (iZzr) {
                            case 17:
                                if (zzI(obj, i10)) {
                                    zzv(i10).zzf(zzb.getObject(obj, j6));
                                }
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
                                this.zzl.zza(obj, j6);
                                break;
                            case 50:
                                Unsafe unsafe = zzb;
                                Object object = unsafe.getObject(obj, j6);
                                if (object != null) {
                                    ((zzfw) object).zzc();
                                    unsafe.putObject(obj, j6, object);
                                }
                                break;
                        }
                    }
                } else if (zzI(obj, i10)) {
                    zzv(i10).zzf(zzb.getObject(obj, j6));
                }
            }
            this.zzm.zzg(obj);
            if (this.zzh) {
                this.zzn.zzb(obj);
            }
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzgm
    public final void zzg(Object obj, Object obj2) {
        zzA(obj);
        obj2.getClass();
        for (int i10 = 0; i10 < this.zzc.length; i10 += 3) {
            int iZzs = zzs(i10);
            int i11 = 1048575 & iZzs;
            int[] iArr = this.zzc;
            int iZzr = zzr(iZzs);
            int i12 = iArr[i10];
            long j6 = i11;
            switch (iZzr) {
                case 0:
                    if (zzI(obj2, i10)) {
                        zzhn.zzo(obj, j6, zzhn.zza(obj2, j6));
                        zzD(obj, i10);
                    }
                    break;
                case 1:
                    if (zzI(obj2, i10)) {
                        zzhn.zzp(obj, j6, zzhn.zzb(obj2, j6));
                        zzD(obj, i10);
                    }
                    break;
                case 2:
                    if (zzI(obj2, i10)) {
                        zzhn.zzr(obj, j6, zzhn.zzd(obj2, j6));
                        zzD(obj, i10);
                    }
                    break;
                case 3:
                    if (zzI(obj2, i10)) {
                        zzhn.zzr(obj, j6, zzhn.zzd(obj2, j6));
                        zzD(obj, i10);
                    }
                    break;
                case 4:
                    if (zzI(obj2, i10)) {
                        zzhn.zzq(obj, j6, zzhn.zzc(obj2, j6));
                        zzD(obj, i10);
                    }
                    break;
                case 5:
                    if (zzI(obj2, i10)) {
                        zzhn.zzr(obj, j6, zzhn.zzd(obj2, j6));
                        zzD(obj, i10);
                    }
                    break;
                case 6:
                    if (zzI(obj2, i10)) {
                        zzhn.zzq(obj, j6, zzhn.zzc(obj2, j6));
                        zzD(obj, i10);
                    }
                    break;
                case 7:
                    if (zzI(obj2, i10)) {
                        zzhn.zzm(obj, j6, zzhn.zzw(obj2, j6));
                        zzD(obj, i10);
                    }
                    break;
                case 8:
                    if (zzI(obj2, i10)) {
                        zzhn.zzs(obj, j6, zzhn.zzf(obj2, j6));
                        zzD(obj, i10);
                    }
                    break;
                case 9:
                    zzB(obj, obj2, i10);
                    break;
                case 10:
                    if (zzI(obj2, i10)) {
                        zzhn.zzs(obj, j6, zzhn.zzf(obj2, j6));
                        zzD(obj, i10);
                    }
                    break;
                case 11:
                    if (zzI(obj2, i10)) {
                        zzhn.zzq(obj, j6, zzhn.zzc(obj2, j6));
                        zzD(obj, i10);
                    }
                    break;
                case 12:
                    if (zzI(obj2, i10)) {
                        zzhn.zzq(obj, j6, zzhn.zzc(obj2, j6));
                        zzD(obj, i10);
                    }
                    break;
                case 13:
                    if (zzI(obj2, i10)) {
                        zzhn.zzq(obj, j6, zzhn.zzc(obj2, j6));
                        zzD(obj, i10);
                    }
                    break;
                case 14:
                    if (zzI(obj2, i10)) {
                        zzhn.zzr(obj, j6, zzhn.zzd(obj2, j6));
                        zzD(obj, i10);
                    }
                    break;
                case 15:
                    if (zzI(obj2, i10)) {
                        zzhn.zzq(obj, j6, zzhn.zzc(obj2, j6));
                        zzD(obj, i10);
                    }
                    break;
                case 16:
                    if (zzI(obj2, i10)) {
                        zzhn.zzr(obj, j6, zzhn.zzd(obj2, j6));
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
                    int i13 = zzgo.zza;
                    zzhn.zzs(obj, j6, zzfx.zza(zzhn.zzf(obj, j6), zzhn.zzf(obj2, j6)));
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
                    if (zzM(obj2, i12, i10)) {
                        zzhn.zzs(obj, j6, zzhn.zzf(obj2, j6));
                        zzE(obj, i12, i10);
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
                    if (zzM(obj2, i12, i10)) {
                        zzhn.zzs(obj, j6, zzhn.zzf(obj2, j6));
                        zzE(obj, i12, i10);
                    }
                    break;
                case 68:
                    zzC(obj, obj2, i10);
                    break;
            }
        }
        zzgo.zzp(this.zzm, obj, obj2);
        if (!this.zzh) {
            return;
        }
        this.zzn.zza(obj2);
        throw null;
    }
}
