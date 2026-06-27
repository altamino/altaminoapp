package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzta {
    private final int height;
    private final int width;
    public final List<byte[]> zzafw;
    public final int zzamf;
    public final float zzbne;

    public static zzta zzf(zzst zzstVar) throws zzlm {
        int i;
        int i2;
        float f;
        try {
            zzstVar.zzac(4);
            int unsignedByte = (zzstVar.readUnsignedByte() & 3) + 1;
            if (unsignedByte == 3) {
                throw new IllegalStateException();
            }
            ArrayList arrayList = new ArrayList();
            int unsignedByte2 = zzstVar.readUnsignedByte() & 31;
            for (int i3 = 0; i3 < unsignedByte2; i3++) {
                arrayList.add(zzg(zzstVar));
            }
            int unsignedByte3 = zzstVar.readUnsignedByte();
            for (int i4 = 0; i4 < unsignedByte3; i4++) {
                arrayList.add(zzg(zzstVar));
            }
            if (unsignedByte2 > 0) {
                zzsr zzsrVarZze = zzsq.zze((byte[]) arrayList.get(0), unsignedByte, ((byte[]) arrayList.get(0)).length);
                int i5 = zzsrVarZze.width;
                int i6 = zzsrVarZze.height;
                f = zzsrVarZze.zzbne;
                i = i5;
                i2 = i6;
            } else {
                i = -1;
                i2 = -1;
                f = 1.0f;
            }
            return new zzta(arrayList, unsignedByte, i, i2, f);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new zzlm("Error parsing AVC config", e);
        }
    }

    private zzta(List<byte[]> list, int i, int i2, int i3, float f) {
        this.zzafw = list;
        this.zzamf = i;
        this.width = i2;
        this.height = i3;
        this.zzbne = f;
    }

    private static byte[] zzg(zzst zzstVar) {
        int unsignedShort = zzstVar.readUnsignedShort();
        int position = zzstVar.getPosition();
        zzstVar.zzac(unsignedShort);
        return zzsl.zza(zzstVar.data, position, unsignedShort);
    }
}
