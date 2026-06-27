package com.narvii.paging.source;

/* compiled from: ContinuousSource.kt */
/* loaded from: classes3.dex */
public interface ContinuousSource {
    void loadAround(int i);

    boolean loadNextPage(PageRequestCallback pageRequestCallback);

    boolean loadPrevPage(PageRequestCallback pageRequestCallback);

    /* compiled from: ContinuousSource.kt */
    public static final class DefaultImpls {
        public static /* synthetic */ boolean loadNextPage$default(ContinuousSource continuousSource, PageRequestCallback pageRequestCallback, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: loadNextPage");
            }
            if ((i & 1) != 0) {
                pageRequestCallback = null;
            }
            return continuousSource.loadNextPage(pageRequestCallback);
        }

        public static /* synthetic */ boolean loadPrevPage$default(ContinuousSource continuousSource, PageRequestCallback pageRequestCallback, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: loadPrevPage");
            }
            if ((i & 1) != 0) {
                pageRequestCallback = null;
            }
            return continuousSource.loadPrevPage(pageRequestCallback);
        }
    }
}
