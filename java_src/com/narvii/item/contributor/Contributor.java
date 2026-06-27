package com.narvii.item.contributor;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.narvii.model.User;
import com.narvii.util.JacksonUtils;
import java.util.Date;

/* loaded from: classes.dex */
public class Contributor extends User {
    public static final int TYPE_NORMAL = 0;
    public static final int TYPE_ORIGINAL_AUTHOR = 1;

    @JsonDeserialize(using = JacksonUtils.DateDeserializer.class)
    @JsonSerialize(using = JacksonUtils.DateSerializer.class)
    public Date contributedTime;
    public int contributorType;

    public boolean isOriginalAuthor() {
        return this.contributorType == 1;
    }
}
