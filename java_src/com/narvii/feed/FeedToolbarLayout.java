package com.narvii.feed;

import android.content.Context;
import android.support.v4.content.ContextCompat;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.model.Blog;
import com.narvii.model.Feed;
import com.narvii.model.Item;
import com.narvii.util.Utils;
import com.narvii.widget.SpinningView;
import com.narvii.widget.TintButton;
import com.narvii.widget.VoteIcon;

/* loaded from: classes2.dex */
public class FeedToolbarLayout extends LinearLayout {
    private static String likeStr;
    TextView commentCount;
    ImageView commentIcon;
    private Boolean darkTheme;
    Feed feed;
    ImageView shareIcon;
    TextView voteCount;
    VoteIcon voteIcon;
    SpinningView voteProgress;

    public FeedToolbarLayout(Context context) {
        this(context, null);
    }

    public FeedToolbarLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        if (likeStr == null) {
            likeStr = context.getString(R.string.like);
        }
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.voteIcon = (VoteIcon) findViewById(R.id.feed_toolbar_vote_icon);
        this.voteProgress = (SpinningView) findViewById(R.id.feed_toolbar_vote_progress);
        this.voteCount = (TextView) findViewById(R.id.feed_toolbar_vote_count);
        this.commentIcon = (ImageView) findViewById(R.id.feed_toolbar_comment_icon);
        this.commentCount = (TextView) findViewById(R.id.feed_toolbar_comment_count);
        this.shareIcon = (ImageView) findViewById(R.id.feed_toolbar_share_icon);
    }

    public void setDarkTheme(boolean z) {
        Boolean bool = this.darkTheme;
        if (bool == null || bool.booleanValue() != z) {
            this.darkTheme = Boolean.valueOf(z);
            TextView textView = this.voteCount;
            Context context = getContext();
            int i = R.color.feed_toolbar_normal_dark;
            textView.setTextColor(ContextCompat.getColorStateList(context, z ? R.color.feed_toolbar_normal_dark : R.color.feed_toolbar_normal));
            TextView textView2 = this.commentCount;
            Context context2 = getContext();
            if (!z) {
                i = R.color.feed_toolbar_normal;
            }
            textView2.setTextColor(ContextCompat.getColorStateList(context2, i));
            int color = ContextCompat.getColor(getContext(), R.color.feed_toolbar_grey);
            this.voteIcon.setNoneColor(z ? -1 : color);
            ImageView imageView = this.commentIcon;
            if (imageView instanceof TintButton) {
                ((TintButton) imageView).setTintColor(z ? -1 : color);
            }
            ImageView imageView2 = this.shareIcon;
            if (imageView2 instanceof TintButton) {
                ((TintButton) imageView2).setTintColor(z ? -1 : color);
            }
            SpinningView spinningView = this.voteProgress;
            if (z) {
                color = -1;
            }
            spinningView.setSpinColor(color);
        }
    }

    public void setFeed(Feed feed) {
        this.feed = feed;
        if (feed instanceof Blog) {
            Blog blog = (Blog) feed;
            this.voteIcon.setVisibility(0);
            this.voteIcon.setVotedValue(blog.getVotedValue(Utils.isGlobalInteractionScope(Utils.getNVContext(getContext()))));
            this.voteCount.setText(blog.getTotalVotesCount() == 0 ? likeStr : String.valueOf(blog.getTotalVotesCount()));
            this.commentCount.setText(blog.getTotalCommentsCount() != 0 ? String.valueOf(blog.getTotalCommentsCount()) : "");
            return;
        }
        if (feed instanceof Item) {
            Item item = (Item) feed;
            this.voteIcon.setVisibility(0);
            this.voteIcon.setVotedValue(item.getVotedValue(Utils.isGlobalInteractionScope(Utils.getNVContext(getContext()))));
            this.voteCount.setText(item.getTotalVotesCount() == 0 ? likeStr : String.valueOf(item.getTotalVotesCount()));
            this.commentCount.setText(item.getTotalCommentsCount() != 0 ? String.valueOf(item.getTotalCommentsCount()) : "");
        }
    }

    public void setProgress(boolean z) {
        this.voteIcon.setVisibility(!z ? 0 : 8);
        this.voteProgress.setVisibility(z ? 0 : 8);
    }
}
