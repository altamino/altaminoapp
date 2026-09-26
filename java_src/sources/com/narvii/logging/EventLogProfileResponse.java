package com.narvii.logging;

import com.narvii.model.api.ApiResponse;

/* JADX INFO: loaded from: classes.dex */
public class EventLogProfileResponse extends ApiResponse {
    public static final int INTEREST_PICKER_V1 = 1;
    public static final int INTEREST_PICKER_V2 = 3;
    public static final int INTEREST_PICKER_V2_BASIC_INFO_ONLY = 2;
    public static final int SIGN_UP_POSTPONE = 2;
    public String contentLanguage;
    public int getCoinModalExp;
    public String globalStrategyInfo;
    public int interestPickerStyle;
    public int landingOption;
    public boolean needTriggerInterestPicker;
    public boolean needsBirthDateUpdate;
    public ParticipatedExperiments participatedExperiments;
    public boolean showStoreBadge;
}
