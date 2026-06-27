package com.narvii.chat.video;

import android.view.View;
import com.narvii.chat.rtc.ChannelUserWrapper;

/* loaded from: classes2.dex */
public interface PresenterItemClickListener {
    public static final int TYPE_FLIP_CAMERA = 2;
    public static final int TYPE_MUTE_CAMERA = 1;
    public static final int TYPE_PROFILE = 0;

    void onPresenterItemClicked(View view, ChannelUserWrapper channelUserWrapper, boolean z, int i);
}
