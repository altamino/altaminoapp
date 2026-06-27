package com.narvii.notice;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.narvii.model.api.ListResponse;
import com.narvii.util.JacksonUtils;
import java.util.Date;
import java.util.List;

/* loaded from: classes.dex */
public class NoticeListResponse extends ListResponse<Notice> {

    @JsonDeserialize(using = JacksonUtils.DateDeserializer.class)
    @JsonSerialize(using = JacksonUtils.DateSerializer.class)
    public Date lastCheckTime;

    @JsonProperty("notificationsCount")
    public int notificationCount;

    @JsonDeserialize(contentAs = Notice.class)
    public List<Notice> notificationList;

    @Override // com.narvii.model.api.ListResponse
    public List<Notice> list() {
        return this.notificationList;
    }
}
