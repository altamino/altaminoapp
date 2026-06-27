package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.extractor.ts.PsExtractor;
import com.google.android.exoplayer2.util.MimeTypes;
import com.narvii.chat.video.RtcChatManager;
import com.narvii.media.MediaRecordManager;
import com.narvii.util.ws.WsMessage;
import io.agora.rtc.internal.RtcEngineEvent;
import java.nio.ByteBuffer;

/* loaded from: classes2.dex */
public final class zzlv {
    private static final int[] zzauy = {1, 2, 3, 6};
    private static final int[] zzauz = {MediaRecordManager.ENCODE_BIT_RATE, RtcChatManager.SAMPLE_RATE, 32000};
    private static final int[] zzava = {24000, MediaRecordManager.SAMPLING_RATE, 16000};
    private static final int[] zzavb = {2, 1, 2, 3, 3, 4, 4, 5};
    private static final int[] zzavc = {32, 40, 48, 56, 64, 80, 96, 112, 128, 160, PsExtractor.AUDIO_STREAM, 224, 256, 320, 384, 448, 512, 576, 640};
    private static final int[] zzavd = {69, 87, 104, 121, WsMessage.THREAD_WAIT_LIST_JOIN_RESPONSE, 174, 208, 243, 278, 348, 417, 487, 557, 696, 835, 975, RtcEngineEvent.EvtType.EVT_JOIN_PUBILSHER_RESPONSE, 1253, 1393};

    public static zzlh zza(zzst zzstVar, String str, String str2, zzne zzneVar) {
        int i = zzauz[(zzstVar.readUnsignedByte() & PsExtractor.AUDIO_STREAM) >> 6];
        int unsignedByte = zzstVar.readUnsignedByte();
        int i2 = zzavb[(unsignedByte & 56) >> 3];
        if ((unsignedByte & 4) != 0) {
            i2++;
        }
        return zzlh.zza(str, MimeTypes.AUDIO_AC3, null, -1, -1, i2, i, null, null, 0, str2);
    }

    public static int zzhi() {
        return 1536;
    }

    public static zzlh zzb(zzst zzstVar, String str, String str2, zzne zzneVar) {
        zzstVar.zzac(2);
        int i = zzauz[(zzstVar.readUnsignedByte() & PsExtractor.AUDIO_STREAM) >> 6];
        int unsignedByte = zzstVar.readUnsignedByte();
        int i2 = zzavb[(unsignedByte & 14) >> 1];
        if ((unsignedByte & 1) != 0) {
            i2++;
        }
        return zzlh.zza(str, MimeTypes.AUDIO_E_AC3, null, -1, -1, i2, i, null, null, 0, str2);
    }

    public static int zzh(ByteBuffer byteBuffer) {
        return (((byteBuffer.get(byteBuffer.position() + 4) & 192) >> 6) != 3 ? zzauy[(byteBuffer.get(byteBuffer.position() + 4) & 48) >> 4] : 6) * 256;
    }
}
