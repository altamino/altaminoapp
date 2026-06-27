package com.narvii.paging.storage;

/* loaded from: classes3.dex */
public interface PageOperationCallback {
    void onEmptyPageAppended();

    void onEmptyPagePrepend();

    void onInitialized(int i);

    void onPageAppended(int i);

    void onPagePrepend(int i);
}
