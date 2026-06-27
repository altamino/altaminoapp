package com.narvii.feed;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.support.v4.content.ContextCompat;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.narvii.amino.R;
import com.narvii.feed.quizzes.QuizCoverView;
import com.narvii.image.ImageLoadTrackListener;
import com.narvii.image.ImageLoadTracker;
import com.narvii.link.ILoadTrackView;
import com.narvii.link.LoadFinishListener;
import com.narvii.model.Blog;
import com.narvii.model.Feed;
import com.narvii.model.Item;
import com.narvii.model.Media;
import com.narvii.model.User;
import com.narvii.poll.PollOptionListLayout;
import com.narvii.util.DateTimeFormatter;
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
import java.util.List;

/* loaded from: classes2.dex */
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

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.avatar = (NVImageView) findViewById(com.narvii.amino.mastes.R.id.avatar);
        this.userAvatarLayout = (UserAvatarLayout) findViewById(com.narvii.amino.mastes.R.id.user_avatar_layout);
        this.nickname = findViewById(com.narvii.amino.mastes.R.id.nickname);
        this.datetime = (TextView) findViewById(com.narvii.amino.mastes.R.id.datetime);
        this.title = (TextView) findViewById(com.narvii.amino.mastes.R.id.title);
        this.content = (TextView) findViewById(com.narvii.amino.mastes.R.id.content);
        this.frame1 = findViewById(com.narvii.amino.mastes.R.id.feed_image1);
        this.img1 = (NVImageView) findViewById(com.narvii.amino.mastes.R.id.image);
        this.caption1 = (TextView) findViewById(com.narvii.amino.mastes.R.id.feed_caption1);
        this.frame2 = findViewById(com.narvii.amino.mastes.R.id.feed_image2);
        this.img2 = (NVImageView) findViewById(com.narvii.amino.mastes.R.id.image1);
        this.caption2 = (TextView) findViewById(com.narvii.amino.mastes.R.id.feed_caption2);
        this.frame3 = findViewById(com.narvii.amino.mastes.R.id.feed_image3);
        this.img3 = (NVImageView) findViewById(com.narvii.amino.mastes.R.id.image2);
        this.caption3 = (TextView) findViewById(com.narvii.amino.mastes.R.id.feed_caption3);
        this.card2 = (Card2View) findViewById(com.narvii.amino.mastes.R.id.feed_item_card2);
        this.card = (CardView) findViewById(com.narvii.amino.mastes.R.id.feed_item_card);
        this.icon = (TintButton) findViewById(com.narvii.amino.mastes.R.id.icon);
        this.ref = (FeedListItem) findViewById(com.narvii.amino.mastes.R.id.ref);
        this.toolbar = (FeedToolbarLayout) findViewById(com.narvii.amino.mastes.R.id.feed_toolbar);
        this.externalToolbar = (FeedToolbarExternalLayout) findViewById(com.narvii.amino.mastes.R.id.feed_title_external_toolbar);
        this.siteIcon = (NVImageView) findViewById(com.narvii.amino.mastes.R.id.snippet_favicon);
        this.siteSource = (TextView) findViewById(com.narvii.amino.mastes.R.id.snippet_source);
        this.quizCoverView = (QuizCoverView) findViewById(com.narvii.amino.mastes.R.id.quiz_cover);
        this.quizPlayed = (TextView) findViewById(com.narvii.amino.mastes.R.id.quiz_played_times);
        this.polloptList = (PollOptionListLayout) findViewById(com.narvii.amino.mastes.R.id.poll_option_list);
        this.quizPlayedTag = findViewById(com.narvii.amino.mastes.R.id.quiz_played_tag);
        this.fansOnlyContentIndicator = findViewById(com.narvii.amino.mastes.R.id.fans_only_content_indicator);
        this.unknowTypeHint = (TextView) findViewById(com.narvii.amino.mastes.R.id.unknown);
        this.disabled = (TextView) findViewById(com.narvii.amino.mastes.R.id.disabled_content);
    }

    public void setStatSource(String str, LoggingSource loggingSource, LoggingOrigin loggingOrigin) {
        PollOptionListLayout pollOptionListLayout = this.polloptList;
        if (pollOptionListLayout != null) {
            pollOptionListLayout.statSource = str;
            pollOptionListLayout.loggingSource = loggingSource;
            pollOptionListLayout.loggingOrigin = loggingOrigin;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.disableClick) {
            return false;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public void setDarkTheme(boolean z, int i) {
        setDarkTheme(z, false, i);
    }

    public void setDarkTheme(boolean z, boolean z2, int i) {
        TextView textView;
        UserAvatarLayout userAvatarLayout;
        Boolean bool = this.darkTheme;
        if (bool != null && bool.booleanValue() == z) {
            if (i == this.backgroundColor || (userAvatarLayout = this.userAvatarLayout) == null) {
                return;
            }
            userAvatarLayout.setDarkTheme(this.darkTheme.booleanValue(), this.backgroundColor, true);
            return;
        }
        if (this.feed == null) {
            return;
        }
        this.darkTheme = Boolean.valueOf(z);
        View view = this.nickname;
        if (view != null) {
            boolean z3 = view instanceof NicknameView;
            int i2 = com.narvii.amino.mastes.R.color.text_clickable;
            int i3 = com.narvii.amino.mastes.R.color.text_clickable_white;
            if (z3) {
                NicknameView nicknameView = (NicknameView) view;
                Context context = getContext();
                if (z) {
                    i2 = com.narvii.amino.mastes.R.color.text_clickable_white;
                }
                nicknameView.setTextColor(ContextCompat.getColorStateList(context, i2));
            } else if (z2) {
                TextView textView2 = (TextView) view;
                Context context2 = getContext();
                if (!z) {
                    i3 = com.narvii.amino.mastes.R.color.selector_external_post_nickname;
                }
                textView2.setTextColor(ContextCompat.getColorStateList(context2, i3));
            } else {
                TextView textView3 = (TextView) view;
                Context context3 = getContext();
                if (z) {
                    i2 = com.narvii.amino.mastes.R.color.text_clickable_white;
                }
                textView3.setTextColor(ContextCompat.getColorStateList(context3, i2));
            }
        }
        FeedToolbarLayout feedToolbarLayout = this.toolbar;
        if (feedToolbarLayout != null) {
            feedToolbarLayout.setDarkTheme(z);
        }
        FeedToolbarExternalLayout feedToolbarExternalLayout = this.externalToolbar;
        if (feedToolbarExternalLayout != null) {
            feedToolbarExternalLayout.setDarkTheme(z);
        }
        Card2View card2View = this.card2;
        if (card2View != null) {
            card2View.setDarkTheme(z);
        }
        if ((this.feed instanceof Blog) && this.ref == null && (textView = this.title) != null) {
            textView.setTextColor(z ? -1 : -13421773);
        }
        UserAvatarLayout userAvatarLayout2 = this.userAvatarLayout;
        if (userAvatarLayout2 != null) {
            userAvatarLayout2.setDarkTheme(z, this.backgroundColor, true);
        } else {
            NVImageView nVImageView = this.avatar;
            if (nVImageView != null) {
                nVImageView.strokeColor = z ? -1 : -5592406;
                this.avatar.invalidate();
            }
        }
        TextView textView4 = this.content;
        if (textView4 != null) {
            textView4.setTextColor(z ? -1 : -11184811);
        }
        TextView textView5 = this.datetime;
        if (textView5 != null) {
            textView5.setTextColor(z ? -1118482 : -3026479);
        }
        TextView textView6 = this.quizPlayed;
        if (textView6 != null) {
            textView6.setTextColor(z ? -1118482 : -7829368);
        }
        PollOptionListLayout pollOptionListLayout = this.polloptList;
        if (pollOptionListLayout != null) {
            pollOptionListLayout.setDarkTheme(z);
        }
        QuizCoverView quizCoverView = this.quizCoverView;
        if (quizCoverView != null) {
            quizCoverView.setDarkTheme(z);
        }
        TextView textView7 = this.siteSource;
        if (textView7 != null) {
            textView7.setTextColor(z ? -1118482 : -5592406);
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
            feedListItem.setDarkTheme(z, this.backgroundColor);
            this.ref.setBackgroundResource(z ? com.narvii.amino.mastes.R.drawable.ref_quote_dark : com.narvii.amino.mastes.R.drawable.ref_quote);
        }
        TextView textView8 = this.unknowTypeHint;
        if (textView8 != null) {
            textView8.setTextColor(z ? -1 : ContextCompat.getColor(getContext(), com.narvii.amino.mastes.R.color.post_unknown_type_post));
        }
        TextView textView9 = this.disabled;
        if (textView9 != null) {
            textView9.setTextColor(z ? -1711276033 : -2005830791);
        }
    }

    private void setImagePlaceholder(NVImageView nVImageView) {
        nVImageView.setDefaultDrawable(ContextCompat.getDrawable(getContext(), this.darkTheme.booleanValue() ? com.narvii.amino.mastes.R.color.placeholder_dark : com.narvii.amino.mastes.R.color.placeholder));
    }

    public void setUnknownFeed(Feed feed) {
        this.feed = feed;
        configUserHeader();
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

    private void configUserHeader() {
        if (this.feed == null) {
            return;
        }
        if (this.avatar == null && this.userAvatarLayout == null) {
            return;
        }
        UserAvatarLayout userAvatarLayout = this.userAvatarLayout;
        if (userAvatarLayout != null) {
            userAvatarLayout.setUser(this.feed.author);
        } else {
            this.avatar.setImageUrl(this.feed.author.icon());
        }
        Feed feed = this.feed;
        if (feed instanceof Item) {
            this.avatar.setImageUrl(feed.author.iconForCatalog());
        }
        View view = this.nickname;
        if (view instanceof NicknameView) {
            Feed feed2 = this.feed;
            ((NicknameView) view).setUser(feed2.author, feed2 instanceof Item);
        } else {
            TextView textView = (TextView) view;
            Feed feed3 = this.feed;
            boolean z = feed3 instanceof Item;
            User user = feed3.author;
            textView.setText(z ? user.nicknameForCatalog() : user.nickname());
        }
        TextView textView2 = this.datetime;
        if (textView2 != null) {
            textView2.setText(this.formatter.format(this.feed.createdTime));
        }
    }

    public void setFeed(Feed feed) {
        setFeed(feed, false);
    }

    public void setFeed(Feed feed, boolean z) {
        setFeed(feed, z, false);
    }

    public void setFeed(Feed feed, boolean z, boolean z2) {
        setFeed(feed, z, z2, 5, 2, 6);
    }

    public void setFeed(Feed feed, boolean z, boolean z2, int i, int i2, int i3) {
        setFeed(feed, z, false, z2, 5, 2, 6);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:332:0x0466  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00a7  */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v3, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r3v5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setFeed(com.narvii.model.Feed r21, boolean r22, boolean r23, boolean r24, int r25, int r26, int r27) {
        /*
            Method dump skipped, instructions count: 1249
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.feed.FeedListItem.setFeed(com.narvii.model.Feed, boolean, boolean, boolean, int, int, int):void");
    }

    public void setProgress(boolean z) {
        FeedToolbarLayout feedToolbarLayout = this.toolbar;
        if (feedToolbarLayout != null) {
            feedToolbarLayout.setProgress(z);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected void setMediaList(List<Media> list, boolean z, boolean z2) {
        int size2 = list == null ? 0 : list.size();
        Media media = size2 > 0 ? list.get(0) : null;
        Feed feed = this.feed;
        boolean z3 = (feed instanceof Blog) && ((Blog) feed).type == 9;
        View view = this.frame1;
        if (view == null) {
            view = this.img1;
        }
        if (view != null) {
            view.setVisibility(media != null ? 0 : 8);
        }
        NVImageView nVImageView = this.img1;
        if (nVImageView != 0) {
            nVImageView.forceShowPlayButton = z3;
            if (nVImageView instanceof ISecretImage) {
                ((ISecretImage) nVImageView).setImageMedia(media, z2);
            } else {
                nVImageView.setImageMedia(media);
            }
        }
        if (this.caption1 != null) {
            String str = media == null ? null : media.caption;
            if (this.caption1.getVisibility() != 4) {
                this.caption1.setVisibility((z || TextUtils.isEmpty(str)) ? 8 : 0);
                this.caption1.setText(str);
            }
        }
        NVImageView nVImageView2 = this.img2;
        if (nVImageView2 != null) {
            nVImageView2.forceShowPlayButton = z3;
            Media media2 = size2 > 1 ? list.get(1) : null;
            View view2 = this.frame2;
            if (view2 == null) {
                view2 = this.img2;
            }
            view2.setVisibility(media2 != null ? 0 : 8);
            NVImageView nVImageView3 = this.img2;
            if (nVImageView3 instanceof SecretImageView) {
                ((SecretImageView) nVImageView3).setImageMedia(media2, z2);
            } else {
                nVImageView3.setImageMedia(media2);
            }
            if (this.caption2 != null) {
                String str2 = media2 == null ? null : media2.caption;
                this.caption2.setVisibility((z || TextUtils.isEmpty(str2)) ? 8 : 0);
                this.caption2.setText(str2);
            }
        }
        NVImageView nVImageView4 = this.img3;
        if (nVImageView4 != null) {
            nVImageView4.forceShowPlayButton = z3;
            Media media3 = size2 > 2 ? list.get(2) : null;
            View view3 = this.frame3;
            if (view3 == null) {
                view3 = this.img3;
            }
            view3.setVisibility(media3 != null ? 0 : 8);
            NVImageView nVImageView5 = this.img3;
            if (nVImageView5 instanceof SecretImageView) {
                ((SecretImageView) nVImageView5).setImageMedia(media3, z2);
            } else {
                nVImageView5.setImageMedia(media3);
            }
            if (this.caption3 != null) {
                String str3 = media3 != null ? media3.caption : null;
                this.caption3.setVisibility((z || TextUtils.isEmpty(str3)) ? 8 : 0);
                this.caption3.setText(str3);
            }
        }
        Card2View card2View = this.card2;
        if (card2View != null) {
            card2View.setImages(list, 1, z2);
        }
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

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.isRef) {
            Resources resources = getResources();
            Boolean bool = this.darkTheme;
            strokeColor = resources.getColor((bool == null || !bool.booleanValue()) ? com.narvii.amino.mastes.R.color.ref_stroke : com.narvii.amino.mastes.R.color.ref_stroke_dark);
            Boolean bool2 = this.darkTheme;
            bgColor = resources.getColor((bool2 == null || !bool2.booleanValue()) ? com.narvii.amino.mastes.R.color.ref_bg : com.narvii.amino.mastes.R.color.placeholder_darker);
            if (paint == null) {
                strokeWidth = resources.getDimensionPixelSize(com.narvii.amino.mastes.R.dimen.ref_stroke_width);
                size = resources.getDimensionPixelSize(com.narvii.amino.mastes.R.dimen.ref_mark_size);
                paint = new Paint();
                paint.setAntiAlias(true);
                paint.setStrokeWidth(strokeWidth);
                paint.setStrokeJoin(Paint.Join.ROUND);
            }
            int iDpToPx = (int) Utils.dpToPx(getContext(), 8.0f);
            int width = getWidth();
            int height = getHeight();
            float f = width;
            float f2 = 0.15f * f;
            strokePath.reset();
            strokePath.moveTo(f2, 0.0f);
            strokePath.lineTo(size + f2, -r7);
            strokePath.lineTo((size * 2) + f2, 0.0f);
            strokePath.lineTo(width - iDpToPx, 0.0f);
            RectF rectF = this.rectF;
            int i = iDpToPx * 2;
            float f3 = width - i;
            rectF.left = f3;
            rectF.top = 0.0f;
            rectF.right = f;
            float f4 = i;
            rectF.bottom = f4;
            strokePath.arcTo(rectF, -90.0f, 90.0f);
            strokePath.lineTo(f, height - iDpToPx);
            RectF rectF2 = this.rectF;
            rectF2.left = f3;
            float f5 = height - i;
            rectF2.top = f5;
            rectF2.right = f;
            float f6 = height;
            rectF2.bottom = f6;
            strokePath.arcTo(rectF2, 0.0f, 90.0f);
            float f7 = iDpToPx;
            strokePath.lineTo(f7, f6);
            RectF rectF3 = this.rectF;
            rectF3.left = 0.0f;
            rectF3.top = f5;
            rectF3.right = f4;
            rectF3.bottom = f6;
            strokePath.arcTo(rectF3, 90.0f, 90.0f);
            strokePath.lineTo(0.0f, f7);
            RectF rectF4 = this.rectF;
            rectF4.left = 0.0f;
            rectF4.top = 0.0f;
            rectF4.right = f4;
            rectF4.bottom = f4;
            strokePath.arcTo(rectF4, 180.0f, 90.0f);
            strokePath.close();
            fillPath.reset();
            fillPath.moveTo(f2, 0.0f);
            fillPath.lineTo(size + f2, -r1);
            fillPath.lineTo(f2 + (size * 2), 0.0f);
            fillPath.close();
            paint.setStyle(Paint.Style.FILL);
            paint.setColor(bgColor);
            canvas.drawPath(fillPath, paint);
            paint.setStyle(Paint.Style.STROKE);
            paint.setColor(strokeColor);
            canvas.drawPath(strokePath, paint);
        }
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        View viewFindViewById = findViewById(com.narvii.amino.mastes.R.id.on_boarding_overlay);
        if (viewFindViewById != null) {
            viewFindViewById.layout(0, 0, getWidth(), getHeight());
        }
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

    @Override // com.narvii.link.ILoadTrackView
    public void setLoadFinishListener(LoadFinishListener loadFinishListener) {
        this.loadFinishListener = loadFinishListener;
        ImageLoadTracker imageLoadTracker = this.imageLoadTracker;
        if (imageLoadTracker == null || !imageLoadTracker.isAllLoaded()) {
            return;
        }
        loadFinishListener.onLoadFinished();
    }

    @Override // com.narvii.link.ILoadTrackView
    public boolean isAllLoaded() {
        ImageLoadTracker imageLoadTracker = this.imageLoadTracker;
        if (imageLoadTracker == null) {
            return true;
        }
        return imageLoadTracker.isAllLoaded();
    }

    public Feed getFeed() {
        return this.feed;
    }
}
