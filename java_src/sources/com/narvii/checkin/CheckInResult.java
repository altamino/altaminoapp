package com.narvii.checkin;

import com.narvii.model.CheckInHistory;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;

/* JADX INFO: loaded from: classes6.dex */
public class CheckInResult extends ApiResponse {
    public int additionalReputationPoint;
    public boolean canPlayLottery;
    public CheckInHistory checkInHistory;
    public int consecutiveCheckInDays;
    public int earnedReputationPoint;
    public User userProfile;
}
