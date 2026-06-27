package com.google.android.exoplayer2.source.dash;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.ChunkIndex;
import com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor;
import com.google.android.exoplayer2.extractor.mp4.FragmentedMp4Extractor;
import com.google.android.exoplayer2.source.chunk.ChunkExtractorWrapper;
import com.google.android.exoplayer2.source.chunk.InitializationChunk;
import com.google.android.exoplayer2.source.dash.manifest.RangedUri;
import com.google.android.exoplayer2.source.dash.manifest.Representation;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DataSpec;
import com.google.android.exoplayer2.util.MimeTypes;
import java.io.IOException;

/* loaded from: classes.dex */
public final class DashUtil {
    public static ChunkIndex loadChunkIndex(DataSource dataSource, int i, Representation representation) throws InterruptedException, IOException {
        ChunkExtractorWrapper chunkExtractorWrapperLoadInitializationData = loadInitializationData(dataSource, i, representation, true);
        if (chunkExtractorWrapperLoadInitializationData == null) {
            return null;
        }
        return (ChunkIndex) chunkExtractorWrapperLoadInitializationData.getSeekMap();
    }

    private static ChunkExtractorWrapper loadInitializationData(DataSource dataSource, int i, Representation representation, boolean z) throws InterruptedException, IOException {
        RangedUri initializationUri = representation.getInitializationUri();
        if (initializationUri == null) {
            return null;
        }
        ChunkExtractorWrapper chunkExtractorWrapperNewWrappedExtractor = newWrappedExtractor(i, representation.format);
        if (z) {
            RangedUri indexUri = representation.getIndexUri();
            if (indexUri == null) {
                return null;
            }
            RangedUri rangedUriAttemptMerge = initializationUri.attemptMerge(indexUri, representation.baseUrl);
            if (rangedUriAttemptMerge == null) {
                loadInitializationData(dataSource, representation, chunkExtractorWrapperNewWrappedExtractor, initializationUri);
                initializationUri = indexUri;
            } else {
                initializationUri = rangedUriAttemptMerge;
            }
        }
        loadInitializationData(dataSource, representation, chunkExtractorWrapperNewWrappedExtractor, initializationUri);
        return chunkExtractorWrapperNewWrappedExtractor;
    }

    private static void loadInitializationData(DataSource dataSource, Representation representation, ChunkExtractorWrapper chunkExtractorWrapper, RangedUri rangedUri) throws InterruptedException, IOException {
        new InitializationChunk(dataSource, new DataSpec(rangedUri.resolveUri(representation.baseUrl), rangedUri.start, rangedUri.length, representation.getCacheKey()), representation.format, 0, null, chunkExtractorWrapper).load();
    }

    private static ChunkExtractorWrapper newWrappedExtractor(int i, Format format) {
        String str = format.containerMimeType;
        return new ChunkExtractorWrapper(str != null && (str.startsWith(MimeTypes.VIDEO_WEBM) || str.startsWith(MimeTypes.AUDIO_WEBM)) ? new MatroskaExtractor() : new FragmentedMp4Extractor(), i, format);
    }
}
