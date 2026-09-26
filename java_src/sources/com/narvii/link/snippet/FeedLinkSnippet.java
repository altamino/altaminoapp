package com.narvii.link.snippet;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.TextView;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.feed.FeedListItem;
import com.narvii.feed.FeedToolbarLayout;
import com.narvii.image.ImageLoadTracker;
import com.narvii.link.view.ExternalLinkSnippetView;
import com.narvii.model.Blog;
import com.narvii.model.Feed;
import com.narvii.model.Item;
import com.narvii.model.PollOption;
import com.narvii.model.api.BlogResponse;
import com.narvii.model.api.FeedResponse;
import com.narvii.model.api.ItemResponse;
import com.narvii.share.LinkInfo;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class FeedLinkSnippet extends NVLinkSnippet<Feed, FeedResponse<? extends Feed>> {
    private int getFeedLayoutId(Feed feed) {
        if (!(feed instanceof Blog)) {
            if (feed instanceof Item) {
                return R.layout.item_snippet_feed_regular;
            }
            return 0;
        }
        Blog blog = (Blog) feed;
        int i10 = blog.type;
        if (i10 == 0) {
            return R.layout.item_snippet_feed_image;
        }
        if (i10 == 1) {
            if (blog.refObject instanceof Item) {
                return R.layout.item_snippet_feed_regular;
            }
            return 0;
        }
        if (i10 == 3) {
            return R.layout.item_snippet_feed_image;
        }
        if (i10 == 4) {
            return R.layout.snippet_feed_poll_item;
        }
        if (i10 == 5) {
            if (blog.extensions != null) {
                return R.layout.item_snippet_feed_regular;
            }
            return 0;
        }
        if (i10 == 6) {
            return R.layout.snippet_feed_quiz_item;
        }
        if (i10 != 7) {
            return 0;
        }
        return R.layout.item_snippet_feed_image;
    }

    @Override // com.narvii.link.snippet.NVLinkSnippet
    protected View getDetailView() {
        boolean z6;
        int feedLayoutId;
        TextView textView;
        boolean z10;
        FeedToolbarLayout feedToolbarLayout;
        ViewStub viewStub;
        T t5 = this.shareObject;
        Feed feed = (Feed) t5;
        if ((t5 instanceof Blog) && ((Blog) t5).type == 2) {
            feed = ((Blog) t5).refObject;
            z6 = true;
        } else {
            z6 = false;
        }
        if (feed == null) {
            return null;
        }
        boolean z11 = (feed instanceof Blog) && ((Blog) feed).type == 8;
        if (z11) {
            feedLayoutId = 0;
        } else {
            feedLayoutId = getFeedLayoutId(feed);
            if (feedLayoutId == 0) {
                return null;
            }
        }
        Feed feed2 = (Feed) feed.m1622clone();
        if (z11) {
            ExternalLinkSnippetView externalLinkSnippetView = new ExternalLinkSnippetView(this.context);
            externalLinkSnippetView.setExternalFeed(feed2);
            return externalLinkSnippetView;
        }
        FeedListItem feedListItem = (FeedListItem) this.inflater.inflate(feedLayoutId, (ViewGroup) null, false);
        ViewUtils.show(feedListItem.toolbar, R.id.feed_toolbar_share, false);
        if (z6 && (feedToolbarLayout = feedListItem.toolbar) != null && (viewStub = (ViewStub) feedToolbarLayout.findViewById(R.id.share_preview_repost)) != null) {
            viewStub.inflate();
        }
        feed2.setVotedValue(Utils.isGlobalInteractionScope(this.nvContext), 0);
        boolean z12 = feed2 instanceof Blog;
        if (z12) {
            Blog blog = (Blog) feed2;
            if (blog.type == 4) {
                List<PollOption> list = blog.polloptList;
                if (list != null) {
                    Iterator<PollOption> it = list.iterator();
                    while (it.hasNext()) {
                        it.next().votedValue = 0;
                    }
                }
                z10 = true;
            } else {
                z10 = false;
            }
            blog.quizResultOfCurrentUser = null;
            if (z10) {
                feedListItem.findViewById(R.id.poll_option_list).setBackgroundColor(134217728);
            }
        }
        if (z12 && ((Blog) feed2).type == 7 && feed2.isFansOnly()) {
            feed2.needHidden = true;
        }
        feedListItem.setFeed(feed2);
        feedListItem.setUpSnippetImageLoadTracker(new ImageLoadTracker());
        TextView textView2 = feedListItem.title;
        if ((textView2 == null || textView2.getVisibility() != 0) && ((textView = feedListItem.content) == null || textView.getVisibility() != 0)) {
            ViewUtils.setMarginTop(feedListItem.findViewById(R.id.snippet_feed_image_layout), 0);
        }
        TextView textView3 = feedListItem.title;
        if (textView3 != null) {
            textView3.setTextAlignment(5);
        }
        return feedListItem;
    }

    @Override // com.narvii.link.snippet.NVLinkSnippet
    protected Class<? extends FeedResponse<? extends Feed>> responseType() {
        int i10 = this.linkInfo.objectType;
        if (i10 == 1) {
            return BlogResponse.class;
        }
        if (i10 == 2) {
            return ItemResponse.class;
        }
        if (i10 != 131) {
            return null;
        }
        return BlogResponse.class;
    }

    public FeedLinkSnippet(NVContext nVContext, LinkInfo linkInfo) {
        super(nVContext, linkInfo);
    }
}
