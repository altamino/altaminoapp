package com.narvii.achievements;

import com.narvii.model.api.ObjectResponse;

/* loaded from: classes2.dex */
public class AchievementsResponse extends ObjectResponse<AchievementsItem> {
    public AchievementsItem achievements;

    @Override // com.narvii.model.api.ObjectResponse
    public AchievementsItem object() {
        return this.achievements;
    }
}
