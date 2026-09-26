package androidx.media3.extractor.ts;

import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.TimestampAdjuster;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.PositionHolder;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
final class TsDurationReader {
    private static final String TAG = "TsDurationReader";
    private boolean isDurationRead;
    private boolean isFirstPcrValueRead;
    private boolean isLastPcrValueRead;
    private final int timestampSearchBytes;
    private final TimestampAdjuster pcrTimestampAdjuster = new TimestampAdjuster(0);
    private long firstPcrValue = -9223372036854775807L;
    private long lastPcrValue = -9223372036854775807L;
    private long durationUs = -9223372036854775807L;
    private final ParsableByteArray packetBuffer = new ParsableByteArray();

    public long b() {
        return this.durationUs;
    }

    public TimestampAdjuster c() {
        return this.pcrTimestampAdjuster;
    }

    public boolean d() {
        return this.isDurationRead;
    }

    private int a(ExtractorInput extractorInput) {
        this.packetBuffer.R(Util.EMPTY_BYTE_ARRAY);
        this.isDurationRead = true;
        extractorInput.resetPeekPosition();
        return 0;
    }

    private int f(ExtractorInput extractorInput, PositionHolder positionHolder, int i10) throws IOException {
        int iMin = (int) Math.min(this.timestampSearchBytes, extractorInput.getLength());
        long j6 = 0;
        if (extractorInput.getPosition() != j6) {
            positionHolder.position = j6;
            return 1;
        }
        this.packetBuffer.Q(iMin);
        extractorInput.resetPeekPosition();
        extractorInput.peekFully(this.packetBuffer.e(), 0, iMin);
        this.firstPcrValue = g(this.packetBuffer, i10);
        this.isFirstPcrValueRead = true;
        return 0;
    }

    public int e(ExtractorInput extractorInput, PositionHolder positionHolder, int i10) throws IOException {
        if (i10 <= 0) {
            return a(extractorInput);
        }
        if (!this.isLastPcrValueRead) {
            return h(extractorInput, positionHolder, i10);
        }
        if (this.lastPcrValue == -9223372036854775807L) {
            return a(extractorInput);
        }
        if (!this.isFirstPcrValueRead) {
            return f(extractorInput, positionHolder, i10);
        }
        long j6 = this.firstPcrValue;
        if (j6 == -9223372036854775807L) {
            return a(extractorInput);
        }
        long jB = this.pcrTimestampAdjuster.b(this.lastPcrValue) - this.pcrTimestampAdjuster.b(j6);
        this.durationUs = jB;
        if (jB < 0) {
            Log.i(TAG, "Invalid duration: " + this.durationUs + ". Using TIME_UNSET instead.");
            this.durationUs = -9223372036854775807L;
        }
        return a(extractorInput);
    }

    TsDurationReader(int i10) {
        this.timestampSearchBytes = i10;
    }

    private long g(ParsableByteArray parsableByteArray, int i10) {
        int iG = parsableByteArray.g();
        for (int iF = parsableByteArray.f(); iF < iG; iF++) {
            if (parsableByteArray.e()[iF] == 71) {
                long jC = TsUtil.c(parsableByteArray, iF, i10);
                if (jC != -9223372036854775807L) {
                    return jC;
                }
            }
        }
        return -9223372036854775807L;
    }

    private int h(ExtractorInput extractorInput, PositionHolder positionHolder, int i10) throws IOException {
        long length = extractorInput.getLength();
        int iMin = (int) Math.min(this.timestampSearchBytes, length);
        long j6 = length - ((long) iMin);
        if (extractorInput.getPosition() != j6) {
            positionHolder.position = j6;
            return 1;
        }
        this.packetBuffer.Q(iMin);
        extractorInput.resetPeekPosition();
        extractorInput.peekFully(this.packetBuffer.e(), 0, iMin);
        this.lastPcrValue = i(this.packetBuffer, i10);
        this.isLastPcrValueRead = true;
        return 0;
    }

    private long i(ParsableByteArray parsableByteArray, int i10) {
        int iF = parsableByteArray.f();
        int iG = parsableByteArray.g();
        for (int i11 = iG - 188; i11 >= iF; i11--) {
            if (TsUtil.b(parsableByteArray.e(), iF, iG, i11)) {
                long jC = TsUtil.c(parsableByteArray, i11, i10);
                if (jC != -9223372036854775807L) {
                    return jC;
                }
            }
        }
        return -9223372036854775807L;
    }
}
