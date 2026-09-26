package com.narvii.util.ws;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.narvii.util.Callback;

/* JADX INFO: loaded from: classes11.dex */
public class WsRequest extends WsMessage {

    @JsonIgnore
    public Callback callback;

    @JsonIgnore
    public long startTime;
}
