package com.narvii.model.api;

import com.narvii.model.NVObject;
import java.util.List;

/* loaded from: classes.dex */
public abstract class ListResponse<T extends NVObject> extends ApiResponse {
    public Pagination paging;

    public abstract List<T> list();

    public Pagination getPaging() {
        return this.paging;
    }
}
