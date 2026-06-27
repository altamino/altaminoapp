package com.narvii.util;

import com.narvii.paging.source.DataSource;

/* loaded from: classes3.dex */
public interface ShareDataSourceHost {
    DataSource getSharedDataSource(String str);

    void setSharedDataSource(String str, DataSource dataSource);
}
