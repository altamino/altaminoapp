package com.narvii.util;

import com.narvii.paging.source.DataSource;

/* JADX INFO: loaded from: classes9.dex */
public interface ShareDataSourceHost {
    DataSource getSharedDataSource(String str);

    void setSharedDataSource(String str, DataSource dataSource);
}
