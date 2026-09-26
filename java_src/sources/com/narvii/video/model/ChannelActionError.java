package com.narvii.video.model;

import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes9.dex */
public class ChannelActionError {
    private int code;
    private String message;
    public static final ChannelActionError LEAVE_CHANNEL_ERROR = new ChannelActionError(1);
    public static final ChannelActionError ERROR_REQUEST_TO_BE_PRESENTER = new ChannelActionError(2);
    public static final ChannelActionError ERROR_EXITED_ANOTHER_CHANNEL = new ChannelActionError(3);

    public ChannelActionError(int i10) {
        this.code = i10;
    }

    public int code() {
        return this.code;
    }

    public boolean equals(Object obj) {
        return obj != null && (obj instanceof ChannelActionError) && this.code == ((ChannelActionError) obj).code;
    }

    public ChannelActionError(int i10, String str) {
        this.code = i10;
        this.message = str;
    }

    public String message() {
        String str = this.message;
        if (str != null) {
            return str;
        }
        return "error (" + this.code + ")";
    }

    @NonNull
    public String toString() {
        return message();
    }
}
