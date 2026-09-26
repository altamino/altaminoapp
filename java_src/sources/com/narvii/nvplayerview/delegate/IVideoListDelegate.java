package com.narvii.nvplayerview.delegate;

import com.narvii.nvplayerview.NVVideoView;

/* JADX INFO: loaded from: classes8.dex */
public interface IVideoListDelegate {
    int getPlayerPos();

    NVVideoView getVideoView();

    void listViewFirstBecomeVisible();

    void onActiveChanged(boolean z6);

    void onDestroy();

    void onListViewCreated(IVideoListView iVideoListView);

    void onPause();

    void onRefresh();

    void onResume();

    boolean prepared();

    void resetVideoView();

    void setAutoPlay(boolean z6);
}
