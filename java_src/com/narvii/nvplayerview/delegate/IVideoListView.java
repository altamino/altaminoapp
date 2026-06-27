package com.narvii.nvplayerview.delegate;

import android.view.View;

/* loaded from: classes3.dex */
public interface IVideoListView {
    void addOnVideoListScrollListener(IVideoListScrollListener iVideoListScrollListener);

    View getChildAt(int i);

    int getFirstVisiblePosition();

    Object getItemInAdapter(int i);

    int getLastVisiblePosition();

    int getTotalCountInAdapter();

    boolean isShown();

    boolean post(Runnable runnable);

    boolean postDelayed(Runnable runnable, long j);

    void removeOnVideoListScrollListener(IVideoListScrollListener iVideoListScrollListener);
}
