package androidx.media3.exoplayer.source.ads;

import androidx.annotation.Nullable;
import androidx.media3.common.AdViewProvider;
import androidx.media3.common.MediaItem;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.datasource.DataSpec;
import java.io.IOException;

/* JADX INFO: loaded from: classes9.dex */
public interface AdsLoader {

    @UnstableApi
    public interface EventListener {
    }

    public interface Provider {
        @Nullable
        AdsLoader a(MediaItem.AdsConfiguration adsConfiguration);
    }

    @UnstableApi
    void a(AdsMediaSource adsMediaSource, DataSpec dataSpec, Object obj, AdViewProvider adViewProvider, EventListener eventListener);

    @UnstableApi
    void b(AdsMediaSource adsMediaSource, EventListener eventListener);

    @UnstableApi
    void c(AdsMediaSource adsMediaSource, int i10, int i11);

    @UnstableApi
    void d(AdsMediaSource adsMediaSource, int i10, int i11, IOException iOException);

    @UnstableApi
    void setSupportedContentTypes(int... iArr);
}
