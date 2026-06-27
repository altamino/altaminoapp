package com.narvii.livelayer.detailview;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.chat.thread.OnlineUserInfoInfo;
import com.narvii.model.Media;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes3.dex */
public class OnlineBrowsingPage extends NVObject implements OnlineUserInfoInfo.OnlineUserInfoInfoKeeper {

    @JsonDeserialize(contentAs = Media.class)
    public List<Media> mediaList;
    public String topic;
    public String url;
    public int userProfileCount;

    @JsonDeserialize(contentAs = User.class)
    public LinkedList<User> userProfileList;

    @Override // com.narvii.model.NVObject
    public String id() {
        return null;
    }

    @Override // com.narvii.model.NVObject
    public int objectType() {
        return 0;
    }

    @Override // com.narvii.model.NVObject
    public String parentId() {
        return null;
    }

    @Override // com.narvii.model.NVObject
    public int status() {
        return 0;
    }

    @Override // com.narvii.model.NVObject
    public String uid() {
        return null;
    }

    @Override // com.narvii.chat.thread.OnlineUserInfoInfo.OnlineUserInfoInfoKeeper
    public OnlineUserInfoInfo getOnlineUserInfoInfo() {
        OnlineUserInfoInfo onlineUserInfoInfo = new OnlineUserInfoInfo();
        onlineUserInfoInfo.userProfileCount = this.userProfileCount;
        onlineUserInfoInfo.userProfileList = this.userProfileList;
        return onlineUserInfoInfo;
    }

    public Media firstMedia() {
        List<Media> list = this.mediaList;
        if (list == null || list.size() == 0) {
            return null;
        }
        return this.mediaList.get(0);
    }
}
