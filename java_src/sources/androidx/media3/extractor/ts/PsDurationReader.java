package androidx.media3.extractor.ts;

import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.TimestampAdjuster;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.PositionHolder;
import java.io.IOException;

/* JADX INFO: loaded from: classes8.dex */
final class PsDurationReader {
    private static final String TAG = "PsDurationReader";
    private static final int TIMESTAMP_SEARCH_BYTES = 20000;
    private boolean isDurationRead;
    private boolean isFirstScrValueRead;
    private boolean isLastScrValueRead;
    private final TimestampAdjuster scrTimestampAdjuster = new TimestampAdjuster(0);
    private long firstScrValue = -9223372036854775807L;
    private long lastScrValue = -9223372036854775807L;
    private long durationUs = -9223372036854775807L;
    private final ParsableByteArray packetBuffer = new ParsableByteArray();

    private static boolean a(byte[] bArr) {
        return (bArr[0] & 196) == 68 && (bArr[2] & 4) == 4 && (bArr[4] & 4) == 4 && (bArr[5] & 1) == 1 && (bArr[8] & 3) == 3;
    }

    private static long m(byte[] bArr) {
        byte b7 = bArr[0];
        long j6 = (((((long) b7) & 56) >> 3) << 30) | ((((long) b7) & 3) << 28) | ((((long) bArr[1]) & 255) << 20);
        byte b10 = bArr[2];
        return j6 | (((((long) b10) & 248) >> 3) << 15) | ((((long) b10) & 3) << 13) | ((((long) bArr[3]) & 255) << 5) | ((((long) bArr[4]) & 248) >> 3);
    }

    public long c() {
        return this.durationUs;
    }

    public TimestampAdjuster d() {
        return this.scrTimestampAdjuster;
    }

    public boolean e() {
        return this.isDurationRead;
    }

    private int b(ExtractorInput extractorInput) {
        this.packetBuffer.R(Util.EMPTY_BYTE_ARRAY);
        this.isDurationRead = true;
        extractorInput.resetPeekPosition();
        return 0;
    }

    private int f(byte[] bArr, int i10) {
        return (bArr[i10 + 3] & 255) | ((bArr[i10] & 255) << 24) | ((bArr[i10 + 1] & 255) << 16) | ((bArr[i10 + 2] & 255) << 8);
    }

    public int g(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        if (!this.isLastScrValueRead) {
            return j(extractorInput, positionHolder);
        }
        if (this.lastScrValue == -9223372036854775807L) {
            return b(extractorInput);
        }
        if (!this.isFirstScrValueRead) {
            return h(extractorInput, positionHolder);
        }
        long j6 = this.firstScrValue;
        if (j6 == -9223372036854775807L) {
            return b(extractorInput);
        }
        long jB = this.scrTimestampAdjuster.b(this.lastScrValue) - this.scrTimestampAdjuster.b(j6);
        this.durationUs = jB;
        if (jB < 0) {
            Log.i(TAG, "Invalid duration: " + this.durationUs + ". Using TIME_UNSET instead.");
            this.durationUs = -9223372036854775807L;
        }
        return b(extractorInput);
    }

    PsDurationReader() {
    }

    private int h(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        int iMin = (int) Math.min(20000L, extractorInput.getLength());
        long j6 = 0;
        if (extractorInput.getPosition() != j6) {
            positionHolder.position = j6;
            return 1;
        }
        this.packetBuffer.Q(iMin);
        extractorInput.resetPeekPosition();
        extractorInput.peekFully(this.packetBuffer.e(), 0, iMin);
        this.firstScrValue = i(this.packetBuffer);
        this.isFirstScrValueRead = true;
        return 0;
    }

    private long i(ParsableByteArray parsableByteArray) {
        int iG = parsableByteArray.g();
        for (int iF = parsableByteArray.f(); iF < iG - 3; iF++) {
            if (f(parsableByteArray.e(), iF) == 442) {
                parsableByteArray.U(iF + 4);
                long jL = l(parsableByteArray);
                if (jL != -9223372036854775807L) {
                    return jL;
                }
            }
        }
        return -9223372036854775807L;
    }

    private int j(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        long length = extractorInput.getLength();
        int iMin = (int) Math.min(20000L, length);
        long j6 = length - ((long) iMin);
        if (extractorInput.getPosition() != j6) {
            positionHolder.position = j6;
            return 1;
        }
        this.packetBuffer.Q(iMin);
        extractorInput.resetPeekPosition();
        extractorInput.peekFully(this.packetBuffer.e(), 0, iMin);
        this.lastScrValue = k(this.packetBuffer);
        this.isLastScrValueRead = true;
        return 0;
    }

    private long k(ParsableByteArray parsableByteArray) {
        int iF = parsableByteArray.f();
        for (int iG = parsableByteArray.g() - 4; iG >= iF; iG--) {
            if (f(parsableByteArray.e(), iG) == 442) {
                parsableByteArray.U(iG + 4);
                long jL = l(parsableByteArray);
                if (jL != -9223372036854775807L) {
                    return jL;
                }
            }
        }
        return -9223372036854775807L;
    }

    public static long l(ParsableByteArray parsableByteArray) {
        int iF = parsableByteArray.f();
        if (parsableByteArray.a() < 9) {
            return -9223372036854775807L;
        }
        byte[] bArr = new byte[9];
        parsableByteArray.l(bArr, 0, 9);
        parsableByteArray.U(iF);
        if (!a(bArr)) {
            return -9223372036854775807L;
        }
        return m(bArr);
    }
}
