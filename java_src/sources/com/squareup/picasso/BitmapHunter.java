package com.squareup.picasso;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.net.NetworkInfo;
import com.google.firebase.remoteconfig.a;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicInteger;
import okio.BufferedSource;
import okio.Okio;
import okio.Source;

/* JADX INFO: loaded from: classes7.dex */
class BitmapHunter implements Runnable {
    Action action;
    List<Action> actions;
    final Cache cache;
    final Request data;
    final Dispatcher dispatcher;
    Exception exception;
    int exifOrientation;
    Future<?> future;
    final String key;
    Picasso.LoadedFrom loadedFrom;
    final int memoryPolicy;
    int networkPolicy;
    final Picasso picasso;
    Picasso.Priority priority;
    final RequestHandler requestHandler;
    Bitmap result;
    int retryCount;
    final int sequence = SEQUENCE_GENERATOR.incrementAndGet();
    final Stats stats;
    private static final Object DECODE_LOCK = new Object();
    private static final ThreadLocal<StringBuilder> NAME_BUILDER = new ThreadLocal<StringBuilder>() { // from class: com.squareup.picasso.BitmapHunter.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        public StringBuilder initialValue() {
            return new StringBuilder("Picasso-");
        }
    };
    private static final AtomicInteger SEQUENCE_GENERATOR = new AtomicInteger();
    private static final RequestHandler ERRORING_HANDLER = new RequestHandler() { // from class: com.squareup.picasso.BitmapHunter.2
        @Override // com.squareup.picasso.RequestHandler
        public boolean canHandleRequest(Request request) {
            return true;
        }

        @Override // com.squareup.picasso.RequestHandler
        public RequestHandler.Result load(Request request, int i10) throws IOException {
            throw new IllegalStateException("Unrecognized type of request: " + request);
        }
    };

    static int getExifRotation(int i10) {
        switch (i10) {
            case 3:
            case 4:
                return 180;
            case 5:
            case 6:
                return 90;
            case 7:
            case 8:
                return 270;
            default:
                return 0;
        }
    }

    static int getExifTranslation(int i10) {
        return (i10 == 2 || i10 == 7 || i10 == 4 || i10 == 5) ? -1 : 1;
    }

    private static boolean shouldResize(boolean z6, int i10, int i11, int i12, int i13) {
        return !z6 || (i12 != 0 && i10 > i12) || (i13 != 0 && i11 > i13);
    }

    Action getAction() {
        return this.action;
    }

    List<Action> getActions() {
        return this.actions;
    }

    Request getData() {
        return this.data;
    }

    Exception getException() {
        return this.exception;
    }

    String getKey() {
        return this.key;
    }

    Picasso.LoadedFrom getLoadedFrom() {
        return this.loadedFrom;
    }

    int getMemoryPolicy() {
        return this.memoryPolicy;
    }

    Picasso getPicasso() {
        return this.picasso;
    }

    Picasso.Priority getPriority() {
        return this.priority;
    }

    Bitmap getResult() {
        return this.result;
    }

    private Picasso.Priority computeNewPriority() {
        Picasso.Priority priority = Picasso.Priority.LOW;
        List<Action> list = this.actions;
        boolean z6 = (list == null || list.isEmpty()) ? false : true;
        Action action = this.action;
        if (action == null && !z6) {
            return priority;
        }
        if (action != null) {
            priority = action.getPriority();
        }
        if (z6) {
            int size = this.actions.size();
            for (int i10 = 0; i10 < size; i10++) {
                Picasso.Priority priority2 = this.actions.get(i10).getPriority();
                if (priority2.ordinal() > priority.ordinal()) {
                    priority = priority2;
                }
            }
        }
        return priority;
    }

    /* JADX WARN: Code duplicated, block: B:94:0x0250  */
    /* JADX WARN: Code duplicated, block: B:95:0x0254  */
    static Bitmap transformResult(Request request, Bitmap bitmap, int i10) {
        Matrix matrix;
        int i11;
        int i12;
        float f;
        float f6;
        float f7;
        float f10;
        float f11;
        float f12;
        float f13;
        float f14;
        int i13;
        int i14;
        float f15;
        float f16;
        float f17;
        int i15;
        int i16;
        float f18;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        Bitmap bitmapCreateBitmap;
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        boolean z6 = request.onlyScaleDown;
        Matrix matrix2 = new Matrix();
        if (request.needsMatrixTransform() || i10 != 0) {
            int iFloor = request.targetWidth;
            int iFloor2 = request.targetHeight;
            float f19 = request.rotationDegrees;
            if (f19 != 0.0f) {
                double d = f19;
                double dCos = Math.cos(Math.toRadians(d));
                double dSin = Math.sin(Math.toRadians(d));
                if (request.hasRotationPivot) {
                    matrix2.setRotate(f19, request.rotationPivotX, request.rotationPivotY);
                    float f20 = request.rotationPivotX;
                    double d2 = 1.0d - dCos;
                    float f21 = request.rotationPivotY;
                    double d6 = (((double) f20) * d2) + (((double) f21) * dSin);
                    double d7 = (((double) f21) * d2) - (((double) f20) * dSin);
                    int i25 = request.targetWidth;
                    double d10 = (((double) i25) * dCos) + d6;
                    double d11 = (((double) i25) * dSin) + d7;
                    int i26 = request.targetHeight;
                    double d12 = (d6 + (((double) i25) * dCos)) - (((double) i26) * dSin);
                    double d13 = (((double) i25) * dSin) + d7 + (((double) i26) * dCos);
                    double d14 = d6 - (((double) i26) * dSin);
                    double d15 = (((double) i26) * dCos) + d7;
                    double dMax = Math.max(d14, Math.max(d12, Math.max(d6, d10)));
                    double dMin = Math.min(d14, Math.min(d12, Math.min(d6, d10)));
                    double dMax2 = Math.max(d15, Math.max(d13, Math.max(d7, d11)));
                    double dMin2 = Math.min(d15, Math.min(d13, Math.min(d7, d11)));
                    iFloor = (int) Math.floor(dMax - dMin);
                    iFloor2 = (int) Math.floor(dMax2 - dMin2);
                    matrix = matrix2;
                } else {
                    matrix = matrix2;
                    matrix.setRotate(f19);
                    int i27 = request.targetWidth;
                    double d16 = ((double) i27) * dCos;
                    double d17 = ((double) i27) * dSin;
                    int i28 = request.targetHeight;
                    double d18 = (((double) i27) * dCos) - (((double) i28) * dSin);
                    double d19 = (((double) i27) * dSin) + (((double) i28) * dCos);
                    double d20 = -(((double) i28) * dSin);
                    double d21 = ((double) i28) * dCos;
                    double dMax3 = Math.max(d20, Math.max(d18, Math.max(a.DEFAULT_VALUE_FOR_DOUBLE, d16)));
                    double dMin3 = Math.min(d20, Math.min(d18, Math.min(a.DEFAULT_VALUE_FOR_DOUBLE, d16)));
                    double dMax4 = Math.max(d21, Math.max(d19, Math.max(a.DEFAULT_VALUE_FOR_DOUBLE, d17)));
                    double dMin4 = Math.min(d21, Math.min(d19, Math.min(a.DEFAULT_VALUE_FOR_DOUBLE, d17)));
                    int iFloor3 = (int) Math.floor(dMax3 - dMin3);
                    iFloor2 = (int) Math.floor(dMax4 - dMin4);
                    iFloor = iFloor3;
                }
            } else {
                matrix = matrix2;
            }
            if (i10 != 0) {
                int exifRotation = getExifRotation(i10);
                int exifTranslation = getExifTranslation(i10);
                if (exifRotation != 0) {
                    matrix.preRotate(exifRotation);
                    if (exifRotation == 90 || exifRotation == 270) {
                        int i29 = iFloor2;
                        iFloor2 = iFloor;
                        iFloor = i29;
                    }
                }
                if (exifTranslation != 1) {
                    matrix.postScale(exifTranslation, 1.0f);
                }
            }
            if (request.centerCrop) {
                if (iFloor != 0) {
                    i13 = width;
                    f15 = iFloor / i13;
                    i14 = height;
                } else {
                    i13 = width;
                    i14 = height;
                    f15 = iFloor2 / i14;
                }
                if (iFloor2 != 0) {
                    f16 = iFloor2;
                    f17 = i14;
                } else {
                    f16 = iFloor;
                    f17 = i13;
                }
                float f22 = f16 / f17;
                if (f15 > f22) {
                    int iCeil = (int) Math.ceil(i14 * (f22 / f15));
                    int i30 = request.centerCropGravity;
                    if ((i30 & 48) == 48) {
                        i24 = 0;
                    } else {
                        i24 = (i30 & 80) == 80 ? i14 - iCeil : (i14 - iCeil) / 2;
                    }
                    f18 = iFloor2 / iCeil;
                    i16 = iCeil;
                    i18 = 0;
                    i17 = i24;
                    i15 = i13;
                } else if (f15 < f22) {
                    int iCeil2 = (int) Math.ceil(i13 * (f15 / f22));
                    int i31 = request.centerCropGravity;
                    if ((i31 & 3) == 3) {
                        i19 = 0;
                    } else {
                        i19 = (i31 & 5) == 5 ? i13 - iCeil2 : (i13 - iCeil2) / 2;
                    }
                    i18 = i19;
                    i15 = iCeil2;
                    i16 = i14;
                    f15 = iFloor / iCeil2;
                    f18 = f22;
                    i17 = 0;
                } else {
                    i15 = i13;
                    i16 = i14;
                    f15 = f22;
                    f18 = f15;
                    i17 = 0;
                    i18 = 0;
                }
                if (shouldResize(z6, i13, i14, iFloor, iFloor2)) {
                    matrix.preScale(f15, f18);
                }
                i20 = i17;
                i21 = i16;
                i22 = i18;
                i23 = i15;
            } else {
                i11 = height;
                i12 = width;
                if (request.centerInside) {
                    if (iFloor != 0) {
                        f11 = iFloor;
                        f12 = i12;
                    } else {
                        f11 = iFloor2;
                        f12 = i11;
                    }
                    float f23 = f11 / f12;
                    if (iFloor2 != 0) {
                        f13 = iFloor2;
                        f14 = i11;
                    } else {
                        f13 = iFloor;
                        f14 = i12;
                    }
                    float f24 = f13 / f14;
                    if (f23 >= f24) {
                        f23 = f24;
                    }
                    if (shouldResize(z6, i12, i11, iFloor, iFloor2)) {
                        matrix.preScale(f23, f23);
                    }
                } else if ((iFloor != 0 || iFloor2 != 0) && (iFloor != i12 || iFloor2 != i11)) {
                    if (iFloor != 0) {
                        f = iFloor;
                        f6 = i12;
                    } else {
                        f = iFloor2;
                        f6 = i11;
                    }
                    float f25 = f / f6;
                    if (iFloor2 != 0) {
                        f7 = iFloor2;
                        f10 = i11;
                    } else {
                        f7 = iFloor;
                        f10 = i12;
                    }
                    float f26 = f7 / f10;
                    if (shouldResize(z6, i12, i11, iFloor, iFloor2)) {
                        matrix.preScale(f25, f26);
                    }
                }
            }
            bitmapCreateBitmap = Bitmap.createBitmap(bitmap, i22, i20, i23, i21, matrix, true);
            if (bitmapCreateBitmap != bitmap) {
                return bitmap;
            }
            bitmap.recycle();
            return bitmapCreateBitmap;
        }
        i12 = width;
        i11 = height;
        matrix = matrix2;
        i23 = i12;
        i21 = i11;
        i22 = 0;
        i20 = 0;
        bitmapCreateBitmap = Bitmap.createBitmap(bitmap, i22, i20, i23, i21, matrix, true);
        if (bitmapCreateBitmap != bitmap) {
            return bitmap;
        }
        bitmap.recycle();
        return bitmapCreateBitmap;
    }

    void attach(Action action) {
        boolean z6 = this.picasso.loggingEnabled;
        Request request = action.request;
        if (this.action == null) {
            this.action = action;
            if (z6) {
                List<Action> list = this.actions;
                if (list == null || list.isEmpty()) {
                    Utils.log("Hunter", "joined", request.logId(), "to empty hunter");
                    return;
                } else {
                    Utils.log("Hunter", "joined", request.logId(), Utils.getLogIdsForHunter(this, "to "));
                    return;
                }
            }
            return;
        }
        if (this.actions == null) {
            this.actions = new ArrayList(3);
        }
        this.actions.add(action);
        if (z6) {
            Utils.log("Hunter", "joined", request.logId(), Utils.getLogIdsForHunter(this, "to "));
        }
        Picasso.Priority priority = action.getPriority();
        if (priority.ordinal() > this.priority.ordinal()) {
            this.priority = priority;
        }
    }

    boolean cancel() {
        Future<?> future;
        if (this.action != null) {
            return false;
        }
        List<Action> list = this.actions;
        return (list == null || list.isEmpty()) && (future = this.future) != null && future.cancel(false);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0026  */
    /* JADX WARN: Code duplicated, block: B:16:? A[RETURN, SYNTHETIC] */
    void detach(Action action) {
        if (this.action != action) {
            List<Action> list = this.actions;
            if (list != null && list.remove(action)) {
            }
            if (this.picasso.loggingEnabled) {
                Utils.log("Hunter", "removed", action.request.logId(), Utils.getLogIdsForHunter(this, "from "));
            }
        }
        this.action = null;
        if (action.getPriority() == this.priority) {
            this.priority = computeNewPriority();
        }
        if (this.picasso.loggingEnabled) {
            Utils.log("Hunter", "removed", action.request.logId(), Utils.getLogIdsForHunter(this, "from "));
        }
    }

    Bitmap hunt() throws IOException {
        Bitmap bitmapTransformResult;
        if (MemoryPolicy.shouldReadFromMemoryCache(this.memoryPolicy)) {
            bitmapTransformResult = this.cache.get(this.key);
            if (bitmapTransformResult != null) {
                this.stats.dispatchCacheHit();
                this.loadedFrom = Picasso.LoadedFrom.MEMORY;
                if (this.picasso.loggingEnabled) {
                    Utils.log("Hunter", "decoded", this.data.logId(), "from cache");
                }
                return bitmapTransformResult;
            }
        } else {
            bitmapTransformResult = null;
        }
        int i10 = this.retryCount == 0 ? NetworkPolicy.OFFLINE.index : this.networkPolicy;
        this.networkPolicy = i10;
        RequestHandler.Result resultLoad = this.requestHandler.load(this.data, i10);
        if (resultLoad != null) {
            this.loadedFrom = resultLoad.getLoadedFrom();
            this.exifOrientation = resultLoad.getExifOrientation();
            bitmapTransformResult = resultLoad.getBitmap();
            if (bitmapTransformResult == null) {
                Source source = resultLoad.getSource();
                try {
                    Bitmap bitmapDecodeStream = decodeStream(source, this.data);
                    try {
                        source.close();
                    } catch (IOException unused) {
                    }
                    bitmapTransformResult = bitmapDecodeStream;
                } catch (Throwable th) {
                    try {
                        source.close();
                    } catch (IOException unused2) {
                    }
                    throw th;
                }
            }
        }
        if (bitmapTransformResult != null) {
            if (this.picasso.loggingEnabled) {
                Utils.log("Hunter", "decoded", this.data.logId());
            }
            this.stats.dispatchBitmapDecoded(bitmapTransformResult);
            if (this.data.needsTransformation() || this.exifOrientation != 0) {
                synchronized (DECODE_LOCK) {
                    try {
                        if (this.data.needsMatrixTransform() || this.exifOrientation != 0) {
                            bitmapTransformResult = transformResult(this.data, bitmapTransformResult, this.exifOrientation);
                            if (this.picasso.loggingEnabled) {
                                Utils.log("Hunter", "transformed", this.data.logId());
                            }
                        }
                        if (this.data.hasCustomTransformations()) {
                            bitmapTransformResult = applyCustomTransformations(this.data.transformations, bitmapTransformResult);
                            if (this.picasso.loggingEnabled) {
                                Utils.log("Hunter", "transformed", this.data.logId(), "from custom transformations");
                            }
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                if (bitmapTransformResult != null) {
                    this.stats.dispatchBitmapTransformed(bitmapTransformResult);
                }
            }
        }
        return bitmapTransformResult;
    }

    boolean isCancelled() {
        Future<?> future = this.future;
        return future != null && future.isCancelled();
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            try {
                try {
                    try {
                        updateThreadName(this.data);
                        if (this.picasso.loggingEnabled) {
                            Utils.log("Hunter", "executing", Utils.getLogIdsForHunter(this));
                        }
                        Bitmap bitmapHunt = hunt();
                        this.result = bitmapHunt;
                        if (bitmapHunt == null) {
                            this.dispatcher.dispatchFailed(this);
                        } else {
                            this.dispatcher.dispatchComplete(this);
                        }
                    } catch (IOException e) {
                        this.exception = e;
                        this.dispatcher.dispatchRetry(this);
                    }
                } catch (NetworkRequestHandler.ResponseException e2) {
                    if (!NetworkPolicy.isOfflineOnly(e2.networkPolicy) || e2.code != 504) {
                        this.exception = e2;
                    }
                    this.dispatcher.dispatchFailed(this);
                }
            } catch (Exception e6) {
                this.exception = e6;
                this.dispatcher.dispatchFailed(this);
            } catch (OutOfMemoryError e7) {
                StringWriter stringWriter = new StringWriter();
                this.stats.createSnapshot().dump(new PrintWriter(stringWriter));
                this.exception = new RuntimeException(stringWriter.toString(), e7);
                this.dispatcher.dispatchFailed(this);
            }
        } finally {
            Thread.currentThread().setName("Picasso-Idle");
        }
    }

    boolean shouldRetry(boolean z6, NetworkInfo networkInfo) {
        int i10 = this.retryCount;
        if (i10 <= 0) {
            return false;
        }
        this.retryCount = i10 - 1;
        return this.requestHandler.shouldRetry(z6, networkInfo);
    }

    boolean supportsReplay() {
        return this.requestHandler.supportsReplay();
    }

    BitmapHunter(Picasso picasso, Dispatcher dispatcher, Cache cache, Stats stats, Action action, RequestHandler requestHandler) {
        this.picasso = picasso;
        this.dispatcher = dispatcher;
        this.cache = cache;
        this.stats = stats;
        this.action = action;
        this.key = action.getKey();
        this.data = action.getRequest();
        this.priority = action.getPriority();
        this.memoryPolicy = action.getMemoryPolicy();
        this.networkPolicy = action.getNetworkPolicy();
        this.requestHandler = requestHandler;
        this.retryCount = requestHandler.getRetryCount();
    }

    static Bitmap applyCustomTransformations(List<Transformation> list, Bitmap bitmap) {
        int size = list.size();
        int i10 = 0;
        while (i10 < size) {
            final Transformation transformation = list.get(i10);
            try {
                Bitmap bitmapTransform = transformation.transform(bitmap);
                if (bitmapTransform == null) {
                    final StringBuilder sb = new StringBuilder();
                    sb.append("Transformation ");
                    sb.append(transformation.key());
                    sb.append(" returned null after ");
                    sb.append(i10);
                    sb.append(" previous transformation(s).\n\nTransformation list:\n");
                    Iterator<Transformation> it = list.iterator();
                    while (it.hasNext()) {
                        sb.append(it.next().key());
                        sb.append('\n');
                    }
                    Picasso.HANDLER.post(new Runnable() { // from class: com.squareup.picasso.BitmapHunter.4
                        @Override // java.lang.Runnable
                        public void run() {
                            throw new NullPointerException(sb.toString());
                        }
                    });
                    return null;
                }
                if (bitmapTransform == bitmap && bitmap.isRecycled()) {
                    Picasso.HANDLER.post(new Runnable() { // from class: com.squareup.picasso.BitmapHunter.5
                        @Override // java.lang.Runnable
                        public void run() {
                            throw new IllegalStateException("Transformation " + transformation.key() + " returned input Bitmap but recycled it.");
                        }
                    });
                    return null;
                }
                if (bitmapTransform != bitmap && !bitmap.isRecycled()) {
                    Picasso.HANDLER.post(new Runnable() { // from class: com.squareup.picasso.BitmapHunter.6
                        @Override // java.lang.Runnable
                        public void run() {
                            throw new IllegalStateException("Transformation " + transformation.key() + " mutated input Bitmap but failed to recycle the original.");
                        }
                    });
                    return null;
                }
                i10++;
                bitmap = bitmapTransform;
            } catch (RuntimeException e) {
                Picasso.HANDLER.post(new Runnable() { // from class: com.squareup.picasso.BitmapHunter.3
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new RuntimeException("Transformation " + transformation.key() + " crashed with exception.", e);
                    }
                });
                return null;
            }
        }
        return bitmap;
    }

    static Bitmap decodeStream(Source source, Request request) throws IOException {
        BufferedSource bufferedSourceBuffer = Okio.buffer(source);
        boolean zIsWebPFile = Utils.isWebPFile(bufferedSourceBuffer);
        boolean z6 = request.purgeable;
        BitmapFactory.Options optionsCreateBitmapOptions = RequestHandler.createBitmapOptions(request);
        boolean zRequiresInSampleSize = RequestHandler.requiresInSampleSize(optionsCreateBitmapOptions);
        if (!zIsWebPFile) {
            InputStream inputStream = bufferedSourceBuffer.inputStream();
            if (zRequiresInSampleSize) {
                MarkableInputStream markableInputStream = new MarkableInputStream(inputStream);
                markableInputStream.allowMarksToExpire(false);
                long jSavePosition = markableInputStream.savePosition(1024);
                BitmapFactory.decodeStream(markableInputStream, null, optionsCreateBitmapOptions);
                RequestHandler.calculateInSampleSize(request.targetWidth, request.targetHeight, optionsCreateBitmapOptions, request);
                markableInputStream.reset(jSavePosition);
                markableInputStream.allowMarksToExpire(true);
                inputStream = markableInputStream;
            }
            Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStream, null, optionsCreateBitmapOptions);
            if (bitmapDecodeStream != null) {
                return bitmapDecodeStream;
            }
            throw new IOException("Failed to decode stream.");
        }
        byte[] byteArray = bufferedSourceBuffer.readByteArray();
        if (zRequiresInSampleSize) {
            BitmapFactory.decodeByteArray(byteArray, 0, byteArray.length, optionsCreateBitmapOptions);
            RequestHandler.calculateInSampleSize(request.targetWidth, request.targetHeight, optionsCreateBitmapOptions, request);
        }
        return BitmapFactory.decodeByteArray(byteArray, 0, byteArray.length, optionsCreateBitmapOptions);
    }

    static BitmapHunter forRequest(Picasso picasso, Dispatcher dispatcher, Cache cache, Stats stats, Action action) {
        Request request = action.getRequest();
        List<RequestHandler> requestHandlers = picasso.getRequestHandlers();
        int size = requestHandlers.size();
        for (int i10 = 0; i10 < size; i10++) {
            RequestHandler requestHandler = requestHandlers.get(i10);
            if (requestHandler.canHandleRequest(request)) {
                return new BitmapHunter(picasso, dispatcher, cache, stats, action, requestHandler);
            }
        }
        return new BitmapHunter(picasso, dispatcher, cache, stats, action, ERRORING_HANDLER);
    }

    static void updateThreadName(Request request) {
        String name = request.getName();
        StringBuilder sb = NAME_BUILDER.get();
        sb.ensureCapacity(name.length() + 8);
        sb.replace(8, sb.length(), name);
        Thread.currentThread().setName(sb.toString());
    }
}
