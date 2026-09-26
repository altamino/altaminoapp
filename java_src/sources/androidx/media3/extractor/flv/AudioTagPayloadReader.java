package androidx.media3.extractor.flv;

import androidx.media3.common.Format;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.AacUtil;
import androidx.media3.extractor.TrackOutput;
import com.narvii.chat.video.RtcChatManager;
import com.narvii.media.MediaRecordManager;
import java.util.Collections;

/* JADX INFO: loaded from: classes10.dex */
final class AudioTagPayloadReader extends TagPayloadReader {
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

    @Override // androidx.media3.extractor.flv.TagPayloadReader
    protected boolean b(ParsableByteArray parsableByteArray) throws TagPayloadReader.UnsupportedFormatException {
        if (this.hasParsedAudioDataHeader) {
            parsableByteArray.V(1);
        } else {
            int iH = parsableByteArray.H();
            int i10 = (iH >> 4) & 15;
            this.audioFormat = i10;
            if (i10 == 2) {
                this.output.d(new Format.Builder().g0("audio/mpeg").J(1).h0(AUDIO_SAMPLING_RATE_TABLE[(iH >> 2) & 3]).G());
                this.hasOutputFormat = true;
            } else if (i10 == 7 || i10 == 8) {
                this.output.d(new Format.Builder().g0(i10 == 7 ? "audio/g711-alaw" : "audio/g711-mlaw").J(1).h0(8000).G());
                this.hasOutputFormat = true;
            } else if (i10 != 10) {
                throw new TagPayloadReader.UnsupportedFormatException("Audio format not supported: " + this.audioFormat);
            }
            this.hasParsedAudioDataHeader = true;
        }
        return true;
    }

    @Override // androidx.media3.extractor.flv.TagPayloadReader
    protected boolean c(ParsableByteArray parsableByteArray, long j6) throws ParserException {
        if (this.audioFormat == 2) {
            int iA = parsableByteArray.a();
            this.output.b(parsableByteArray, iA);
            this.output.f(j6, 1, iA, 0, null);
            return true;
        }
        int iH = parsableByteArray.H();
        if (iH != 0 || this.hasOutputFormat) {
            if (this.audioFormat == 10 && iH != 1) {
                return false;
            }
            int iA2 = parsableByteArray.a();
            this.output.b(parsableByteArray, iA2);
            this.output.f(j6, 1, iA2, 0, null);
            return true;
        }
        int iA3 = parsableByteArray.a();
        byte[] bArr = new byte[iA3];
        parsableByteArray.l(bArr, 0, iA3);
        AacUtil.Config configF = AacUtil.f(bArr);
        this.output.d(new Format.Builder().g0("audio/mp4a-latm").K(configF.codecs).J(configF.channelCount).h0(configF.sampleRateHz).V(Collections.singletonList(bArr)).G());
        this.hasOutputFormat = true;
        return false;
    }

    public AudioTagPayloadReader(TrackOutput trackOutput) {
        super(trackOutput);
    }
}
