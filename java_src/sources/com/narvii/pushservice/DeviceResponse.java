package com.narvii.pushservice;

import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.model.api.ApiResponse;

/* JADX INFO: loaded from: classes.dex */
public class DeviceResponse extends ApiResponse {
    public DetailLogging detailLogging;
    public ObjectNode devOptions;

    public static class DetailLogging {
        public boolean enabled;
    }
}
