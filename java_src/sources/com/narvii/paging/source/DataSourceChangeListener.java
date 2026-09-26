package com.narvii.paging.source;

import com.narvii.paging.storage.PageStorage;

/* JADX INFO: loaded from: classes7.dex */
public interface DataSourceChangeListener {
    void onPageListChanged(PageStorage pageStorage);

    void onPageLoadStatusChanged();
}
