package com.narvii.pre_editing;

import com.narvii.pre_editing.frame.VideoFrameReader;
import com.narvii.util.Utils;
import com.narvii.util.text.TextUtils;
import j8.i;
import j8.o;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ThreadPoolExecutor;
import kotlin.collections.m0;
import kotlin.collections.w;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.p0;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
public final class PreEditFrameRetriever {

    @NotNull
    private static final Companion Companion = new Companion(null);

    @Deprecated
    public static final int MAX_READER_COUNT = 1;
    private boolean active;
    private final ThreadPoolExecutor frameRetrieveEx = Utils.createThreadPoolExecutor(1, "frame_retrieve");

    @NotNull
    private List<VideoFrameReader> readerList = new ArrayList();

    private static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public final void releaseExecutor() {
        this.active = false;
        this.frameRetrieveEx.execute(new Runnable() { // from class: com.narvii.pre_editing.c
            @Override // java.lang.Runnable
            public final void run() {
                PreEditFrameRetriever.releaseExecutor$lambda$2(this.f2608a);
            }
        });
        this.frameRetrieveEx.shutdown();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initRetriever$lambda$0(PreEditFrameRetriever this$0, String outputFolderPath) {
        t.j(this$0, "this$0");
        t.j(outputFolderPath, "$outputFolderPath");
        this$0.readerList.add(new VideoFrameReader(outputFolderPath, 0, 2, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void releaseExecutor$lambda$2(PreEditFrameRetriever this$0) {
        t.j(this$0, "this$0");
        Iterator<VideoFrameReader> it = this$0.readerList.iterator();
        while (it.hasNext()) {
            it.next().clear();
        }
    }

    private final void retrieveFrameInternal(final List<Long> list, final VideoFrameReader.FrameCallback frameCallback) {
        this.frameRetrieveEx.execute(new Runnable() { // from class: com.narvii.pre_editing.e
            @Override // java.lang.Runnable
            public final void run() {
                PreEditFrameRetriever.retrieveFrameInternal$lambda$5(this.f2611a, list, frameCallback);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void retrieveFrameInternal$lambda$5(PreEditFrameRetriever this$0, List timeMsList, VideoFrameReader.FrameCallback callback) {
        T t5;
        t.j(this$0, "this$0");
        t.j(timeMsList, "$timeMsList");
        t.j(callback, "$callback");
        p0 p0Var = new p0();
        synchronized (this$0) {
            try {
                Iterator<T> it = this$0.readerList.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        t5 = 0;
                        break;
                    }
                    Object next = it.next();
                    if (!((VideoFrameReader) next).isWorking()) {
                        t5 = next;
                        break;
                    }
                }
                p0Var.element = t5;
                l0 l0Var = l0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        VideoFrameReader videoFrameReader = (VideoFrameReader) t5;
        if (videoFrameReader != null) {
            videoFrameReader.start(timeMsList, callback);
        }
    }

    public final void initRetriever(@NotNull final String outputFolderPath) {
        t.j(outputFolderPath, "outputFolderPath");
        boolean z6 = (TextUtils.isEmpty(outputFolderPath) || this.frameRetrieveEx.isShutdown()) ? false : true;
        this.active = z6;
        if (z6) {
            this.frameRetrieveEx.execute(new Runnable() { // from class: com.narvii.pre_editing.d
                @Override // java.lang.Runnable
                public final void run() {
                    PreEditFrameRetriever.initRetriever$lambda$0(this.f2609a, outputFolderPath);
                }
            });
        }
    }

    public final void retrieveFrame(long j6, int i10, @NotNull VideoFrameReader.FrameCallback callback) {
        t.j(callback, "callback");
        if (this.active) {
            long j10 = j6 / ((long) i10);
            i iVarV = o.v(0, i10);
            ArrayList arrayList = new ArrayList(w.x(iVarV, 10));
            Iterator<Integer> it = iVarV.iterator();
            while (it.hasNext()) {
                arrayList.add(Long.valueOf(((long) ((m0) it).nextInt()) * j10));
            }
            retrieveFrameInternal(arrayList, callback);
        }
    }
}
