package androidx.media3.exoplayer.drm;

import android.net.Uri;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.media3.common.MediaItem;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DefaultHttpDataSource;
import com.google.common.collect.l1;
import java.util.Map;

/* JADX INFO: loaded from: classes10.dex */
@UnstableApi
public final class DefaultDrmSessionManagerProvider implements DrmSessionManagerProvider {

    @GuardedBy
    private MediaItem.DrmConfiguration drmConfiguration;

    @Nullable
    private DataSource.Factory drmHttpDataSourceFactory;
    private final Object lock = new Object();

    @GuardedBy
    private DrmSessionManager manager;

    @Nullable
    private String userAgent;

    @RequiresApi
    private DrmSessionManager b(MediaItem.DrmConfiguration drmConfiguration) {
        DataSource.Factory factoryE = this.drmHttpDataSourceFactory;
        if (factoryE == null) {
            factoryE = new DefaultHttpDataSource.Factory().e(this.userAgent);
        }
        Uri uri = drmConfiguration.licenseUri;
        HttpMediaDrmCallback httpMediaDrmCallback = new HttpMediaDrmCallback(uri == null ? null : uri.toString(), drmConfiguration.forceDefaultLicenseUri, factoryE);
        l1<Map.Entry<String, String>> it = drmConfiguration.licenseRequestHeaders.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<String, String> next = it.next();
            httpMediaDrmCallback.e(next.getKey(), next.getValue());
        }
        DefaultDrmSessionManager defaultDrmSessionManagerA = new DefaultDrmSessionManager.Builder().e(drmConfiguration.scheme, FrameworkMediaDrm.DEFAULT_PROVIDER).b(drmConfiguration.multiSession).c(drmConfiguration.playClearContentWithoutKey).d(com.google.common.primitives.e.l(drmConfiguration.forcedSessionTrackTypes)).a(httpMediaDrmCallback);
        defaultDrmSessionManagerA.E(0, drmConfiguration.e());
        return defaultDrmSessionManagerA;
    }

    @Override // androidx.media3.exoplayer.drm.DrmSessionManagerProvider
    public DrmSessionManager a(MediaItem mediaItem) {
        DrmSessionManager drmSessionManager;
        Assertions.e(mediaItem.localConfiguration);
        MediaItem.DrmConfiguration drmConfiguration = mediaItem.localConfiguration.drmConfiguration;
        if (drmConfiguration == null || Util.SDK_INT < 18) {
            return DrmSessionManager.DRM_UNSUPPORTED;
        }
        synchronized (this.lock) {
            try {
                if (!Util.c(drmConfiguration, this.drmConfiguration)) {
                    this.drmConfiguration = drmConfiguration;
                    this.manager = b(drmConfiguration);
                }
                drmSessionManager = (DrmSessionManager) Assertions.e(this.manager);
            } catch (Throwable th) {
                throw th;
            }
        }
        return drmSessionManager;
    }
}
