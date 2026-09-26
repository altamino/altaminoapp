package androidx.media3.exoplayer.source;

import android.annotation.SuppressLint;
import android.media.MediaParser;
import android.net.Uri;
import android.util.Pair;
import androidx.annotation.RequiresApi;
import androidx.media3.common.DataReader;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.source.mediaparser.InputReaderAdapterV30;
import androidx.media3.exoplayer.source.mediaparser.MediaParserUtil;
import androidx.media3.exoplayer.source.mediaparser.OutputConsumerAdapterV30;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.PositionHolder;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
@RequiresApi
@UnstableApi
public final class MediaParserExtractorAdapter implements ProgressiveMediaExtractor {
    public static final ProgressiveMediaExtractor.Factory FACTORY = new ProgressiveMediaExtractor.Factory() { // from class: androidx.media3.exoplayer.source.m
        @Override // androidx.media3.exoplayer.source.ProgressiveMediaExtractor.Factory
        public final ProgressiveMediaExtractor a(PlayerId playerId) {
            return new MediaParserExtractorAdapter(playerId);
        }
    };
    private final InputReaderAdapterV30 inputReaderAdapter;
    private final MediaParser mediaParser;
    private final OutputConsumerAdapterV30 outputConsumerAdapter;
    private String parserName;

    @Override // androidx.media3.exoplayer.source.ProgressiveMediaExtractor
    public long a() {
        return this.inputReaderAdapter.getPosition();
    }

    @Override // androidx.media3.exoplayer.source.ProgressiveMediaExtractor
    public void b() {
        if ("android.media.mediaparser.Mp3Parser".equals(this.parserName)) {
            this.outputConsumerAdapter.a();
        }
    }

    @Override // androidx.media3.exoplayer.source.ProgressiveMediaExtractor
    public void c(DataReader dataReader, Uri uri, Map<String, List<String>> map, long j6, long j10, ExtractorOutput extractorOutput) throws IOException {
        this.outputConsumerAdapter.m(extractorOutput);
        this.inputReaderAdapter.c(dataReader, j10);
        this.inputReaderAdapter.b(j6);
        String parserName = this.mediaParser.getParserName();
        if ("android.media.mediaparser.UNKNOWN".equals(parserName)) {
            this.mediaParser.advance(this.inputReaderAdapter);
            String parserName2 = this.mediaParser.getParserName();
            this.parserName = parserName2;
            this.outputConsumerAdapter.p(parserName2);
            return;
        }
        if (parserName.equals(this.parserName)) {
            return;
        }
        String parserName3 = this.mediaParser.getParserName();
        this.parserName = parserName3;
        this.outputConsumerAdapter.p(parserName3);
    }

    @Override // androidx.media3.exoplayer.source.ProgressiveMediaExtractor
    public int d(PositionHolder positionHolder) throws IOException {
        boolean zAdvance = this.mediaParser.advance(this.inputReaderAdapter);
        long jA = this.inputReaderAdapter.a();
        positionHolder.position = jA;
        if (zAdvance) {
            return jA != -1 ? 1 : 0;
        }
        return -1;
    }

    @Override // androidx.media3.exoplayer.source.ProgressiveMediaExtractor
    public void release() {
        this.mediaParser.release();
    }

    @Override // androidx.media3.exoplayer.source.ProgressiveMediaExtractor
    public void seek(long j6, long j10) {
        this.inputReaderAdapter.b(j6);
        Pair<MediaParser.SeekPoint, MediaParser.SeekPoint> pairI = this.outputConsumerAdapter.i(j10);
        this.mediaParser.seek(j.a(pairI.second).position == j6 ? j.a(pairI.second) : j.a(pairI.first));
    }

    @SuppressLint({"WrongConstant"})
    public MediaParserExtractorAdapter(PlayerId playerId) {
        OutputConsumerAdapterV30 outputConsumerAdapterV30 = new OutputConsumerAdapterV30();
        this.outputConsumerAdapter = outputConsumerAdapterV30;
        this.inputReaderAdapter = new InputReaderAdapterV30();
        MediaParser mediaParserCreate = MediaParser.create(outputConsumerAdapterV30, new String[0]);
        this.mediaParser = mediaParserCreate;
        Boolean bool = Boolean.TRUE;
        mediaParserCreate.setParameter(MediaParserUtil.PARAMETER_EAGERLY_EXPOSE_TRACK_TYPE, bool);
        mediaParserCreate.setParameter(MediaParserUtil.PARAMETER_IN_BAND_CRYPTO_INFO, bool);
        mediaParserCreate.setParameter(MediaParserUtil.PARAMETER_INCLUDE_SUPPLEMENTAL_DATA, bool);
        this.parserName = "android.media.mediaparser.UNKNOWN";
        if (Util.SDK_INT >= 31) {
            MediaParserUtil.a(mediaParserCreate, playerId);
        }
    }
}
