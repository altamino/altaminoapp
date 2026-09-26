package com.narvii.feed;

import android.content.Context;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ImageSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StyleSpan;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.model.Blog;
import com.narvii.model.Feed;
import com.narvii.model.Media;
import com.narvii.model.User;
import com.narvii.util.BlogUtils;
import com.narvii.util.Utils;
import com.narvii.widget.NVImageView;
import com.narvii.widget.SecretImageView;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes9.dex */
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

    /* JADX WARN: Code duplicated, block: B:56:0x0148  */
    public void setFeed(NVContext nVContext, Feed feed, boolean z6, boolean z10, boolean z11, boolean z12, boolean z13, float f, boolean z14, boolean z15, int i10, int i11) {
        int i12;
        User userProfile;
        Feed realFeed = feed.getRealFeed();
        this.feed = realFeed;
        if (realFeed == null) {
            return;
        }
        if (nVContext == null || (userProfile = ((AccountService) nVContext.getService("account")).getUserProfile()) == null || !this.feed.isiModeDisableForUser(userProfile)) {
            boolean z16 = feed.needHidden;
            View view = this.fansOnlyIndicator;
            if (view != null) {
                view.setVisibility(this.feed.isFansOnly() ? 0 : 8);
            }
            String strTitle = this.feed.title() == null ? this.feed.title() : this.feed.title().trim();
            String strCompactContent = this.feed.compactContent() == null ? this.feed.compactContent() : this.feed.compactContent().trim();
            Media mediaFirstMedia = this.feed.firstMedia();
            TextView textView = this.cornerIcon;
            if (textView != null) {
                textView.setVisibility(8);
                Feed feed2 = this.feed;
                if (feed2 instanceof Blog) {
                    strTitle = ((Blog) feed2).getShowTitle();
                    strCompactContent = ((Blog) this.feed).getShowContent();
                    int i13 = ((Blog) this.feed).type;
                    if (i13 == 4 || i13 == 6) {
                        this.cornerIcon.setVisibility(0);
                        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                        int length = spannableStringBuilder.length();
                        spannableStringBuilder.append(' ');
                        Drawable drawable = getResources().getDrawable(i13 == 4 ? R.drawable.icon_poll_light : R.drawable.icon_quiz_light);
                        drawable.setBounds(0, 0, (int) Utils.dpToPx(getContext(), 11.0f), (int) Utils.dpToPx(getContext(), 11.0f));
                        spannableStringBuilder.setSpan(new ImageSpan(drawable), length, spannableStringBuilder.length(), 33);
                        spannableStringBuilder.append(' ');
                        spannableStringBuilder.append((CharSequence) getResources().getString(i13 == 4 ? R.string.featured_poll : R.string.featured_quiz));
                        this.cornerIcon.setText(spannableStringBuilder);
                    }
                }
            }
            TextView textView2 = this.pollQuizExtraText;
            if (textView2 != null) {
                textView2.setVisibility(8);
                Feed feed3 = this.feed;
                if (feed3 instanceof Blog) {
                    int i14 = ((Blog) feed3).type;
                    i12 = 4;
                    if (i14 == 4 || i14 == 6) {
                        this.pollQuizExtraText.setVisibility(0);
                        this.pollQuizExtraText.setText(i14 == 4 ? BlogUtils.getPollDurationText((Blog) this.feed, getContext()) : BlogUtils.getQuizRecordText((Blog) this.feed, getContext()));
                    }
                } else {
                    i12 = 4;
                }
            } else {
                i12 = 4;
            }
            NVImageView nVImageView = this.image;
            if (nVImageView != null) {
                if (nVImageView instanceof SecretImageView) {
                    ((SecretImageView) nVImageView).setImageMedia(mediaFirstMedia, z16);
                } else {
                    nVImageView.setImageMedia(mediaFirstMedia);
                }
                this.image.setVisibility(mediaFirstMedia == null ? 8 : 0);
            }
            SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder();
            if (z11) {
                TextView textView3 = this.tvTitle;
                if (textView3 != null) {
                    textView3.setMaxLines(i11);
                    this.tvTitle.setVisibility(TextUtils.isEmpty(strTitle) ? 8 : 0);
                    if (z6 && !TextUtils.isEmpty(strTitle)) {
                        this.tvTitle.setTextSize(0, i10);
                        int length2 = spannableStringBuilder2.length();
                        spannableStringBuilder2.append((CharSequence) strTitle);
                        spannableStringBuilder2.setSpan(new StyleSpan(1), length2, spannableStringBuilder2.length(), 33);
                    }
                    if (z14 && z10 && !TextUtils.isEmpty(strCompactContent)) {
                        int length3 = spannableStringBuilder2.length();
                        spannableStringBuilder2.append((CharSequence) "\n");
                        spannableStringBuilder2.setSpan(new RelativeSizeSpan(0.4f), length3, spannableStringBuilder2.length(), 33);
                    } else {
                        spannableStringBuilder2.append(' ');
                    }
                    int length4 = spannableStringBuilder2.length();
                    if (z10 && !TextUtils.isEmpty(strCompactContent)) {
                        spannableStringBuilder2.append((CharSequence) strCompactContent);
                    }
                    spannableStringBuilder2.setSpan(new RelativeSizeSpan(f), length4, spannableStringBuilder2.length(), 33);
                    spannableStringBuilder2.setSpan(new StyleSpan(0), length4, spannableStringBuilder2.length(), 33);
                    this.tvTitle.setText(spannableStringBuilder2);
                }
            } else {
                if (!TextUtils.isEmpty(strTitle)) {
                    spannableStringBuilder2.append((CharSequence) strTitle);
                }
                if (this.tvTitle != null) {
                    spannableStringBuilder2.setSpan(new StyleSpan(1), 0, spannableStringBuilder2.length(), 33);
                    this.tvTitle.setText(spannableStringBuilder2);
                    this.tvTitle.setVisibility(z6 ? 0 : i12);
                }
                this.tvTitle.setTextSize(0, i10);
                SpannableStringBuilder spannableStringBuilder3 = new SpannableStringBuilder();
                if (!TextUtils.isEmpty(strCompactContent)) {
                    spannableStringBuilder3.append((CharSequence) strCompactContent);
                }
                TextView textView4 = this.tvContent;
                if (textView4 != null) {
                    textView4.setText(spannableStringBuilder3);
                    this.tvTitle.setVisibility(z10 ? 0 : i12);
                }
                TextView textView5 = this.tvReadMore;
                if (textView5 != null) {
                    textView5.setVisibility(z12 ? 0 : 8);
                }
            }
            View view2 = this.dividerView;
            if (view2 != null) {
                view2.setVisibility(z15 ? 0 : i12);
            }
            FeedToolbarLayout feedToolbarLayout = this.toolbar;
            if (feedToolbarLayout != null) {
                feedToolbarLayout.setFeed(this.feed);
            }
        }
    }

    private Drawable getTypeIcon(Feed feed, boolean z6) {
        if ((feed instanceof Blog) && z6) {
            Blog blog = (Blog) feed;
            int i10 = blog.type;
            if (i10 == 3) {
                Drawable drawable = getResources().getDrawable(R.drawable.topic_mark_question);
                if (CF_QUESTION == null) {
                    CF_QUESTION = TintButton.tintColorFilter(getResources().getColor(R.color.page_question));
                }
                drawable.setColorFilter(CF_QUESTION);
                return drawable;
            }
            if (i10 == 4) {
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
            if (i10 == 5) {
                Drawable drawable2 = getResources().getDrawable(R.drawable.favicon_default);
                if (CF_LINK == null) {
                    CF_LINK = TintButton.tintColorFilter(getResources().getColor(R.color.page_link_post));
                }
                drawable2.setColorFilter(CF_LINK);
                return drawable2;
            }
            if (i10 == 6) {
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

    public void setDarkTheme(boolean z6) {
        Boolean bool = this.darkTheme;
        if ((bool == null || bool.booleanValue() != z6) && this.feed != null) {
            this.darkTheme = Boolean.valueOf(z6);
            FeedToolbarLayout feedToolbarLayout = this.toolbar;
            if (feedToolbarLayout != null) {
                feedToolbarLayout.setDarkTheme(z6);
            }
            TextView textView = this.tvContent;
            if (textView != null) {
                textView.setTextColor(z6 ? -1 : -11184811);
            }
        }
    }

    public void setProgress(boolean z6) {
        FeedToolbarLayout feedToolbarLayout = this.toolbar;
        if (feedToolbarLayout != null) {
            feedToolbarLayout.setProgress(z6);
        }
    }

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
}
