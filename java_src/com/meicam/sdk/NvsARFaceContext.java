package com.meicam.sdk;

import android.os.Handler;
import android.os.Looper;

/* loaded from: classes2.dex */
public class NvsARFaceContext {
    public static final int OBJECT_TRACKING_TYPE_ANIMAL = 1;
    public static final int OBJECT_TRACKING_TYPE_FACE = 0;
    private long m_contextInterface;
    NvsARFaceContextInternalCallback m_callbackinternal = null;
    NvsARFaceContextCallback m_callback = null;
    NvsARFaceContextErrorCallback m_errorCallback = null;
    Handler mainHandler = new Handler(Looper.getMainLooper());

    public interface NvsARFaceContextCallback {
        void notifyFaceItemLoadingBegin(String str);

        void notifyFaceItemLoadingFinish();
    }

    public interface NvsARFaceContextErrorCallback {
        void notifyFaceItemLoadingFailed(String str, int i);
    }

    private interface NvsARFaceContextInternalCallback {
        void notifyFaceItemLoadingBegin(String str);

        void notifyFaceItemLoadingFailed(String str, int i);

        void notifyFaceItemLoadingFinish();
    }

    private native void nativeCleanup(long j);

    private native boolean nativeIsObjectTracking(long j, int i);

    private native void nativeSetARFaceCallback(long j, NvsARFaceContextInternalCallback nvsARFaceContextInternalCallback);

    private native void nativeSetDualBufferInputUsed(long j, boolean z);

    public boolean isFaceTracking() {
        NvsUtils.checkFunctionInMainThread();
        return nativeIsObjectTracking(this.m_contextInterface, 0);
    }

    public boolean isObjectTracking(int i) {
        NvsUtils.checkFunctionInMainThread();
        return nativeIsObjectTracking(this.m_contextInterface, i);
    }

    protected class RunnableExt implements Runnable {
        NvsARFaceContextCallback mCallback;
        public String mItemPath;

        RunnableExt(String str, NvsARFaceContextCallback nvsARFaceContextCallback) {
            this.mCallback = null;
            this.mItemPath = str;
            this.mCallback = nvsARFaceContextCallback;
        }

        @Override // java.lang.Runnable
        public void run() {
            NvsARFaceContextCallback nvsARFaceContextCallback = this.mCallback;
            if (nvsARFaceContextCallback != null) {
                nvsARFaceContextCallback.notifyFaceItemLoadingBegin(this.mItemPath);
            }
        }
    }

    public void setContextCallback(NvsARFaceContextCallback nvsARFaceContextCallback) {
        this.m_callback = nvsARFaceContextCallback;
        if (this.m_callback != null) {
            if (this.m_callbackinternal != null) {
                return;
            } else {
                this.m_callbackinternal = new NvsARFaceContextInternalCallback() { // from class: com.meicam.sdk.NvsARFaceContext.1
                    @Override // com.meicam.sdk.NvsARFaceContext.NvsARFaceContextInternalCallback
                    public void notifyFaceItemLoadingBegin(String str) {
                        NvsARFaceContext nvsARFaceContext = NvsARFaceContext.this;
                        nvsARFaceContext.mainHandler.post(nvsARFaceContext.new RunnableExt(str, nvsARFaceContext.m_callback));
                    }

                    @Override // com.meicam.sdk.NvsARFaceContext.NvsARFaceContextInternalCallback
                    public void notifyFaceItemLoadingFinish() {
                        NvsARFaceContext.this.mainHandler.post(new Runnable() { // from class: com.meicam.sdk.NvsARFaceContext.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                NvsARFaceContextCallback nvsARFaceContextCallback2 = NvsARFaceContext.this.m_callback;
                                if (nvsARFaceContextCallback2 != null) {
                                    nvsARFaceContextCallback2.notifyFaceItemLoadingFinish();
                                }
                            }
                        });
                    }

                    @Override // com.meicam.sdk.NvsARFaceContext.NvsARFaceContextInternalCallback
                    public void notifyFaceItemLoadingFailed(final String str, final int i) {
                        NvsARFaceContext.this.mainHandler.post(new Runnable() { // from class: com.meicam.sdk.NvsARFaceContext.1.2
                            @Override // java.lang.Runnable
                            public void run() {
                                NvsARFaceContextErrorCallback nvsARFaceContextErrorCallback = NvsARFaceContext.this.m_errorCallback;
                                if (nvsARFaceContextErrorCallback != null) {
                                    nvsARFaceContextErrorCallback.notifyFaceItemLoadingFailed(str, i);
                                }
                            }
                        });
                    }
                };
            }
        }
        nativeSetARFaceCallback(this.m_contextInterface, this.m_callbackinternal);
    }

    public void setContextErrorCallback(NvsARFaceContextErrorCallback nvsARFaceContextErrorCallback) {
        this.m_errorCallback = nvsARFaceContextErrorCallback;
        if (this.m_errorCallback != null) {
            if (this.m_callbackinternal != null) {
                return;
            } else {
                this.m_callbackinternal = new NvsARFaceContextInternalCallback() { // from class: com.meicam.sdk.NvsARFaceContext.2
                    @Override // com.meicam.sdk.NvsARFaceContext.NvsARFaceContextInternalCallback
                    public void notifyFaceItemLoadingBegin(String str) {
                        NvsARFaceContext nvsARFaceContext = NvsARFaceContext.this;
                        nvsARFaceContext.mainHandler.post(nvsARFaceContext.new RunnableExt(str, nvsARFaceContext.m_callback));
                    }

                    @Override // com.meicam.sdk.NvsARFaceContext.NvsARFaceContextInternalCallback
                    public void notifyFaceItemLoadingFinish() {
                        NvsARFaceContext.this.mainHandler.post(new Runnable() { // from class: com.meicam.sdk.NvsARFaceContext.2.1
                            @Override // java.lang.Runnable
                            public void run() {
                                NvsARFaceContextCallback nvsARFaceContextCallback = NvsARFaceContext.this.m_callback;
                                if (nvsARFaceContextCallback != null) {
                                    nvsARFaceContextCallback.notifyFaceItemLoadingFinish();
                                }
                            }
                        });
                    }

                    @Override // com.meicam.sdk.NvsARFaceContext.NvsARFaceContextInternalCallback
                    public void notifyFaceItemLoadingFailed(final String str, final int i) {
                        NvsARFaceContext.this.mainHandler.post(new Runnable() { // from class: com.meicam.sdk.NvsARFaceContext.2.2
                            @Override // java.lang.Runnable
                            public void run() {
                                NvsARFaceContextErrorCallback nvsARFaceContextErrorCallback2 = NvsARFaceContext.this.m_errorCallback;
                                if (nvsARFaceContextErrorCallback2 != null) {
                                    nvsARFaceContextErrorCallback2.notifyFaceItemLoadingFailed(str, i);
                                }
                            }
                        });
                    }
                };
            }
        }
        nativeSetARFaceCallback(this.m_contextInterface, this.m_callbackinternal);
    }

    public void setDualBufferInputUsed(boolean z) {
        nativeSetDualBufferInputUsed(this.m_contextInterface, z);
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
}
