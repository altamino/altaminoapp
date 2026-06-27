package com.narvii.visitor;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.narvii.model.api.ListResponse;
import com.narvii.util.JacksonUtils;
import java.util.Date;
import java.util.List;

/* loaded from: classes.dex */
public class RecentVisitorListResponse extends ListResponse<RecentVisitor> {
    public long capacity;

    @JsonDeserialize(using = JacksonUtils.DateDeserializer.class)
    @JsonSerialize(using = JacksonUtils.DateSerializer.class)
    public Date lastCheckTime;
    public List<RecentVisitor> visitors;
    public long visitorsCount;

    @Override // com.narvii.model.api.ListResponse
    public List list() {
        return this.visitors;
    }
}
