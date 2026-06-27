package com.narvii.link.snippet;

import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
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

/* loaded from: classes.dex */
public class FeedLinkSnippet extends NVLinkSnippet<Feed, FeedResponse<? extends Feed>> {
    public FeedLinkSnippet(NVContext nVContext, LinkInfo linkInfo) {
        super(nVContext, linkInfo);
    }

    @Override // com.narvii.link.snippet.NVLinkSnippet
    protected View getDetailView() {
        boolean z;
        int feedLayoutId;
        boolean z2;
        TextView textView;
        TextView textView2;
        FeedToolbarLayout feedToolbarLayout;
        ViewStub viewStub;
        T t = this.shareObject;
        Feed feed = (Feed) t;
        if ((t instanceof Blog) && ((Blog) t).type == 2) {
            feed = ((Blog) t).refObject;
            z = true;
        } else {
            z = false;
        }
        if (feed == null) {
            return null;
        }
        boolean z3 = (feed instanceof Blog) && ((Blog) feed).type == 8;
        if (z3) {
            feedLayoutId = 0;
        } else {
            feedLayoutId = getFeedLayoutId(feed);
            if (feedLayoutId == 0) {
                return null;
            }
        }
        Feed feed2 = (Feed) feed.m46clone();
        if (!z3) {
            FeedListItem feedListItem = (FeedListItem) this.inflater.inflate(feedLayoutId, (ViewGroup) null, false);
            ViewUtils.show(feedListItem.toolbar, R.id.feed_toolbar_share, false);
            if (z && (feedToolbarLayout = feedListItem.toolbar) != null && (viewStub = (ViewStub) feedToolbarLayout.findViewById(R.id.share_preview_repost)) != null) {
                viewStub.inflate();
            }
            feed2.setVotedValue(Utils.isGlobalInteractionScope(this.nvContext), 0);
            boolean z4 = feed2 instanceof Blog;
            if (z4) {
                Blog blog = (Blog) feed2;
                if (blog.type == 4) {
                    List<PollOption> list = blog.polloptList;
                    if (list != null) {
                        Iterator<PollOption> it = list.iterator();
                        while (it.hasNext()) {
                            it.next().votedValue = 0;
                        }
                    }
                    z2 = true;
                } else {
                    z2 = false;
                }
                blog.quizResultOfCurrentUser = null;
            } else {
                z2 = false;
            }
            if (z2) {
                feedListItem.findViewById(R.id.poll_option_list).setBackgroundColor(134217728);
            }
            if (z4 && ((Blog) feed2).type == 7 && feed2.isFansOnly()) {
                feed2.needHidden = true;
            }
            feedListItem.setFeed(feed2);
            feedListItem.setUpSnippetImageLoadTracker(new ImageLoadTracker());
            TextView textView3 = feedListItem.title;
            if ((textView3 == null || textView3.getVisibility() != 0) && ((textView = feedListItem.content) == null || textView.getVisibility() != 0)) {
                ViewUtils.setMarginTop(feedListItem.findViewById(R.id.snippet_feed_image_layout), 0);
            }
            if (Build.VERSION.SDK_INT >= 17 && (textView2 = feedListItem.title) != null) {
                textView2.setTextAlignment(5);
            }
            return feedListItem;
        }
        ExternalLinkSnippetView externalLinkSnippetView = new ExternalLinkSnippetView(this.context);
        externalLinkSnippetView.setExternalFeed(feed2);
        return externalLinkSnippetView;
    }

    @Override // com.narvii.link.snippet.NVLinkSnippet
    protected Class<? extends FeedResponse<? extends Feed>> responseType() {
        int i = this.linkInfo.objectType;
        if (i == 1) {
            return BlogResponse.class;
        }
        if (i == 2) {
            return ItemResponse.class;
        }
        if (i != 131) {
            return null;
        }
        return BlogResponse.class;
    }

    private int getFeedLayoutId(Feed feed) {
        if (feed instanceof Blog) {
            Blog blog = (Blog) feed;
            int i = blog.type;
            if (i != 0) {
                if (i != 1) {
                    if (i != 3) {
                        if (i == 4) {
                            return R.layout.snippet_feed_poll_item;
                        }
                        if (i == 5) {
                            if (blog.extensions != null) {
                                return R.layout.item_snippet_feed_regular;
                            }
                            return 0;
                        }
                        if (i == 6) {
                            return R.layout.snippet_feed_quiz_item;
                        }
                        if (i == 7) {
                            return R.layout.item_snippet_feed_image;
                        }
                        if (i != 9) {
                            return 0;
                        }
                    }
                } else if (!(blog.refObject instanceof Item)) {
                    return 0;
                }
            }
            return R.layout.item_snippet_feed_regular;
        }
        if (feed instanceof Item) {
            return R.layout.item_snippet_feed_regular;
        }
        return 0;
    }
}
