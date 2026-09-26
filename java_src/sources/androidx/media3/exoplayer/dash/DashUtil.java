package androidx.media3.exoplayer.dash;

import androidx.annotation.Nullable;
import androidx.media3.common.Format;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSpec;
import androidx.media3.exoplayer.dash.manifest.RangedUri;
import androidx.media3.exoplayer.dash.manifest.Representation;
import androidx.media3.exoplayer.source.chunk.BundledChunkExtractor;
import androidx.media3.exoplayer.source.chunk.ChunkExtractor;
import androidx.media3.exoplayer.source.chunk.InitializationChunk;
import androidx.media3.extractor.ChunkIndex;
import androidx.media3.extractor.mkv.MatroskaExtractor;
import androidx.media3.extractor.mp4.FragmentedMp4Extractor;
import com.google.common.collect.b0;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
@UnstableApi
public final class DashUtil {
    @Nullable
    public static ChunkIndex b(DataSource dataSource, int i10, Representation representation) throws IOException {
        return c(dataSource, i10, representation, 0);
    }

    public static DataSpec a(Representation representation, String str, RangedUri rangedUri, int i10, Map<String, String> map) {
        return new DataSpec.Builder().i(rangedUri.b(str)).h(rangedUri.start).g(rangedUri.length).f(g(representation, rangedUri)).b(i10).e(map).a();
    }

    private static void d(DataSource dataSource, Representation representation, int i10, ChunkExtractor chunkExtractor, RangedUri rangedUri) throws IOException {
        new InitializationChunk(dataSource, a(representation, representation.baseUrls.get(i10).url, rangedUri, 0, b0.m()), representation.format, 0, null, chunkExtractor).load();
    }

    private static ChunkExtractor f(int i10, Format format) {
        String str = format.containerMimeType;
        return new BundledChunkExtractor((str == null || !(str.startsWith("video/webm") || str.startsWith("audio/webm"))) ? new FragmentedMp4Extractor() : new MatroskaExtractor(), i10, format);
    }

    private DashUtil() {
    }

    @Nullable
    public static ChunkIndex c(DataSource dataSource, int i10, Representation representation, int i11) throws IOException {
        if (representation.m() == null) {
            return null;
        }
        ChunkExtractor chunkExtractorF = f(i10, representation.format);
        try {
            e(chunkExtractorF, dataSource, representation, i11, true);
            return chunkExtractorF.c();
        } finally {
            chunkExtractorF.release();
        }
    }

    private static void e(ChunkExtractor chunkExtractor, DataSource dataSource, Representation representation, int i10, boolean z6) throws IOException {
        RangedUri rangedUri = (RangedUri) Assertions.e(representation.m());
        if (z6) {
            RangedUri rangedUriL = representation.l();
            if (rangedUriL == null) {
                return;
            }
            RangedUri rangedUriA = rangedUri.a(rangedUriL, representation.baseUrls.get(i10).url);
            if (rangedUriA == null) {
                d(dataSource, representation, i10, chunkExtractor, rangedUri);
                rangedUri = rangedUriL;
            } else {
                rangedUri = rangedUriA;
            }
        }
        d(dataSource, representation, i10, chunkExtractor, rangedUri);
    }

    public static String g(Representation representation, RangedUri rangedUri) {
        String strJ = representation.j();
        if (strJ == null) {
            return rangedUri.b(representation.baseUrls.get(0).url).toString();
        }
        return strJ;
    }
}
