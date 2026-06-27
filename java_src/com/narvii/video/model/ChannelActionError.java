package com.narvii.video.model;

/* loaded from: classes3.dex */
public class ChannelActionError {
    private int code;
    private String message;
    public static final ChannelActionError LEAVE_CHANNEL_ERROR = new ChannelActionError(1);
    public static final ChannelActionError ERROR_REQUEST_TO_BE_PRESENTER = new ChannelActionError(2);
    public static final ChannelActionError ERROR_EXITED_ANOTHER_CHANNEL = new ChannelActionError(3);

    public ChannelActionError(int i) {
        this.code = i;
    }

    public ChannelActionError(int i, String str) {
        this.code = i;
        this.message = str;
    }

    public int code() {
        return this.code;
    }

    public String message() {
        String str = this.message;
        if (str != null) {
            return str;
        }
        return "error (" + this.code + ")";
    }

    public String toString() {
        return message();
    }
}
