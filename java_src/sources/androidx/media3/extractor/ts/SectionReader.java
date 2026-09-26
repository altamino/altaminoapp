package androidx.media3.extractor.ts;

import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.TimestampAdjuster;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.ExtractorOutput;

/* JADX INFO: loaded from: classes6.dex */
@UnstableApi
public final class SectionReader implements TsPayloadReader {
    private static final int DEFAULT_SECTION_BUFFER_LENGTH = 32;
    private static final int MAX_SECTION_LENGTH = 4098;
    private static final int SECTION_HEADER_LENGTH = 3;
    private int bytesRead;
    private final SectionPayloadReader reader;
    private final ParsableByteArray sectionData = new ParsableByteArray(32);
    private boolean sectionSyntaxIndicator;
    private int totalSectionLength;
    private boolean waitingForPayloadStart;

    @Override // androidx.media3.extractor.ts.TsPayloadReader
    public void a(ParsableByteArray parsableByteArray, int i10) {
        int iF;
        boolean z6 = (i10 & 1) != 0;
        if (z6) {
            iF = parsableByteArray.f() + parsableByteArray.H();
        } else {
            iF = -1;
        }
        if (this.waitingForPayloadStart) {
            if (!z6) {
                return;
            }
            this.waitingForPayloadStart = false;
            parsableByteArray.U(iF);
            this.bytesRead = 0;
        }
        while (parsableByteArray.a() > 0) {
            int i11 = this.bytesRead;
            if (i11 < 3) {
                if (i11 == 0) {
                    int iH = parsableByteArray.H();
                    parsableByteArray.U(parsableByteArray.f() - 1);
                    if (iH == 255) {
                        this.waitingForPayloadStart = true;
                        return;
                    }
                }
                int iMin = Math.min(parsableByteArray.a(), 3 - this.bytesRead);
                parsableByteArray.l(this.sectionData.e(), this.bytesRead, iMin);
                int i12 = this.bytesRead + iMin;
                this.bytesRead = i12;
                if (i12 == 3) {
                    this.sectionData.U(0);
                    this.sectionData.T(3);
                    this.sectionData.V(1);
                    int iH2 = this.sectionData.H();
                    int iH3 = this.sectionData.H();
                    this.sectionSyntaxIndicator = (iH2 & 128) != 0;
                    this.totalSectionLength = (((iH2 & 15) << 8) | iH3) + 3;
                    int iB = this.sectionData.b();
                    int i13 = this.totalSectionLength;
                    if (iB < i13) {
                        this.sectionData.c(Math.min(4098, Math.max(i13, this.sectionData.b() * 2)));
                    }
                }
            } else {
                int iMin2 = Math.min(parsableByteArray.a(), this.totalSectionLength - this.bytesRead);
                parsableByteArray.l(this.sectionData.e(), this.bytesRead, iMin2);
                int i14 = this.bytesRead + iMin2;
                this.bytesRead = i14;
                int i15 = this.totalSectionLength;
                if (i14 != i15) {
                    continue;
                } else {
                    if (!this.sectionSyntaxIndicator) {
                        this.sectionData.T(i15);
                    } else {
                        if (Util.t(this.sectionData.e(), 0, this.totalSectionLength, -1) != 0) {
                            this.waitingForPayloadStart = true;
                            return;
                        }
                        this.sectionData.T(this.totalSectionLength - 4);
                    }
                    this.sectionData.U(0);
                    this.reader.a(this.sectionData);
                    this.bytesRead = 0;
                }
            }
        }
    }

    @Override // androidx.media3.extractor.ts.TsPayloadReader
    public void seek() {
        this.waitingForPayloadStart = true;
    }

    @Override // androidx.media3.extractor.ts.TsPayloadReader
    public void b(TimestampAdjuster timestampAdjuster, ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        this.reader.b(timestampAdjuster, extractorOutput, trackIdGenerator);
        this.waitingForPayloadStart = true;
    }

    public SectionReader(SectionPayloadReader sectionPayloadReader) {
        this.reader = sectionPayloadReader;
    }
}
