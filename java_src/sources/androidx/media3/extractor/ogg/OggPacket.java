package androidx.media3.extractor.ogg;

import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorUtil;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes7.dex */
final class OggPacket {
    private boolean populated;
    private int segmentCount;
    private final OggPageHeader pageHeader = new OggPageHeader();
    private final ParsableByteArray packetArray = new ParsableByteArray(new byte[65025], 0);
    private int currentSegmentIndex = -1;

    private int a(int i10) {
        int i11;
        int i12 = 0;
        this.segmentCount = 0;
        do {
            int i13 = this.segmentCount;
            int i14 = i10 + i13;
            OggPageHeader oggPageHeader = this.pageHeader;
            if (i14 >= oggPageHeader.pageSegmentCount) {
                break;
            }
            int[] iArr = oggPageHeader.laces;
            this.segmentCount = i13 + 1;
            i11 = iArr[i13 + i10];
            i12 += i11;
        } while (i11 == 255);
        return i12;
    }

    public OggPageHeader b() {
        return this.pageHeader;
    }

    public ParsableByteArray c() {
        return this.packetArray;
    }

    public boolean d(ExtractorInput extractorInput) throws IOException {
        int i10;
        Assertions.g(extractorInput != null);
        if (this.populated) {
            this.populated = false;
            this.packetArray.Q(0);
        }
        while (!this.populated) {
            if (this.currentSegmentIndex < 0) {
                if (!this.pageHeader.c(extractorInput) || !this.pageHeader.a(extractorInput, true)) {
                    return false;
                }
                OggPageHeader oggPageHeader = this.pageHeader;
                int iA = oggPageHeader.headerSize;
                if ((oggPageHeader.type & 1) == 1 && this.packetArray.g() == 0) {
                    iA += a(0);
                    i10 = this.segmentCount;
                } else {
                    i10 = 0;
                }
                if (!ExtractorUtil.e(extractorInput, iA)) {
                    return false;
                }
                this.currentSegmentIndex = i10;
            }
            int iA2 = a(this.currentSegmentIndex);
            int i11 = this.currentSegmentIndex + this.segmentCount;
            if (iA2 > 0) {
                ParsableByteArray parsableByteArray = this.packetArray;
                parsableByteArray.c(parsableByteArray.g() + iA2);
                if (!ExtractorUtil.d(extractorInput, this.packetArray.e(), this.packetArray.g(), iA2)) {
                    return false;
                }
                ParsableByteArray parsableByteArray2 = this.packetArray;
                parsableByteArray2.T(parsableByteArray2.g() + iA2);
                this.populated = this.pageHeader.laces[i11 + (-1)] != 255;
            }
            if (i11 == this.pageHeader.pageSegmentCount) {
                i11 = -1;
            }
            this.currentSegmentIndex = i11;
        }
        return true;
    }

    public void e() {
        this.pageHeader.b();
        this.packetArray.Q(0);
        this.currentSegmentIndex = -1;
        this.populated = false;
    }

    public void f() {
        if (this.packetArray.e().length == 65025) {
            return;
        }
        ParsableByteArray parsableByteArray = this.packetArray;
        parsableByteArray.S(Arrays.copyOf(parsableByteArray.e(), Math.max(65025, this.packetArray.g())), this.packetArray.g());
    }

    OggPacket() {
    }
}
