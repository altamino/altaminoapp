package androidx.media3.extractor.amr;

import android.net.Uri;
import androidx.media3.common.Format;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.ConstantBitrateSeekMap;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.ExtractorsFactory;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.e;
import java.io.EOFException;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.Arrays;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
@UnstableApi
public final class AmrExtractor implements Extractor {
    public static final int FLAG_ENABLE_CONSTANT_BITRATE_SEEKING = 1;
    public static final int FLAG_ENABLE_CONSTANT_BITRATE_SEEKING_ALWAYS = 2;
    private static final int MAX_FRAME_SIZE_BYTES;
    private static final int NUM_SAME_SIZE_CONSTANT_BIT_RATE_THRESHOLD = 20;
    private static final int SAMPLE_RATE_NB = 8000;
    private static final int SAMPLE_RATE_WB = 16000;
    private static final int SAMPLE_TIME_PER_FRAME_US = 20000;
    private static final int[] frameSizeBytesByTypeWb;
    private int currentSampleBytesRemaining;
    private int currentSampleSize;
    private long currentSampleTimeUs;
    private ExtractorOutput extractorOutput;
    private long firstSamplePosition;
    private int firstSampleSize;
    private final int flags;
    private boolean hasOutputFormat;
    private boolean hasOutputSeekMap;
    private boolean isWideBand;
    private int numSamplesWithSameSize;
    private final byte[] scratch;
    private SeekMap seekMap;
    private long timeOffsetUs;
    private TrackOutput trackOutput;
    public static final ExtractorsFactory FACTORY = new ExtractorsFactory() { // from class: androidx.media3.extractor.amr.a
        @Override // androidx.media3.extractor.ExtractorsFactory
        public /* synthetic */ Extractor[] a(Uri uri, Map map) {
            return e.a(this, uri, map);
        }

        @Override // androidx.media3.extractor.ExtractorsFactory
        public final Extractor[] createExtractors() {
            return AmrExtractor.l();
        }
    };
    private static final int[] frameSizeBytesByTypeNb = {13, 14, 16, 18, 20, 21, 27, 32, 6, 7, 6, 6, 1, 1, 1, 1};
    private static final byte[] amrSignatureNb = Util.q0("#!AMR\n");
    private static final byte[] amrSignatureWb = Util.q0("#!AMR-WB\n");

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Flags {
    }

    public AmrExtractor() {
        this(0);
    }

    private static int f(int i10, long j6) {
        return (int) ((((long) i10) * 8000000) / j6);
    }

    private boolean i(int i10) {
        return !this.isWideBand && (i10 < 12 || i10 > 14);
    }

    private boolean k(int i10) {
        return this.isWideBand && (i10 < 10 || i10 > 13);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Extractor[] l() {
        return new Extractor[]{new AmrExtractor()};
    }

    @Override // androidx.media3.extractor.Extractor
    public void release() {
    }

    static {
        int[] iArr = {18, 24, 33, 37, 41, 47, 51, 59, 61, 6, 1, 1, 1, 1, 1, 1};
        frameSizeBytesByTypeWb = iArr;
        MAX_FRAME_SIZE_BYTES = iArr[8];
    }

    public AmrExtractor(int i10) {
        this.flags = (i10 & 2) != 0 ? i10 | 1 : i10;
        this.scratch = new byte[1];
        this.firstSampleSize = -1;
    }

    private void e() {
        Assertions.i(this.trackOutput);
        Util.j(this.extractorOutput);
    }

    private SeekMap g(long j6, boolean z6) {
        return new ConstantBitrateSeekMap(j6, this.firstSamplePosition, f(this.firstSampleSize, 20000L), this.firstSampleSize, z6);
    }

    private boolean j(int i10) {
        return i10 >= 0 && i10 <= 15 && (k(i10) || i(i10));
    }

    private void m() {
        if (this.hasOutputFormat) {
            return;
        }
        this.hasOutputFormat = true;
        boolean z6 = this.isWideBand;
        this.trackOutput.d(new Format.Builder().g0(z6 ? "audio/amr-wb" : "audio/3gpp").Y(MAX_FRAME_SIZE_BYTES).J(1).h0(z6 ? 16000 : 8000).G());
    }

    private void n(long j6, int i10) {
        int i11;
        if (this.hasOutputSeekMap) {
            return;
        }
        int i12 = this.flags;
        if ((i12 & 1) == 0 || j6 == -1 || !((i11 = this.firstSampleSize) == -1 || i11 == this.currentSampleSize)) {
            SeekMap.Unseekable unseekable = new SeekMap.Unseekable(-9223372036854775807L);
            this.seekMap = unseekable;
            this.extractorOutput.d(unseekable);
            this.hasOutputSeekMap = true;
            return;
        }
        if (this.numSamplesWithSameSize >= 20 || i10 == -1) {
            SeekMap seekMapG = g(j6, (i12 & 2) != 0);
            this.seekMap = seekMapG;
            this.extractorOutput.d(seekMapG);
            this.hasOutputSeekMap = true;
        }
    }

    private boolean q(ExtractorInput extractorInput) throws IOException {
        byte[] bArr = amrSignatureNb;
        if (o(extractorInput, bArr)) {
            this.isWideBand = false;
            extractorInput.skipFully(bArr.length);
            return true;
        }
        byte[] bArr2 = amrSignatureWb;
        if (!o(extractorInput, bArr2)) {
            return false;
        }
        this.isWideBand = true;
        extractorInput.skipFully(bArr2.length);
        return true;
    }

    private int r(ExtractorInput extractorInput) throws IOException {
        if (this.currentSampleBytesRemaining == 0) {
            try {
                int iP = p(extractorInput);
                this.currentSampleSize = iP;
                this.currentSampleBytesRemaining = iP;
                if (this.firstSampleSize == -1) {
                    this.firstSamplePosition = extractorInput.getPosition();
                    this.firstSampleSize = this.currentSampleSize;
                }
                if (this.firstSampleSize == this.currentSampleSize) {
                    this.numSamplesWithSameSize++;
                }
            } catch (EOFException unused) {
                return -1;
            }
        }
        int iE = this.trackOutput.e(extractorInput, this.currentSampleBytesRemaining, true);
        if (iE == -1) {
            return -1;
        }
        int i10 = this.currentSampleBytesRemaining - iE;
        this.currentSampleBytesRemaining = i10;
        if (i10 > 0) {
            return 0;
        }
        this.trackOutput.f(this.timeOffsetUs + this.currentSampleTimeUs, 1, this.currentSampleSize, 0, null);
        this.currentSampleTimeUs += 20000;
        return 0;
    }

    @Override // androidx.media3.extractor.Extractor
    public void b(ExtractorOutput extractorOutput) {
        this.extractorOutput = extractorOutput;
        this.trackOutput = extractorOutput.track(0, 1);
        extractorOutput.endTracks();
    }

    @Override // androidx.media3.extractor.Extractor
    public void seek(long j6, long j10) {
        this.currentSampleTimeUs = 0L;
        this.currentSampleSize = 0;
        this.currentSampleBytesRemaining = 0;
        if (j6 != 0) {
            SeekMap seekMap = this.seekMap;
            if (seekMap instanceof ConstantBitrateSeekMap) {
                this.timeOffsetUs = ((ConstantBitrateSeekMap) seekMap).c(j6);
                return;
            }
        }
        this.timeOffsetUs = 0L;
    }

    private int h(int i10) throws ParserException {
        String str;
        if (!j(i10)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Illegal AMR ");
            if (this.isWideBand) {
                str = "WB";
            } else {
                str = "NB";
            }
            sb.append(str);
            sb.append(" frame type ");
            sb.append(i10);
            throw ParserException.a(sb.toString(), null);
        }
        if (this.isWideBand) {
            return frameSizeBytesByTypeWb[i10];
        }
        return frameSizeBytesByTypeNb[i10];
    }

    private static boolean o(ExtractorInput extractorInput, byte[] bArr) throws IOException {
        extractorInput.resetPeekPosition();
        byte[] bArr2 = new byte[bArr.length];
        extractorInput.peekFully(bArr2, 0, bArr.length);
        return Arrays.equals(bArr2, bArr);
    }

    private int p(ExtractorInput extractorInput) throws IOException {
        extractorInput.resetPeekPosition();
        extractorInput.peekFully(this.scratch, 0, 1);
        byte b7 = this.scratch[0];
        if ((b7 & 131) <= 0) {
            return h((b7 >> 3) & 15);
        }
        throw ParserException.a("Invalid padding bits for frame header " + ((int) b7), null);
    }

    @Override // androidx.media3.extractor.Extractor
    public int c(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        e();
        if (extractorInput.getPosition() == 0 && !q(extractorInput)) {
            throw ParserException.a("Could not find AMR header.", null);
        }
        m();
        int iR = r(extractorInput);
        n(extractorInput.getLength(), iR);
        return iR;
    }

    @Override // androidx.media3.extractor.Extractor
    public boolean d(ExtractorInput extractorInput) throws IOException {
        return q(extractorInput);
    }
}
