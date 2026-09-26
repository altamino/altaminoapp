package androidx.media3.exoplayer.drm;

import android.os.ConditionVariable;
import android.os.Handler;
import android.os.HandlerThread;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.source.MediaSource;

/* JADX INFO: loaded from: classes9.dex */
@RequiresApi
@UnstableApi
public final class OfflineLicenseHelper {
    private static final Format FORMAT_WITH_EMPTY_DRM_INIT_DATA = new Format.Builder().O(new DrmInitData(new DrmInitData.SchemeData[0])).G();
    private final ConditionVariable drmListenerConditionVariable;
    private final DefaultDrmSessionManager drmSessionManager;
    private final DrmSessionEventListener.EventDispatcher eventDispatcher;
    private final Handler handler;
    private final HandlerThread handlerThread;

    public OfflineLicenseHelper(DefaultDrmSessionManager defaultDrmSessionManager, DrmSessionEventListener.EventDispatcher eventDispatcher) {
        this.drmSessionManager = defaultDrmSessionManager;
        this.eventDispatcher = eventDispatcher;
        HandlerThread handlerThread = new HandlerThread("ExoPlayer:OfflineLicenseHelper");
        this.handlerThread = handlerThread;
        handlerThread.start();
        this.handler = new Handler(handlerThread.getLooper());
        this.drmListenerConditionVariable = new ConditionVariable();
        eventDispatcher.g(new Handler(handlerThread.getLooper()), new DrmSessionEventListener() { // from class: androidx.media3.exoplayer.drm.OfflineLicenseHelper.1
            @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
            public /* synthetic */ void F(int i10, MediaSource.MediaPeriodId mediaPeriodId) {
                j.c(this, i10, mediaPeriodId);
            }

            @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
            public /* synthetic */ void N(int i10, MediaSource.MediaPeriodId mediaPeriodId, int i11) {
                j.b(this, i10, mediaPeriodId, i11);
            }

            @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
            public /* synthetic */ void O(int i10, MediaSource.MediaPeriodId mediaPeriodId) {
                j.a(this, i10, mediaPeriodId);
            }

            @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
            public void R(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
                OfflineLicenseHelper.this.drmListenerConditionVariable.open();
            }

            @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
            public void S(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId, Exception exc) {
                OfflineLicenseHelper.this.drmListenerConditionVariable.open();
            }

            @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
            public void W(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
                OfflineLicenseHelper.this.drmListenerConditionVariable.open();
            }

            @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
            public void x(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
                OfflineLicenseHelper.this.drmListenerConditionVariable.open();
            }
        });
    }
}
