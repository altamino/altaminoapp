package com.narvii.master.home.widgets;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.model.User;
import com.narvii.util.ToolTipHelper;
import com.narvii.util.Tooltip;
import com.narvii.util.Utils;
import com.narvii.widget.AutoSizingTextView;
import com.narvii.widget.GradientView;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public final class GlobalProfileFollowView extends LinearLayout implements View.OnClickListener {

    @Nullable
    private ValueAnimator animator;

    @Nullable
    private e8.a<Boolean> checkCanShowTooltip;

    @NotNull
    private View followButton;

    @Nullable
    private View.OnClickListener followClickListener;

    @NotNull
    private GradientView followGradientView;

    @NotNull
    private ImageView followIV;

    @Nullable
    private View.OnClickListener followNotificationListener;

    @NotNull
    private View followNotificationProgressView;

    @NotNull
    private View followNotificationView;

    @NotNull
    private View followProgressView;

    @NotNull
    private ImageView followRingView;

    @NotNull
    private AutoSizingTextView followTV;
    private boolean isAccessible;
    private boolean isAnimating;
    private boolean isSendingFollow;
    private boolean isSendingFollowingNotification;
    private boolean performAnimation;

    @NotNull
    private ToolTipHelper toolTipHelper;

    public GlobalProfileFollowView(@Nullable Context context) {
        super(context);
        View.inflate(getContext(), R.layout.global_profile_follow_layout, this);
        View viewFindViewById = findViewById(R.id.follow_button);
        t.i(viewFindViewById, "findViewById(...)");
        this.followButton = viewFindViewById;
        viewFindViewById.setOnClickListener(this);
        View viewFindViewById2 = findViewById(R.id.follow_icon);
        t.i(viewFindViewById2, "findViewById(...)");
        this.followIV = (ImageView) viewFindViewById2;
        View viewFindViewById3 = findViewById(R.id.follow_text);
        t.i(viewFindViewById3, "findViewById(...)");
        this.followTV = (AutoSizingTextView) viewFindViewById3;
        View viewFindViewById4 = findViewById(R.id.follow_progress);
        t.i(viewFindViewById4, "findViewById(...)");
        this.followProgressView = viewFindViewById4;
        View viewFindViewById5 = findViewById(R.id.user_follow_notification);
        t.i(viewFindViewById5, "findViewById(...)");
        this.followNotificationView = viewFindViewById5;
        viewFindViewById5.setOnClickListener(this);
        View viewFindViewById6 = findViewById(R.id.follow_notification_ring);
        t.i(viewFindViewById6, "findViewById(...)");
        this.followRingView = (ImageView) viewFindViewById6;
        View viewFindViewById7 = findViewById(R.id.follow_notification_progress);
        t.i(viewFindViewById7, "findViewById(...)");
        this.followNotificationProgressView = viewFindViewById7;
        View viewFindViewById8 = findViewById(R.id.follow_gradient);
        t.i(viewFindViewById8, "findViewById(...)");
        GradientView gradientView = (GradientView) viewFindViewById8;
        this.followGradientView = gradientView;
        gradientView.setRadius(Utils.dpToPx(getContext(), 5.0f));
        this.toolTipHelper = new ToolTipHelper();
    }

    @Nullable
    public final e8.a<Boolean> getCheckCanShowTooltip() {
        return this.checkCanShowTooltip;
    }

    @Nullable
    public final View.OnClickListener getFollowClickListener() {
        return this.followClickListener;
    }

    @Nullable
    public final View.OnClickListener getFollowNotificationListener() {
        return this.followNotificationListener;
    }

    public final void performFollowAnimation() {
        this.performAnimation = true;
    }

    public final void setCheckCanShowTooltip(@Nullable e8.a<Boolean> aVar) {
        this.checkCanShowTooltip = aVar;
    }

    public final void setFollowClickListener(@Nullable View.OnClickListener onClickListener) {
        this.followClickListener = onClickListener;
    }

    public final void setFollowNotificationListener(@Nullable View.OnClickListener onClickListener) {
        this.followNotificationListener = onClickListener;
    }

    public final void setSendingFollow(boolean z6) {
        this.isSendingFollow = z6;
        this.isSendingFollowingNotification = false;
    }

    public final void setSendingFollowNotification(boolean z6) {
        this.isSendingFollowingNotification = z6;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setFollowNotificationState(boolean z6) {
        if (this.isSendingFollowingNotification) {
            this.followRingView.setVisibility(8);
            this.followNotificationProgressView.setVisibility(0);
            this.followGradientView.setVisibility(0);
        } else {
            this.followRingView.setVisibility(0);
            this.followNotificationProgressView.setVisibility(8);
            this.followGradientView.setVisibility(8);
        }
        if (z6) {
            int color = Utils.getColor(-1, 0.2f);
            this.followGradientView.setColor(color, color);
            this.followRingView.setImageResource(R.drawable.follow_notification_on);
        } else {
            this.followGradientView.setColor(Color.argb(255, 255, 194, 0), Color.argb(255, 255, 194, 0));
            this.followGradientView.setGradientLine(0.25f, 0.0f, 0.75f, 1.0f);
            this.followRingView.setImageResource(R.drawable.follow_notification_off);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void updateNotificationView$lambda$0(ViewGroup.LayoutParams layoutParams, GlobalProfileFollowView this$0, ValueAnimator it) {
        t.j(this$0, "this$0");
        t.j(it, "it");
        Object animatedValue = it.getAnimatedValue();
        t.h(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        layoutParams.width = (int) ((Float) animatedValue).floatValue();
        this$0.followNotificationView.setLayoutParams(layoutParams);
    }

    public final void hideToolTip() {
        if (this.toolTipHelper.isTooltipShowing()) {
            this.toolTipHelper.hideToolTip();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(@Nullable View view) {
        View.OnClickListener onClickListener;
        Integer numValueOf = view != null ? Integer.valueOf(view.getId()) : null;
        if (numValueOf != null && numValueOf.intValue() == R.id.follow_button) {
            if (!this.isAccessible || this.isAnimating || (onClickListener = this.followClickListener) == null) {
                return;
            }
            onClickListener.onClick(view);
            return;
        }
        if (numValueOf != null && numValueOf.intValue() == R.id.user_follow_notification && this.isAccessible && !this.isAnimating) {
            hideToolTip();
            View.OnClickListener onClickListener2 = this.followNotificationListener;
            if (onClickListener2 != null) {
                onClickListener2.onClick(view);
            }
        }
    }

    public final void updateFollowState(@Nullable User user, boolean z6, @NotNull AccountService account) {
        t.j(account, "account");
        if (user == null || z6 || user.isSystem()) {
            setVisibility(8);
            this.isAccessible = false;
            this.followButton.setVisibility(8);
            updateNotificationView(false, false);
            return;
        }
        setVisibility(0);
        this.isAccessible = user.isAccessibleByUser(account.getUserProfile());
        this.followButton.setVisibility(0);
        int i10 = user.followingStatus;
        boolean z10 = i10 == 3;
        boolean z11 = i10 == 1;
        if (this.isSendingFollow) {
            this.followProgressView.setVisibility(0);
            this.followIV.setVisibility(4);
            this.followTV.setVisibility(4);
            return;
        }
        this.followProgressView.setVisibility(4);
        this.followNotificationProgressView.setVisibility(4);
        this.followIV.setVisibility(0);
        this.followTV.setVisibility(0);
        boolean z12 = user.notificationSubscriptionStatus == 1;
        if (z10) {
            this.followButton.setBackgroundResource(R.drawable.button_round_friends_global);
            this.followIV.setImageResource(R.drawable.follow_friends);
            this.followTV.setText(R.string.user_friends);
            updateNotificationView(true, z12);
        } else if (z11) {
            this.followButton.setBackgroundResource(R.drawable.button_round_unfollow_global);
            this.followIV.setImageResource(R.drawable.follow_following);
            this.followTV.setText(R.string.user_following);
            updateNotificationView(true, z12);
        } else {
            this.followButton.setBackgroundResource(R.drawable.button_round_follow_global);
            this.followIV.setImageResource(R.drawable.follow_plus);
            this.followTV.setText(R.string.user_follow);
            updateNotificationView(false, z12);
        }
        this.followTV.resizingFromMaxSize();
    }

    private final void updateNotificationView(final boolean z6, final boolean z10) {
        boolean z11;
        ValueAnimator valueAnimatorOfFloat;
        setFollowNotificationState(z10);
        int i10 = 0;
        if (!this.performAnimation) {
            this.isAnimating = false;
            ValueAnimator valueAnimator = this.animator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            ViewGroup.LayoutParams layoutParams = this.followNotificationView.getLayoutParams();
            layoutParams.width = (int) Utils.dpToPx(getContext(), 40.0f);
            this.followNotificationView.setLayoutParams(layoutParams);
            View view = this.followNotificationView;
            if (!z6) {
                i10 = 8;
            }
            view.setVisibility(i10);
            return;
        }
        this.performAnimation = false;
        if (this.followNotificationView.getVisibility() == 0) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (z11 == z6) {
            return;
        }
        this.isAnimating = true;
        float fDpToPx = Utils.dpToPx(getContext(), 40.0f);
        if (z6) {
            valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, fDpToPx);
        } else {
            valueAnimatorOfFloat = ValueAnimator.ofFloat(fDpToPx, 0.0f);
        }
        this.animator = valueAnimatorOfFloat;
        this.followNotificationView.setVisibility(0);
        final ViewGroup.LayoutParams layoutParams2 = this.followNotificationView.getLayoutParams();
        ValueAnimator valueAnimator2 = this.animator;
        if (valueAnimator2 != null) {
            valueAnimator2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.master.home.widgets.a
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                    GlobalProfileFollowView.updateNotificationView$lambda$0(layoutParams2, this, valueAnimator3);
                }
            });
        }
        ValueAnimator valueAnimator3 = this.animator;
        if (valueAnimator3 != null) {
            valueAnimator3.addListener(new AnimatorListenerAdapter() { // from class: com.narvii.master.home.widgets.GlobalProfileFollowView.updateNotificationView.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(@NotNull Animator animation) {
                    e8.a<Boolean> checkCanShowTooltip;
                    t.j(animation, "animation");
                    if (z6) {
                        this.setFollowNotificationState(z10);
                        if (!z10 && ((checkCanShowTooltip = this.getCheckCanShowTooltip()) == null || checkCanShowTooltip.invoke().booleanValue())) {
                            this.toolTipHelper.showToolTip(Tooltip.builder().anchorView(this.followNotificationView).textId(R.string.enable_notification).textSize(Utils.dpToPx(this.getContext(), 12.0f)).indicatorUp(true).background(Color.parseColor("#FFFFC700")).showOnlyOnce(false).autoHide().isVibrate(false).build());
                        }
                    } else {
                        this.followNotificationView.setVisibility(8);
                    }
                    this.isAnimating = false;
                }
            });
        }
        ValueAnimator valueAnimator4 = this.animator;
        if (valueAnimator4 != null) {
            valueAnimator4.setDuration(200L);
        }
        ValueAnimator valueAnimator5 = this.animator;
        if (valueAnimator5 != null) {
            valueAnimator5.start();
        }
    }

    public GlobalProfileFollowView(@Nullable Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        View.inflate(getContext(), R.layout.global_profile_follow_layout, this);
        View viewFindViewById = findViewById(R.id.follow_button);
        t.i(viewFindViewById, "findViewById(...)");
        this.followButton = viewFindViewById;
        viewFindViewById.setOnClickListener(this);
        View viewFindViewById2 = findViewById(R.id.follow_icon);
        t.i(viewFindViewById2, "findViewById(...)");
        this.followIV = (ImageView) viewFindViewById2;
        View viewFindViewById3 = findViewById(R.id.follow_text);
        t.i(viewFindViewById3, "findViewById(...)");
        this.followTV = (AutoSizingTextView) viewFindViewById3;
        View viewFindViewById4 = findViewById(R.id.follow_progress);
        t.i(viewFindViewById4, "findViewById(...)");
        this.followProgressView = viewFindViewById4;
        View viewFindViewById5 = findViewById(R.id.user_follow_notification);
        t.i(viewFindViewById5, "findViewById(...)");
        this.followNotificationView = viewFindViewById5;
        viewFindViewById5.setOnClickListener(this);
        View viewFindViewById6 = findViewById(R.id.follow_notification_ring);
        t.i(viewFindViewById6, "findViewById(...)");
        this.followRingView = (ImageView) viewFindViewById6;
        View viewFindViewById7 = findViewById(R.id.follow_notification_progress);
        t.i(viewFindViewById7, "findViewById(...)");
        this.followNotificationProgressView = viewFindViewById7;
        View viewFindViewById8 = findViewById(R.id.follow_gradient);
        t.i(viewFindViewById8, "findViewById(...)");
        GradientView gradientView = (GradientView) viewFindViewById8;
        this.followGradientView = gradientView;
        gradientView.setRadius(Utils.dpToPx(getContext(), 5.0f));
        this.toolTipHelper = new ToolTipHelper();
    }

    public GlobalProfileFollowView(@Nullable Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        View.inflate(getContext(), R.layout.global_profile_follow_layout, this);
        View viewFindViewById = findViewById(R.id.follow_button);
        t.i(viewFindViewById, "findViewById(...)");
        this.followButton = viewFindViewById;
        viewFindViewById.setOnClickListener(this);
        View viewFindViewById2 = findViewById(R.id.follow_icon);
        t.i(viewFindViewById2, "findViewById(...)");
        this.followIV = (ImageView) viewFindViewById2;
        View viewFindViewById3 = findViewById(R.id.follow_text);
        t.i(viewFindViewById3, "findViewById(...)");
        this.followTV = (AutoSizingTextView) viewFindViewById3;
        View viewFindViewById4 = findViewById(R.id.follow_progress);
        t.i(viewFindViewById4, "findViewById(...)");
        this.followProgressView = viewFindViewById4;
        View viewFindViewById5 = findViewById(R.id.user_follow_notification);
        t.i(viewFindViewById5, "findViewById(...)");
        this.followNotificationView = viewFindViewById5;
        viewFindViewById5.setOnClickListener(this);
        View viewFindViewById6 = findViewById(R.id.follow_notification_ring);
        t.i(viewFindViewById6, "findViewById(...)");
        this.followRingView = (ImageView) viewFindViewById6;
        View viewFindViewById7 = findViewById(R.id.follow_notification_progress);
        t.i(viewFindViewById7, "findViewById(...)");
        this.followNotificationProgressView = viewFindViewById7;
        View viewFindViewById8 = findViewById(R.id.follow_gradient);
        t.i(viewFindViewById8, "findViewById(...)");
        GradientView gradientView = (GradientView) viewFindViewById8;
        this.followGradientView = gradientView;
        gradientView.setRadius(Utils.dpToPx(getContext(), 5.0f));
        this.toolTipHelper = new ToolTipHelper();
    }
}
