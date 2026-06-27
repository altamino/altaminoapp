package com.narvii.community;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.narvii.model.CheckInHistory;

/* loaded from: classes2.dex */
public class ReminderCheck {
    public CheckInHistory checkInHistory;
    public Integer consecutiveCheckInDays;
    public Boolean hasCheckInToday;

    @JsonProperty("noticesCount2")
    public int noticesCount;
    public int notificationsCount;

    @Deprecated
    public int unreadChatThreadsCount;
}
