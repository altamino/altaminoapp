package com.narvii.nvplayerview.delegate;

import android.view.View;

/* JADX INFO: loaded from: classes10.dex */
public interface IVideoListView {
    void addOnVideoListScrollListener(IVideoListScrollListener iVideoListScrollListener);

    View getChildAt(int i10);

    int getFirstVisiblePosition();

    Object getItemInAdapter(int i10);

    int getLastVisiblePosition();

    int getTotalCountInAdapter();

    boolean isShown();

    boolean post(Runnable runnable);

    boolean postDelayed(Runnable runnable, long j6);

    void removeOnVideoListScrollListener(IVideoListScrollListener iVideoListScrollListener);
}
