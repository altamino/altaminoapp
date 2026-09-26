package com.narvii.feed;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.narvii.amino.R;
import com.narvii.feed.quizzes.QuizCoverView;
import com.narvii.image.ImageLoadTrackListener;
import com.narvii.image.ImageLoadTracker;
import com.narvii.link.ILoadTrackView;
import com.narvii.link.LoadFinishListener;
import com.narvii.master.widget.MasterBottomItemView;
import com.narvii.model.Blog;
import com.narvii.model.CurrentQuizzesResult;
import com.narvii.model.Feed;
import com.narvii.model.Item;
import com.narvii.model.LinkSummary;
import com.narvii.model.Media;
import com.narvii.model.PollOption;
import com.narvii.model.User;
import com.narvii.poll.PollOptionListLayout;
import com.narvii.util.BlogUtils;
import com.narvii.util.DateTimeFormatter;
import com.narvii.util.StringUtils;
import com.narvii.util.Utils;
import com.narvii.util.logging.LoggingOrigin;
import com.narvii.util.logging.LoggingSource;
import com.narvii.widget.Card2View;
import com.narvii.widget.CardView;
import com.narvii.widget.ISecretImage;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NicknameView;
import com.narvii.widget.SecretImageView;
import com.narvii.widget.TintButton;
import com.narvii.widget.UserAvatarLayout;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class FeedListItem extends RelativeLayout implements ILoadTrackView {
    private static final int CONTENT_MAXLINE = 6;
    private static final int CONTENT_MAXLINE_REF = 5;
    private static final int CONTENT_MAXLINE_WITH_IMAGE = 2;
    static int bgColor;
    static Path fillPath;
    static Paint paint;
    static int size;
    static int strokeColor;
    static Path strokePath;
    static int strokeWidth;
    NVImageView avatar;
    private int backgroundColor;
    TextView caption1;
    TextView caption2;
    TextView caption3;
    private CardView card;
    Card2View card2;
    public TextView content;
    private Boolean darkTheme;
    TextView datetime;
    public boolean disableClick;
    TextView disabled;
    public FeedToolbarExternalLayout externalToolbar;
    private View fansOnlyContentIndicator;
    Feed feed;
    DateTimeFormatter formatter;
    View frame1;
    View frame2;
    View frame3;
    TintButton icon;
    protected ImageLoadTracker imageLoadTracker;
    NVImageView img1;
    NVImageView img2;
    NVImageView img3;
    boolean isRef;
    LoadFinishListener loadFinishListener;
    View nickname;
    PollOptionListLayout polloptList;
    QuizCoverView quizCoverView;
    TextView quizPlayed;
    private View quizPlayedTag;
    private RectF rectF;
    FeedListItem ref;
    NVImageView siteIcon;
    TextView siteSource;
    public TextView title;
    public FeedToolbarLayout toolbar;
    TextView unknowTypeHint;
    UserAvatarLayout userAvatarLayout;

    public FeedListItem(Context context) {
        this(context, null);
    }

    public Feed getFeed() {
        return this.feed;
    }

    public void setDarkTheme(boolean z6, int i10) {
        setDarkTheme(z6, false, i10);
    }

    public void setFeed(Feed feed) {
        setFeed(feed, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected void setMediaList(List<Media> list, boolean z6, boolean z10) {
        int size2 = list == null ? 0 : list.size();
        Media media = size2 > 0 ? list.get(0) : null;
        View view = this.frame1;
        if (view == null) {
            view = this.img1;
        }
        if (view != null) {
            view.setVisibility(media != null ? 0 : 8);
        }
        NVImageView nVImageView = this.img1;
        if (nVImageView != 0) {
            if (nVImageView instanceof ISecretImage) {
                ((ISecretImage) nVImageView).setImageMedia(media, z10);
            } else {
                nVImageView.setImageMedia(media);
            }
        }
        TextView textView = this.caption1;
        if (textView != null) {
            String str = media == null ? null : media.caption;
            if (textView.getVisibility() != 4) {
                this.caption1.setVisibility((z6 || TextUtils.isEmpty(str)) ? 8 : 0);
                this.caption1.setText(str);
            }
        }
        if (this.img2 != null) {
            Media media2 = size2 > 1 ? list.get(1) : null;
            View view2 = this.frame2;
            if (view2 == null) {
                view2 = this.img2;
            }
            view2.setVisibility(media2 != null ? 0 : 8);
            NVImageView nVImageView2 = this.img2;
            if (nVImageView2 instanceof SecretImageView) {
                ((SecretImageView) nVImageView2).setImageMedia(media2, z10);
            } else {
                nVImageView2.setImageMedia(media2);
            }
            TextView textView2 = this.caption2;
            if (textView2 != null) {
                String str2 = media2 == null ? null : media2.caption;
                textView2.setVisibility((z6 || TextUtils.isEmpty(str2)) ? 8 : 0);
                this.caption2.setText(str2);
            }
        }
        if (this.img3 != null) {
            Media media3 = size2 > 2 ? list.get(2) : null;
            View view3 = this.frame3;
            if (view3 == null) {
                view3 = this.img3;
            }
            view3.setVisibility(media3 != null ? 0 : 8);
            NVImageView nVImageView3 = this.img3;
            if (nVImageView3 instanceof SecretImageView) {
                ((SecretImageView) nVImageView3).setImageMedia(media3, z10);
            } else {
                nVImageView3.setImageMedia(media3);
            }
            TextView textView3 = this.caption3;
            if (textView3 != null) {
                String str3 = media3 != null ? media3.caption : null;
                textView3.setVisibility((z6 || TextUtils.isEmpty(str3)) ? 8 : 0);
                this.caption3.setText(str3);
            }
        }
        Card2View card2View = this.card2;
        if (card2View != null) {
            card2View.setImages(list, 1, z10);
        }
    }

    public FeedListItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.backgroundColor = 0;
        this.formatter = DateTimeFormatter.getInstance(context);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.FeedListItem, 0, 0);
        this.isRef = typedArrayObtainStyledAttributes.getBoolean(0, false);
        typedArrayObtainStyledAttributes.recycle();
        strokePath = new Path();
        fillPath = new Path();
        this.rectF = new RectF();
    }

    private void configUserHeader() {
        Feed feed = this.feed;
        if (feed == null) {
            return;
        }
        NVImageView nVImageView = this.avatar;
        if (nVImageView == null && this.userAvatarLayout == null) {
            return;
        }
        UserAvatarLayout userAvatarLayout = this.userAvatarLayout;
        if (userAvatarLayout != null) {
            userAvatarLayout.setUser(feed.author);
        } else {
            nVImageView.setImageUrl(feed.author.icon());
        }
        Feed feed2 = this.feed;
        if (feed2 instanceof Item) {
            this.avatar.setImageUrl(feed2.author.iconForCatalog());
        }
        View view = this.nickname;
        if (view instanceof NicknameView) {
            Feed feed3 = this.feed;
            ((NicknameView) view).setUser(feed3.author, feed3 instanceof Item);
        } else {
            TextView textView = (TextView) view;
            Feed feed4 = this.feed;
            boolean z6 = feed4 instanceof Item;
            User user = feed4.author;
            textView.setText(z6 ? user.nicknameForCatalog() : user.nickname());
        }
        TextView textView2 = this.datetime;
        if (textView2 != null) {
            textView2.setText(this.formatter.format(this.feed.createdTime));
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.disableClick) {
            return false;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // com.narvii.link.ILoadTrackView
    public boolean isAllLoaded() {
        ImageLoadTracker imageLoadTracker = this.imageLoadTracker;
        if (imageLoadTracker == null) {
            return true;
        }
        return imageLoadTracker.isAllLoaded();
    }

    public void setDarkTheme(boolean z6, boolean z10, int i10) {
        TextView textView;
        UserAvatarLayout userAvatarLayout;
        Boolean bool = this.darkTheme;
        if (bool != null && bool.booleanValue() == z6) {
            if (i10 == this.backgroundColor || (userAvatarLayout = this.userAvatarLayout) == null) {
                return;
            }
            userAvatarLayout.setDarkTheme(this.darkTheme.booleanValue(), this.backgroundColor, true);
            return;
        }
        if (this.feed == null) {
            return;
        }
        this.darkTheme = Boolean.valueOf(z6);
        View view = this.nickname;
        if (view != null) {
            boolean z11 = view instanceof NicknameView;
            int i11 = com.narvii.amino.master.R.color.text_clickable;
            int i12 = com.narvii.amino.master.R.color.text_clickable_white;
            if (z11) {
                NicknameView nicknameView = (NicknameView) view;
                Context context = getContext();
                if (z6) {
                    i11 = com.narvii.amino.master.R.color.text_clickable_white;
                }
                nicknameView.setTextColor(ContextCompat.getColorStateList(context, i11));
            } else if (z10) {
                TextView textView2 = (TextView) view;
                Context context2 = getContext();
                if (!z6) {
                    i12 = com.narvii.amino.master.R.color.selector_external_post_nickname;
                }
                textView2.setTextColor(ContextCompat.getColorStateList(context2, i12));
            } else {
                TextView textView3 = (TextView) view;
                Context context3 = getContext();
                if (z6) {
                    i11 = com.narvii.amino.master.R.color.text_clickable_white;
                }
                textView3.setTextColor(ContextCompat.getColorStateList(context3, i11));
            }
        }
        FeedToolbarLayout feedToolbarLayout = this.toolbar;
        if (feedToolbarLayout != null) {
            feedToolbarLayout.setDarkTheme(z6);
        }
        FeedToolbarExternalLayout feedToolbarExternalLayout = this.externalToolbar;
        if (feedToolbarExternalLayout != null) {
            feedToolbarExternalLayout.setDarkTheme(z6);
        }
        Card2View card2View = this.card2;
        if (card2View != null) {
            card2View.setDarkTheme(z6);
        }
        if ((this.feed instanceof Blog) && this.ref == null && (textView = this.title) != null) {
            textView.setTextColor(z6 ? -1 : MasterBottomItemView.TEXT_COLOR_DISABLED);
        }
        UserAvatarLayout userAvatarLayout2 = this.userAvatarLayout;
        if (userAvatarLayout2 != null) {
            userAvatarLayout2.setDarkTheme(z6, this.backgroundColor, true);
        } else {
            NVImageView nVImageView = this.avatar;
            if (nVImageView != null) {
                nVImageView.strokeColor = z6 ? -1 : -5592406;
                nVImageView.invalidate();
            }
        }
        TextView textView4 = this.content;
        if (textView4 != null) {
            textView4.setTextColor(z6 ? -1 : -11184811);
        }
        TextView textView5 = this.datetime;
        if (textView5 != null) {
            textView5.setTextColor(z6 ? -1118482 : -3026479);
        }
        TextView textView6 = this.quizPlayed;
        if (textView6 != null) {
            textView6.setTextColor(z6 ? -1118482 : -7829368);
        }
        PollOptionListLayout pollOptionListLayout = this.polloptList;
        if (pollOptionListLayout != null) {
            pollOptionListLayout.setDarkTheme(z6);
        }
        QuizCoverView quizCoverView = this.quizCoverView;
        if (quizCoverView != null) {
            quizCoverView.setDarkTheme(z6);
        }
        TextView textView7 = this.siteSource;
        if (textView7 != null) {
            textView7.setTextColor(z6 ? -1118482 : -5592406);
        }
        Feed feed = this.feed;
        if (!(feed instanceof Blog) || ((Blog) feed).type != 4) {
            NVImageView nVImageView2 = this.img1;
            if (nVImageView2 != null) {
                setImagePlaceholder(nVImageView2);
            }
            NVImageView nVImageView3 = this.img2;
            if (nVImageView3 != null) {
                setImagePlaceholder(nVImageView3);
            }
            NVImageView nVImageView4 = this.img3;
            if (nVImageView4 != null) {
                setImagePlaceholder(nVImageView4);
            }
        }
        FeedListItem feedListItem = this.ref;
        if (feedListItem != null) {
            feedListItem.setDarkTheme(z6, this.backgroundColor);
            this.ref.setBackgroundResource(z6 ? com.narvii.amino.master.R.drawable.ref_quote_dark : com.narvii.amino.master.R.drawable.ref_quote);
        }
        TextView textView8 = this.unknowTypeHint;
        if (textView8 != null) {
            textView8.setTextColor(z6 ? -1 : ContextCompat.getColor(getContext(), com.narvii.amino.master.R.color.post_unknown_type_post));
        }
        TextView textView9 = this.disabled;
        if (textView9 != null) {
            textView9.setTextColor(z6 ? -1711276033 : -2005830791);
        }
    }

    public void setDisabledFeed(Feed feed) {
        this.feed = feed;
        configUserHeader();
        if (feed == null) {
            return;
        }
        TextView textView = this.title;
        if (textView != null) {
            textView.setText(feed.title());
            TextView textView2 = this.title;
            textView2.setVisibility(TextUtils.isEmpty(textView2.getText()) ? 8 : 0);
        }
        FeedToolbarLayout feedToolbarLayout = this.toolbar;
        if (feedToolbarLayout != null) {
            feedToolbarLayout.setFeed(feed);
        }
    }

    public void setFeed(Feed feed, boolean z6) {
        setFeed(feed, z6, false);
    }

    @Override // com.narvii.link.ILoadTrackView
    public void setLoadFinishListener(LoadFinishListener loadFinishListener) {
        this.loadFinishListener = loadFinishListener;
        ImageLoadTracker imageLoadTracker = this.imageLoadTracker;
        if (imageLoadTracker == null || !imageLoadTracker.isAllLoaded()) {
            return;
        }
        loadFinishListener.onLoadFinished();
    }

    protected void setMediaUrl(String str) {
        View view = this.frame1;
        if (view == null) {
            view = this.img1;
        }
        if (view != null) {
            view.setVisibility(!TextUtils.isEmpty(str) ? 0 : 8);
        }
        NVImageView nVImageView = this.img1;
        if (nVImageView != null) {
            nVImageView.setImageUrl(str);
        }
        TextView textView = this.caption1;
        if (textView != null) {
            textView.setVisibility(8);
        }
        View view2 = this.frame2;
        if (view2 == null) {
            view2 = this.img2;
        }
        if (view2 != null) {
            view2.setVisibility(8);
        }
        TextView textView2 = this.caption2;
        if (textView2 != null) {
            textView2.setVisibility(8);
        }
        View view3 = this.frame3;
        if (view3 == null) {
            view3 = this.img3;
        }
        if (view3 != null) {
            view3.setVisibility(8);
        }
        TextView textView3 = this.caption3;
        if (textView3 != null) {
            textView3.setVisibility(8);
        }
    }

    public void setProgress(boolean z6) {
        FeedToolbarLayout feedToolbarLayout = this.toolbar;
        if (feedToolbarLayout != null) {
            feedToolbarLayout.setProgress(z6);
        }
    }

    public void setStatSource(String str, LoggingSource loggingSource, LoggingOrigin loggingOrigin) {
        PollOptionListLayout pollOptionListLayout = this.polloptList;
        if (pollOptionListLayout != null) {
            pollOptionListLayout.statSource = str;
            pollOptionListLayout.loggingSource = loggingSource;
            pollOptionListLayout.loggingOrigin = loggingOrigin;
        }
    }

    public void setUnknownFeed(Feed feed) {
        this.feed = feed;
        configUserHeader();
    }

    public void setUpSnippetImageLoadTracker(ImageLoadTracker imageLoadTracker) {
        if (imageLoadTracker != null) {
            imageLoadTracker.setImageLoadTrackListener(new ImageLoadTrackListener() { // from class: com.narvii.feed.FeedListItem.1
                @Override // com.narvii.image.ImageLoadTrackListener
                public void onLoadFinished() {
                    LoadFinishListener loadFinishListener = FeedListItem.this.loadFinishListener;
                    if (loadFinishListener != null) {
                        loadFinishListener.onLoadFinished();
                    }
                }
            });
            this.imageLoadTracker = imageLoadTracker;
            imageLoadTracker.addImageView(this.img1);
            QuizCoverView quizCoverView = this.quizCoverView;
            if (quizCoverView != null) {
                imageLoadTracker.addImageView(quizCoverView.quizCoverImageView);
            }
            PollOptionListLayout pollOptionListLayout = this.polloptList;
            if (pollOptionListLayout != null) {
                pollOptionListLayout.setUpSnippetImageLoadTracker(imageLoadTracker);
            }
        }
    }

    private void setImagePlaceholder(NVImageView nVImageView) {
        int i10;
        Context context = getContext();
        if (this.darkTheme.booleanValue()) {
            i10 = com.narvii.amino.master.R.color.placeholder_dark;
        } else {
            i10 = com.narvii.amino.master.R.color.placeholder;
        }
        nVImageView.setDefaultDrawable(ContextCompat.getDrawable(context, i10));
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        int i10;
        int i11;
        super.dispatchDraw(canvas);
        if (this.isRef) {
            Resources resources = getResources();
            Boolean bool = this.darkTheme;
            if (bool != null && bool.booleanValue()) {
                i10 = com.narvii.amino.master.R.color.ref_stroke_dark;
            } else {
                i10 = com.narvii.amino.master.R.color.ref_stroke;
            }
            strokeColor = resources.getColor(i10);
            Boolean bool2 = this.darkTheme;
            if (bool2 != null && bool2.booleanValue()) {
                i11 = com.narvii.amino.master.R.color.placeholder_darker;
            } else {
                i11 = com.narvii.amino.master.R.color.ref_bg;
            }
            bgColor = resources.getColor(i11);
            if (paint == null) {
                strokeWidth = resources.getDimensionPixelSize(com.narvii.amino.master.R.dimen.ref_stroke_width);
                size = resources.getDimensionPixelSize(com.narvii.amino.master.R.dimen.ref_mark_size);
                Paint paint2 = new Paint();
                paint = paint2;
                paint2.setAntiAlias(true);
                paint.setStrokeWidth(strokeWidth);
                paint.setStrokeJoin(Paint.Join.ROUND);
            }
            int iDpToPx = (int) Utils.dpToPx(getContext(), 8.0f);
            int width = getWidth();
            int height = getHeight();
            float f = width;
            float f6 = 0.15f * f;
            strokePath.reset();
            strokePath.moveTo(f6, 0.0f);
            Path path = strokePath;
            int i12 = size;
            path.lineTo(i12 + f6, -i12);
            strokePath.lineTo((size * 2) + f6, 0.0f);
            strokePath.lineTo(width - iDpToPx, 0.0f);
            RectF rectF = this.rectF;
            int i13 = iDpToPx * 2;
            float f7 = width - i13;
            rectF.left = f7;
            rectF.top = 0.0f;
            rectF.right = f;
            float f10 = i13;
            rectF.bottom = f10;
            strokePath.arcTo(rectF, -90.0f, 90.0f);
            strokePath.lineTo(f, height - iDpToPx);
            RectF rectF2 = this.rectF;
            rectF2.left = f7;
            float f11 = height - i13;
            rectF2.top = f11;
            rectF2.right = f;
            float f12 = height;
            rectF2.bottom = f12;
            strokePath.arcTo(rectF2, 0.0f, 90.0f);
            float f13 = iDpToPx;
            strokePath.lineTo(f13, f12);
            RectF rectF3 = this.rectF;
            rectF3.left = 0.0f;
            rectF3.top = f11;
            rectF3.right = f10;
            rectF3.bottom = f12;
            strokePath.arcTo(rectF3, 90.0f, 90.0f);
            strokePath.lineTo(0.0f, f13);
            RectF rectF4 = this.rectF;
            rectF4.left = 0.0f;
            rectF4.top = 0.0f;
            rectF4.right = f10;
            rectF4.bottom = f10;
            strokePath.arcTo(rectF4, 180.0f, 90.0f);
            strokePath.close();
            fillPath.reset();
            fillPath.moveTo(f6, 0.0f);
            Path path2 = fillPath;
            int i14 = size;
            path2.lineTo(i14 + f6, -i14);
            fillPath.lineTo(f6 + (size * 2), 0.0f);
            fillPath.close();
            paint.setStyle(Paint.Style.FILL);
            paint.setColor(bgColor);
            canvas.drawPath(fillPath, paint);
            paint.setStyle(Paint.Style.STROKE);
            paint.setColor(strokeColor);
            canvas.drawPath(strokePath, paint);
        }
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.avatar = (NVImageView) findViewById(com.narvii.amino.master.R.id.avatar);
        this.userAvatarLayout = (UserAvatarLayout) findViewById(com.narvii.amino.master.R.id.user_avatar_layout);
        this.nickname = findViewById(com.narvii.amino.master.R.id.nickname);
        this.datetime = (TextView) findViewById(com.narvii.amino.master.R.id.datetime);
        this.title = (TextView) findViewById(com.narvii.amino.master.R.id.title);
        this.content = (TextView) findViewById(com.narvii.amino.master.R.id.content);
        this.frame1 = findViewById(com.narvii.amino.master.R.id.feed_image1);
        this.img1 = (NVImageView) findViewById(com.narvii.amino.master.R.id.image);
        this.caption1 = (TextView) findViewById(com.narvii.amino.master.R.id.feed_caption1);
        this.frame2 = findViewById(com.narvii.amino.master.R.id.feed_image2);
        this.img2 = (NVImageView) findViewById(com.narvii.amino.master.R.id.image1);
        this.caption2 = (TextView) findViewById(com.narvii.amino.master.R.id.feed_caption2);
        this.frame3 = findViewById(com.narvii.amino.master.R.id.feed_image3);
        this.img3 = (NVImageView) findViewById(com.narvii.amino.master.R.id.image2);
        this.caption3 = (TextView) findViewById(com.narvii.amino.master.R.id.feed_caption3);
        this.card2 = (Card2View) findViewById(com.narvii.amino.master.R.id.feed_item_card2);
        this.card = (CardView) findViewById(com.narvii.amino.master.R.id.feed_item_card);
        this.icon = (TintButton) findViewById(com.narvii.amino.master.R.id.icon);
        this.ref = (FeedListItem) findViewById(com.narvii.amino.master.R.id.ref);
        this.toolbar = (FeedToolbarLayout) findViewById(com.narvii.amino.master.R.id.feed_toolbar);
        this.externalToolbar = (FeedToolbarExternalLayout) findViewById(com.narvii.amino.master.R.id.feed_title_external_toolbar);
        this.siteIcon = (NVImageView) findViewById(com.narvii.amino.master.R.id.snippet_favicon);
        this.siteSource = (TextView) findViewById(com.narvii.amino.master.R.id.snippet_source);
        this.quizCoverView = (QuizCoverView) findViewById(com.narvii.amino.master.R.id.quiz_cover);
        this.quizPlayed = (TextView) findViewById(com.narvii.amino.master.R.id.quiz_played_times);
        this.polloptList = (PollOptionListLayout) findViewById(com.narvii.amino.master.R.id.poll_option_list);
        this.quizPlayedTag = findViewById(com.narvii.amino.master.R.id.quiz_played_tag);
        this.fansOnlyContentIndicator = findViewById(com.narvii.amino.master.R.id.fans_only_content_indicator);
        this.unknowTypeHint = (TextView) findViewById(com.narvii.amino.master.R.id.unknown);
        this.disabled = (TextView) findViewById(com.narvii.amino.master.R.id.disabled_content);
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        super.onLayout(z6, i10, i11, i12, i13);
        View viewFindViewById = findViewById(com.narvii.amino.master.R.id.on_boarding_overlay);
        if (viewFindViewById != null) {
            viewFindViewById.layout(0, 0, getWidth(), getHeight());
        }
    }

    public void setFeed(Feed feed, boolean z6, boolean z10) {
        setFeed(feed, z6, z10, 5, 2, 6);
    }

    public void setFeed(Feed feed, boolean z6, boolean z10, int i10, int i11, int i12) {
        setFeed(feed, z6, false, z10, 5, 2, 6);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x004a  */
    /* JADX WARN: Code duplicated, block: B:26:0x0067  */
    /* JADX WARN: Code duplicated, block: B:28:0x006b  */
    /* JADX WARN: Code duplicated, block: B:328:0x0465  */
    /* JADX WARN: Code duplicated, block: B:32:0x0073  */
    /* JADX WARN: Code duplicated, block: B:330:0x046f  */
    /* JADX WARN: Code duplicated, block: B:331:0x0471  */
    /* JADX WARN: Code duplicated, block: B:33:0x007b  */
    /* JADX WARN: Code duplicated, block: B:40:0x00a1  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public void setFeed(Feed feed, boolean z6, boolean z10, boolean z11, int i10, int i11, int i12) {
        UserAvatarLayout userAvatarLayout;
        NVImageView nVImageView;
        User user;
        User user2;
        List<Media> sortedMediaList;
        int i13;
        int i14;
        int i15;
        boolean z12;
        Boolean bool;
        TextView textView;
        int i16;
        int i17 = i11;
        this.feed = feed;
        if (feed == null) {
            return;
        }
        boolean z13 = feed instanceof Blog;
        if (z13 && ((Blog) feed).type == 8) {
            Blog blog = (Blog) feed;
            if (blog.externalSource == null || this.avatar == null) {
                userAvatarLayout = this.userAvatarLayout;
                if (userAvatarLayout != null) {
                    nVImageView = this.avatar;
                    if (nVImageView != null) {
                        if (feed instanceof Item) {
                            nVImageView.setImageUrl(user.iconForCatalog());
                        } else {
                            nVImageView.setImageUrl(user.icon());
                        }
                    }
                } else {
                    nVImageView = this.avatar;
                    if (nVImageView != null) {
                        if (feed instanceof Item) {
                            nVImageView.setImageUrl(user.iconForCatalog());
                        } else {
                            nVImageView.setImageUrl(user.icon());
                        }
                    }
                }
            } else if (blog.getExternalOriginDrawable(getContext()) != null) {
                this.avatar.setImageDrawable(blog.getExternalOriginDrawable(getContext()));
            } else {
                this.avatar.setImageUrl(null);
            }
        } else {
            userAvatarLayout = this.userAvatarLayout;
            if (userAvatarLayout != null || (user2 = feed.author) == null) {
                nVImageView = this.avatar;
                if (nVImageView != null && (user = feed.author) != null) {
                    if (feed instanceof Item) {
                        nVImageView.setImageUrl(user.iconForCatalog());
                    } else {
                        nVImageView.setImageUrl(user.icon());
                    }
                }
            } else {
                userAvatarLayout.setUser(user2);
                NVImageView nVImageView2 = this.avatar;
                if (nVImageView2 != null && (feed instanceof Item)) {
                    nVImageView2.setImageUrl(feed.author.iconForCatalog());
                }
            }
        }
        boolean z14 = feed.needHidden;
        View view = this.nickname;
        if (view instanceof NicknameView) {
            if (z13) {
                Blog blog2 = (Blog) feed;
                if (blog2.type == 8) {
                    ((NicknameView) view).setText(blog2.getDisplayNickname(getContext()));
                } else {
                    ((NicknameView) view).setUser(feed.author, feed instanceof Item);
                }
            } else {
                ((NicknameView) view).setUser(feed.author, feed instanceof Item);
            }
        } else if (view instanceof TextView) {
            if (feed instanceof Item) {
                TextView textView2 = (TextView) view;
                User user3 = feed.author;
                textView2.setText(user3 == null ? null : user3.nicknameForCatalog());
            } else if (z13) {
                ((TextView) view).setText(((Blog) feed).getDisplayNickname(getContext()));
            }
        }
        TextView textView3 = this.datetime;
        if (textView3 != null) {
            textView3.setText(this.formatter.format(feed.createdTime));
        }
        List<Media> list = feed.mediaList;
        int size2 = list == null ? 0 : list.size();
        String showTitle = z6 ? feed.getShowTitle() : feed.title();
        if (!z6 && !z10) {
            sortedMediaList = feed.getFeedPreviewMediaList();
        } else {
            sortedMediaList = feed.getSortedMediaList();
        }
        View view2 = this.fansOnlyContentIndicator;
        if (view2 != null) {
            view2.setVisibility(feed.isFansOnly() ? 0 : 4);
        }
        if (z13) {
            Blog blog3 = (Blog) feed;
            int i18 = blog3.type;
            if (i18 == 0) {
                TextView textView4 = this.title;
                if (textView4 != null) {
                    textView4.setText(showTitle);
                }
                TextView textView5 = this.content;
                if (textView5 != null) {
                    textView5.setText(blog3.compactContent());
                    int i19 = i12 == -1 ? 6 : i12;
                    if (i17 == -1) {
                        i17 = 2;
                    }
                    int i20 = i10 == -1 ? 5 : i10;
                    if (this.isRef) {
                        TextView textView6 = this.content;
                        if (size2 <= 0) {
                            i17 = i20;
                        }
                        textView6.setMaxLines(i17);
                    } else {
                        TextView textView7 = this.content;
                        if (size2 <= 0) {
                            i17 = i19;
                        }
                        textView7.setMaxLines(i17);
                    }
                    this.content.setVisibility(TextUtils.isEmpty(blog3.compactContent()) ? 8 : 0);
                }
                setMediaList(sortedMediaList, z11, z14);
            } else {
                if (i18 == 1) {
                    setFeed(blog3.refObject);
                    return;
                }
                if (i18 == 2) {
                    if (this.content != null) {
                        if (TextUtils.isEmpty(blog3.content)) {
                            this.content.setText(getResources().getString(com.narvii.amino.master.R.string.feed_blog_repost) + getResources().getString(com.narvii.amino.master.R.string.feed_blog_repost_default));
                        } else {
                            this.content.setText(getResources().getString(com.narvii.amino.master.R.string.feed_blog_repost) + blog3.compactContent());
                        }
                        this.content.setMaxLines(3);
                    }
                    if (this.ref != null) {
                        Feed feed2 = blog3.refObject;
                        if (feed2 != null && feed2.isDisabled()) {
                            this.ref.setDisabledFeed(blog3.refObject);
                        } else {
                            this.ref.setFeed(blog3.refObject);
                        }
                    }
                } else if (i18 == 3) {
                    TintButton tintButton = this.icon;
                    if (tintButton != null) {
                        tintButton.setImageResource(com.narvii.amino.master.R.drawable.topic_mark_question);
                        this.icon.setTintColor(getResources().getColor(com.narvii.amino.master.R.color.page_question));
                    }
                    TextView textView8 = this.title;
                    if (textView8 != null) {
                        textView8.setText(showTitle);
                    }
                    TextView textView9 = this.content;
                    if (textView9 != null) {
                        textView9.setText(blog3.compactContent());
                        int i21 = i12 == -1 ? 6 : i12;
                        if (i17 == -1) {
                            i17 = 2;
                        }
                        int i22 = i10 == -1 ? 5 : i10;
                        if (this.isRef) {
                            TextView textView10 = this.content;
                            if (size2 <= 0) {
                                i17 = i22;
                            }
                            textView10.setMaxLines(i17);
                        } else {
                            TextView textView11 = this.content;
                            if (size2 <= 0) {
                                i17 = i21;
                            }
                            textView11.setMaxLines(i17);
                        }
                    }
                    setMediaList(sortedMediaList, z11, z14);
                } else if (i18 == 4) {
                    boolean z15 = blog3.endTime == null;
                    TintButton tintButton2 = this.icon;
                    if (tintButton2 != null) {
                        tintButton2.setTintColor(getResources().getColor(z15 ? com.narvii.amino.master.R.color.topic_poll_inactive : com.narvii.amino.master.R.color.topic_poll_active));
                    }
                    TextView textView12 = this.title;
                    if (textView12 != null) {
                        textView12.setText(showTitle);
                    }
                    if (this.content != null) {
                        String strCompactContent = blog3.compactContent();
                        this.content.setVisibility(StringUtils.isTrimEmpty(strCompactContent) ? 8 : 0);
                        this.content.setText(strCompactContent);
                    }
                    PollOptionListLayout pollOptionListLayout = this.polloptList;
                    if (pollOptionListLayout != null) {
                        if (blog3.isContentAccessible()) {
                            z12 = false;
                            bool = null;
                        } else {
                            bool = Boolean.FALSE;
                            z12 = false;
                        }
                        pollOptionListLayout.setPoll(blog3, bool, z12);
                        PollOptionListLayout pollOptionListLayout2 = this.polloptList;
                        List<PollOption> list2 = blog3.polloptList;
                        pollOptionListLayout2.setVisibility((list2 == null || list2.size() < 2) ? 8 : 0);
                    }
                } else if (i18 == 5) {
                    TintButton tintButton3 = this.icon;
                    if (tintButton3 != null) {
                        tintButton3.setImageResource(com.narvii.amino.master.R.drawable.favicon_default);
                        this.icon.setTintColor(getResources().getColor(com.narvii.amino.master.R.color.page_link_post));
                    }
                    LinkSummary linkSummary = blog3.getLinkSummary();
                    if (linkSummary != null) {
                        TextView textView13 = this.title;
                        if (textView13 != null) {
                            if (!blog3.isPromoted() || !z6) {
                                showTitle = blog3.getShowTitle();
                            }
                            textView13.setText(showTitle);
                        }
                        TextView textView14 = this.content;
                        if (textView14 != null) {
                            textView14.setText(blog3.getShowContent());
                        }
                        NVImageView nVImageView3 = this.siteIcon;
                        if (nVImageView3 != null) {
                            nVImageView3.setImageUrl(linkSummary.getShowFavIcon());
                        }
                        TextView textView15 = this.siteSource;
                        if (textView15 != null) {
                            textView15.setText(linkSummary.getShowSource());
                        }
                        setMediaList((sortedMediaList == null || sortedMediaList.isEmpty()) ? linkSummary.mediaList : sortedMediaList, z11, z14);
                    } else {
                        TextView textView16 = this.title;
                        if (textView16 != null) {
                            textView16.setText(showTitle);
                        }
                        TextView textView17 = this.content;
                        if (textView17 != null) {
                            textView17.setVisibility(StringUtils.isTrimEmpty(blog3.compactContent()) ? 8 : 0);
                            this.content.setText(blog3.compactContent());
                        }
                    }
                } else {
                    if (i18 == 6) {
                        TextView textView18 = this.title;
                        if (textView18 != null) {
                            textView18.setText(showTitle);
                        }
                        TextView textView19 = this.content;
                        if (textView19 != null) {
                            textView19.setText(blog3.compactContent());
                            this.content.setVisibility(TextUtils.isEmpty(blog3.compactContent()) ? 8 : 0);
                        }
                        QuizCoverView quizCoverView = this.quizCoverView;
                        if (quizCoverView != null) {
                            quizCoverView.setQuiz(blog3, z6);
                        }
                        TextView textView20 = this.quizPlayed;
                        if (textView20 != null) {
                            textView20.setText(BlogUtils.getQuizRecordText(blog3, getContext()));
                        }
                        View view3 = this.quizPlayedTag;
                        if (view3 != null) {
                            CurrentQuizzesResult currentQuizzesResult = blog3.quizResultOfCurrentUser;
                            view3.setVisibility((currentQuizzesResult == null || currentQuizzesResult.totalTimes == 0) ? 4 : 0);
                        }
                    } else if (i18 == 7) {
                        TextView textView21 = this.title;
                        if (textView21 != null) {
                            textView21.setText(showTitle);
                        }
                        TextView textView22 = this.content;
                        if (textView22 != null) {
                            textView22.setVisibility(8);
                        }
                        List<Media> arrayList = new ArrayList<>();
                        if (!z14 || sortedMediaList == null || sortedMediaList.size() <= 0) {
                            i15 = 0;
                            arrayList = sortedMediaList;
                        } else {
                            i15 = 0;
                            arrayList.add(sortedMediaList.get(0));
                        }
                        setMediaList(arrayList, z11, z14);
                        i14 = i15;
                        i13 = 8;
                    } else {
                        i13 = 8;
                        i14 = 0;
                        if (i18 == 8) {
                            TextView textView23 = this.title;
                            if (textView23 != null) {
                                textView23.setText(showTitle);
                            }
                            TextView textView24 = this.content;
                            if (textView24 != null) {
                                textView24.setText(blog3.content());
                                this.content.setVisibility(TextUtils.isEmpty(blog3.content()) ? 8 : 0);
                            }
                            setMediaList(sortedMediaList, z11, z14);
                        } else {
                            TextView textView25 = this.title;
                            if (textView25 != null) {
                                textView25.setText(showTitle);
                            }
                            if (this.content != null) {
                                String strCompactContent2 = blog3.compactContent();
                                this.content.setText(strCompactContent2);
                                int i23 = i12 != -1 ? i12 : 6;
                                if (i17 == -1) {
                                    i17 = 2;
                                }
                                int i24 = i10 == -1 ? 5 : i10;
                                if (this.isRef) {
                                    TextView textView26 = this.content;
                                    if (size2 <= 0) {
                                        i17 = i24;
                                    }
                                    textView26.setMaxLines(i17);
                                } else {
                                    TextView textView27 = this.content;
                                    if (size2 > 0) {
                                        i23 = i17;
                                    }
                                    textView27.setMaxLines(i23);
                                }
                                this.content.setVisibility(TextUtils.isEmpty(strCompactContent2) ? 8 : 0);
                            }
                            setMediaList(sortedMediaList, z11, z14);
                        }
                    }
                    textView = this.title;
                    if (textView != null) {
                        if (TextUtils.isEmpty(textView.getText())) {
                            i16 = i13;
                        } else {
                            i16 = i14;
                        }
                        textView.setVisibility(i16);
                    }
                }
            }
            i13 = 8;
            i14 = 0;
            textView = this.title;
            if (textView != null) {
                if (TextUtils.isEmpty(textView.getText())) {
                    i16 = i13;
                } else {
                    i16 = i14;
                }
                textView.setVisibility(i16);
            }
        } else {
            i13 = 8;
            i14 = 0;
        }
        if (feed instanceof Item) {
            Item item = (Item) feed;
            TextView textView28 = this.title;
            if (textView28 != null) {
                textView28.setText(item.label);
            }
            TextView textView29 = this.content;
            if (textView29 != null) {
                textView29.setVisibility(StringUtils.isTrimEmpty(item.compactContent()) ? i13 : i14);
                this.content.setText(item.compactContent());
            }
            setMediaList(sortedMediaList, z11, z14);
            User user4 = item.author;
            ?? r10 = (user4 == null || !user4.isSystem()) ? i14 : 1;
            Card2View card2View = this.card2;
            if (card2View != null) {
                if (!TextUtils.isEmpty(item.content) || size2 >= 2) {
                    i13 = i14;
                }
                card2View.setVisibility(i13);
                this.card2.setOfficial(r10);
            }
            CardView cardView = this.card;
            if (cardView != 0) {
                cardView.setStyle(r10);
            }
        }
        FeedToolbarLayout feedToolbarLayout = this.toolbar;
        if (feedToolbarLayout != null) {
            feedToolbarLayout.setFeed(feed);
        }
    }
}
