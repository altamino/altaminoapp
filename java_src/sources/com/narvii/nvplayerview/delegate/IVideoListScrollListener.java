package com.narvii.nvplayerview.delegate;

/* JADX INFO: loaded from: classes.dex */
public interface IVideoListScrollListener {
    public static final int SCROLL_STATE_FLING = 2;
    public static final int SCROLL_STATE_IDLE = 0;
    public static final int SCROLL_STATE_TOUCH_SCROLL = 1;

    void onScroll(IVideoListView iVideoListView);

    void onScrollStateChanged(IVideoListView iVideoListView, int i10);
}
