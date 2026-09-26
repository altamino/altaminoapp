package androidx.media3.exoplayer.hls;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.media3.common.Format;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.TimestampAdjuster;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.text.webvtt.WebvttParserUtil;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes9.dex */
@UnstableApi
public final class WebvttExtractor implements Extractor {
    private static final int HEADER_MAX_LENGTH = 9;
    private static final int HEADER_MIN_LENGTH = 6;
    private static final Pattern LOCAL_TIMESTAMP = Pattern.compile("LOCAL:([^,]+)");
    private static final Pattern MEDIA_TIMESTAMP = Pattern.compile("MPEGTS:(-?\\d+)");

    @Nullable
    private final String language;
    private ExtractorOutput output;
    private int sampleSize;
    private final TimestampAdjuster timestampAdjuster;
    private final ParsableByteArray sampleDataWrapper = new ParsableByteArray();
    private byte[] sampleData = new byte[1024];

    @Override // androidx.media3.extractor.Extractor
    public void release() {
    }

    private TrackOutput a(long j6) {
        TrackOutput trackOutputTrack = this.output.track(0, 3);
        trackOutputTrack.d(new Format.Builder().g0("text/vtt").X(this.language).k0(j6).G());
        this.output.endTracks();
        return trackOutputTrack;
    }

    private void e() throws ParserException {
        ParsableByteArray parsableByteArray = new ParsableByteArray(this.sampleData);
        WebvttParserUtil.e(parsableByteArray);
        long jG = 0;
        long jD = 0;
        for (String strS = parsableByteArray.s(); !TextUtils.isEmpty(strS); strS = parsableByteArray.s()) {
            if (strS.startsWith("X-TIMESTAMP-MAP")) {
                Matcher matcher = LOCAL_TIMESTAMP.matcher(strS);
                if (!matcher.find()) {
                    throw ParserException.a("X-TIMESTAMP-MAP doesn't contain local timestamp: " + strS, null);
                }
                Matcher matcher2 = MEDIA_TIMESTAMP.matcher(strS);
                if (!matcher2.find()) {
                    throw ParserException.a("X-TIMESTAMP-MAP doesn't contain media timestamp: " + strS, null);
                }
                jD = WebvttParserUtil.d((String) Assertions.e(matcher.group(1)));
                jG = TimestampAdjuster.g(Long.parseLong((String) Assertions.e(matcher2.group(1))));
            }
        }
        Matcher matcherA = WebvttParserUtil.a(parsableByteArray);
        if (matcherA == null) {
            a(0L);
            return;
        }
        long jD2 = WebvttParserUtil.d((String) Assertions.e(matcherA.group(1)));
        long jB = this.timestampAdjuster.b(TimestampAdjuster.k((jG + jD2) - jD));
        TrackOutput trackOutputA = a(jB - jD2);
        this.sampleDataWrapper.S(this.sampleData, this.sampleSize);
        trackOutputA.b(this.sampleDataWrapper, this.sampleSize);
        trackOutputA.f(jB, 1, this.sampleSize, 0, null);
    }

    @Override // androidx.media3.extractor.Extractor
    public void b(ExtractorOutput extractorOutput) {
        this.output = extractorOutput;
        extractorOutput.d(new SeekMap.Unseekable(-9223372036854775807L));
    }

    @Override // androidx.media3.extractor.Extractor
    public int c(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        Assertions.e(this.output);
        int length = (int) extractorInput.getLength();
        int i10 = this.sampleSize;
        byte[] bArr = this.sampleData;
        if (i10 == bArr.length) {
            this.sampleData = Arrays.copyOf(bArr, ((length != -1 ? length : bArr.length) * 3) / 2);
        }
        byte[] bArr2 = this.sampleData;
        int i11 = this.sampleSize;
        int i12 = extractorInput.read(bArr2, i11, bArr2.length - i11);
        if (i12 != -1) {
            int i13 = this.sampleSize + i12;
            this.sampleSize = i13;
            if (length == -1 || i13 != length) {
                return 0;
            }
        }
        e();
        return -1;
    }

    @Override // androidx.media3.extractor.Extractor
    public boolean d(ExtractorInput extractorInput) throws IOException {
        extractorInput.peekFully(this.sampleData, 0, 6, false);
        this.sampleDataWrapper.S(this.sampleData, 6);
        if (WebvttParserUtil.b(this.sampleDataWrapper)) {
            return true;
        }
        extractorInput.peekFully(this.sampleData, 6, 3, false);
        this.sampleDataWrapper.S(this.sampleData, 9);
        return WebvttParserUtil.b(this.sampleDataWrapper);
    }

    @Override // androidx.media3.extractor.Extractor
    public void seek(long j6, long j10) {
        throw new IllegalStateException();
    }

    public WebvttExtractor(@Nullable String str, TimestampAdjuster timestampAdjuster) {
        this.language = str;
        this.timestampAdjuster = timestampAdjuster;
    }
}
