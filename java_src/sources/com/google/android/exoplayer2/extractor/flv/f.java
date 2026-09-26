package com.google.android.exoplayer2.extractor.flv;

import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.extractor.e0;
import com.google.android.exoplayer2.util.c0;
import com.google.android.exoplayer2.util.y;
import com.google.android.exoplayer2.v2;

/* JADX INFO: loaded from: classes9.dex */
final class f extends e {
    private static final int AVC_PACKET_TYPE_AVC_NALU = 1;
    private static final int AVC_PACKET_TYPE_SEQUENCE_HEADER = 0;
    private static final int VIDEO_CODEC_AVC = 7;
    private static final int VIDEO_FRAME_KEYFRAME = 1;
    private static final int VIDEO_FRAME_VIDEO_INFO = 5;
    private int frameType;
    private boolean hasOutputFormat;
    private boolean hasOutputKeyframe;
    private final c0 nalLength;
    private final c0 nalStartCode;
    private int nalUnitLengthFieldLength;

    public f(e0 e0Var) {
        super(e0Var);
        this.nalStartCode = new c0(y.NAL_START_CODE);
        this.nalLength = new c0(4);
    }

    @Override // com.google.android.exoplayer2.extractor.flv.e
    protected boolean b(c0 c0Var) throws e.a {
        int iD = c0Var.D();
        int i10 = (iD >> 4) & 15;
        int i11 = iD & 15;
        if (i11 == 7) {
            this.frameType = i10;
            if (i10 != 5) {
                return true;
            }
            return false;
        }
        throw new e.a("Video format not supported: " + i11);
    }

    @Override // com.google.android.exoplayer2.extractor.flv.e
    protected boolean c(c0 c0Var, long j6) throws v2 {
        int i10;
        int iD = c0Var.D();
        long jO = j6 + (((long) c0Var.o()) * 1000);
        if (iD == 0 && !this.hasOutputFormat) {
            c0 c0Var2 = new c0(new byte[c0Var.a()]);
            c0Var.j(c0Var2.d(), 0, c0Var.a());
            com.google.android.exoplayer2.video.a aVarB = com.google.android.exoplayer2.video.a.b(c0Var2);
            this.nalUnitLengthFieldLength = aVarB.nalUnitLengthFieldLength;
            this.output.d(new a2.b().e0("video/avc").I(aVarB.codecs).j0(aVarB.width).Q(aVarB.height).a0(aVarB.pixelWidthHeightRatio).T(aVarB.initializationData).E());
            this.hasOutputFormat = true;
            return false;
        }
        if (iD != 1 || !this.hasOutputFormat) {
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
        byte[] bArrD = this.nalLength.d();
        bArrD[0] = 0;
        bArrD[1] = 0;
        bArrD[2] = 0;
        int i11 = 4 - this.nalUnitLengthFieldLength;
        int i12 = 0;
        while (c0Var.a() > 0) {
            c0Var.j(this.nalLength.d(), i11, this.nalUnitLengthFieldLength);
            this.nalLength.P(0);
            int iH = this.nalLength.H();
            this.nalStartCode.P(0);
            this.output.c(this.nalStartCode, 4);
            this.output.c(c0Var, iH);
            i12 = i12 + 4 + iH;
        }
        this.output.e(jO, i10, i12, 0, null);
        this.hasOutputKeyframe = true;
        return true;
    }
}
