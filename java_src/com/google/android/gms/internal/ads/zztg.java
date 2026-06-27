package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public final class zztg {
    public final List<byte[]> zzafw;
    public final int zzamf;

    public static zztg zzh(zzst zzstVar) throws zzlm {
        try {
            zzstVar.zzac(21);
            int unsignedByte = zzstVar.readUnsignedByte() & 3;
            int unsignedByte2 = zzstVar.readUnsignedByte();
            int position = zzstVar.getPosition();
            int i = 0;
            int i2 = 0;
            while (i < unsignedByte2) {
                zzstVar.zzac(1);
                int unsignedShort = zzstVar.readUnsignedShort();
                int i3 = i2;
                for (int i4 = 0; i4 < unsignedShort; i4++) {
                    int unsignedShort2 = zzstVar.readUnsignedShort();
                    i3 += unsignedShort2 + 4;
                    zzstVar.zzac(unsignedShort2);
                }
                i++;
                i2 = i3;
            }
            zzstVar.setPosition(position);
            byte[] bArr = new byte[i2];
            int i5 = 0;
            int i6 = 0;
            while (i5 < unsignedByte2) {
                zzstVar.zzac(1);
                int unsignedShort3 = zzstVar.readUnsignedShort();
                int i7 = i6;
                for (int i8 = 0; i8 < unsignedShort3; i8++) {
                    int unsignedShort4 = zzstVar.readUnsignedShort();
                    System.arraycopy(zzsq.zzaqt, 0, bArr, i7, zzsq.zzaqt.length);
                    int length = i7 + zzsq.zzaqt.length;
                    System.arraycopy(zzstVar.data, zzstVar.getPosition(), bArr, length, unsignedShort4);
                    i7 = length + unsignedShort4;
                    zzstVar.zzac(unsignedShort4);
                }
                i5++;
                i6 = i7;
            }
            return new zztg(i2 == 0 ? null : Collections.singletonList(bArr), unsignedByte + 1);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new zzlm("Error parsing HEVC config", e);
        }
    }

    private zztg(List<byte[]> list, int i) {
        this.zzafw = list;
        this.zzamf = i;
    }
}
