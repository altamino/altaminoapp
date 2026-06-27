package com.narvii.model.api;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.Blog;
import com.narvii.model.BlogCategory;
import com.narvii.model.Community;
import java.util.List;

/* loaded from: classes3.dex */
public class BlogResponse extends FeedResponse<Blog> {

    @JsonDeserialize(using = Blog.BlogDeserializer.class)
    public Blog blog;
    public List<Community> suggestedCommunityList;

    @JsonDeserialize(contentAs = BlogCategory.class)
    public List<BlogCategory> taggedBlogCategoryList;

    @Override // com.narvii.model.api.FeedResponse, com.narvii.model.api.ObjectResponse
    public Blog object() {
        return this.blog;
    }
}
