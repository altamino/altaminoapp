package com.narvii.feed.featured;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.Blog;
import com.narvii.model.BlogCategory;
import com.narvii.model.api.ListResponse;
import java.util.List;

/* loaded from: classes2.dex */
public class HistoryFeaturedFeedResponse extends ListResponse<Blog> {

    @JsonDeserialize(contentUsing = Blog.BlogDeserializer.class)
    public List<Blog> blogList;
    public BlogCategory featuredBlogCategory;

    @Override // com.narvii.model.api.ListResponse
    public List<Blog> list() {
        return this.blogList;
    }
}
