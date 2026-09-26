package androidx.renderscript;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.Surface;
import java.io.File;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import kotlinx.serialization.json.internal.b;

/* JADX INFO: loaded from: classes.dex */
public class RenderScript {
    private static final String CACHE_PATH = "com.android.renderscript.cache";
    public static final int CREATE_FLAG_NONE = 0;
    static final boolean DEBUG = false;
    static final boolean LOG_ENABLED = false;
    static final String LOG_TAG = "RenderScript_jni";
    static final int SUPPORT_LIB_API = 23;
    static final int SUPPORT_LIB_VERSION = 2301;
    static String mCachePath;
    static Method registerNativeAllocation;
    static Method registerNativeFree;
    static boolean sInitialized;
    static int sPointerSize;
    static Object sRuntime;
    static boolean sUseGCHooks;
    private static boolean useNative;
    private Context mApplicationContext;
    long mContext;
    Element mElement_ALLOCATION;
    Element mElement_A_8;
    Element mElement_BOOLEAN;
    Element mElement_CHAR_2;
    Element mElement_CHAR_3;
    Element mElement_CHAR_4;
    Element mElement_DOUBLE_2;
    Element mElement_DOUBLE_3;
    Element mElement_DOUBLE_4;
    Element mElement_ELEMENT;
    Element mElement_F32;
    Element mElement_F64;
    Element mElement_FLOAT_2;
    Element mElement_FLOAT_3;
    Element mElement_FLOAT_4;
    Element mElement_I16;
    Element mElement_I32;
    Element mElement_I64;
    Element mElement_I8;
    Element mElement_INT_2;
    Element mElement_INT_3;
    Element mElement_INT_4;
    Element mElement_LONG_2;
    Element mElement_LONG_3;
    Element mElement_LONG_4;
    Element mElement_MATRIX_2X2;
    Element mElement_MATRIX_3X3;
    Element mElement_MATRIX_4X4;
    Element mElement_RGBA_4444;
    Element mElement_RGBA_5551;
    Element mElement_RGBA_8888;
    Element mElement_RGB_565;
    Element mElement_RGB_888;
    Element mElement_SAMPLER;
    Element mElement_SCRIPT;
    Element mElement_SHORT_2;
    Element mElement_SHORT_3;
    Element mElement_SHORT_4;
    Element mElement_TYPE;
    Element mElement_U16;
    Element mElement_U32;
    Element mElement_U64;
    Element mElement_U8;
    Element mElement_UCHAR_2;
    Element mElement_UCHAR_3;
    Element mElement_UCHAR_4;
    Element mElement_UINT_2;
    Element mElement_UINT_3;
    Element mElement_UINT_4;
    Element mElement_ULONG_2;
    Element mElement_ULONG_3;
    Element mElement_ULONG_4;
    Element mElement_USHORT_2;
    Element mElement_USHORT_3;
    Element mElement_USHORT_4;
    long mIncCon;
    boolean mIncLoaded;
    MessageThread mMessageThread;
    private String mNativeLibDir;
    ReentrantReadWriteLock mRWLock;
    Sampler mSampler_CLAMP_LINEAR;
    Sampler mSampler_CLAMP_LINEAR_MIP_LINEAR;
    Sampler mSampler_CLAMP_NEAREST;
    Sampler mSampler_MIRRORED_REPEAT_LINEAR;
    Sampler mSampler_MIRRORED_REPEAT_LINEAR_MIP_LINEAR;
    Sampler mSampler_MIRRORED_REPEAT_NEAREST;
    Sampler mSampler_WRAP_LINEAR;
    Sampler mSampler_WRAP_LINEAR_MIP_LINEAR;
    Sampler mSampler_WRAP_NEAREST;
    private static ArrayList<RenderScript> mProcessContextList = new ArrayList<>();
    private static String mBlackList = "";
    static Object lock = new Object();
    private static int sNative = -1;
    private static int sSdkVersion = -1;
    private static boolean useIOlib = false;
    private boolean mIsProcessContext = false;
    private boolean mEnableMultiInput = false;
    private int mDispatchAPILevel = 0;
    private int mContextFlags = 0;
    private int mContextSdkVersion = 0;
    private boolean mDestroyed = false;
    RSMessageHandler mMessageCallback = null;
    RSErrorHandler mErrorCallback = null;
    ContextType mContextType = ContextType.NORMAL;

    static class MessageThread extends Thread {
        static final int RS_ERROR_FATAL_DEBUG = 2048;
        static final int RS_ERROR_FATAL_UNKNOWN = 4096;
        static final int RS_MESSAGE_TO_CLIENT_ERROR = 3;
        static final int RS_MESSAGE_TO_CLIENT_EXCEPTION = 1;
        static final int RS_MESSAGE_TO_CLIENT_NONE = 0;
        static final int RS_MESSAGE_TO_CLIENT_RESIZE = 2;
        static final int RS_MESSAGE_TO_CLIENT_USER = 4;
        int[] mAuxData;
        RenderScript mRS;
        boolean mRun;

        MessageThread(RenderScript renderScript) {
            super("RSMessageThread");
            this.mRun = true;
            this.mAuxData = new int[2];
            this.mRS = renderScript;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            int[] iArr = new int[16];
            RenderScript renderScript = this.mRS;
            renderScript.nContextInitToClient(renderScript.mContext);
            while (this.mRun) {
                iArr[0] = 0;
                RenderScript renderScript2 = this.mRS;
                int iNContextPeekMessage = renderScript2.nContextPeekMessage(renderScript2.mContext, this.mAuxData);
                int[] iArr2 = this.mAuxData;
                int i10 = iArr2[1];
                int i11 = iArr2[0];
                if (iNContextPeekMessage == 4) {
                    if ((i10 >> 2) >= iArr.length) {
                        iArr = new int[(i10 + 3) >> 2];
                    }
                    RenderScript renderScript3 = this.mRS;
                    if (renderScript3.nContextGetUserMessage(renderScript3.mContext, iArr) != 4) {
                        throw new RSDriverException("Error processing message from RenderScript.");
                    }
                    RSMessageHandler rSMessageHandler = this.mRS.mMessageCallback;
                    if (rSMessageHandler == null) {
                        throw new RSInvalidStateException("Received a message from the script with no message handler installed.");
                    }
                    rSMessageHandler.mData = iArr;
                    rSMessageHandler.mID = i11;
                    rSMessageHandler.mLength = i10;
                    rSMessageHandler.run();
                } else {
                    if (iNContextPeekMessage == 3) {
                        RenderScript renderScript4 = this.mRS;
                        String strNContextGetErrorMessage = renderScript4.nContextGetErrorMessage(renderScript4.mContext);
                        if (i11 < 4096) {
                            if (i11 >= 2048) {
                                RenderScript renderScript5 = this.mRS;
                                if (renderScript5.mContextType != ContextType.DEBUG || renderScript5.mErrorCallback == null) {
                                }
                            }
                            RSErrorHandler rSErrorHandler = this.mRS.mErrorCallback;
                            if (rSErrorHandler != null) {
                                rSErrorHandler.mErrorMessage = strNContextGetErrorMessage;
                                rSErrorHandler.mErrorNum = i11;
                                rSErrorHandler.run();
                            } else {
                                Log.e(RenderScript.LOG_TAG, "non fatal RS error, " + strNContextGetErrorMessage);
                            }
                        }
                        Log.e(RenderScript.LOG_TAG, "fatal RS error, " + strNContextGetErrorMessage);
                        throw new RSRuntimeException("Fatal error " + i11 + ", details: " + strNContextGetErrorMessage);
                    }
                    try {
                        Thread.sleep(1L, 0);
                    } catch (InterruptedException unused) {
                    }
                }
            }
        }
    }

    public static class RSErrorHandler implements Runnable {
        protected String mErrorMessage;
        protected int mErrorNum;

        @Override // java.lang.Runnable
        public void run() {
        }
    }

    public static class RSMessageHandler implements Runnable {
        protected int[] mData;
        protected int mID;
        protected int mLength;

        @Override // java.lang.Runnable
        public void run() {
        }
    }

    public static RenderScript create(Context context) {
        return create(context, ContextType.NORMAL);
    }

    public static void forceCompat() {
        sNative = 0;
    }

    private void helpDestroy() {
        boolean z6;
        boolean z10;
        synchronized (this) {
            try {
                z6 = false;
                if (this.mDestroyed) {
                    z10 = false;
                } else {
                    this.mDestroyed = true;
                    z10 = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z10) {
            nContextFinish();
            if (this.mIncCon != 0) {
                nIncContextFinish();
                nIncContextDestroy();
                this.mIncCon = 0L;
            }
            nContextDeinitToClient(this.mContext);
            MessageThread messageThread = this.mMessageThread;
            messageThread.mRun = false;
            messageThread.interrupt();
            boolean z11 = false;
            while (!z6) {
                try {
                    this.mMessageThread.join();
                    z6 = true;
                } catch (InterruptedException unused) {
                    z11 = true;
                }
            }
            if (z11) {
                Log.v(LOG_TAG, "Interrupted during wait for MessageThread to join");
                Thread.currentThread().interrupt();
            }
            nContextDestroy();
        }
    }

    static native int rsnSystemGetPointerSize();

    public static void setBlackList(String str) {
        if (str != null) {
            mBlackList = str;
        }
    }

    public final Context getApplicationContext() {
        return this.mApplicationContext;
    }

    int getDispatchAPILevel() {
        return this.mDispatchAPILevel;
    }

    public RSErrorHandler getErrorHandler() {
        return this.mErrorCallback;
    }

    public RSMessageHandler getMessageHandler() {
        return this.mMessageCallback;
    }

    boolean isAlive() {
        return this.mContext != 0;
    }

    boolean isUseNative() {
        return useNative;
    }

    synchronized void nAllocationCopyFromBitmap(long j6, Bitmap bitmap) {
        validate();
        rsnAllocationCopyFromBitmap(this.mContext, j6, bitmap);
    }

    synchronized void nAllocationCopyToBitmap(long j6, Bitmap bitmap) {
        validate();
        rsnAllocationCopyToBitmap(this.mContext, j6, bitmap);
    }

    synchronized long nAllocationCreateBitmapBackedAllocation(long j6, int i10, Bitmap bitmap, int i11) {
        validate();
        return rsnAllocationCreateBitmapBackedAllocation(this.mContext, j6, i10, bitmap, i11);
    }

    synchronized long nAllocationCreateBitmapRef(long j6, Bitmap bitmap) {
        validate();
        return rsnAllocationCreateBitmapRef(this.mContext, j6, bitmap);
    }

    synchronized long nAllocationCreateFromAssetStream(int i10, int i11, int i12) {
        validate();
        return rsnAllocationCreateFromAssetStream(this.mContext, i10, i11, i12);
    }

    synchronized long nAllocationCreateFromBitmap(long j6, int i10, Bitmap bitmap, int i11) {
        validate();
        return rsnAllocationCreateFromBitmap(this.mContext, j6, i10, bitmap, i11);
    }

    synchronized long nAllocationCreateTyped(long j6, int i10, int i11, long j10) {
        validate();
        return rsnAllocationCreateTyped(this.mContext, j6, i10, i11, j10);
    }

    synchronized long nAllocationCubeCreateFromBitmap(long j6, int i10, Bitmap bitmap, int i11) {
        validate();
        return rsnAllocationCubeCreateFromBitmap(this.mContext, j6, i10, bitmap, i11);
    }

    synchronized void nAllocationData1D(long j6, int i10, int i11, int i12, Object obj, int i13, Element.DataType dataType, int i14, boolean z6) {
        validate();
        rsnAllocationData1D(this.mContext, j6, i10, i11, i12, obj, i13, dataType.mID, i14, z6);
    }

    synchronized void nAllocationData2D(long j6, int i10, int i11, int i12, int i13, int i14, int i15, long j10, int i16, int i17, int i18, int i19) {
        validate();
        rsnAllocationData2D(this.mContext, j6, i10, i11, i12, i13, i14, i15, j10, i16, i17, i18, i19);
    }

    synchronized void nAllocationData3D(long j6, int i10, int i11, int i12, int i13, int i14, int i15, int i16, long j10, int i17, int i18, int i19, int i20) {
        validate();
        rsnAllocationData3D(this.mContext, j6, i10, i11, i12, i13, i14, i15, i16, j10, i17, i18, i19, i20);
    }

    synchronized void nAllocationElementData1D(long j6, int i10, int i11, int i12, byte[] bArr, int i13) {
        validate();
        rsnAllocationElementData1D(this.mContext, j6, i10, i11, i12, bArr, i13);
    }

    synchronized void nAllocationGenerateMipmaps(long j6) {
        validate();
        rsnAllocationGenerateMipmaps(this.mContext, j6);
    }

    synchronized ByteBuffer nAllocationGetByteBuffer(long j6, int i10, int i11, int i12) {
        validate();
        return rsnAllocationGetByteBuffer(this.mContext, j6, i10, i11, i12);
    }

    synchronized long nAllocationGetStride(long j6) {
        validate();
        return rsnAllocationGetStride(this.mContext, j6);
    }

    synchronized long nAllocationGetType(long j6) {
        validate();
        return rsnAllocationGetType(this.mContext, j6);
    }

    synchronized void nAllocationIoReceive(long j6) {
        validate();
        rsnAllocationIoReceive(this.mContext, j6);
    }

    synchronized void nAllocationIoSend(long j6) {
        validate();
        rsnAllocationIoSend(this.mContext, j6);
    }

    synchronized void nAllocationRead(long j6, Object obj, Element.DataType dataType, int i10, boolean z6) {
        validate();
        rsnAllocationRead(this.mContext, j6, obj, dataType.mID, i10, z6);
    }

    synchronized void nAllocationRead1D(long j6, int i10, int i11, int i12, Object obj, int i13, Element.DataType dataType, int i14, boolean z6) {
        validate();
        rsnAllocationRead1D(this.mContext, j6, i10, i11, i12, obj, i13, dataType.mID, i14, z6);
    }

    synchronized void nAllocationResize1D(long j6, int i10) {
        validate();
        rsnAllocationResize1D(this.mContext, j6, i10);
    }

    synchronized void nAllocationResize2D(long j6, int i10, int i11) {
        validate();
        rsnAllocationResize2D(this.mContext, j6, i10, i11);
    }

    synchronized void nAllocationSetSurface(long j6, Surface surface) {
        validate();
        rsnAllocationSetSurface(this.mContext, j6, surface);
    }

    synchronized void nAllocationSyncAll(long j6, int i10) {
        validate();
        rsnAllocationSyncAll(this.mContext, j6, i10);
    }

    synchronized long nClosureCreate(long j6, long j10, long[] jArr, long[] jArr2, int[] iArr, long[] jArr3, long[] jArr4) {
        long jRsnClosureCreate;
        validate();
        jRsnClosureCreate = rsnClosureCreate(this.mContext, j6, j10, jArr, jArr2, iArr, jArr3, jArr4);
        if (jRsnClosureCreate == 0) {
            throw new RSRuntimeException("Failed creating closure.");
        }
        return jRsnClosureCreate;
    }

    synchronized void nClosureSetArg(long j6, int i10, long j10, int i11) {
        validate();
        rsnClosureSetArg(this.mContext, j6, i10, j10, i11);
    }

    synchronized void nClosureSetGlobal(long j6, long j10, long j11, int i10) {
        validate();
        rsnClosureSetGlobal(this.mContext, j6, j10, j11, i10);
    }

    synchronized long nContextCreate(long j6, int i10, int i11, int i12, String str) {
        return rsnContextCreate(j6, i10, i11, i12, str);
    }

    native void nContextDeinitToClient(long j6);

    synchronized void nContextDestroy() {
        validate();
        ReentrantReadWriteLock.WriteLock writeLock = this.mRWLock.writeLock();
        writeLock.lock();
        long j6 = this.mContext;
        this.mContext = 0L;
        writeLock.unlock();
        rsnContextDestroy(j6);
    }

    synchronized void nContextDump(int i10) {
        validate();
        rsnContextDump(this.mContext, i10);
    }

    synchronized void nContextFinish() {
        validate();
        rsnContextFinish(this.mContext);
    }

    native String nContextGetErrorMessage(long j6);

    native int nContextGetUserMessage(long j6, int[] iArr);

    native void nContextInitToClient(long j6);

    native int nContextPeekMessage(long j6, int[] iArr);

    synchronized void nContextSendMessage(int i10, int[] iArr) {
        validate();
        rsnContextSendMessage(this.mContext, i10, iArr);
    }

    synchronized void nContextSetPriority(int i10) {
        validate();
        rsnContextSetPriority(this.mContext, i10);
    }

    native long nDeviceCreate();

    native void nDeviceDestroy(long j6);

    native void nDeviceSetConfig(long j6, int i10, int i11);

    synchronized long nElementCreate(long j6, int i10, boolean z6, int i11) {
        validate();
        return rsnElementCreate(this.mContext, j6, i10, z6, i11);
    }

    synchronized long nElementCreate2(long[] jArr, String[] strArr, int[] iArr) {
        validate();
        return rsnElementCreate2(this.mContext, jArr, strArr, iArr);
    }

    synchronized void nElementGetNativeData(long j6, int[] iArr) {
        validate();
        rsnElementGetNativeData(this.mContext, j6, iArr);
    }

    synchronized void nElementGetSubElements(long j6, long[] jArr, String[] strArr, int[] iArr) {
        validate();
        rsnElementGetSubElements(this.mContext, j6, jArr, strArr, iArr);
    }

    synchronized long nIncAllocationCreateTyped(long j6, long j10, int i10) {
        validate();
        return rsnIncAllocationCreateTyped(this.mContext, this.mIncCon, j6, j10, i10);
    }

    synchronized long nIncContextCreate(long j6, int i10, int i11, int i12) {
        return rsnIncContextCreate(j6, i10, i11, i12);
    }

    synchronized void nIncContextDestroy() {
        validate();
        ReentrantReadWriteLock.WriteLock writeLock = this.mRWLock.writeLock();
        writeLock.lock();
        long j6 = this.mIncCon;
        this.mIncCon = 0L;
        writeLock.unlock();
        rsnIncContextDestroy(j6);
    }

    synchronized void nIncContextFinish() {
        validate();
        rsnIncContextFinish(this.mIncCon);
    }

    native long nIncDeviceCreate();

    native void nIncDeviceDestroy(long j6);

    synchronized long nIncElementCreate(long j6, int i10, boolean z6, int i11) {
        validate();
        return rsnIncElementCreate(this.mIncCon, j6, i10, z6, i11);
    }

    native boolean nIncLoadSO(int i10, String str);

    synchronized long nIncTypeCreate(long j6, int i10, int i11, int i12, boolean z6, boolean z10, int i13) {
        validate();
        return rsnIncTypeCreate(this.mIncCon, j6, i10, i11, i12, z6, z10, i13);
    }

    synchronized long nInvokeClosureCreate(long j6, byte[] bArr, long[] jArr, long[] jArr2, int[] iArr) {
        long jRsnInvokeClosureCreate;
        validate();
        jRsnInvokeClosureCreate = rsnInvokeClosureCreate(this.mContext, j6, bArr, jArr, jArr2, iArr);
        if (jRsnInvokeClosureCreate == 0) {
            throw new RSRuntimeException("Failed creating closure.");
        }
        return jRsnInvokeClosureCreate;
    }

    native boolean nLoadIOSO();

    native boolean nLoadSO(boolean z6, int i10, String str);

    synchronized long nSamplerCreate(int i10, int i11, int i12, int i13, int i14, float f) {
        validate();
        return rsnSamplerCreate(this.mContext, i10, i11, i12, i13, i14, f);
    }

    synchronized void nScriptBindAllocation(long j6, long j10, int i10, boolean z6) {
        try {
            validate();
            long j11 = this.mContext;
            if (z6) {
                j11 = this.mIncCon;
            }
            rsnScriptBindAllocation(j11, j6, j10, i10, z6);
        } catch (Throwable th) {
            throw th;
        }
    }

    synchronized long nScriptCCreate(String str, String str2, byte[] bArr, int i10) {
        validate();
        return rsnScriptCCreate(this.mContext, str, str2, bArr, i10);
    }

    synchronized long nScriptFieldIDCreate(long j6, int i10, boolean z6) {
        long j10;
        try {
            validate();
            j10 = this.mContext;
            if (z6) {
                j10 = this.mIncCon;
            }
        } catch (Throwable th) {
            throw th;
        }
        return rsnScriptFieldIDCreate(j10, j6, i10, z6);
    }

    synchronized void nScriptForEach(long j6, int i10, long j10, long j11, byte[] bArr, boolean z6) {
        try {
            validate();
            if (bArr == null) {
                rsnScriptForEach(this.mContext, this.mIncCon, j6, i10, j10, j11, z6);
            } else {
                rsnScriptForEach(this.mContext, this.mIncCon, j6, i10, j10, j11, bArr, z6);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    synchronized long nScriptGroup2Create(String str, String str2, long[] jArr) {
        validate();
        return rsnScriptGroup2Create(this.mContext, str, str2, jArr);
    }

    synchronized void nScriptGroup2Execute(long j6) {
        validate();
        rsnScriptGroup2Execute(this.mContext, j6);
    }

    synchronized long nScriptGroupCreate(long[] jArr, long[] jArr2, long[] jArr3, long[] jArr4, long[] jArr5) {
        validate();
        return rsnScriptGroupCreate(this.mContext, jArr, jArr2, jArr3, jArr4, jArr5);
    }

    synchronized void nScriptGroupExecute(long j6) {
        validate();
        rsnScriptGroupExecute(this.mContext, j6);
    }

    synchronized void nScriptGroupSetInput(long j6, long j10, long j11) {
        validate();
        rsnScriptGroupSetInput(this.mContext, j6, j10, j11);
    }

    synchronized void nScriptGroupSetOutput(long j6, long j10, long j11) {
        validate();
        rsnScriptGroupSetOutput(this.mContext, j6, j10, j11);
    }

    synchronized void nScriptIntrinsicBLAS_Complex(long j6, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, float f, float f6, long j10, long j11, float f7, float f10, long j12, int i19, int i20, int i21, int i22, boolean z6) {
        validate();
        rsnScriptIntrinsicBLAS_Complex(this.mContext, this.mIncCon, j6, i10, i11, i12, i13, i14, i15, i16, i17, i18, f, f6, j10, j11, f7, f10, j12, i19, i20, i21, i22, z6);
    }

    synchronized void nScriptIntrinsicBLAS_Double(long j6, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, double d, long j10, long j11, double d2, long j12, int i19, int i20, int i21, int i22, boolean z6) {
        validate();
        rsnScriptIntrinsicBLAS_Double(this.mContext, this.mIncCon, j6, i10, i11, i12, i13, i14, i15, i16, i17, i18, d, j10, j11, d2, j12, i19, i20, i21, i22, z6);
    }

    synchronized void nScriptIntrinsicBLAS_Single(long j6, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, float f, long j10, long j11, float f6, long j12, int i19, int i20, int i21, int i22, boolean z6) {
        validate();
        rsnScriptIntrinsicBLAS_Single(this.mContext, this.mIncCon, j6, i10, i11, i12, i13, i14, i15, i16, i17, i18, f, j10, j11, f6, j12, i19, i20, i21, i22, z6);
    }

    synchronized void nScriptIntrinsicBLAS_Z(long j6, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, double d, double d2, long j10, long j11, double d6, double d7, long j12, int i19, int i20, int i21, int i22, boolean z6) {
        validate();
        rsnScriptIntrinsicBLAS_Z(this.mContext, this.mIncCon, j6, i10, i11, i12, i13, i14, i15, i16, i17, i18, d, d2, j10, j11, d6, d7, j12, i19, i20, i21, i22, z6);
    }

    synchronized long nScriptIntrinsicCreate(int i10, long j6, boolean z6) {
        try {
            validate();
            if (!z6) {
                return rsnScriptIntrinsicCreate(this.mContext, i10, j6, z6);
            }
            if (!this.mIncLoaded) {
                try {
                    System.loadLibrary("RSSupport");
                    if (!nIncLoadSO(23, this.mNativeLibDir + "/libRSSupport.so")) {
                        throw new RSRuntimeException("Error loading libRSSupport library for Incremental Intrinsic Support");
                    }
                    this.mIncLoaded = true;
                } catch (UnsatisfiedLinkError e) {
                    Log.e(LOG_TAG, "Error loading RS Compat library for Incremental Intrinsic Support: " + e);
                    throw new RSRuntimeException("Error loading RS Compat library for Incremental Intrinsic Support: " + e);
                }
            }
            if (this.mIncCon == 0) {
                this.mIncCon = nIncContextCreate(nIncDeviceCreate(), 0, 0, 0);
            }
            return rsnScriptIntrinsicCreate(this.mIncCon, i10, j6, z6);
        } catch (Throwable th) {
            throw th;
        }
    }

    synchronized void nScriptInvoke(long j6, int i10, boolean z6) {
        try {
            validate();
            long j10 = this.mContext;
            if (z6) {
                j10 = this.mIncCon;
            }
            rsnScriptInvoke(j10, j6, i10, z6);
        } catch (Throwable th) {
            throw th;
        }
    }

    synchronized long nScriptInvokeIDCreate(long j6, int i10) {
        validate();
        return rsnScriptInvokeIDCreate(this.mContext, j6, i10);
    }

    synchronized void nScriptInvokeV(long j6, int i10, byte[] bArr, boolean z6) {
        try {
            validate();
            long j10 = this.mContext;
            if (z6) {
                j10 = this.mIncCon;
            }
            rsnScriptInvokeV(j10, j6, i10, bArr, z6);
        } catch (Throwable th) {
            throw th;
        }
    }

    synchronized long nScriptKernelIDCreate(long j6, int i10, int i11, boolean z6) {
        long j10;
        try {
            validate();
            j10 = this.mContext;
            if (z6) {
                j10 = this.mIncCon;
            }
        } catch (Throwable th) {
            throw th;
        }
        return rsnScriptKernelIDCreate(j10, j6, i10, i11, z6);
    }

    synchronized void nScriptReduce(long j6, int i10, long[] jArr, long j10, int[] iArr) {
        validate();
        rsnScriptReduce(this.mContext, j6, i10, jArr, j10, iArr);
    }

    synchronized void nScriptSetTimeZone(long j6, byte[] bArr, boolean z6) {
        try {
            validate();
            long j10 = this.mContext;
            if (z6) {
                j10 = this.mIncCon;
            }
            rsnScriptSetTimeZone(j10, j6, bArr, z6);
        } catch (Throwable th) {
            throw th;
        }
    }

    synchronized void nScriptSetVarD(long j6, int i10, double d, boolean z6) {
        try {
            validate();
            long j10 = this.mContext;
            if (z6) {
                j10 = this.mIncCon;
            }
            rsnScriptSetVarD(j10, j6, i10, d, z6);
        } catch (Throwable th) {
            throw th;
        }
    }

    synchronized void nScriptSetVarF(long j6, int i10, float f, boolean z6) {
        try {
            validate();
            long j10 = this.mContext;
            if (z6) {
                j10 = this.mIncCon;
            }
            rsnScriptSetVarF(j10, j6, i10, f, z6);
        } catch (Throwable th) {
            throw th;
        }
    }

    synchronized void nScriptSetVarI(long j6, int i10, int i11, boolean z6) {
        try {
            validate();
            long j10 = this.mContext;
            if (z6) {
                j10 = this.mIncCon;
            }
            rsnScriptSetVarI(j10, j6, i10, i11, z6);
        } catch (Throwable th) {
            throw th;
        }
    }

    synchronized void nScriptSetVarJ(long j6, int i10, long j10, boolean z6) {
        try {
            validate();
            long j11 = this.mContext;
            if (z6) {
                j11 = this.mIncCon;
            }
            rsnScriptSetVarJ(j11, j6, i10, j10, z6);
        } catch (Throwable th) {
            throw th;
        }
    }

    synchronized void nScriptSetVarObj(long j6, int i10, long j10, boolean z6) {
        try {
            validate();
            long j11 = this.mContext;
            if (z6) {
                j11 = this.mIncCon;
            }
            rsnScriptSetVarObj(j11, j6, i10, j10, z6);
        } catch (Throwable th) {
            throw th;
        }
    }

    synchronized void nScriptSetVarV(long j6, int i10, byte[] bArr, boolean z6) {
        try {
            validate();
            long j10 = this.mContext;
            if (z6) {
                j10 = this.mIncCon;
            }
            rsnScriptSetVarV(j10, j6, i10, bArr, z6);
        } catch (Throwable th) {
            throw th;
        }
    }

    synchronized void nScriptSetVarVE(long j6, int i10, byte[] bArr, long j10, int[] iArr, boolean z6) {
        try {
            validate();
            long j11 = this.mContext;
            if (z6) {
                j11 = this.mIncCon;
            }
            rsnScriptSetVarVE(j11, j6, i10, bArr, j10, iArr, z6);
        } catch (Throwable th) {
            throw th;
        }
    }

    synchronized long nTypeCreate(long j6, int i10, int i11, int i12, boolean z6, boolean z10, int i13) {
        validate();
        return rsnTypeCreate(this.mContext, j6, i10, i11, i12, z6, z10, i13);
    }

    synchronized void nTypeGetNativeData(long j6, long[] jArr) {
        validate();
        rsnTypeGetNativeData(this.mContext, j6, jArr);
    }

    native void rsnAllocationCopyFromBitmap(long j6, long j10, Bitmap bitmap);

    native void rsnAllocationCopyToBitmap(long j6, long j10, Bitmap bitmap);

    native long rsnAllocationCreateBitmapBackedAllocation(long j6, long j10, int i10, Bitmap bitmap, int i11);

    native long rsnAllocationCreateBitmapRef(long j6, long j10, Bitmap bitmap);

    native long rsnAllocationCreateFromAssetStream(long j6, int i10, int i11, int i12);

    native long rsnAllocationCreateFromBitmap(long j6, long j10, int i10, Bitmap bitmap, int i11);

    native long rsnAllocationCreateTyped(long j6, long j10, int i10, int i11, long j11);

    native long rsnAllocationCubeCreateFromBitmap(long j6, long j10, int i10, Bitmap bitmap, int i11);

    native void rsnAllocationData1D(long j6, long j10, int i10, int i11, int i12, Object obj, int i13, int i14, int i15, boolean z6);

    native void rsnAllocationData2D(long j6, long j10, int i10, int i11, int i12, int i13, int i14, int i15, long j11, int i16, int i17, int i18, int i19);

    native void rsnAllocationData2D(long j6, long j10, int i10, int i11, int i12, int i13, int i14, int i15, Object obj, int i16, int i17, int i18, boolean z6);

    native void rsnAllocationData2D(long j6, long j10, int i10, int i11, int i12, int i13, Bitmap bitmap);

    native void rsnAllocationData3D(long j6, long j10, int i10, int i11, int i12, int i13, int i14, int i15, int i16, long j11, int i17, int i18, int i19, int i20);

    native void rsnAllocationData3D(long j6, long j10, int i10, int i11, int i12, int i13, int i14, int i15, int i16, Object obj, int i17, int i18, int i19, boolean z6);

    native void rsnAllocationElementData1D(long j6, long j10, int i10, int i11, int i12, byte[] bArr, int i13);

    native void rsnAllocationGenerateMipmaps(long j6, long j10);

    native ByteBuffer rsnAllocationGetByteBuffer(long j6, long j10, int i10, int i11, int i12);

    native long rsnAllocationGetStride(long j6, long j10);

    native long rsnAllocationGetType(long j6, long j10);

    native void rsnAllocationIoReceive(long j6, long j10);

    native void rsnAllocationIoSend(long j6, long j10);

    native void rsnAllocationRead(long j6, long j10, Object obj, int i10, int i11, boolean z6);

    native void rsnAllocationRead1D(long j6, long j10, int i10, int i11, int i12, Object obj, int i13, int i14, int i15, boolean z6);

    native void rsnAllocationRead2D(long j6, long j10, int i10, int i11, int i12, int i13, int i14, int i15, Object obj, int i16, int i17, int i18, boolean z6);

    native void rsnAllocationResize1D(long j6, long j10, int i10);

    native void rsnAllocationResize2D(long j6, long j10, int i10, int i11);

    native void rsnAllocationSetSurface(long j6, long j10, Surface surface);

    native void rsnAllocationSyncAll(long j6, long j10, int i10);

    native long rsnClosureCreate(long j6, long j10, long j11, long[] jArr, long[] jArr2, int[] iArr, long[] jArr3, long[] jArr4);

    native void rsnClosureSetArg(long j6, long j10, int i10, long j11, int i11);

    native void rsnClosureSetGlobal(long j6, long j10, long j11, long j12, int i10);

    native long rsnContextCreate(long j6, int i10, int i11, int i12, String str);

    native void rsnContextDestroy(long j6);

    native void rsnContextDump(long j6, int i10);

    native void rsnContextFinish(long j6);

    native void rsnContextSendMessage(long j6, int i10, int[] iArr);

    native void rsnContextSetPriority(long j6, int i10);

    native long rsnElementCreate(long j6, long j10, int i10, boolean z6, int i11);

    native long rsnElementCreate2(long j6, long[] jArr, String[] strArr, int[] iArr);

    native void rsnElementGetNativeData(long j6, long j10, int[] iArr);

    native void rsnElementGetSubElements(long j6, long j10, long[] jArr, String[] strArr, int[] iArr);

    native long rsnIncAllocationCreateTyped(long j6, long j10, long j11, long j12, int i10);

    native long rsnIncContextCreate(long j6, int i10, int i11, int i12);

    native void rsnIncContextDestroy(long j6);

    native void rsnIncContextFinish(long j6);

    native long rsnIncElementCreate(long j6, long j10, int i10, boolean z6, int i11);

    native void rsnIncObjDestroy(long j6, long j10);

    native long rsnIncTypeCreate(long j6, long j10, int i10, int i11, int i12, boolean z6, boolean z10, int i13);

    native long rsnInvokeClosureCreate(long j6, long j10, byte[] bArr, long[] jArr, long[] jArr2, int[] iArr);

    native void rsnObjDestroy(long j6, long j10);

    native long rsnSamplerCreate(long j6, int i10, int i11, int i12, int i13, int i14, float f);

    native void rsnScriptBindAllocation(long j6, long j10, long j11, int i10, boolean z6);

    native long rsnScriptCCreate(long j6, String str, String str2, byte[] bArr, int i10);

    native long rsnScriptFieldIDCreate(long j6, long j10, int i10, boolean z6);

    native void rsnScriptForEach(long j6, long j10, int i10, long[] jArr, long j11, byte[] bArr, int[] iArr);

    native void rsnScriptForEach(long j6, long j10, long j11, int i10, long j12, long j13, boolean z6);

    native void rsnScriptForEach(long j6, long j10, long j11, int i10, long j12, long j13, byte[] bArr, boolean z6);

    native void rsnScriptForEachClipped(long j6, long j10, long j11, int i10, long j12, long j13, int i11, int i12, int i13, int i14, int i15, int i16, boolean z6);

    native void rsnScriptForEachClipped(long j6, long j10, long j11, int i10, long j12, long j13, byte[] bArr, int i11, int i12, int i13, int i14, int i15, int i16, boolean z6);

    native long rsnScriptGroup2Create(long j6, String str, String str2, long[] jArr);

    native void rsnScriptGroup2Execute(long j6, long j10);

    native long rsnScriptGroupCreate(long j6, long[] jArr, long[] jArr2, long[] jArr3, long[] jArr4, long[] jArr5);

    native void rsnScriptGroupExecute(long j6, long j10);

    native void rsnScriptGroupSetInput(long j6, long j10, long j11, long j12);

    native void rsnScriptGroupSetOutput(long j6, long j10, long j11, long j12);

    native void rsnScriptIntrinsicBLAS_BNNM(long j6, long j10, long j11, int i10, int i11, int i12, long j12, int i13, long j13, int i14, long j14, int i15, int i16, boolean z6);

    native void rsnScriptIntrinsicBLAS_Complex(long j6, long j10, long j11, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, float f, float f6, long j12, long j13, float f7, float f10, long j14, int i19, int i20, int i21, int i22, boolean z6);

    native void rsnScriptIntrinsicBLAS_Double(long j6, long j10, long j11, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, double d, long j12, long j13, double d2, long j14, int i19, int i20, int i21, int i22, boolean z6);

    native void rsnScriptIntrinsicBLAS_Single(long j6, long j10, long j11, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, float f, long j12, long j13, float f6, long j14, int i19, int i20, int i21, int i22, boolean z6);

    native void rsnScriptIntrinsicBLAS_Z(long j6, long j10, long j11, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, double d, double d2, long j12, long j13, double d6, double d7, long j14, int i19, int i20, int i21, int i22, boolean z6);

    native long rsnScriptIntrinsicCreate(long j6, int i10, long j10, boolean z6);

    native void rsnScriptInvoke(long j6, long j10, int i10, boolean z6);

    native long rsnScriptInvokeIDCreate(long j6, long j10, int i10);

    native void rsnScriptInvokeV(long j6, long j10, int i10, byte[] bArr, boolean z6);

    native long rsnScriptKernelIDCreate(long j6, long j10, int i10, int i11, boolean z6);

    native void rsnScriptReduce(long j6, long j10, int i10, long[] jArr, long j11, int[] iArr);

    native void rsnScriptSetTimeZone(long j6, long j10, byte[] bArr, boolean z6);

    native void rsnScriptSetVarD(long j6, long j10, int i10, double d, boolean z6);

    native void rsnScriptSetVarF(long j6, long j10, int i10, float f, boolean z6);

    native void rsnScriptSetVarI(long j6, long j10, int i10, int i11, boolean z6);

    native void rsnScriptSetVarJ(long j6, long j10, int i10, long j11, boolean z6);

    native void rsnScriptSetVarObj(long j6, long j10, int i10, long j11, boolean z6);

    native void rsnScriptSetVarV(long j6, long j10, int i10, byte[] bArr, boolean z6);

    native void rsnScriptSetVarVE(long j6, long j10, int i10, byte[] bArr, long j11, int[] iArr, boolean z6);

    native long rsnTypeCreate(long j6, long j10, int i10, int i11, int i12, boolean z6, boolean z10, int i13);

    native void rsnTypeGetNativeData(long j6, long j10, long[] jArr);

    public void setErrorHandler(RSErrorHandler rSErrorHandler) {
        this.mErrorCallback = rSErrorHandler;
    }

    public void setMessageHandler(RSMessageHandler rSMessageHandler) {
        this.mMessageCallback = rSMessageHandler;
    }

    boolean usingIO() {
        return useIOlib;
    }

    public enum ContextType {
        NORMAL(0),
        DEBUG(1),
        PROFILE(2);

        int mID;

        ContextType(int i10) {
            this.mID = i10;
        }
    }

    public enum Priority {
        LOW(15),
        NORMAL(-4);

        int mID;

        Priority(int i10) {
            this.mID = i10;
        }
    }

    public static RenderScript create(Context context, ContextType contextType) {
        return create(context, contextType, 0);
    }

    public static int getPointerSize() {
        synchronized (lock) {
            if (!sInitialized) {
                throw new RSInvalidStateException("Calling getPointerSize() before any RenderScript instantiated");
            }
        }
        return sPointerSize;
    }

    private static RenderScript internalCreate(Context context, int i10, ContextType contextType, int i11) {
        RenderScript renderScript = new RenderScript(context);
        int i12 = sSdkVersion;
        if (i12 == -1) {
            sSdkVersion = i10;
        } else if (i12 != i10) {
            throw new RSRuntimeException("Can't have two contexts with different SDK versions in support lib");
        }
        useNative = setupNative(sSdkVersion, context);
        synchronized (lock) {
            if (!sInitialized) {
                try {
                    Class<?> cls = Class.forName("dalvik.system.VMRuntime");
                    sRuntime = cls.getDeclaredMethod("getRuntime", new Class[0]).invoke(null, new Object[0]);
                    Class<?> cls2 = Integer.TYPE;
                    registerNativeAllocation = cls.getDeclaredMethod("registerNativeAllocation", cls2);
                    registerNativeFree = cls.getDeclaredMethod("registerNativeFree", cls2);
                    sUseGCHooks = true;
                } catch (Exception unused) {
                    Log.e(LOG_TAG, "No GC methods");
                    sUseGCHooks = false;
                }
                try {
                    System.loadLibrary("rsjni_androidx");
                    sInitialized = true;
                    sPointerSize = rsnSystemGetPointerSize();
                } catch (UnsatisfiedLinkError e) {
                    Log.e(LOG_TAG, "Error loading RS jni library: " + e);
                    throw new RSRuntimeException("Error loading RS jni library: " + e + " Support lib API: " + SUPPORT_LIB_VERSION);
                }
            }
        }
        if (useNative) {
            Log.v(LOG_TAG, "RS native mode");
        } else {
            Log.v(LOG_TAG, "RS compat mode");
        }
        int i13 = Build.VERSION.SDK_INT;
        useIOlib = true;
        if (i10 >= i13) {
            i13 = i10;
        }
        if (!renderScript.nLoadSO(useNative, i13, null)) {
            if (useNative) {
                Log.v(LOG_TAG, "Unable to load libRS.so, falling back to compat mode");
                useNative = false;
            }
            try {
                System.loadLibrary("RSSupport");
                if (!renderScript.nLoadSO(false, i13, null)) {
                    Log.e(LOG_TAG, "Error loading RS Compat library: nLoadSO() failed; Support lib version: 2301");
                    throw new RSRuntimeException("Error loading libRSSupport library, Support lib version: 2301");
                }
            } catch (UnsatisfiedLinkError e2) {
                Log.e(LOG_TAG, "Error loading RS Compat library: " + e2 + " Support lib version: " + SUPPORT_LIB_VERSION);
                throw new RSRuntimeException("Error loading RS Compat library: " + e2 + " Support lib version: " + SUPPORT_LIB_VERSION);
            }
        }
        if (useIOlib) {
            try {
                System.loadLibrary("RSSupportIO");
            } catch (UnsatisfiedLinkError unused2) {
                useIOlib = false;
            }
            if (!useIOlib || !renderScript.nLoadIOSO()) {
                Log.v(LOG_TAG, "Unable to load libRSSupportIO.so, USAGE_IO not supported");
                useIOlib = false;
            }
        }
        if (i13 >= 23) {
            renderScript.mEnableMultiInput = true;
            try {
                System.loadLibrary("blasV8");
            } catch (UnsatisfiedLinkError e6) {
                Log.v(LOG_TAG, "Unable to load BLAS lib, ONLY BNNM will be supported: " + e6);
            }
        }
        long jNContextCreate = renderScript.nContextCreate(renderScript.nDeviceCreate(), 0, i10, contextType.mID, renderScript.mNativeLibDir);
        renderScript.mContext = jNContextCreate;
        renderScript.mContextType = contextType;
        renderScript.mContextFlags = i11;
        renderScript.mContextSdkVersion = i10;
        renderScript.mDispatchAPILevel = i13;
        if (jNContextCreate == 0) {
            throw new RSDriverException("Failed to create RS context.");
        }
        MessageThread messageThread = new MessageThread(renderScript);
        renderScript.mMessageThread = messageThread;
        messageThread.start();
        return renderScript;
    }

    public static void releaseAllContexts() {
        ArrayList<RenderScript> arrayList;
        synchronized (mProcessContextList) {
            arrayList = mProcessContextList;
            mProcessContextList = new ArrayList<>();
        }
        for (RenderScript renderScript : arrayList) {
            renderScript.mIsProcessContext = false;
            renderScript.destroy();
        }
        arrayList.clear();
    }

    public static void setupDiskCache(File file) {
        File file2 = new File(file, CACHE_PATH);
        mCachePath = file2.getAbsolutePath();
        file2.mkdirs();
    }

    private static boolean setupNative(int i10, Context context) {
        int iIntValue;
        long jLongValue;
        if (sNative == -1) {
            try {
                iIntValue = ((Integer) Class.forName("android.os.SystemProperties").getDeclaredMethod("getInt", String.class, Integer.TYPE).invoke(null, "debug.rs.forcecompat", new Integer(0))).intValue();
            } catch (Exception unused) {
                iIntValue = 0;
            }
            if (iIntValue == 0) {
                sNative = 1;
            } else {
                sNative = 0;
            }
            if (sNative == 1) {
                try {
                    ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
                    try {
                        jLongValue = ((Long) Class.forName("android.renderscript.RenderScript").getDeclaredMethod("getMinorID", new Class[0]).invoke(null, new Object[0])).longValue();
                    } catch (Exception unused2) {
                        jLongValue = 0;
                    }
                    Bundle bundle = applicationInfo.metaData;
                    if (bundle != null) {
                        if (bundle.getBoolean("androidx.renderscript.EnableAsyncTeardown") && jLongValue == 0) {
                            sNative = 0;
                        }
                        applicationInfo.metaData.getBoolean("androidx.renderscript.EnableBlurWorkaround");
                    }
                } catch (PackageManager.NameNotFoundException unused3) {
                    return true;
                }
            }
        }
        if (sNative != 1) {
            return false;
        }
        if (mBlackList.length() > 0) {
            if (mBlackList.contains('(' + Build.MANUFACTURER + b.COLON + Build.PRODUCT + b.COLON + Build.MODEL + ')')) {
                sNative = 0;
                return false;
            }
        }
        return true;
    }

    public void destroy() {
        if (this.mIsProcessContext) {
            return;
        }
        validate();
        helpDestroy();
    }

    synchronized void nAllocationRead2D(long j6, int i10, int i11, int i12, int i13, int i14, int i15, Object obj, int i16, Element.DataType dataType, int i17, boolean z6) {
        validate();
        rsnAllocationRead2D(this.mContext, j6, i10, i11, i12, i13, i14, i15, obj, i16, dataType.mID, i17, z6);
    }

    void nIncObjDestroy(long j6) {
        long j10 = this.mIncCon;
        if (j10 != 0) {
            rsnIncObjDestroy(j10, j6);
        }
    }

    void nObjDestroy(long j6) {
        long j10 = this.mContext;
        if (j10 != 0) {
            rsnObjDestroy(j10, j6);
        }
    }

    synchronized void nScriptForEachClipped(long j6, int i10, long j10, long j11, byte[] bArr, int i11, int i12, int i13, int i14, int i15, int i16, boolean z6) {
        try {
            validate();
            if (bArr == null) {
                rsnScriptForEachClipped(this.mContext, this.mIncCon, j6, i10, j10, j11, i11, i12, i13, i14, i15, i16, z6);
            } else {
                rsnScriptForEachClipped(this.mContext, this.mIncCon, j6, i10, j10, j11, bArr, i11, i12, i13, i14, i15, i16, z6);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    synchronized void nScriptIntrinsicBLAS_BNNM(long j6, int i10, int i11, int i12, long j10, int i13, long j11, int i14, long j12, int i15, int i16, boolean z6) {
        validate();
        rsnScriptIntrinsicBLAS_BNNM(this.mContext, this.mIncCon, j6, i10, i11, i12, j10, i13, j11, i14, j12, i15, i16, z6);
    }

    long safeID(BaseObj baseObj) {
        if (baseObj != null) {
            return baseObj.getID(this);
        }
        return 0L;
    }

    void validate() {
        if (this.mContext == 0) {
            throw new RSInvalidStateException("Calling RS with no Context active.");
        }
    }

    void validateObject(BaseObj baseObj) {
        if (baseObj != null && baseObj.mRS != this) {
            throw new RSIllegalArgumentException("Attempting to use an object across contexts.");
        }
    }

    RenderScript(Context context) {
        if (context != null) {
            Context applicationContext = context.getApplicationContext();
            this.mApplicationContext = applicationContext;
            this.mNativeLibDir = applicationContext.getApplicationInfo().nativeLibraryDir;
        }
        this.mIncCon = 0L;
        this.mIncLoaded = false;
        this.mRWLock = new ReentrantReadWriteLock();
    }

    public static RenderScript create(Context context, ContextType contextType, int i10) {
        return create(context, context.getApplicationInfo().targetSdkVersion, contextType, i10);
    }

    public static RenderScript createMultiContext(Context context, ContextType contextType, int i10, int i11) {
        return internalCreate(context, i11, contextType, i10);
    }

    public void contextDump() {
        validate();
        nContextDump(0);
    }

    protected void finalize() throws Throwable {
        helpDestroy();
        super.finalize();
    }

    public void finish() {
        nContextFinish();
    }

    public void sendMessage(int i10, int[] iArr) {
        nContextSendMessage(i10, iArr);
    }

    public void setPriority(Priority priority) {
        validate();
        nContextSetPriority(priority.mID);
    }

    synchronized void nAllocationData2D(long j6, int i10, int i11, int i12, int i13, int i14, int i15, Object obj, int i16, Element.DataType dataType, int i17, boolean z6) {
        validate();
        rsnAllocationData2D(this.mContext, j6, i10, i11, i12, i13, i14, i15, obj, i16, dataType.mID, i17, z6);
    }

    synchronized void nAllocationData3D(long j6, int i10, int i11, int i12, int i13, int i14, int i15, int i16, Object obj, int i17, Element.DataType dataType, int i18, boolean z6) {
        validate();
        rsnAllocationData3D(this.mContext, j6, i10, i11, i12, i13, i14, i15, i16, obj, i17, dataType.mID, i18, z6);
    }

    public static RenderScript create(Context context, int i10) {
        return create(context, i10, ContextType.NORMAL, 0);
    }

    synchronized void nScriptForEach(long j6, int i10, long[] jArr, long j10, byte[] bArr, int[] iArr) {
        if (this.mEnableMultiInput) {
            validate();
            rsnScriptForEach(this.mContext, j6, i10, jArr, j10, bArr, iArr);
        } else {
            Log.e(LOG_TAG, "Multi-input kernels are not supported, please change targetSdkVersion to >= 23");
            throw new RSRuntimeException("Multi-input kernels are not supported before API 23)");
        }
    }

    public static RenderScript create(Context context, int i10, ContextType contextType) {
        return create(context, i10, contextType, 0);
    }

    public static RenderScript create(Context context, int i10, ContextType contextType, int i11) {
        synchronized (mProcessContextList) {
            try {
                for (RenderScript renderScript : mProcessContextList) {
                    if (renderScript.mContextType == contextType && renderScript.mContextFlags == i11 && renderScript.mContextSdkVersion == i10) {
                        return renderScript;
                    }
                }
                RenderScript renderScriptInternalCreate = internalCreate(context, i10, contextType, i11);
                renderScriptInternalCreate.mIsProcessContext = true;
                mProcessContextList.add(renderScriptInternalCreate);
                return renderScriptInternalCreate;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    synchronized void nAllocationData2D(long j6, int i10, int i11, int i12, int i13, Bitmap bitmap) {
        validate();
        rsnAllocationData2D(this.mContext, j6, i10, i11, i12, i13, bitmap);
    }
}
