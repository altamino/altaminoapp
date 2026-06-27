package com.narvii.model.api;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.narvii.util.JacksonUtils;

@JsonIgnoreProperties(ignoreUnknown = true)
/* loaded from: classes.dex */
public class ApiResponse {
    static final ObjectMapper MAPPER = JacksonUtils.DEFAULT_MAPPER;

    @JsonProperty("cancelButtonText")
    public String cancelButtonText;

    @JsonProperty("api:debuginfo")
    public String debugInfo;
    public String deeplink;

    @JsonProperty("api:duration")
    public String duration;

    @JsonProperty("api:message")
    public String message;
    public boolean noCancelButton;

    @JsonProperty("okButtonText")
    public String okButtonText;

    @JsonProperty("api:statuscode")
    public int statusCode;

    @JsonProperty("api:timestamp")
    public String timestamp;

    @JsonProperty("title")
    public String title;

    @JsonProperty("url")
    public String url;

    public String toString() {
        try {
            return MAPPER.writeValueAsString(this);
        } catch (Exception unused) {
            return super.toString();
        }
    }
}
