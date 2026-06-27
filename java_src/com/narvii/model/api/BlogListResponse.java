package com.narvii.model.api;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.Blog;
import com.narvii.model.Community;
import com.narvii.model.User;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public class BlogListResponse extends ListResponse<Blog> {
    public int allItemCount;

    @JsonDeserialize(contentUsing = Blog.BlogDeserializer.class)
    public List<Blog> blogList;

    @JsonDeserialize(contentAs = Community.class, keyAs = Integer.class)
    public Map<Integer, Community> communityInfoMapping;
    public int externalSourceCount;

    @JsonDeserialize(contentAs = User.class, keyAs = Integer.class)
    public Map<Integer, User> userProfileMapping;

    @Override // com.narvii.model.api.ListResponse
    public List<Blog> list() {
        return this.blogList;
    }
}
