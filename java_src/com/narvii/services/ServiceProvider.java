package com.narvii.services;

import com.narvii.app.NVContext;

/* loaded from: classes.dex */
public interface ServiceProvider<T> {
    T create(NVContext nVContext);

    void destroy(NVContext nVContext, T t);

    void pause(NVContext nVContext, T t);

    void resume(NVContext nVContext, T t);

    void start(NVContext nVContext, T t);

    void stop(NVContext nVContext, T t);
}
