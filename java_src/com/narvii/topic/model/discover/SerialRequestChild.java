package com.narvii.topic.model.discover;

/* loaded from: classes3.dex */
public interface SerialRequestChild {
    boolean isReadyToRequest();

    boolean isRequestFinished();

    boolean isVisibleToUser();

    void requestDataWhenReady();

    int responseSize();

    void setSerialRequestParent(SerialRequestParent serialRequestParent);
}
