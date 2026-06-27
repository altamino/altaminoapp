package com.narvii.checkin.lottery;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.narvii.util.JacksonUtils;
import java.util.Date;

/* loaded from: classes.dex */
public class LotteryLog {
    public static final int LOTTERY_AWARD_TYPE_COIN = 1;
    public static final int LOTTERY_AWARD_TYPE_NONE = 0;
    public static final int LOTTERY_AWARD_TYPE_PRODUCT = 2;
    public int awardType;
    public int awardValue;

    @JsonDeserialize(using = JacksonUtils.DateDeserializer.class)
    @JsonSerialize(using = JacksonUtils.DateSerializer.class)
    public Date createdTime;
    public String objectId;
    public int objectType;
    public String parentId;
    public int parentType;
    public JsonNode refObject;
}
