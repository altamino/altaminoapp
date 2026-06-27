package com.narvii.headlines;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.Blog;
import com.narvii.model.Community;
import com.narvii.model.Feed;
import com.narvii.model.Item;
import com.narvii.model.User;
import com.narvii.model.api.ListResponse;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class HeadlineListResponse extends ListResponse<Feed> {

    @JsonDeserialize(contentAs = Community.class, keyAs = Integer.class)
    public Map<Integer, Community> communityInfoMapping;

    @JsonDeserialize(contentAs = Headline.class)
    public List<Headline> headlinePostList;
    public String hsid;
    public int numberOfJoinedCommunities;

    @JsonDeserialize(contentAs = User.class, keyAs = Integer.class)
    public Map<Integer, User> userProfileMapping;

    protected List<Headline> getHeadlinePostList() {
        return this.headlinePostList;
    }

    @Override // com.narvii.model.api.ListResponse
    public List<Feed> list() {
        User user;
        ArrayList arrayList = new ArrayList();
        for (Headline headline : getHeadlinePostList()) {
            Feed feed = headline.refObject;
            if (feed != null) {
                if (feed.author == null && (user = headline.author) != null) {
                    feed.author = user;
                }
                feed.ndcId = headline.ndcId;
                if (feed.strategyInfo == null) {
                    feed.setStrategyInfo(headline.strategyInfo);
                }
                arrayList.add(feed);
            } else {
                int i = headline.refObjectType;
                if (i == 2) {
                    Item item = new Item();
                    item.itemId = headline.refObjectId;
                    item.label = headline.title;
                    item.votedValue = headline.votedValue;
                    item.globalVotedValue = headline.globalVotedValue;
                    item.content = headline.content;
                    item.mediaList = headline.mediaList;
                    item.votesCount = headline.votesCount;
                    item.globalVotesCount = headline.globalVotesCount;
                    item.commentsCount = headline.commentsCount;
                    item.globalCommentsCount = headline.globalCommentsCount;
                    item.author = headline.author;
                    item.ndcId = headline.ndcId;
                    item.createdTime = headline.createdTime;
                    if (item.strategyInfo == null) {
                        item.setStrategyInfo(headline.strategyInfo);
                    }
                    arrayList.add(item);
                } else if (i == 1) {
                    Blog blog = new Blog();
                    blog.blogId = headline.refObjectId;
                    blog.type = headline.refObjectSubtype;
                    blog.title = headline.title;
                    blog.votedValue = headline.votedValue;
                    blog.globalVotedValue = headline.globalVotedValue;
                    blog.content = headline.content;
                    blog.mediaList = headline.mediaList;
                    blog.votesCount = headline.votesCount;
                    blog.globalVotesCount = headline.globalVotesCount;
                    blog.commentsCount = headline.commentsCount;
                    blog.globalCommentsCount = headline.globalCommentsCount;
                    blog.author = headline.author;
                    blog.ndcId = headline.ndcId;
                    blog.createdTime = headline.createdTime;
                    if (blog.strategyInfo == null) {
                        blog.setStrategyInfo(headline.strategyInfo);
                    }
                    arrayList.add(blog);
                }
            }
        }
        return arrayList;
    }
}
