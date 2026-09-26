package com.narvii.video.model;

/* JADX INFO: loaded from: classes5.dex */
public class ChannelActionResult {
    public ChannelActionError error;
    public boolean isSuccess;

    public ChannelActionResult(boolean z6, ChannelActionError channelActionError) {
        this.isSuccess = z6;
        this.error = channelActionError;
    }
}
