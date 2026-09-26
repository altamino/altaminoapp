package com.google.android.gms.common.api;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public class ApiException extends Exception {

    @NonNull
    @Deprecated
    protected final Status mStatus;

    @NonNull
    public Status getStatus() {
        return this.mStatus;
    }

    public int getStatusCode() {
        return this.mStatus.getStatusCode();
    }

    @Nullable
    @Deprecated
    public String getStatusMessage() {
        return this.mStatus.getStatusMessage();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ApiException(@NonNull Status status) {
        String statusMessage;
        int statusCode = status.getStatusCode();
        if (status.getStatusMessage() != null) {
            statusMessage = status.getStatusMessage();
        } else {
            statusMessage = "";
        }
        super(statusCode + ": " + statusMessage);
        this.mStatus = status;
    }
}
