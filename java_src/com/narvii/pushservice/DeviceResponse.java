package com.narvii.pushservice;

import com.fasterxml.jackson.databind.JsonNode;
import com.narvii.model.api.ApiResponse;

/* loaded from: classes.dex */
public class DeviceResponse extends ApiResponse {
    public DetailLogging detailLogging;
    public JsonNode devOptions;

    public static class DetailLogging {
        public boolean enabled;
    }
}
