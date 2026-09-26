package com.narvii.user.profile;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.RelativeLayout;
import com.github.mmin18.widget.RealtimeBlurView;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.model.Media;
import com.narvii.theme.ThemePackService;
import com.narvii.user.title.UserTitleFlowView;
import com.narvii.util.Utils;
import com.narvii.widget.BubbleBackground;
import com.narvii.widget.NVImageView;
import com.narvii.widget.SlideshowView;

/* JADX INFO: loaded from: classes7.dex */
public class HeaderLayout extends RelativeLayout implements NVImageView.OnImageChangedListener {
    View achievements;
    boolean allowTouch;
    View aminoStaffBadge;
    float avOverride;
    View avatar;
    int avatarSize;
    View balanceView;
    boolean blurReady;
    private RealtimeBlurView blurView;
    View buttonLayout;
    View chatLayout;
    View editButton;
    View follow;
    public View gradient;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    private int f2810h0;
    private boolean isNewsFeed;
    View mainView;
    View membershipTitle;
    View mood;
    View nickname;
    private int offset;
    View scorebar;
    View streakBrokenTag;
    UserTitleFlowView userTitleFlowView;
    private int yMain;

    private void setAlpha(View view, int i10, int i11) {
        setAlpha(view, i10, i11, false);
    }

    public void setH0(int i10) {
        this.f2810h0 = i10;
    }

    public void setNewsFeed(boolean z6) {
        this.isNewsFeed = z6;
    }

    public void setOffset(int i10) {
        this.offset = i10;
    }

    private void setAlpha(View view, int i10, int i11, boolean z6) {
        if (view == null) {
            return;
        }
        int top = view.getTop() + (z6 ? this.yMain : 0);
        if (top <= i10) {
            view.setAlpha(0.0f);
        } else if (top >= i11) {
            view.setAlpha(1.0f);
        } else {
            view.setAlpha(1.0f - (((i11 - top) * 1.0f) / (i11 - i10)));
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.allowTouch) {
            return super.dispatchTouchEvent(motionEvent);
        }
        return false;
    }

    @Override // com.narvii.widget.NVImageView.OnImageChangedListener
    public void onImageChanged(NVImageView nVImageView, int i10, Media media) {
        if (this.blurReady || i10 != 4) {
            return;
        }
        this.blurReady = true;
        requestLayout();
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        super.onLayout(z6, i10, i11, i12, i13);
        "moderator".equals(getTag());
        int width = getWidth();
        int height = getHeight();
        int statusBarOverlaySize = ((NVActivity) getContext()).getStatusBarOverlaySize();
        int actionBarOverlaySize = ((NVActivity) getContext()).getActionBarOverlaySize();
        int i14 = actionBarOverlaySize / 20;
        int i15 = statusBarOverlaySize + actionBarOverlaySize;
        int i16 = i15 + actionBarOverlaySize;
        float f = this.avOverride;
        if (f == 0.0f) {
            f = 0.5f;
        }
        if (this.isNewsFeed) {
            f = 0.3f;
        }
        float f6 = height;
        int iMin = (int) ((((int) (((int) Math.min(f6 - (f6 * f), f6 - (this.f2810h0 * f))) - Utils.dpToPx(getContext(), 30.0f))) + this.offset) - Utils.dpToPx(getContext(), 10.0f));
        int iMax = Math.max(actionBarOverlaySize - (i14 * 4), Math.min((iMin - statusBarOverlaySize) - i14, this.avatarSize));
        int i17 = width / 2;
        int i18 = i17 - (iMax / 2);
        int iMax2 = Math.max(i14 + statusBarOverlaySize, iMin - iMax);
        int i19 = iMax2 + iMax;
        this.avatar.layout(i18, iMax2, i18 + iMax, i19);
        int i20 = Utils.isRtl() ? i18 - ((iMax * 8) / 100) : i18 + ((iMax * 58) / 100);
        int i21 = iMax2 + ((iMax * (-12)) / 100);
        View view = this.mood;
        view.layout(i20, i21, view.getWidth() + i20, this.mood.getHeight() + i21);
        int i22 = this.avatarSize;
        this.mood.setAlpha(Math.max(0.0f, Math.min(1.0f, iMax >= i22 ? 1.0f : 1.0f - (((i22 - iMax) * 1.0f) / (i22 * 0.35f)))));
        float f7 = iMax * 0.7f;
        int i23 = (int) f7;
        int i24 = (int) ((f7 * 23.0f) / 79.0f);
        int i25 = i17 - (i23 / 2);
        int iDpToPx = (int) ((i19 - i24) + Utils.dpToPx(getContext(), 2.0f));
        this.aminoStaffBadge.layout(i25, iDpToPx, i23 + i25, i24 + iDpToPx);
        int iMax3 = (int) (Math.max(height, this.f2810h0) * f);
        View view2 = this.scorebar;
        if (view2 != null) {
            iMax3 -= view2.getHeight();
        }
        this.yMain = iMin + ((int) (iMax3 * 0.05f));
        int measuredWidth = this.mainView.getMeasuredWidth();
        int measuredHeight = this.mainView.getMeasuredHeight();
        int i26 = i17 - (measuredWidth / 2);
        View view3 = this.mainView;
        int i27 = this.yMain;
        view3.layout(i26, i27, measuredWidth + i26, measuredHeight + i27);
        setAlpha(this.nickname, i15, i16, true);
        setAlpha(this.membershipTitle, i15, i16, true);
        setAlpha(this.buttonLayout, i15, i16, true);
        View view4 = this.scorebar;
        if (view4 != null) {
            setAlpha(view4, i15, i16);
            View view5 = this.achievements;
            if (view5 != null) {
                setAlpha(view5, i15, i16);
            }
        }
        View view6 = this.balanceView;
        if (view6 != null) {
            setAlpha(view6, i15, i16);
        }
        setAlpha(this.editButton, i15, i16, true);
        setAlpha(this.userTitleFlowView, i15, i16, true);
        RealtimeBlurView realtimeBlurView = this.blurView;
        if (realtimeBlurView != null) {
            if (!this.blurReady) {
                realtimeBlurView.setVisibility(4);
                return;
            }
            int i28 = this.f2810h0;
            float f10 = height < i28 ? (((height - statusBarOverlaySize) - actionBarOverlaySize) * 1.0f) / ((i28 - statusBarOverlaySize) - actionBarOverlaySize) : 1.0f;
            if (f10 < 0.0f) {
                f10 = 0.0f;
            }
            float f11 = f10 > 0.5f ? 1.0f : f10 / 0.5f;
            realtimeBlurView.setVisibility(f11 < 1.0f ? 0 : 4);
            this.blurView.setAlpha(1.0f - f11);
        }
    }

    public HeaderLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        View viewFindViewById = findViewById(R.id.user_avatar_layout);
        this.avatar = viewFindViewById;
        this.avatarSize = viewFindViewById.getLayoutParams().width;
        this.mood = findViewById(R.id.mood);
        this.gradient = findViewById(R.id.gradient);
        this.nickname = findViewById(R.id.nickname);
        this.membershipTitle = findViewById(R.id.membership_title);
        this.follow = findViewById(R.id.user_follow);
        this.achievements = findViewById(R.id.achievements);
        this.scorebar = findViewById(R.id.scorebar);
        this.chatLayout = findViewById(R.id.chat_layout);
        this.mainView = findViewById(R.id.header_main);
        this.aminoStaffBadge = findViewById(R.id.amino_staff_badge);
        this.blurView = (RealtimeBlurView) findViewById(R.id.blur);
        this.blurView = (RealtimeBlurView) findViewById(R.id.blur);
        this.editButton = findViewById(R.id.edit_button);
        UserTitleFlowView userTitleFlowView = (UserTitleFlowView) findViewById(R.id.user_title_flow);
        this.userTitleFlowView = userTitleFlowView;
        userTitleFlowView.setDarkTheme(true);
        SlideshowView slideshowView = (SlideshowView) findViewById(R.id.slideshow);
        if (this.blurView != null && slideshowView != null) {
            slideshowView.setOnImageChangedListener(this);
        }
        this.buttonLayout = findViewById(R.id.button_layout);
        this.balanceView = findViewById(R.id.wallet_balance_view);
        this.streakBrokenTag = findViewById(R.id.streak_broken_tag);
    }

    public Bitmap screenshotForSharing(boolean z6) {
        boolean z10;
        int visibility;
        boolean zIsShowMore;
        int visibility2;
        int visibility3;
        int visibility4;
        int visibility5;
        int visibility6;
        int i10;
        SlideshowView slideshowView = (SlideshowView) findViewById(R.id.slideshow);
        BubbleBackground bubbleBackground = (BubbleBackground) findViewById(R.id.bubble);
        NVImageView nVImageView = (NVImageView) findViewById(R.id.temp_background);
        if (slideshowView != null && slideshowView.getCurrentMedia() == null && (getContext() instanceof NVContext)) {
            NVContext nVContext = (NVContext) getContext();
            Drawable drawable = ((ThemePackService) nVContext.getService("themePack")).getDrawable(((ConfigService) nVContext.getService("config")).getCommunityId(), ThemePackService.ThemeObject.BACKGROUND, 0, 0);
            if (drawable != null && nVImageView != null) {
                nVImageView.setImageDrawable(drawable);
                nVImageView.setVisibility(0);
            } else if (bubbleBackground != null) {
                AccountService accountService = (AccountService) nVContext.getService("account");
                if (bubbleBackground.getUserId() == null) {
                    bubbleBackground.set(accountService.getUserId());
                    z10 = true;
                }
            }
            z10 = false;
        } else {
            z10 = false;
        }
        int width = getWidth();
        if (width <= 0) {
            width = getResources().getDisplayMetrics().widthPixels;
        }
        View view = this.buttonLayout;
        if (view != null) {
            visibility = view.getVisibility();
            this.buttonLayout.setVisibility(4);
        } else {
            visibility = 8;
        }
        UserTitleFlowView userTitleFlowView = this.userTitleFlowView;
        if (userTitleFlowView != null) {
            zIsShowMore = userTitleFlowView.isShowMore();
            this.userTitleFlowView.setShowMore(false);
        } else {
            zIsShowMore = false;
        }
        View view2 = this.editButton;
        if (view2 != null) {
            visibility2 = view2.getVisibility();
            this.editButton.setVisibility(4);
        } else {
            visibility2 = 8;
        }
        View view3 = this.streakBrokenTag;
        if (view3 != null) {
            visibility3 = view3.getVisibility();
            this.streakBrokenTag.setVisibility(8);
        } else {
            visibility3 = 0;
        }
        View view4 = this.achievements;
        if (view4 != null) {
            visibility4 = view4.getVisibility();
            View view5 = this.achievements;
            if (z6) {
                i10 = 0;
            } else {
                i10 = 8;
            }
            view5.setVisibility(i10);
        } else {
            visibility4 = 0;
        }
        View view6 = this.balanceView;
        if (view6 != null) {
            visibility5 = view6.getVisibility();
            this.balanceView.setVisibility(4);
        } else {
            visibility5 = 0;
        }
        RealtimeBlurView realtimeBlurView = this.blurView;
        if (realtimeBlurView != null) {
            visibility6 = realtimeBlurView.getVisibility();
            this.blurView.setVisibility(4);
        } else {
            visibility6 = 0;
        }
        this.avOverride = 0.4f;
        measure(View.MeasureSpec.makeMeasureSpec(width, 1073741824), View.MeasureSpec.makeMeasureSpec(width, 1073741824));
        layout(0, 0, width, width);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(width, width, Bitmap.Config.ARGB_8888);
        draw(new Canvas(bitmapCreateBitmap));
        this.avOverride = 0.0f;
        View view7 = this.editButton;
        if (view7 != null) {
            view7.setVisibility(visibility2);
        }
        UserTitleFlowView userTitleFlowView2 = this.userTitleFlowView;
        if (userTitleFlowView2 != null) {
            userTitleFlowView2.setShowMore(zIsShowMore);
        }
        View view8 = this.buttonLayout;
        if (view8 != null) {
            view8.setVisibility(visibility);
        }
        View view9 = this.achievements;
        if (view9 != null) {
            view9.setVisibility(visibility4);
        }
        View view10 = this.streakBrokenTag;
        if (view10 != null) {
            view10.setVisibility(visibility3);
        }
        RealtimeBlurView realtimeBlurView2 = this.blurView;
        if (realtimeBlurView2 != null) {
            realtimeBlurView2.setVisibility(visibility6);
        }
        View view11 = this.balanceView;
        if (view11 != null) {
            view11.setVisibility(visibility5);
        }
        if (nVImageView != null) {
            nVImageView.setVisibility(8);
        }
        if (z10 && bubbleBackground != null) {
            bubbleBackground.set(null);
        }
        requestLayout();
        return bitmapCreateBitmap;
    }
}
