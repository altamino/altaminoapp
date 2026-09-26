package androidx.media3.exoplayer.drm;

import android.os.Looper;
import androidx.annotation.Nullable;
import androidx.media3.common.Format;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.analytics.PlayerId;

/* JADX INFO: loaded from: classes9.dex */
@UnstableApi
public interface DrmSessionManager {
    public static final DrmSessionManager DRM_UNSUPPORTED;

    @Deprecated
    public static final DrmSessionManager DUMMY;

    public interface DrmSessionReference {
        public static final DrmSessionReference EMPTY = new DrmSessionReference() { // from class: androidx.media3.exoplayer.drm.r
            @Override // androidx.media3.exoplayer.drm.DrmSessionManager.DrmSessionReference
            public final void release() {
                s.a();
            }
        };

        void release();
    }

    int a(Format format);

    void b(Looper looper, PlayerId playerId);

    @Nullable
    DrmSession c(@Nullable DrmSessionEventListener.EventDispatcher eventDispatcher, Format format);

    DrmSessionReference d(@Nullable DrmSessionEventListener.EventDispatcher eventDispatcher, Format format);

    void prepare();

    void release();

    static {
        DrmSessionManager drmSessionManager = new DrmSessionManager() { // from class: androidx.media3.exoplayer.drm.DrmSessionManager.1
            @Override // androidx.media3.exoplayer.drm.DrmSessionManager
            public void b(Looper looper, PlayerId playerId) {
            }

            @Override // androidx.media3.exoplayer.drm.DrmSessionManager
            public /* synthetic */ DrmSessionReference d(DrmSessionEventListener.EventDispatcher eventDispatcher, Format format) {
                return q.a(this, eventDispatcher, format);
            }

            @Override // androidx.media3.exoplayer.drm.DrmSessionManager
            public /* synthetic */ void prepare() {
                q.b(this);
            }

            @Override // androidx.media3.exoplayer.drm.DrmSessionManager
            public /* synthetic */ void release() {
                q.c(this);
            }

            @Override // androidx.media3.exoplayer.drm.DrmSessionManager
            public int a(Format format) {
                return format.drmInitData != null ? 1 : 0;
            }

            @Override // androidx.media3.exoplayer.drm.DrmSessionManager
            @Nullable
            public DrmSession c(@Nullable DrmSessionEventListener.EventDispatcher eventDispatcher, Format format) {
                if (format.drmInitData == null) {
                    return null;
                }
                return new ErrorStateDrmSession(new DrmSession.DrmSessionException(new UnsupportedDrmException(1), 6001));
            }
        };
        DRM_UNSUPPORTED = drmSessionManager;
        DUMMY = drmSessionManager;
    }
}
