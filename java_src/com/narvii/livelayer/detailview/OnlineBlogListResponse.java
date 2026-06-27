package com.narvii.livelayer.detailview;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.chat.thread.OnlineUserInfoInfo;
import com.narvii.model.api.ListResponse;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public class OnlineBlogListResponse extends ListResponse<OnlineBlog> implements OnlineDataResponse<OnlineBlog> {

    @JsonDeserialize(contentAs = OnlineBlog.class)
    public List<OnlineBlog> blogList;

    @JsonDeserialize(contentAs = OnlineBlog.class)
    public List<OnlineBlog> recommendedBlogList;

    @JsonDeserialize(contentAs = OnlineUserInfoInfo.class)
    public Map<String, OnlineUserInfoInfo> userInfoInBlog;

    @Override // com.narvii.model.api.ListResponse
    public List<OnlineBlog> list() {
        String str;
        OnlineUserInfoInfo onlineUserInfoInfo;
        List<OnlineBlog> list = this.blogList;
        if (list != null && this.userInfoInBlog != null) {
            for (OnlineBlog onlineBlog : list) {
                if (onlineBlog != null && (str = onlineBlog.blogId) != null && (onlineUserInfoInfo = this.userInfoInBlog.get(str)) != null) {
                    onlineBlog.userInfo = onlineUserInfoInfo;
                }
            }
        }
        return this.blogList;
    }

    @Override // com.narvii.livelayer.detailview.OnlineDataResponse
    public List<OnlineBlog> getRecommendedList() {
        return this.recommendedBlogList;
    }
}
