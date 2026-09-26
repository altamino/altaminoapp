package com.narvii.chat.screenroom;

import com.narvii.model.PlayList;

/* JADX INFO: loaded from: classes4.dex */
public interface VideoPlayListener {
    void onBuffering(boolean z6);

    void onPlayListChanged(PlayList playList, boolean z6, boolean z10);

    void onUserSeeked(boolean z6);
}
