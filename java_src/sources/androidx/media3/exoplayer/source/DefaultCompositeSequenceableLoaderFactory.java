package androidx.media3.exoplayer.source;

import androidx.media3.common.util.UnstableApi;

/* JADX INFO: loaded from: classes10.dex */
@UnstableApi
public final class DefaultCompositeSequenceableLoaderFactory implements CompositeSequenceableLoaderFactory {
    @Override // androidx.media3.exoplayer.source.CompositeSequenceableLoaderFactory
    public SequenceableLoader a(SequenceableLoader... sequenceableLoaderArr) {
        return new CompositeSequenceableLoader(sequenceableLoaderArr);
    }
}
