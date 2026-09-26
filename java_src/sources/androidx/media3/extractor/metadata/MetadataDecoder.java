package androidx.media3.extractor.metadata;

import androidx.annotation.Nullable;
import androidx.media3.common.Metadata;
import androidx.media3.common.util.UnstableApi;

/* JADX INFO: loaded from: classes8.dex */
@UnstableApi
public interface MetadataDecoder {
    @Nullable
    Metadata a(MetadataInputBuffer metadataInputBuffer);
}
