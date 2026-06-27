package com.narvii.checkin;

import com.narvii.model.CheckInHistory;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;

/* loaded from: classes2.dex */
public class CheckInResult extends ApiResponse {
    public int additionalReputationPoint;
    public boolean canPlayLottery;
    public CheckInHistory checkInHistory;
    public int consecutiveCheckInDays;
    public int earnedReputationPoint;
    public User userProfile;
}
