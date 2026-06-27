package com.narvii.master.search;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.headlines.Headline;
import com.narvii.model.Blog;
import com.narvii.model.Feed;
import com.narvii.model.User;
import com.narvii.model.api.BlogListResponse;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class StorySearchListResponse extends BlogListResponse {

    @JsonDeserialize(contentAs = Headline.class)
    public List<Headline> postList;

    @Override // com.narvii.model.api.BlogListResponse, com.narvii.model.api.ListResponse
    public List<Blog> list() {
        User user;
        ArrayList arrayList = new ArrayList();
        for (Headline headline : this.postList) {
            Feed feed = headline.refObject;
            if (feed instanceof Blog) {
                Blog blog = (Blog) feed;
                if (blog.author == null && (user = headline.author) != null) {
                    blog.author = user;
                }
                blog.ndcId = headline.ndcId;
                if (blog.strategyInfo == null) {
                    blog.setStrategyInfo(headline.strategyInfo);
                }
                arrayList.add(blog);
            } else if (headline.refObjectType == 1) {
                Blog blog2 = new Blog();
                blog2.blogId = headline.refObjectId;
                blog2.type = headline.refObjectSubtype;
                blog2.title = headline.title;
                blog2.votedValue = headline.votedValue;
                blog2.globalVotedValue = headline.globalVotedValue;
                blog2.content = headline.content;
                blog2.mediaList = headline.mediaList;
                blog2.votesCount = headline.votesCount;
                blog2.globalVotesCount = headline.globalVotesCount;
                blog2.commentsCount = headline.commentsCount;
                blog2.globalCommentsCount = headline.globalCommentsCount;
                blog2.author = headline.author;
                blog2.ndcId = headline.ndcId;
                blog2.createdTime = headline.createdTime;
                if (blog2.strategyInfo == null) {
                    blog2.setStrategyInfo(headline.strategyInfo);
                }
                arrayList.add(blog2);
            }
        }
        return arrayList;
    }
}
