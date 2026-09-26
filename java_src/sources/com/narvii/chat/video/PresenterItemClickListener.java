package com.narvii.chat.video;

import android.view.View;
import com.narvii.chat.rtc.ChannelUserWrapper;

/* JADX INFO: loaded from: classes8.dex */
public interface PresenterItemClickListener {
    public static final int TYPE_FLIP_CAMERA = 2;
    public static final int TYPE_MUTE_CAMERA = 1;
    public static final int TYPE_PROFILE = 0;

    void onPresenterItemClicked(View view, ChannelUserWrapper channelUserWrapper, boolean z6, int i10);
}
