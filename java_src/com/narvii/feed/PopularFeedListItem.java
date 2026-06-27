package com.narvii.feed;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;
import android.text.style.StyleSpan;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.model.Blog;
import com.narvii.model.Feed;
import com.narvii.widget.NVImageView;
import com.narvii.widget.TintButton;

/* loaded from: classes2.dex */
public class PopularFeedListItem extends LinearLayout {
    static StyleSpan BOLD_SPAN;
    static ColorFilter CF_LINK;
    static ColorFilter CF_POLL;
    static ColorFilter CF_POLL_ENDED;
    static ColorFilter CF_QUESTION;
    static ColorFilter CF_QUIZ;
    TextView cornerIcon;
    private Boolean darkTheme;
    View dividerView;
    private View fansOnlyIndicator;
    Feed feed;
    NVImageView image;
    TextView pollQuizExtraText;
    FeedToolbarLayout toolbar;
    TextView tvContent;
    TextView tvReadMore;
    TextView tvTitle;

    public PopularFeedListItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.image = (NVImageView) findViewById(R.id.image);
        this.tvTitle = (TextView) findViewById(R.id.text);
        this.tvContent = (TextView) findViewById(R.id.content);
        this.toolbar = (FeedToolbarLayout) findViewById(R.id.feed_toolbar);
        this.tvReadMore = (TextView) findViewById(R.id.read_more);
        this.cornerIcon = (TextView) findViewById(R.id.corner_icon);
        this.dividerView = findViewById(R.id.divider);
        this.fansOnlyIndicator = findViewById(R.id.fans_only_content_indicator);
        this.pollQuizExtraText = (TextView) findViewById(R.id.poll_quiz_extra_text);
    }

    public void setDarkTheme(boolean z) {
        Boolean bool = this.darkTheme;
        if ((bool == null || bool.booleanValue() != z) && this.feed != null) {
            this.darkTheme = Boolean.valueOf(z);
            FeedToolbarLayout feedToolbarLayout = this.toolbar;
            if (feedToolbarLayout != null) {
                feedToolbarLayout.setDarkTheme(z);
            }
            TextView textView = this.tvContent;
            if (textView != null) {
                textView.setTextColor(z ? -1 : -11184811);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x0153  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setFeed(com.narvii.app.NVContext r18, com.narvii.model.Feed r19, boolean r20, boolean r21, boolean r22, boolean r23, boolean r24, float r25, boolean r26, boolean r27, int r28, int r29) throws android.content.res.Resources.NotFoundException {
        /*
            Method dump skipped, instructions count: 645
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.feed.PopularFeedListItem.setFeed(com.narvii.app.NVContext, com.narvii.model.Feed, boolean, boolean, boolean, boolean, boolean, float, boolean, boolean, int, int):void");
    }

    public void setProgress(boolean z) {
        FeedToolbarLayout feedToolbarLayout = this.toolbar;
        if (feedToolbarLayout != null) {
            feedToolbarLayout.setProgress(z);
        }
    }

    private Drawable getTypeIcon(Feed feed, boolean z) throws Resources.NotFoundException {
        if ((feed instanceof Blog) && z) {
            Blog blog = (Blog) feed;
            int i = blog.type;
            if (i == 3) {
                Drawable drawable = getResources().getDrawable(R.drawable.topic_mark_question);
                if (CF_QUESTION == null) {
                    CF_QUESTION = TintButton.tintColorFilter(getResources().getColor(R.color.page_question));
                }
                drawable.setColorFilter(CF_QUESTION);
                return drawable;
            }
            if (i == 4) {
                Drawable drawableMutate = getResources().getDrawable(R.drawable.topic_mark_poll).mutate();
                if (blog.endTime == null) {
                    if (CF_POLL_ENDED == null) {
                        CF_POLL_ENDED = TintButton.tintColorFilter(getResources().getColor(R.color.topic_poll_inactive));
                    }
                    drawableMutate.setColorFilter(CF_POLL_ENDED);
                } else {
                    if (CF_POLL == null) {
                        CF_POLL = TintButton.tintColorFilter(getResources().getColor(R.color.topic_poll_active));
                    }
                    drawableMutate.setColorFilter(CF_POLL);
                }
                return drawableMutate;
            }
            if (i == 5) {
                Drawable drawable2 = getResources().getDrawable(R.drawable.favicon_default);
                if (CF_LINK == null) {
                    CF_LINK = TintButton.tintColorFilter(getResources().getColor(R.color.page_link_post));
                }
                drawable2.setColorFilter(CF_LINK);
                return drawable2;
            }
            if (i == 6) {
                Drawable drawable3 = getResources().getDrawable(R.drawable.topic_mark_quiz);
                if (CF_QUIZ == null) {
                    CF_QUIZ = TintButton.tintColorFilter(getResources().getColor(R.color.page_quizzes));
                }
                drawable3.setColorFilter(CF_QUIZ);
                return drawable3;
            }
        }
        return null;
    }
}
