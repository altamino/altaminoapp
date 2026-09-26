package com.google.android.exoplayer2.extractor.jpeg;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.extractor.a0;
import com.google.android.exoplayer2.extractor.b0;
import com.google.android.exoplayer2.extractor.l;
import com.google.android.exoplayer2.extractor.m;
import com.google.android.exoplayer2.extractor.mp4.k;
import com.google.android.exoplayer2.extractor.n;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.mp4.MotionPhotoMetadata;
import com.google.android.exoplayer2.util.c0;
import java.io.IOException;

/* JADX INFO: loaded from: classes8.dex */
public final class a implements l {
    private static final long EXIF_HEADER = 1165519206;
    private static final int EXIF_ID_CODE_LENGTH = 6;
    private static final String HEADER_XMP_APP1 = "http://ns.adobe.com/xap/1.0/";
    private static final int IMAGE_TRACK_ID = 1024;
    private static final int MARKER_APP0 = 65504;
    private static final int MARKER_APP1 = 65505;
    private static final int MARKER_SOI = 65496;
    private static final int MARKER_SOS = 65498;
    private static final int STATE_ENDED = 6;
    private static final int STATE_READING_MARKER = 0;
    private static final int STATE_READING_MOTION_PHOTO_VIDEO = 5;
    private static final int STATE_READING_SEGMENT = 2;
    private static final int STATE_READING_SEGMENT_LENGTH = 1;
    private static final int STATE_SNIFFING_MOTION_PHOTO_VIDEO = 4;
    private n extractorOutput;
    private m lastExtractorInput;
    private int marker;

    @Nullable
    private MotionPhotoMetadata motionPhotoMetadata;

    @Nullable
    private k mp4Extractor;
    private c mp4ExtractorStartOffsetExtractorInput;
    private int segmentLength;
    private int state;
    private final c0 scratch = new c0(6);
    private long mp4StartPosition = -1;

    private void e() {
        g(new Metadata.Entry[0]);
        ((n) com.google.android.exoplayer2.util.a.e(this.extractorOutput)).endTracks();
        this.extractorOutput.h(new b0.b(-9223372036854775807L));
        this.state = 6;
    }

    private void m() {
        g((Metadata.Entry) com.google.android.exoplayer2.util.a.e(this.motionPhotoMetadata));
        this.state = 5;
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public void d(n nVar) {
        this.extractorOutput = nVar;
    }

    private void a(m mVar) throws IOException {
        this.scratch.L(2);
        mVar.peekFully(this.scratch.d(), 0, 2);
        mVar.advancePeekPosition(this.scratch.J() - 2);
    }

    @Nullable
    private static MotionPhotoMetadata f(String str, long j6) throws IOException {
        b bVarA;
        if (j6 == -1 || (bVarA = e.a(str)) == null) {
            return null;
        }
        return bVarA.a(j6);
    }

    private void g(Metadata.Entry... entryArr) {
        ((n) com.google.android.exoplayer2.util.a.e(this.extractorOutput)).track(1024, 4).d(new a2.b().K("image/jpeg").X(new Metadata(entryArr)).E());
    }

    private int h(m mVar) throws IOException {
        this.scratch.L(2);
        mVar.peekFully(this.scratch.d(), 0, 2);
        return this.scratch.J();
    }

    private void i(m mVar) throws IOException {
        this.scratch.L(2);
        mVar.readFully(this.scratch.d(), 0, 2);
        int iJ = this.scratch.J();
        this.marker = iJ;
        if (iJ == MARKER_SOS) {
            if (this.mp4StartPosition != -1) {
                this.state = 4;
                return;
            } else {
                e();
                return;
            }
        }
        if ((iJ < 65488 || iJ > 65497) && iJ != 65281) {
            this.state = 1;
        }
    }

    private void j(m mVar) throws IOException {
        String strX;
        if (this.marker == MARKER_APP1) {
            c0 c0Var = new c0(this.segmentLength);
            mVar.readFully(c0Var.d(), 0, this.segmentLength);
            if (this.motionPhotoMetadata == null && HEADER_XMP_APP1.equals(c0Var.x()) && (strX = c0Var.x()) != null) {
                MotionPhotoMetadata motionPhotoMetadataF = f(strX, mVar.getLength());
                this.motionPhotoMetadata = motionPhotoMetadataF;
                if (motionPhotoMetadataF != null) {
                    this.mp4StartPosition = motionPhotoMetadataF.videoStartPosition;
                }
            }
        } else {
            mVar.skipFully(this.segmentLength);
        }
        this.state = 0;
    }

    private void k(m mVar) throws IOException {
        this.scratch.L(2);
        mVar.readFully(this.scratch.d(), 0, 2);
        this.segmentLength = this.scratch.J() - 2;
        this.state = 2;
    }

    private void l(m mVar) throws IOException {
        if (!mVar.peekFully(this.scratch.d(), 0, 1, true)) {
            e();
            return;
        }
        mVar.resetPeekPosition();
        if (this.mp4Extractor == null) {
            this.mp4Extractor = new k();
        }
        c cVar = new c(mVar, this.mp4StartPosition);
        this.mp4ExtractorStartOffsetExtractorInput = cVar;
        if (!this.mp4Extractor.b(cVar)) {
            e();
        } else {
            this.mp4Extractor.d(new d(this.mp4StartPosition, (n) com.google.android.exoplayer2.util.a.e(this.extractorOutput)));
            m();
        }
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public int c(m mVar, a0 a0Var) throws IOException {
        int i10 = this.state;
        if (i10 == 0) {
            i(mVar);
            return 0;
        }
        if (i10 == 1) {
            k(mVar);
            return 0;
        }
        if (i10 == 2) {
            j(mVar);
            return 0;
        }
        if (i10 == 4) {
            long position = mVar.getPosition();
            long j6 = this.mp4StartPosition;
            if (position != j6) {
                a0Var.position = j6;
                return 1;
            }
            l(mVar);
            return 0;
        }
        if (i10 != 5) {
            if (i10 == 6) {
                return -1;
            }
            throw new IllegalStateException();
        }
        if (this.mp4ExtractorStartOffsetExtractorInput == null || mVar != this.lastExtractorInput) {
            this.lastExtractorInput = mVar;
            this.mp4ExtractorStartOffsetExtractorInput = new c(mVar, this.mp4StartPosition);
        }
        int iC = ((k) com.google.android.exoplayer2.util.a.e(this.mp4Extractor)).c(this.mp4ExtractorStartOffsetExtractorInput, a0Var);
        if (iC == 1) {
            a0Var.position += this.mp4StartPosition;
        }
        return iC;
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public void release() {
        k kVar = this.mp4Extractor;
        if (kVar != null) {
            kVar.release();
        }
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public void seek(long j6, long j10) {
        if (j6 == 0) {
            this.state = 0;
            this.mp4Extractor = null;
        } else if (this.state == 5) {
            ((k) com.google.android.exoplayer2.util.a.e(this.mp4Extractor)).seek(j6, j10);
        }
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public boolean b(m mVar) throws IOException {
        if (h(mVar) != MARKER_SOI) {
            return false;
        }
        int iH = h(mVar);
        this.marker = iH;
        if (iH == MARKER_APP0) {
            a(mVar);
            this.marker = h(mVar);
        }
        if (this.marker != MARKER_APP1) {
            return false;
        }
        mVar.advancePeekPosition(2);
        this.scratch.L(6);
        mVar.peekFully(this.scratch.d(), 0, 6);
        if (this.scratch.F() != EXIF_HEADER || this.scratch.J() != 0) {
            return false;
        }
        return true;
    }
}
