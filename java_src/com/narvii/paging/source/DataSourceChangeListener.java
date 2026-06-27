package com.narvii.paging.source;

import com.narvii.paging.storage.PageStorage;

/* loaded from: classes3.dex */
public interface DataSourceChangeListener {
    void onPageListChanged(PageStorage pageStorage);

    void onPageLoadStatusChanged();
}
