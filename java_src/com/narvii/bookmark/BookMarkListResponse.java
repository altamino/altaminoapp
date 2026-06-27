package com.narvii.bookmark;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.Blog;
import com.narvii.model.Feed;
import com.narvii.model.User;
import com.narvii.model.api.ListResponse;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class BookMarkListResponse extends ListResponse<Feed> {

    @JsonDeserialize(contentAs = BookMark.class)
    public List<BookMark> bookmarkList;

    @Override // com.narvii.model.api.ListResponse
    public List<Feed> list() {
        ArrayList arrayList = new ArrayList();
        for (BookMark bookMark : this.bookmarkList) {
            Feed feed = bookMark.refObject;
            if (feed == null) {
                Blog blog = new Blog();
                blog.author = new User();
                blog.blogId = bookMark.refObjectId;
                blog.status = 10;
                arrayList.add(blog);
            } else {
                arrayList.add(feed);
            }
        }
        return arrayList;
    }
}
