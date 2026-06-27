package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
final class zzog {
    public int height;
    public int number;
    public int type;
    public int width;
    public int zzafu;
    public int zzafv;
    public int zzamf;
    public String zzaor;
    public boolean zzaos;
    public byte[] zzaov;
    public long zzaow;
    public long zzaox;
    public zzne zzatr;
    public int zzatu;
    public byte[] zzatv;
    private String zzauc;
    public int zzbbh;
    public byte[] zzbbi;
    public zznx zzbbj;
    public int zzbbk;
    public int zzbbl;
    public int zzbbm;
    public boolean zzbbn;
    public int zzbbo;
    public int zzbbp;
    public int zzbbq;
    public int zzbbr;
    public int zzbbs;
    public float zzbbt;
    public float zzbbu;
    public float zzbbv;
    public float zzbbw;
    public float zzbbx;
    public float zzbby;
    public float zzbbz;
    public float zzbca;
    public float zzbcb;
    public float zzbcc;
    public int zzbcd;
    public boolean zzbce;
    public boolean zzbcf;
    public zznw zzbcg;

    private zzog() {
        this.width = -1;
        this.height = -1;
        this.zzbbk = -1;
        this.zzbbl = -1;
        this.zzbbm = 0;
        this.zzatv = null;
        this.zzatu = -1;
        this.zzbbn = false;
        this.zzbbo = -1;
        this.zzbbp = -1;
        this.zzbbq = -1;
        this.zzbbr = 1000;
        this.zzbbs = 200;
        this.zzbbt = -1.0f;
        this.zzbbu = -1.0f;
        this.zzbbv = -1.0f;
        this.zzbbw = -1.0f;
        this.zzbbx = -1.0f;
        this.zzbby = -1.0f;
        this.zzbbz = -1.0f;
        this.zzbca = -1.0f;
        this.zzbcb = -1.0f;
        this.zzbcc = -1.0f;
        this.zzafu = 1;
        this.zzbcd = -1;
        this.zzafv = 8000;
        this.zzaow = 0L;
        this.zzaox = 0L;
        this.zzbcf = true;
        this.zzauc = "eng";
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0318  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x031a  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0322  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x0345  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0153  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(com.google.android.gms.internal.ads.zznp r30, int r31) throws com.google.android.gms.internal.ads.zzlm {
        /*
            Method dump skipped, instructions count: 1410
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzog.zza(com.google.android.gms.internal.ads.zznp, int):void");
    }

    private static List<byte[]> zza(zzst zzstVar) throws zzlm {
        try {
            zzstVar.zzac(16);
            if (zzstVar.zzkb() != 826496599) {
                return null;
            }
            byte[] bArr = zzstVar.data;
            for (int position = zzstVar.getPosition() + 20; position < bArr.length - 4; position++) {
                if (bArr[position] == 0 && bArr[position + 1] == 0 && bArr[position + 2] == 1 && bArr[position + 3] == 15) {
                    return Collections.singletonList(Arrays.copyOfRange(bArr, position, bArr.length));
                }
            }
            throw new zzlm("Failed to find FourCC VC1 initialization data");
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new zzlm("Error parsing FourCC VC1 codec private");
        }
    }

    private static List<byte[]> zze(byte[] bArr) throws zzlm {
        try {
            if (bArr[0] != 2) {
                throw new zzlm("Error parsing vorbis codec private");
            }
            int i = 1;
            int i2 = 0;
            while (bArr[i] == -1) {
                i2 += 255;
                i++;
            }
            int i3 = i + 1;
            int i4 = i2 + bArr[i];
            int i5 = 0;
            while (bArr[i3] == -1) {
                i5 += 255;
                i3++;
            }
            int i6 = i3 + 1;
            int i7 = i5 + bArr[i3];
            if (bArr[i6] != 1) {
                throw new zzlm("Error parsing vorbis codec private");
            }
            byte[] bArr2 = new byte[i4];
            System.arraycopy(bArr, i6, bArr2, 0, i4);
            int i8 = i6 + i4;
            if (bArr[i8] != 3) {
                throw new zzlm("Error parsing vorbis codec private");
            }
            int i9 = i8 + i7;
            if (bArr[i9] != 5) {
                throw new zzlm("Error parsing vorbis codec private");
            }
            byte[] bArr3 = new byte[bArr.length - i9];
            System.arraycopy(bArr, i9, bArr3, 0, bArr.length - i9);
            ArrayList arrayList = new ArrayList(2);
            arrayList.add(bArr2);
            arrayList.add(bArr3);
            return arrayList;
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new zzlm("Error parsing vorbis codec private");
        }
    }

    private static boolean zzb(zzst zzstVar) throws zzlm {
        try {
            int iZzka = zzstVar.zzka();
            if (iZzka == 1) {
                return true;
            }
            if (iZzka == 65534) {
                zzstVar.setPosition(24);
                if (zzstVar.readLong() == zzod.zzazw.getMostSignificantBits()) {
                    if (zzstVar.readLong() == zzod.zzazw.getLeastSignificantBits()) {
                        return true;
                    }
                }
            }
            return false;
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new zzlm("Error parsing MS/ACM codec private");
        }
    }

    /* synthetic */ zzog(zzoe zzoeVar) {
        this();
    }
}
