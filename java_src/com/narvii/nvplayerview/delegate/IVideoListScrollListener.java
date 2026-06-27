package com.narvii.nvplayerview.delegate;

/* loaded from: classes3.dex */
public interface IVideoListScrollListener {
    public static final int SCROLL_STATE_FLING = 2;
    public static final int SCROLL_STATE_IDLE = 0;
    public static final int SCROLL_STATE_TOUCH_SCROLL = 1;

    void onScroll(IVideoListView iVideoListView);

    void onScrollStateChanged(IVideoListView iVideoListView, int i);
}
