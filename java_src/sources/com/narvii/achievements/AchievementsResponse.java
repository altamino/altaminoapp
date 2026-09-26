package com.narvii.achievements;

import com.narvii.model.api.ObjectResponse;

/* JADX INFO: loaded from: classes8.dex */
public class AchievementsResponse extends ObjectResponse<AchievementsItem> {
    public AchievementsItem achievements;

    @Override // com.narvii.model.api.ObjectResponse
    public AchievementsItem object() {
        return this.achievements;
    }
}
