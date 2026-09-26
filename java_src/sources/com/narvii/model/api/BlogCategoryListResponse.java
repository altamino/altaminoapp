package com.narvii.model.api;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.BlogCategory;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class BlogCategoryListResponse extends ListResponse<BlogCategory> {

    @JsonDeserialize(contentAs = BlogCategory.class)
    public List<BlogCategory> blogCategoryList;

    @Override // com.narvii.model.api.ListResponse
    public List<BlogCategory> list() {
        return this.blogCategoryList;
    }
}
