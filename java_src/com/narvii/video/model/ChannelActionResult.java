package com.narvii.video.model;

/* loaded from: classes3.dex */
public class ChannelActionResult {
    public ChannelActionError error;
    public boolean isSuccess;

    public ChannelActionResult(boolean z, ChannelActionError channelActionError) {
        this.isSuccess = z;
        this.error = channelActionError;
    }
}
