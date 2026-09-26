package androidx.media3.extractor.jpeg;

import androidx.annotation.Nullable;
import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.metadata.mp4.MotionPhotoMetadata;
import androidx.media3.extractor.mp4.Mp4Extractor;
import java.io.IOException;

/* JADX INFO: loaded from: classes8.dex */
@UnstableApi
public final class JpegExtractor implements Extractor {
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
    private ExtractorOutput extractorOutput;
    private ExtractorInput lastExtractorInput;
    private int marker;

    @Nullable
    private MotionPhotoMetadata motionPhotoMetadata;

    @Nullable
    private Mp4Extractor mp4Extractor;
    private StartOffsetExtractorInput mp4ExtractorStartOffsetExtractorInput;
    private int segmentLength;
    private int state;
    private final ParsableByteArray scratch = new ParsableByteArray(6);
    private long mp4StartPosition = -1;

    private void e() {
        g(new Metadata.Entry[0]);
        ((ExtractorOutput) Assertions.e(this.extractorOutput)).endTracks();
        this.extractorOutput.d(new SeekMap.Unseekable(-9223372036854775807L));
        this.state = 6;
    }

    private void m() {
        g((Metadata.Entry) Assertions.e(this.motionPhotoMetadata));
        this.state = 5;
    }

    @Override // androidx.media3.extractor.Extractor
    public void b(ExtractorOutput extractorOutput) {
        this.extractorOutput = extractorOutput;
    }

    private void a(ExtractorInput extractorInput) throws IOException {
        this.scratch.Q(2);
        extractorInput.peekFully(this.scratch.e(), 0, 2);
        extractorInput.advancePeekPosition(this.scratch.N() - 2);
    }

    @Nullable
    private static MotionPhotoMetadata f(String str, long j6) throws IOException {
        MotionPhotoDescription motionPhotoDescriptionA;
        if (j6 == -1 || (motionPhotoDescriptionA = XmpMotionPhotoDescriptionParser.a(str)) == null) {
            return null;
        }
        return motionPhotoDescriptionA.a(j6);
    }

    private void g(Metadata.Entry... entryArr) {
        ((ExtractorOutput) Assertions.e(this.extractorOutput)).track(1024, 4).d(new Format.Builder().M("image/jpeg").Z(new Metadata(entryArr)).G());
    }

    private int h(ExtractorInput extractorInput) throws IOException {
        this.scratch.Q(2);
        extractorInput.peekFully(this.scratch.e(), 0, 2);
        return this.scratch.N();
    }

    private void i(ExtractorInput extractorInput) throws IOException {
        this.scratch.Q(2);
        extractorInput.readFully(this.scratch.e(), 0, 2);
        int iN = this.scratch.N();
        this.marker = iN;
        if (iN == MARKER_SOS) {
            if (this.mp4StartPosition != -1) {
                this.state = 4;
                return;
            } else {
                e();
                return;
            }
        }
        if ((iN < 65488 || iN > 65497) && iN != 65281) {
            this.state = 1;
        }
    }

    private void j(ExtractorInput extractorInput) throws IOException {
        String strB;
        if (this.marker == MARKER_APP1) {
            ParsableByteArray parsableByteArray = new ParsableByteArray(this.segmentLength);
            extractorInput.readFully(parsableByteArray.e(), 0, this.segmentLength);
            if (this.motionPhotoMetadata == null && HEADER_XMP_APP1.equals(parsableByteArray.B()) && (strB = parsableByteArray.B()) != null) {
                MotionPhotoMetadata motionPhotoMetadataF = f(strB, extractorInput.getLength());
                this.motionPhotoMetadata = motionPhotoMetadataF;
                if (motionPhotoMetadataF != null) {
                    this.mp4StartPosition = motionPhotoMetadataF.videoStartPosition;
                }
            }
        } else {
            extractorInput.skipFully(this.segmentLength);
        }
        this.state = 0;
    }

    private void k(ExtractorInput extractorInput) throws IOException {
        this.scratch.Q(2);
        extractorInput.readFully(this.scratch.e(), 0, 2);
        this.segmentLength = this.scratch.N() - 2;
        this.state = 2;
    }

    private void l(ExtractorInput extractorInput) throws IOException {
        if (!extractorInput.peekFully(this.scratch.e(), 0, 1, true)) {
            e();
            return;
        }
        extractorInput.resetPeekPosition();
        if (this.mp4Extractor == null) {
            this.mp4Extractor = new Mp4Extractor();
        }
        StartOffsetExtractorInput startOffsetExtractorInput = new StartOffsetExtractorInput(extractorInput, this.mp4StartPosition);
        this.mp4ExtractorStartOffsetExtractorInput = startOffsetExtractorInput;
        if (!this.mp4Extractor.d(startOffsetExtractorInput)) {
            e();
        } else {
            this.mp4Extractor.b(new StartOffsetExtractorOutput(this.mp4StartPosition, (ExtractorOutput) Assertions.e(this.extractorOutput)));
            m();
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public int c(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        int i10 = this.state;
        if (i10 == 0) {
            i(extractorInput);
            return 0;
        }
        if (i10 == 1) {
            k(extractorInput);
            return 0;
        }
        if (i10 == 2) {
            j(extractorInput);
            return 0;
        }
        if (i10 == 4) {
            long position = extractorInput.getPosition();
            long j6 = this.mp4StartPosition;
            if (position != j6) {
                positionHolder.position = j6;
                return 1;
            }
            l(extractorInput);
            return 0;
        }
        if (i10 != 5) {
            if (i10 == 6) {
                return -1;
            }
            throw new IllegalStateException();
        }
        if (this.mp4ExtractorStartOffsetExtractorInput == null || extractorInput != this.lastExtractorInput) {
            this.lastExtractorInput = extractorInput;
            this.mp4ExtractorStartOffsetExtractorInput = new StartOffsetExtractorInput(extractorInput, this.mp4StartPosition);
        }
        int iC = ((Mp4Extractor) Assertions.e(this.mp4Extractor)).c(this.mp4ExtractorStartOffsetExtractorInput, positionHolder);
        if (iC == 1) {
            positionHolder.position += this.mp4StartPosition;
        }
        return iC;
    }

    @Override // androidx.media3.extractor.Extractor
    public void release() {
        Mp4Extractor mp4Extractor = this.mp4Extractor;
        if (mp4Extractor != null) {
            mp4Extractor.release();
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public void seek(long j6, long j10) {
        if (j6 == 0) {
            this.state = 0;
            this.mp4Extractor = null;
        } else if (this.state == 5) {
            ((Mp4Extractor) Assertions.e(this.mp4Extractor)).seek(j6, j10);
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public boolean d(ExtractorInput extractorInput) throws IOException {
        if (h(extractorInput) != MARKER_SOI) {
            return false;
        }
        int iH = h(extractorInput);
        this.marker = iH;
        if (iH == MARKER_APP0) {
            a(extractorInput);
            this.marker = h(extractorInput);
        }
        if (this.marker != MARKER_APP1) {
            return false;
        }
        extractorInput.advancePeekPosition(2);
        this.scratch.Q(6);
        extractorInput.peekFully(this.scratch.e(), 0, 6);
        if (this.scratch.J() != EXIF_HEADER || this.scratch.N() != 0) {
            return false;
        }
        return true;
    }
}
