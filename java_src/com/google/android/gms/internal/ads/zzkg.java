package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.extractor.ts.PsExtractor;
import com.google.android.exoplayer2.util.MimeTypes;
import com.narvii.chat.video.RtcChatManager;
import com.narvii.media.MediaRecordManager;
import com.narvii.util.ws.WsMessage;
import io.agora.rtc.internal.RtcEngineEvent;
import java.util.Collections;

/* loaded from: classes2.dex */
public final class zzkg {
    private static final int[] zzaqp = {MediaRecordManager.ENCODE_BIT_RATE, RtcChatManager.SAMPLE_RATE, 32000};
    private static final int[] zzaqq = {2, 1, 2, 3, 3, 4, 4, 5};
    private static final int[] zzaqr = {32, 40, 48, 56, 64, 80, 96, 112, 128, 160, PsExtractor.AUDIO_STREAM, 224, 256, 320, 384, 448, 512, 576, 640};
    private static final int[] zzaqs = {69, 87, 104, 121, WsMessage.THREAD_WAIT_LIST_JOIN_RESPONSE, 174, 208, 243, 278, 348, 417, 487, 557, 696, 835, 975, RtcEngineEvent.EvtType.EVT_JOIN_PUBILSHER_RESPONSE, 1253, 1393};

    public static zzhj zza(zzkm zzkmVar) {
        int i = zzaqp[(zzkmVar.readUnsignedByte() & PsExtractor.AUDIO_STREAM) >> 6];
        int unsignedByte = zzkmVar.readUnsignedByte();
        int i2 = zzaqq[(unsignedByte & 56) >> 3];
        if ((unsignedByte & 4) != 0) {
            i2++;
        }
        return zzhj.zzb(MimeTypes.AUDIO_AC3, -1, -1L, i2, i, Collections.emptyList());
    }

    public static zzhj zzb(zzkm zzkmVar) {
        zzkmVar.zzac(2);
        int i = zzaqp[(zzkmVar.readUnsignedByte() & PsExtractor.AUDIO_STREAM) >> 6];
        int unsignedByte = zzkmVar.readUnsignedByte();
        int i2 = zzaqq[(unsignedByte & 14) >> 1];
        if ((unsignedByte & 1) != 0) {
            i2++;
        }
        return zzhj.zza(MimeTypes.AUDIO_E_AC3, -1, i2, i, Collections.emptyList());
    }

    public static int zza(int i, int i2) {
        return (((i << 3) * i2) + 768000) / 1536000;
    }
}
