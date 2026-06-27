package com.narvii.chat.screenroom;

import com.narvii.model.PlayList;

/* loaded from: classes2.dex */
public interface VideoPlayListener {
    void onBuffering(boolean z);

    void onPlayListChanged(PlayList playList, boolean z, boolean z2);

    void onUserSeeked(boolean z);
}
