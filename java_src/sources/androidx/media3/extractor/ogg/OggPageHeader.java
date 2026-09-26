package androidx.media3.extractor.ogg;

import androidx.media3.common.ParserException;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorUtil;
import java.io.IOException;

/* JADX INFO: loaded from: classes11.dex */
final class OggPageHeader {
    private static final int CAPTURE_PATTERN = 1332176723;
    private static final int CAPTURE_PATTERN_SIZE = 4;
    public static final int EMPTY_PAGE_HEADER_SIZE = 27;
    public static final int MAX_PAGE_PAYLOAD = 65025;
    public static final int MAX_PAGE_SIZE = 65307;
    public static final int MAX_SEGMENT_COUNT = 255;
    public int bodySize;
    public long granulePosition;
    public int headerSize;
    public long pageChecksum;
    public int pageSegmentCount;
    public long pageSequenceNumber;
    public int revision;
    public long streamSerialNumber;
    public int type;
    public final int[] laces = new int[255];
    private final ParsableByteArray scratch = new ParsableByteArray(255);

    public void b() {
        this.revision = 0;
        this.type = 0;
        this.granulePosition = 0L;
        this.streamSerialNumber = 0L;
        this.pageSequenceNumber = 0L;
        this.pageChecksum = 0L;
        this.pageSegmentCount = 0;
        this.headerSize = 0;
        this.bodySize = 0;
    }

    public boolean c(ExtractorInput extractorInput) throws IOException {
        return d(extractorInput, -1L);
    }

    OggPageHeader() {
    }

    public boolean a(ExtractorInput extractorInput, boolean z6) throws IOException {
        b();
        this.scratch.Q(27);
        if (!ExtractorUtil.b(extractorInput, this.scratch.e(), 0, 27, z6) || this.scratch.J() != 1332176723) {
            return false;
        }
        int iH = this.scratch.H();
        this.revision = iH;
        if (iH != 0) {
            if (z6) {
                return false;
            }
            throw ParserException.d("unsupported bit stream revision");
        }
        this.type = this.scratch.H();
        this.granulePosition = this.scratch.v();
        this.streamSerialNumber = this.scratch.x();
        this.pageSequenceNumber = this.scratch.x();
        this.pageChecksum = this.scratch.x();
        int iH2 = this.scratch.H();
        this.pageSegmentCount = iH2;
        this.headerSize = iH2 + 27;
        this.scratch.Q(iH2);
        if (!ExtractorUtil.b(extractorInput, this.scratch.e(), 0, this.pageSegmentCount, z6)) {
            return false;
        }
        for (int i10 = 0; i10 < this.pageSegmentCount; i10++) {
            this.laces[i10] = this.scratch.H();
            this.bodySize += this.laces[i10];
        }
        return true;
    }

    public boolean d(ExtractorInput extractorInput, long j6) throws IOException {
        boolean z6;
        if (extractorInput.getPosition() == extractorInput.getPeekPosition()) {
            z6 = true;
        } else {
            z6 = false;
        }
        Assertions.a(z6);
        this.scratch.Q(4);
        while (true) {
            if ((j6 != -1 && extractorInput.getPosition() + 4 >= j6) || !ExtractorUtil.b(extractorInput, this.scratch.e(), 0, 4, true)) {
                break;
            }
            this.scratch.U(0);
            if (this.scratch.J() == 1332176723) {
                extractorInput.resetPeekPosition();
                return true;
            }
            extractorInput.skipFully(1);
        }
        do {
            if (j6 != -1 && extractorInput.getPosition() >= j6) {
                break;
            }
        } while (extractorInput.skip(1) != -1);
        return false;
    }
}
