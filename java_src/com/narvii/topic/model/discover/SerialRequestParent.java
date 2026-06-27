package com.narvii.topic.model.discover;

/* loaded from: classes3.dex */
public interface SerialRequestParent {
    boolean isReadyToRequest(SerialRequestChild serialRequestChild);

    void notifyNextRequest(SerialRequestChild serialRequestChild);
}
