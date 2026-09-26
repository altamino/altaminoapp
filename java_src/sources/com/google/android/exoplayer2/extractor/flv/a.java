package com.google.android.exoplayer2.extractor.flv;

import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.extractor.e0;
import com.google.android.exoplayer2.util.c0;
import com.google.android.exoplayer2.v2;
import com.narvii.chat.video.RtcChatManager;
import com.narvii.media.MediaRecordManager;
import java.util.Collections;

/* JADX INFO: loaded from: classes9.dex */
final class a extends e {
    private static final int AAC_PACKET_TYPE_AAC_RAW = 1;
    private static final int AAC_PACKET_TYPE_SEQUENCE_HEADER = 0;
    private static final int AUDIO_FORMAT_AAC = 10;
    private static final int AUDIO_FORMAT_ALAW = 7;
    private static final int AUDIO_FORMAT_MP3 = 2;
    private static final int AUDIO_FORMAT_ULAW = 8;
    private static final int[] AUDIO_SAMPLING_RATE_TABLE = {5512, 11025, MediaRecordManager.SAMPLING_RATE, RtcChatManager.SAMPLE_RATE};
    private int audioFormat;
    private boolean hasOutputFormat;
    private boolean hasParsedAudioDataHeader;

    @Override // com.google.android.exoplayer2.extractor.flv.e
    protected boolean b(c0 c0Var) throws e.a {
        if (this.hasParsedAudioDataHeader) {
            c0Var.Q(1);
        } else {
            int iD = c0Var.D();
            int i10 = (iD >> 4) & 15;
            this.audioFormat = i10;
            if (i10 == 2) {
                this.output.d(new a2.b().e0("audio/mpeg").H(1).f0(AUDIO_SAMPLING_RATE_TABLE[(iD >> 2) & 3]).E());
                this.hasOutputFormat = true;
            } else if (i10 == 7 || i10 == 8) {
                this.output.d(new a2.b().e0(i10 == 7 ? "audio/g711-alaw" : "audio/g711-mlaw").H(1).f0(8000).E());
                this.hasOutputFormat = true;
            } else if (i10 != 10) {
                throw new e.a("Audio format not supported: " + this.audioFormat);
            }
            this.hasParsedAudioDataHeader = true;
        }
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.flv.e
    protected boolean c(c0 c0Var, long j6) throws v2 {
        if (this.audioFormat == 2) {
            int iA = c0Var.a();
            this.output.c(c0Var, iA);
            this.output.e(j6, 1, iA, 0, null);
            return true;
        }
        int iD = c0Var.D();
        if (iD != 0 || this.hasOutputFormat) {
            if (this.audioFormat == 10 && iD != 1) {
                return false;
            }
            int iA2 = c0Var.a();
            this.output.c(c0Var, iA2);
            this.output.e(j6, 1, iA2, 0, null);
            return true;
        }
        int iA3 = c0Var.a();
        byte[] bArr = new byte[iA3];
        c0Var.j(bArr, 0, iA3);
        com.google.android.exoplayer2.audio.a.b bVarE = com.google.android.exoplayer2.audio.a.e(bArr);
        this.output.d(new a2.b().e0("audio/mp4a-latm").I(bVarE.codecs).H(bVarE.channelCount).f0(bVarE.sampleRateHz).T(Collections.singletonList(bArr)).E());
        this.hasOutputFormat = true;
        return false;
    }

    public a(e0 e0Var) {
        super(e0Var);
    }
}
