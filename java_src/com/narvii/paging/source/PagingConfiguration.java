package com.narvii.paging.source;

import com.narvii.app.NVApplication;

/* loaded from: classes3.dex */
public class PagingConfiguration {
    public static final int DEFAULT_PAGE_SIZE_DEV = 5;
    public static final int DEFAULT_PAGE_SIZE_PRO = 20;
    public static final int DEFAULT_PREFETCH_DISTANCE = 3;
    public static final int PAGINATION_TYPE_NONE = 2;
    public static final int PAGINATION_TYPE_OFFSET = 1;
    public static final int PAGINATION_TYPE_TOKEN = 0;
    public String offsetStartKey;
    public String offsetStepKey;
    public int pageSize;
    public int paginationType;
    public int prefetchDistance;
    public static final PagingConfiguration TOKEN_CONFIG = new PagingConfiguration(0);
    public static final PagingConfiguration OFFSET_CONFIG = new PagingConfiguration(1);
    public static final PagingConfiguration NONE_CONFIG = new PagingConfiguration(2);

    public PagingConfiguration(int i) {
        this(NVApplication.DEBUG ? 5 : 20, 3, i);
    }

    public PagingConfiguration(int i, int i2) {
        this(i2, 3, i);
    }

    public PagingConfiguration(int i, int i2, int i3) {
        this.pageSize = i;
        this.prefetchDistance = i2;
        this.paginationType = i3;
    }
}
