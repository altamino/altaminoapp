package com.narvii.services;

import com.narvii.app.NVContext;

/* JADX INFO: loaded from: classes7.dex */
public interface ServiceProvider<T> {
    T create(NVContext nVContext);

    void destroy(NVContext nVContext, T t5);

    void pause(NVContext nVContext, T t5);

    void resume(NVContext nVContext, T t5);

    void start(NVContext nVContext, T t5);

    void stop(NVContext nVContext, T t5);
}
