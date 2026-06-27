package com.google.android.gms.internal.ads;

import android.util.Pair;
import com.narvii.chat.video.RtcChatManager;
import com.narvii.media.MediaRecordManager;

/* loaded from: classes2.dex */
public final class zzki {
    private static final byte[] zzaqt = {0, 0, 0, 1};
    private static final int[] zzaqu = {96000, 88200, 64000, MediaRecordManager.ENCODE_BIT_RATE, RtcChatManager.SAMPLE_RATE, 32000, 24000, MediaRecordManager.SAMPLING_RATE, 16000, 12000, 11025, 8000, 7350};
    private static final int[] zzaqv = {0, 1, 2, 3, 4, 5, 6, 8};

    public static Pair<Integer, Integer> zzd(byte[] bArr) {
        int i = (bArr[0] >> 3) & 31;
        int i2 = (i == 5 || i == 29) ? 1 : 0;
        int i3 = (bArr[i2] & 7) << 1;
        int i4 = i2 + 1;
        int i5 = i3 | ((bArr[i4] >> 7) & 1);
        zzkh.checkState(i5 < 13);
        return Pair.create(Integer.valueOf(zzaqu[i5]), Integer.valueOf((bArr[i4] >> 3) & 15));
    }

    public static byte[] zza(byte[] bArr, int i, int i2) {
        byte[] bArr2 = zzaqt;
        byte[] bArr3 = new byte[bArr2.length + i2];
        System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
        System.arraycopy(bArr, i, bArr3, zzaqt.length, i2);
        return bArr3;
    }
}
