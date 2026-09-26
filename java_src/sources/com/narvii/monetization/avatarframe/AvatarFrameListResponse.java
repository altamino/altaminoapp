package com.narvii.monetization.avatarframe;

import com.narvii.model.api.ListResponse;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class AvatarFrameListResponse extends ListResponse<AvatarFrame> {
    public List<AvatarFrame> avatarFrameList;

    @Override // com.narvii.model.api.ListResponse
    public List<AvatarFrame> list() {
        return this.avatarFrameList;
    }
}
