package com.narvii.model.api;

import com.narvii.model.NVObject;

/* loaded from: classes.dex */
public abstract class ObjectResponse<T extends NVObject> extends ApiResponse {
    public abstract T object();
}
