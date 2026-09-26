package com.narvii.paging.state;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes10.dex */
public class PageLoadState {
    public static final int FAILED = 2;
    public static final int IDLE = -1;
    public static final int LOADED = 1;
    public static final int LOADING = 0;
    public String errorMessage;
    public int status;

    @Retention(RetentionPolicy.SOURCE)
    @interface Status {
    }

    public PageLoadState() {
        this(-1);
    }

    public boolean isFailed() {
        return this.status == 2;
    }

    public boolean isLoaded() {
        return this.status == 1;
    }

    public PageLoadState(int i10) {
        this(i10, null);
    }

    public PageLoadState(int i10, String str) {
        this.status = i10;
        this.errorMessage = str;
    }
}
