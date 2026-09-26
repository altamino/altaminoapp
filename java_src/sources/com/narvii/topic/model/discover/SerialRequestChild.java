package com.narvii.topic.model.discover;

/* JADX INFO: loaded from: classes11.dex */
public interface SerialRequestChild {
    boolean isReadyToRequest();

    boolean isRequestFinished();

    boolean isVisibleToUser();

    void requestDataWhenReady();

    int responseSize();

    void setSerialRequestParent(SerialRequestParent serialRequestParent);
}
