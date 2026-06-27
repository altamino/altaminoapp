package com.meicam.sdk;

import android.graphics.RectF;
import java.util.List;

/* loaded from: classes2.dex */
public class NvsARSceneManipulate {
    NvsARSceneManipulateCallback m_callback = null;
    private long m_contextInterface;

    public interface NvsARSceneManipulateCallback {
        void notifyFaceBoundingRect(List<NvsFaceBoundingRectInfo> list);
    }

    private native void nativeCleanup(long j);

    private native void nativeSetARSceneManipulateCallback(long j, NvsARSceneManipulateCallback nvsARSceneManipulateCallback);

    public void setARSceneCallback(NvsARSceneManipulateCallback nvsARSceneManipulateCallback) {
        this.m_callback = nvsARSceneManipulateCallback;
        nativeSetARSceneManipulateCallback(this.m_contextInterface, nvsARSceneManipulateCallback);
    }

    protected void setContextInterface(long j) {
        this.m_contextInterface = j;
    }

    protected void finalize() throws Throwable {
        long j = this.m_contextInterface;
        if (j != 0) {
            nativeCleanup(j);
            this.m_contextInterface = 0L;
        }
        super.finalize();
    }

    public static class NvsFaceBoundingRectInfo {
        public RectF faceBoundingRect;
        public int faceId;

        public NvsFaceBoundingRectInfo(int i, float f, float f2, float f3, float f4) {
            this.faceId = i;
            this.faceBoundingRect = new RectF(f, f2, f3, f4);
        }
    }
}
