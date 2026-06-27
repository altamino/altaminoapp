package com.narvii.paging.state;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes3.dex */
public class PageLoadState {
    public static final int FAILED = 2;
    public static final int IDLE = -1;
    public static final int LOADED = 1;
    public static final int LOADING = 0;
    public String errorMessage;
    public int status;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    @interface Status {
    }

    public PageLoadState() {
        this(-1);
    }

    public PageLoadState(int i) {
        this(i, null);
    }

    public PageLoadState(int i, String str) {
        this.status = i;
        this.errorMessage = str;
    }

    public boolean isLoaded() {
        return this.status == 1;
    }

    public boolean isFailed() {
        return this.status == 2;
    }
}
