package com.narvii.monetization.avatarframe;

import com.narvii.model.api.ListResponse;
import java.util.List;

/* loaded from: classes3.dex */
public class AvatarFrameListResponse extends ListResponse<AvatarFrame> {
    public List<AvatarFrame> avatarFrameList;

    @Override // com.narvii.model.api.ListResponse
    public List<AvatarFrame> list() {
        return this.avatarFrameList;
    }
}
