package com.narvii.community;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.api.ApiResponse;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes2.dex */
public class ReminderCheckMapResponse extends ApiResponse {
    public ReminderCheck reminderCheckResult;

    @JsonDeserialize(contentAs = ReminderCheck.class, keyAs = Integer.class)
    public HashMap<Integer, ReminderCheck> reminderCheckResultInCommunities;
    public List<Integer> treatedNdcIds;
}
