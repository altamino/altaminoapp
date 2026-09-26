package com.narvii.paging.source;

import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public interface ContinuousSource {

    public static final class DefaultImpls {
        public static /* synthetic */ boolean loadNextPage$default(ContinuousSource continuousSource, PageRequestCallback pageRequestCallback, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: loadNextPage");
            }
            if ((i10 & 1) != 0) {
                pageRequestCallback = null;
            }
            return continuousSource.loadNextPage(pageRequestCallback);
        }

        public static /* synthetic */ boolean loadPrevPage$default(ContinuousSource continuousSource, PageRequestCallback pageRequestCallback, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: loadPrevPage");
            }
            if ((i10 & 1) != 0) {
                pageRequestCallback = null;
            }
            return continuousSource.loadPrevPage(pageRequestCallback);
        }
    }

    void loadAround(int i10);

    boolean loadNextPage(@Nullable PageRequestCallback pageRequestCallback);

    boolean loadPrevPage(@Nullable PageRequestCallback pageRequestCallback);
}
