package androidx.media3.extractor.ts;

import androidx.annotation.Nullable;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.TimestampAdjuster;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.extractor.ExtractorOutput;

/* JADX INFO: loaded from: classes8.dex */
@UnstableApi
public final class PesReader implements TsPayloadReader {
    private static final int HEADER_SIZE = 9;
    private static final int MAX_HEADER_EXTENSION_SIZE = 10;
    private static final int PES_SCRATCH_SIZE = 10;
    private static final int STATE_FINDING_HEADER = 0;
    private static final int STATE_READING_BODY = 3;
    private static final int STATE_READING_HEADER = 1;
    private static final int STATE_READING_HEADER_EXTENSION = 2;
    private static final String TAG = "PesReader";
    private int bytesRead;
    private boolean dataAlignmentIndicator;
    private boolean dtsFlag;
    private int extendedHeaderLength;
    private int payloadSize;
    private boolean ptsFlag;
    private final ElementaryStreamReader reader;
    private boolean seenFirstDts;
    private long timeUs;
    private TimestampAdjuster timestampAdjuster;
    private final ParsableBitArray pesScratch = new ParsableBitArray(new byte[10]);
    private int state = 0;

    private void f(int i10) {
        this.state = i10;
        this.bytesRead = 0;
    }

    @Override // androidx.media3.extractor.ts.TsPayloadReader
    public final void seek() {
        this.state = 0;
        this.bytesRead = 0;
        this.seenFirstDts = false;
        this.reader.seek();
    }

    private boolean d() {
        this.pesScratch.p(0);
        int iH = this.pesScratch.h(24);
        if (iH != 1) {
            Log.i(TAG, "Unexpected start code prefix: " + iH);
            this.payloadSize = -1;
            return false;
        }
        this.pesScratch.r(8);
        int iH2 = this.pesScratch.h(16);
        this.pesScratch.r(5);
        this.dataAlignmentIndicator = this.pesScratch.g();
        this.pesScratch.r(2);
        this.ptsFlag = this.pesScratch.g();
        this.dtsFlag = this.pesScratch.g();
        this.pesScratch.r(6);
        int iH3 = this.pesScratch.h(8);
        this.extendedHeaderLength = iH3;
        if (iH2 == 0) {
            this.payloadSize = -1;
        } else {
            int i10 = (iH2 - 3) - iH3;
            this.payloadSize = i10;
            if (i10 < 0) {
                Log.i(TAG, "Found negative packet payload size: " + this.payloadSize);
                this.payloadSize = -1;
            }
        }
        return true;
    }

    private void e() {
        this.pesScratch.p(0);
        this.timeUs = -9223372036854775807L;
        if (this.ptsFlag) {
            this.pesScratch.r(4);
            long jH = ((long) this.pesScratch.h(3)) << 30;
            this.pesScratch.r(1);
            long jH2 = jH | ((long) (this.pesScratch.h(15) << 15));
            this.pesScratch.r(1);
            long jH3 = jH2 | ((long) this.pesScratch.h(15));
            this.pesScratch.r(1);
            if (!this.seenFirstDts && this.dtsFlag) {
                this.pesScratch.r(4);
                long jH4 = ((long) this.pesScratch.h(3)) << 30;
                this.pesScratch.r(1);
                long jH5 = jH4 | ((long) (this.pesScratch.h(15) << 15));
                this.pesScratch.r(1);
                long jH6 = jH5 | ((long) this.pesScratch.h(15));
                this.pesScratch.r(1);
                this.timestampAdjuster.b(jH6);
                this.seenFirstDts = true;
            }
            this.timeUs = this.timestampAdjuster.b(jH3);
        }
    }

    @Override // androidx.media3.extractor.ts.TsPayloadReader
    public final void a(ParsableByteArray parsableByteArray, int i10) throws ParserException {
        Assertions.i(this.timestampAdjuster);
        if ((i10 & 1) != 0) {
            int i11 = this.state;
            if (i11 != 0 && i11 != 1) {
                if (i11 == 2) {
                    Log.i(TAG, "Unexpected start indicator reading extended header");
                } else {
                    if (i11 != 3) {
                        throw new IllegalStateException();
                    }
                    if (this.payloadSize != -1) {
                        Log.i(TAG, "Unexpected start indicator: expected " + this.payloadSize + " more bytes");
                    }
                    this.reader.packetFinished();
                }
            }
            f(1);
        }
        while (parsableByteArray.a() > 0) {
            int i12 = this.state;
            if (i12 != 0) {
                if (i12 != 1) {
                    if (i12 == 2) {
                        if (c(parsableByteArray, this.pesScratch.data, Math.min(10, this.extendedHeaderLength)) && c(parsableByteArray, null, this.extendedHeaderLength)) {
                            e();
                            i10 |= this.dataAlignmentIndicator ? 4 : 0;
                            this.reader.b(this.timeUs, i10);
                            f(3);
                        }
                    } else {
                        if (i12 != 3) {
                            throw new IllegalStateException();
                        }
                        int iA = parsableByteArray.a();
                        int i13 = this.payloadSize;
                        int i14 = i13 != -1 ? iA - i13 : 0;
                        if (i14 > 0) {
                            iA -= i14;
                            parsableByteArray.T(parsableByteArray.f() + iA);
                        }
                        this.reader.a(parsableByteArray);
                        int i15 = this.payloadSize;
                        if (i15 != -1) {
                            int i16 = i15 - iA;
                            this.payloadSize = i16;
                            if (i16 == 0) {
                                this.reader.packetFinished();
                                f(1);
                            }
                        }
                    }
                } else if (c(parsableByteArray, this.pesScratch.data, 9)) {
                    f(d() ? 2 : 0);
                }
            } else {
                parsableByteArray.V(parsableByteArray.a());
            }
        }
    }

    @Override // androidx.media3.extractor.ts.TsPayloadReader
    public void b(TimestampAdjuster timestampAdjuster, ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        this.timestampAdjuster = timestampAdjuster;
        this.reader.c(extractorOutput, trackIdGenerator);
    }

    public PesReader(ElementaryStreamReader elementaryStreamReader) {
        this.reader = elementaryStreamReader;
    }

    private boolean c(ParsableByteArray parsableByteArray, @Nullable byte[] bArr, int i10) {
        int iMin = Math.min(parsableByteArray.a(), i10 - this.bytesRead);
        if (iMin <= 0) {
            return true;
        }
        if (bArr == null) {
            parsableByteArray.V(iMin);
        } else {
            parsableByteArray.l(bArr, this.bytesRead, iMin);
        }
        int i11 = this.bytesRead + iMin;
        this.bytesRead = i11;
        if (i11 == i10) {
            return true;
        }
        return false;
    }
}
