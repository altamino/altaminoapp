package com.narvii.chat.video.events;

import com.narvii.util.ws.WsError;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public interface LiveChannelErrorListener {
    void onLiveChannelError(int i10, @NotNull WsError wsError);
}
