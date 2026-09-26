package com.narvii.topic.model.discover;

/* JADX INFO: loaded from: classes6.dex */
public interface SerialRequestParent {
    boolean isReadyToRequest(SerialRequestChild serialRequestChild);

    void notifyNextRequest(SerialRequestChild serialRequestChild);
}
