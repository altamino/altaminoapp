package com.narvii.nvplayerview.delegate;

import com.narvii.nvplayerview.NVVideoView;

/* loaded from: classes3.dex */
public interface IVideoListDelegate {

    /* renamed from: com.narvii.nvplayerview.delegate.IVideoListDelegate$-CC, reason: invalid class name */
    public final /* synthetic */ class CC {
        public static void $default$listViewFirstBecomeVisible(IVideoListDelegate iVideoListDelegate) {
        }
    }

    int getPlayerPos();

    NVVideoView getVideoView();

    void listViewFirstBecomeVisible();

    void onActiveChanged(boolean z);

    void onDestroy();

    void onListViewCreated(IVideoListView iVideoListView);

    void onPause();

    void onRefresh();

    void onResume();

    boolean prepared();

    void resetVideoView();

    void setAutoPlay(boolean z);
}
