package com.narvii.influencer;

import com.narvii.model.User;
import com.narvii.model.api.ListResponse;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class FansInfoListResponse extends ListResponse<FansInfo> {
    public List<FansInfo> fanClubList;
    public User influencerUserProfile;
    public FansInfo myFanClub;

    @Override // com.narvii.model.api.ListResponse
    public List<FansInfo> list() {
        return this.fanClubList;
    }
}
