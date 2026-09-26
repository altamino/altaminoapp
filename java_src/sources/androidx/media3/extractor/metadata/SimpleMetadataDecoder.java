package androidx.media3.extractor.metadata;

import androidx.annotation.Nullable;
import androidx.media3.common.Metadata;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
@UnstableApi
public abstract class SimpleMetadataDecoder implements MetadataDecoder {
    @Nullable
    protected abstract Metadata b(MetadataInputBuffer metadataInputBuffer, ByteBuffer byteBuffer);

    @Override // androidx.media3.extractor.metadata.MetadataDecoder
    @Nullable
    public final Metadata a(MetadataInputBuffer metadataInputBuffer) {
        ByteBuffer byteBuffer = (ByteBuffer) Assertions.e(metadataInputBuffer.data);
        Assertions.a(byteBuffer.position() == 0 && byteBuffer.hasArray() && byteBuffer.arrayOffset() == 0);
        if (metadataInputBuffer.f()) {
            return null;
        }
        return b(metadataInputBuffer, byteBuffer);
    }
}
