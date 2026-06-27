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
import com.narvii.amino.mastes.R;
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

/* loaded from: classes3.dex */
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
    private int h0;
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

    public HeaderLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.avatar = findViewById(R.id.user_avatar_layout);
        this.avatarSize = this.avatar.getLayoutParams().width;
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
        this.userTitleFlowView = (UserTitleFlowView) findViewById(R.id.user_title_flow);
        this.userTitleFlowView.setDarkTheme(true);
        SlideshowView slideshowView = (SlideshowView) findViewById(R.id.slideshow);
        if (this.blurView != null && slideshowView != null) {
            slideshowView.setOnImageChangedListener(this);
        }
        this.buttonLayout = findViewById(R.id.button_layout);
        this.balanceView = findViewById(R.id.wallet_balance_view);
        this.streakBrokenTag = findViewById(R.id.streak_broken_tag);
    }

    public void setH0(int i) {
        this.h0 = i;
    }

    public void setOffset(int i) {
        this.offset = i;
    }

    public void setNewsFeed(boolean z) {
        this.isNewsFeed = z;
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        super.onLayout(z, i, i2, i3, i4);
        "moderator".equals(getTag());
        int width = getWidth();
        int height = getHeight();
        int statusBarOverlaySize = ((NVActivity) getContext()).getStatusBarOverlaySize();
        int actionBarOverlaySize = ((NVActivity) getContext()).getActionBarOverlaySize();
        int i6 = actionBarOverlaySize / 20;
        int i7 = statusBarOverlaySize + actionBarOverlaySize;
        int i8 = i7 + actionBarOverlaySize;
        float f = this.avOverride;
        if (f == 0.0f) {
            f = 0.5f;
        }
        if (this.isNewsFeed) {
            f = 0.3f;
        }
        float f2 = height;
        int iMin = (int) ((((int) (((int) Math.min(f2 - (f2 * f), f2 - (this.h0 * f))) - Utils.dpToPx(getContext(), 30.0f))) + this.offset) - Utils.dpToPx(getContext(), 10.0f));
        int iMax = Math.max(actionBarOverlaySize - (i6 * 4), Math.min((iMin - statusBarOverlaySize) - i6, this.avatarSize));
        int i9 = width / 2;
        int i10 = i9 - (iMax / 2);
        int iMax2 = Math.max(i6 + statusBarOverlaySize, iMin - iMax);
        this.avatar.layout(i10, iMax2, i10 + iMax, iMax2 + iMax);
        if (Utils.isRtl()) {
            i5 = i10 - ((iMax * 8) / 100);
        } else {
            i5 = i10 + ((iMax * 58) / 100);
        }
        int i11 = iMax2 + ((iMax * (-12)) / 100);
        View view = this.mood;
        view.layout(i5, i11, view.getWidth() + i5, this.mood.getHeight() + i11);
        int i12 = this.avatarSize;
        this.mood.setAlpha(Math.max(0.0f, Math.min(1.0f, iMax >= i12 ? 1.0f : 1.0f - (((i12 - iMax) * 1.0f) / (i12 * 0.35f)))));
        float f3 = iMax * 0.7f;
        int i13 = (int) f3;
        int i14 = i9 - (i13 / 2);
        int iDpToPx = (int) ((r10 - r6) + Utils.dpToPx(getContext(), 2.0f));
        this.aminoStaffBadge.layout(i14, iDpToPx, i13 + i14, ((int) ((f3 * 23.0f) / 79.0f)) + iDpToPx);
        int iMax3 = (int) (Math.max(height, this.h0) * f);
        View view2 = this.scorebar;
        if (view2 != null) {
            iMax3 -= view2.getHeight();
        }
        this.yMain = iMin + ((int) (iMax3 * 0.05f));
        int measuredWidth = this.mainView.getMeasuredWidth();
        int measuredHeight = this.mainView.getMeasuredHeight();
        int i15 = i9 - (measuredWidth / 2);
        View view3 = this.mainView;
        int i16 = this.yMain;
        view3.layout(i15, i16, measuredWidth + i15, measuredHeight + i16);
        setAlpha(this.nickname, i7, i8, true);
        setAlpha(this.membershipTitle, i7, i8, true);
        setAlpha(this.buttonLayout, i7, i8, true);
        View view4 = this.scorebar;
        if (view4 != null) {
            setAlpha(view4, i7, i8);
            View view5 = this.achievements;
            if (view5 != null) {
                setAlpha(view5, i7, i8);
            }
        }
        View view6 = this.balanceView;
        if (view6 != null) {
            setAlpha(view6, i7, i8);
        }
        setAlpha(this.editButton, i7, i8, true);
        setAlpha(this.userTitleFlowView, i7, i8, true);
        RealtimeBlurView realtimeBlurView = this.blurView;
        if (realtimeBlurView != null) {
            if (this.blurReady) {
                float f4 = height < this.h0 ? (((height - statusBarOverlaySize) - actionBarOverlaySize) * 1.0f) / ((r1 - statusBarOverlaySize) - actionBarOverlaySize) : 1.0f;
                float f5 = f4 >= 0.0f ? f4 : 0.0f;
                float f6 = f5 > 0.5f ? 1.0f : f5 / 0.5f;
                this.blurView.setVisibility(f6 < 1.0f ? 0 : 4);
                this.blurView.setAlpha(1.0f - f6);
                return;
            }
            realtimeBlurView.setVisibility(4);
        }
    }

    private void setAlpha(View view, int i, int i2) {
        setAlpha(view, i, i2, false);
    }

    private void setAlpha(View view, int i, int i2, boolean z) {
        if (view == null) {
            return;
        }
        int top = view.getTop() + (z ? this.yMain : 0);
        if (top <= i) {
            view.setAlpha(0.0f);
        } else if (top >= i2) {
            view.setAlpha(1.0f);
        } else {
            view.setAlpha(1.0f - (((i2 - top) * 1.0f) / (i2 - i)));
        }
    }

    @Override // com.narvii.widget.NVImageView.OnImageChangedListener
    public void onImageChanged(NVImageView nVImageView, int i, Media media) {
        if (this.blurReady || i != 4) {
            return;
        }
        this.blurReady = true;
        requestLayout();
    }

    public Bitmap screenshotForSharing(boolean z) {
        boolean z2;
        int visibility;
        boolean zIsShowMore;
        int visibility2;
        int visibility3;
        int visibility4;
        int visibility5;
        int visibility6;
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
                    z2 = true;
                }
            }
            z2 = false;
        } else {
            z2 = false;
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
            this.achievements.setVisibility(z ? 0 : 8);
        } else {
            visibility4 = 0;
        }
        View view5 = this.balanceView;
        if (view5 != null) {
            visibility5 = view5.getVisibility();
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
        View view6 = this.editButton;
        if (view6 != null) {
            view6.setVisibility(visibility2);
        }
        UserTitleFlowView userTitleFlowView2 = this.userTitleFlowView;
        if (userTitleFlowView2 != null) {
            userTitleFlowView2.setShowMore(zIsShowMore);
        }
        View view7 = this.buttonLayout;
        if (view7 != null) {
            view7.setVisibility(visibility);
        }
        View view8 = this.achievements;
        if (view8 != null) {
            view8.setVisibility(visibility4);
        }
        View view9 = this.streakBrokenTag;
        if (view9 != null) {
            view9.setVisibility(visibility3);
        }
        RealtimeBlurView realtimeBlurView2 = this.blurView;
        if (realtimeBlurView2 != null) {
            realtimeBlurView2.setVisibility(visibility6);
        }
        View view10 = this.balanceView;
        if (view10 != null) {
            view10.setVisibility(visibility5);
        }
        if (nVImageView != null) {
            nVImageView.setVisibility(8);
        }
        if (z2 && bubbleBackground != null) {
            bubbleBackground.set(null);
        }
        requestLayout();
        return bitmapCreateBitmap;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.allowTouch) {
            return super.dispatchTouchEvent(motionEvent);
        }
        return false;
    }
}
