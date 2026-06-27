package com.narvii.pushservice;

import com.narvii.model.Blog;
import com.narvii.model.Item;
import com.narvii.model.Media;
import com.narvii.model.api.ApiResponse;
import java.util.List;

/* loaded from: classes3.dex */
public class UniversalTypeResponse extends ApiResponse {
    public Blog blog;
    public Item item;

    public List<Media> mediaList() {
        Blog blog = this.blog;
        if (blog != null) {
            return blog.mediaList;
        }
        Item item = this.item;
        if (item != null) {
            return item.mediaList;
        }
        return null;
    }
}
