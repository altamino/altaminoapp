package com.narvii.pre_editing;

import com.narvii.pre_editing.frame.VideoFrameReader;
import com.narvii.util.Utils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ThreadPoolExecutor;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;

/* compiled from: PreEditFrameRetriever.kt */
/* loaded from: classes3.dex */
public final class PreEditFrameRetriever {

    @Deprecated
    public static final Companion Companion = new Companion(null);
    public static final int MAX_READER_COUNT = 1;
    private boolean active;
    private final ThreadPoolExecutor frameRetrieveEx = Utils.createThreadPoolExecutor(1, "frame_retrieve");
    private List<VideoFrameReader> readerList = new ArrayList();

    /* compiled from: PreEditFrameRetriever.kt */
    private static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x001c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void initRetriever(final java.lang.String r5) {
        /*
            r4 = this;
            java.lang.String r0 = "outputFolderPath"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r5, r0)
            boolean r0 = com.narvii.util.text.TextUtils.isEmpty(r5)
            r1 = 0
            r2 = 1
            if (r0 != 0) goto L1c
            java.util.concurrent.ThreadPoolExecutor r0 = r4.frameRetrieveEx
            java.lang.String r3 = "frameRetrieveEx"
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r0, r3)
            boolean r0 = r0.isShutdown()
            if (r0 != 0) goto L1c
            r0 = 1
            goto L1d
        L1c:
            r0 = 0
        L1d:
            r4.active = r0
            boolean r0 = r4.active
            if (r0 != 0) goto L24
            return
        L24:
            if (r1 >= r2) goto L33
            java.util.concurrent.ThreadPoolExecutor r0 = r4.frameRetrieveEx
            com.narvii.pre_editing.PreEditFrameRetriever$initRetriever$1 r3 = new com.narvii.pre_editing.PreEditFrameRetriever$initRetriever$1
            r3.<init>()
            r0.execute(r3)
            int r1 = r1 + 1
            goto L24
        L33:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.pre_editing.PreEditFrameRetriever.initRetriever(java.lang.String):void");
    }

    public final void retrieveFrame(long j, int i, VideoFrameReader.FrameCallback callback) {
        Intrinsics.checkParameterIsNotNull(callback, "callback");
        if (this.active) {
            long j2 = j / i;
            IntRange intRangeUntil = RangesKt___RangesKt.until(0, i);
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(intRangeUntil, 10));
            Iterator<Integer> it = intRangeUntil.iterator();
            while (it.hasNext()) {
                arrayList.add(Long.valueOf(((IntIterator) it).nextInt() * j2));
            }
            retrieveFrameInternal(arrayList, callback);
        }
    }

    public final void releaseExecutor() {
        this.active = false;
        this.frameRetrieveEx.execute(new Runnable() { // from class: com.narvii.pre_editing.PreEditFrameRetriever.releaseExecutor.1
            @Override // java.lang.Runnable
            public final void run() {
                Iterator it = PreEditFrameRetriever.this.readerList.iterator();
                while (it.hasNext()) {
                    ((VideoFrameReader) it.next()).clear();
                }
            }
        });
        this.frameRetrieveEx.shutdown();
    }

    private final void retrieveFrameInternal(final List<Long> list, final VideoFrameReader.FrameCallback frameCallback) {
        this.frameRetrieveEx.execute(new Runnable() { // from class: com.narvii.pre_editing.PreEditFrameRetriever.retrieveFrameInternal.1
            @Override // java.lang.Runnable
            public final void run() {
                Object next;
                VideoFrameReader videoFrameReader;
                synchronized (PreEditFrameRetriever.this) {
                    Iterator it = PreEditFrameRetriever.this.readerList.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            next = null;
                            break;
                        } else {
                            next = it.next();
                            if (!((VideoFrameReader) next).isWorking()) {
                                break;
                            }
                        }
                    }
                    videoFrameReader = (VideoFrameReader) next;
                    Unit unit = Unit.INSTANCE;
                }
                if (videoFrameReader != null) {
                    videoFrameReader.start(list, frameCallback);
                }
            }
        });
    }
}
