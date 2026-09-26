package androidx.media3.exoplayer.upstream;

import androidx.media3.common.util.UnstableApi;
import java.io.IOException;

/* JADX INFO: loaded from: classes7.dex */
@UnstableApi
public interface LoaderErrorThrower {

    public static final class Placeholder implements LoaderErrorThrower {
        @Override // androidx.media3.exoplayer.upstream.LoaderErrorThrower
        public void maybeThrowError() {
        }
    }

    void maybeThrowError() throws IOException;
}
