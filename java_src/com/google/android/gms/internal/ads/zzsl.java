package com.google.android.gms.internal.ads;

import android.util.Pair;
import com.narvii.chat.video.RtcChatManager;
import com.narvii.media.MediaRecordManager;

/* loaded from: classes2.dex */
public final class zzsl {
    private static final byte[] zzaqt = {0, 0, 0, 1};
    private static final int[] zzaqu = {96000, 88200, 64000, MediaRecordManager.ENCODE_BIT_RATE, RtcChatManager.SAMPLE_RATE, 32000, 24000, MediaRecordManager.SAMPLING_RATE, 16000, 12000, 11025, 8000, 7350};
    private static final int[] zzaqv = {0, 1, 2, 3, 4, 5, 6, 8, -1, -1, -1, 7, 8, -1, 8, -1};

    public static Pair<Integer, Integer> zzf(byte[] bArr) {
        zzss zzssVar = new zzss(bArr);
        int iZza = zza(zzssVar);
        int iZzb = zzb(zzssVar);
        int iZzbn = zzssVar.zzbn(4);
        if (iZza == 5 || iZza == 29) {
            iZzb = zzb(zzssVar);
            if (zza(zzssVar) == 22) {
                iZzbn = zzssVar.zzbn(4);
            }
        }
        int i = zzaqv[iZzbn];
        zzsk.checkArgument(i != -1);
        return Pair.create(Integer.valueOf(iZzb), Integer.valueOf(i));
    }

    public static byte[] zza(byte[] bArr, int i, int i2) {
        byte[] bArr2 = zzaqt;
        byte[] bArr3 = new byte[bArr2.length + i2];
        System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
        System.arraycopy(bArr, i, bArr3, zzaqt.length, i2);
        return bArr3;
    }

    private static int zza(zzss zzssVar) {
        int iZzbn = zzssVar.zzbn(5);
        return iZzbn == 31 ? zzssVar.zzbn(6) + 32 : iZzbn;
    }

    private static int zzb(zzss zzssVar) {
        int iZzbn = zzssVar.zzbn(4);
        if (iZzbn == 15) {
            return zzssVar.zzbn(24);
        }
        zzsk.checkArgument(iZzbn < 13);
        return zzaqu[iZzbn];
    }
}
