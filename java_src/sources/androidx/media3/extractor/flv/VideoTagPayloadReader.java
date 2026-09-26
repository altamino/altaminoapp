package androidx.media3.extractor.flv;

import androidx.media3.common.Format;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.container.NalUnitUtil;
import androidx.media3.extractor.AvcConfig;
import androidx.media3.extractor.TrackOutput;

/* JADX INFO: loaded from: classes11.dex */
final class VideoTagPayloadReader extends TagPayloadReader {
    private static final int AVC_PACKET_TYPE_AVC_NALU = 1;
    private static final int AVC_PACKET_TYPE_SEQUENCE_HEADER = 0;
    private static final int VIDEO_CODEC_AVC = 7;
    private static final int VIDEO_FRAME_KEYFRAME = 1;
    private static final int VIDEO_FRAME_VIDEO_INFO = 5;
    private int frameType;
    private boolean hasOutputFormat;
    private boolean hasOutputKeyframe;
    private final ParsableByteArray nalLength;
    private final ParsableByteArray nalStartCode;
    private int nalUnitLengthFieldLength;

    public VideoTagPayloadReader(TrackOutput trackOutput) {
        super(trackOutput);
        this.nalStartCode = new ParsableByteArray(NalUnitUtil.NAL_START_CODE);
        this.nalLength = new ParsableByteArray(4);
    }

    @Override // androidx.media3.extractor.flv.TagPayloadReader
    protected boolean b(ParsableByteArray parsableByteArray) throws TagPayloadReader.UnsupportedFormatException {
        int iH = parsableByteArray.H();
        int i10 = (iH >> 4) & 15;
        int i11 = iH & 15;
        if (i11 == 7) {
            this.frameType = i10;
            if (i10 != 5) {
                return true;
            }
            return false;
        }
        throw new TagPayloadReader.UnsupportedFormatException("Video format not supported: " + i11);
    }

    @Override // androidx.media3.extractor.flv.TagPayloadReader
    protected boolean c(ParsableByteArray parsableByteArray, long j6) throws ParserException {
        int i10;
        int iH = parsableByteArray.H();
        long jR = j6 + (((long) parsableByteArray.r()) * 1000);
        if (iH == 0 && !this.hasOutputFormat) {
            ParsableByteArray parsableByteArray2 = new ParsableByteArray(new byte[parsableByteArray.a()]);
            parsableByteArray.l(parsableByteArray2.e(), 0, parsableByteArray.a());
            AvcConfig avcConfigB = AvcConfig.b(parsableByteArray2);
            this.nalUnitLengthFieldLength = avcConfigB.nalUnitLengthFieldLength;
            this.output.d(new Format.Builder().g0("video/avc").K(avcConfigB.codecs).n0(avcConfigB.width).S(avcConfigB.height).c0(avcConfigB.pixelWidthHeightRatio).V(avcConfigB.initializationData).G());
            this.hasOutputFormat = true;
            return false;
        }
        if (iH != 1 || !this.hasOutputFormat) {
            return false;
        }
        if (this.frameType == 1) {
            i10 = 1;
        } else {
            i10 = 0;
        }
        if (!this.hasOutputKeyframe && i10 == 0) {
            return false;
        }
        byte[] bArrE = this.nalLength.e();
        bArrE[0] = 0;
        bArrE[1] = 0;
        bArrE[2] = 0;
        int i11 = 4 - this.nalUnitLengthFieldLength;
        int i12 = 0;
        while (parsableByteArray.a() > 0) {
            parsableByteArray.l(this.nalLength.e(), i11, this.nalUnitLengthFieldLength);
            this.nalLength.U(0);
            int iL = this.nalLength.L();
            this.nalStartCode.U(0);
            this.output.b(this.nalStartCode, 4);
            this.output.b(parsableByteArray, iL);
            i12 = i12 + 4 + iL;
        }
        this.output.f(jR, i10, i12, 0, null);
        this.hasOutputKeyframe = true;
        return true;
    }
}
