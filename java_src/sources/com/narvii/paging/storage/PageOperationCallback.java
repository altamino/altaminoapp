package com.narvii.paging.storage;

/* JADX INFO: loaded from: classes6.dex */
public interface PageOperationCallback {
    void onEmptyPageAppended();

    void onEmptyPagePrepend();

    void onInitialized(int i10);

    void onPageAppended(int i10);

    void onPagePrepend(int i10);
}
