package com.narvii.master.home.widgets;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.model.User;
import com.narvii.util.ToolTipHelper;
import com.narvii.util.Tooltip;
import com.narvii.util.Utils;
import com.narvii.widget.AutoSizingTextView;
import com.narvii.widget.GradientView;
import java.util.HashMap;
import kotlin.TypeCastException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: GlobalProfileFollowView.kt */
/* loaded from: classes3.dex */
public final class GlobalProfileFollowView extends LinearLayout implements View.OnClickListener {
    private HashMap _$_findViewCache;
    private ValueAnimator animator;
    private Function0<Boolean> checkCanShowTooltip;
    private View followButton;
    private View.OnClickListener followClickListener;
    private GradientView followGradientView;
    private ImageView followIV;
    private View.OnClickListener followNotificationListener;
    private View followNotificationProgressView;
    private View followNotificationView;
    private View followProgressView;
    private ImageView followRingView;
    private AutoSizingTextView followTV;
    private boolean isAccessible;
    private boolean isAnimating;
    private boolean isSendingFollow;
    private boolean isSendingFollowingNotification;
    private boolean performAnimation;
    private ToolTipHelper toolTipHelper;

    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View viewFindViewById = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    public final View.OnClickListener getFollowClickListener() {
        return this.followClickListener;
    }

    public final void setFollowClickListener(View.OnClickListener onClickListener) {
        this.followClickListener = onClickListener;
    }

    public final View.OnClickListener getFollowNotificationListener() {
        return this.followNotificationListener;
    }

    public final void setFollowNotificationListener(View.OnClickListener onClickListener) {
        this.followNotificationListener = onClickListener;
    }

    public final Function0<Boolean> getCheckCanShowTooltip() {
        return this.checkCanShowTooltip;
    }

    public final void setCheckCanShowTooltip(Function0<Boolean> function0) {
        this.checkCanShowTooltip = function0;
    }

    public GlobalProfileFollowView(Context context) {
        super(context);
        View.inflate(getContext(), R.layout.global_profile_follow_layout, this);
        View viewFindViewById = findViewById(R.id.follow_button);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "findViewById(R.id.follow_button)");
        this.followButton = viewFindViewById;
        this.followButton.setOnClickListener(this);
        View viewFindViewById2 = findViewById(R.id.follow_icon);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById2, "findViewById(R.id.follow_icon)");
        this.followIV = (ImageView) viewFindViewById2;
        View viewFindViewById3 = findViewById(R.id.follow_text);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById3, "findViewById(R.id.follow_text)");
        this.followTV = (AutoSizingTextView) viewFindViewById3;
        View viewFindViewById4 = findViewById(R.id.follow_progress);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById4, "findViewById(R.id.follow_progress)");
        this.followProgressView = viewFindViewById4;
        View viewFindViewById5 = findViewById(R.id.user_follow_notification);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById5, "findViewById(R.id.user_follow_notification)");
        this.followNotificationView = viewFindViewById5;
        this.followNotificationView.setOnClickListener(this);
        View viewFindViewById6 = findViewById(R.id.follow_notification_ring);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById6, "findViewById(R.id.follow_notification_ring)");
        this.followRingView = (ImageView) viewFindViewById6;
        View viewFindViewById7 = findViewById(R.id.follow_notification_progress);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById7, "findViewById(R.id.follow_notification_progress)");
        this.followNotificationProgressView = viewFindViewById7;
        View viewFindViewById8 = findViewById(R.id.follow_gradient);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById8, "findViewById(R.id.follow_gradient)");
        this.followGradientView = (GradientView) viewFindViewById8;
        this.followGradientView.setRadius(Utils.dpToPx(getContext(), 5.0f));
        this.toolTipHelper = new ToolTipHelper();
    }

    public GlobalProfileFollowView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        View.inflate(getContext(), R.layout.global_profile_follow_layout, this);
        View viewFindViewById = findViewById(R.id.follow_button);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "findViewById(R.id.follow_button)");
        this.followButton = viewFindViewById;
        this.followButton.setOnClickListener(this);
        View viewFindViewById2 = findViewById(R.id.follow_icon);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById2, "findViewById(R.id.follow_icon)");
        this.followIV = (ImageView) viewFindViewById2;
        View viewFindViewById3 = findViewById(R.id.follow_text);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById3, "findViewById(R.id.follow_text)");
        this.followTV = (AutoSizingTextView) viewFindViewById3;
        View viewFindViewById4 = findViewById(R.id.follow_progress);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById4, "findViewById(R.id.follow_progress)");
        this.followProgressView = viewFindViewById4;
        View viewFindViewById5 = findViewById(R.id.user_follow_notification);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById5, "findViewById(R.id.user_follow_notification)");
        this.followNotificationView = viewFindViewById5;
        this.followNotificationView.setOnClickListener(this);
        View viewFindViewById6 = findViewById(R.id.follow_notification_ring);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById6, "findViewById(R.id.follow_notification_ring)");
        this.followRingView = (ImageView) viewFindViewById6;
        View viewFindViewById7 = findViewById(R.id.follow_notification_progress);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById7, "findViewById(R.id.follow_notification_progress)");
        this.followNotificationProgressView = viewFindViewById7;
        View viewFindViewById8 = findViewById(R.id.follow_gradient);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById8, "findViewById(R.id.follow_gradient)");
        this.followGradientView = (GradientView) viewFindViewById8;
        this.followGradientView.setRadius(Utils.dpToPx(getContext(), 5.0f));
        this.toolTipHelper = new ToolTipHelper();
    }

    public GlobalProfileFollowView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        View.inflate(getContext(), R.layout.global_profile_follow_layout, this);
        View viewFindViewById = findViewById(R.id.follow_button);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "findViewById(R.id.follow_button)");
        this.followButton = viewFindViewById;
        this.followButton.setOnClickListener(this);
        View viewFindViewById2 = findViewById(R.id.follow_icon);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById2, "findViewById(R.id.follow_icon)");
        this.followIV = (ImageView) viewFindViewById2;
        View viewFindViewById3 = findViewById(R.id.follow_text);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById3, "findViewById(R.id.follow_text)");
        this.followTV = (AutoSizingTextView) viewFindViewById3;
        View viewFindViewById4 = findViewById(R.id.follow_progress);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById4, "findViewById(R.id.follow_progress)");
        this.followProgressView = viewFindViewById4;
        View viewFindViewById5 = findViewById(R.id.user_follow_notification);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById5, "findViewById(R.id.user_follow_notification)");
        this.followNotificationView = viewFindViewById5;
        this.followNotificationView.setOnClickListener(this);
        View viewFindViewById6 = findViewById(R.id.follow_notification_ring);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById6, "findViewById(R.id.follow_notification_ring)");
        this.followRingView = (ImageView) viewFindViewById6;
        View viewFindViewById7 = findViewById(R.id.follow_notification_progress);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById7, "findViewById(R.id.follow_notification_progress)");
        this.followNotificationProgressView = viewFindViewById7;
        View viewFindViewById8 = findViewById(R.id.follow_gradient);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById8, "findViewById(R.id.follow_gradient)");
        this.followGradientView = (GradientView) viewFindViewById8;
        this.followGradientView.setRadius(Utils.dpToPx(getContext(), 5.0f));
        this.toolTipHelper = new ToolTipHelper();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) throws Resources.NotFoundException {
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

    public final void updateFollowState(User user, boolean z, AccountService account) {
        Intrinsics.checkParameterIsNotNull(account, "account");
        if (user == null || z || user.isSystem()) {
            setVisibility(8);
            this.isAccessible = false;
            this.followButton.setVisibility(8);
            updateNotificationView(false, false);
            return;
        }
        setVisibility(0);
        this.isAccessible = user.isAccessibleByUser(account.getUserProfile());
        this.followButton.setVisibility(0);
        boolean z2 = user.followingStatus == 3;
        boolean z3 = user.followingStatus == 1;
        if (this.isSendingFollow) {
            this.followProgressView.setVisibility(0);
            this.followIV.setVisibility(4);
            this.followTV.setVisibility(4);
            return;
        }
        this.followProgressView.setVisibility(4);
        this.followIV.setVisibility(0);
        this.followTV.setVisibility(0);
        boolean z4 = user.notificationSubscriptionStatus == 1;
        if (z2) {
            this.followButton.setBackgroundResource(R.drawable.button_round_friends_global);
            this.followIV.setImageResource(R.drawable.follow_friends);
            this.followTV.setText(R.string.user_friends);
            updateNotificationView(true, z4);
        } else if (z3) {
            this.followButton.setBackgroundResource(R.drawable.button_round_unfollow_global);
            this.followIV.setImageResource(R.drawable.follow_following);
            this.followTV.setText(R.string.user_following);
            updateNotificationView(true, z4);
        } else {
            this.followButton.setBackgroundResource(R.drawable.button_round_follow_global);
            this.followIV.setImageResource(R.drawable.follow_plus);
            this.followTV.setText(R.string.user_follow);
            updateNotificationView(false, z4);
        }
        this.followTV.resizingFromMaxSize();
    }

    public final void setSendingFollow(boolean z) {
        this.isSendingFollow = z;
        this.isSendingFollowingNotification = false;
    }

    public final void setSendingFollowNotification(boolean z) {
        this.isSendingFollowingNotification = z;
    }

    public final void performFollowAnimation() {
        this.performAnimation = true;
    }

    public final void hideToolTip() throws Resources.NotFoundException {
        if (this.toolTipHelper.isTooltipShowing()) {
            this.toolTipHelper.hideToolTip();
        }
    }

    private final void updateNotificationView(final boolean z, final boolean z2) {
        ValueAnimator valueAnimatorOfFloat;
        setFollowNotificationState(z2);
        if (!this.performAnimation) {
            this.isAnimating = false;
            ValueAnimator valueAnimator = this.animator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            ViewGroup.LayoutParams layoutParams = this.followNotificationView.getLayoutParams();
            layoutParams.width = (int) Utils.dpToPx(getContext(), 40.0f);
            this.followNotificationView.setLayoutParams(layoutParams);
            this.followNotificationView.setVisibility(z ? 0 : 8);
            return;
        }
        this.performAnimation = false;
        if ((this.followNotificationView.getVisibility() == 0) == z) {
            return;
        }
        this.isAnimating = true;
        float fDpToPx = Utils.dpToPx(getContext(), 40.0f);
        if (z) {
            valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, fDpToPx);
        } else {
            valueAnimatorOfFloat = ValueAnimator.ofFloat(fDpToPx, 0.0f);
        }
        this.animator = valueAnimatorOfFloat;
        this.followNotificationView.setVisibility(0);
        final ViewGroup.LayoutParams layoutParams2 = this.followNotificationView.getLayoutParams();
        ValueAnimator valueAnimator2 = this.animator;
        if (valueAnimator2 != null) {
            valueAnimator2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.master.home.widgets.GlobalProfileFollowView.updateNotificationView.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator it) {
                    Intrinsics.checkExpressionValueIsNotNull(it, "it");
                    Object animatedValue = it.getAnimatedValue();
                    if (animatedValue == null) {
                        throw new TypeCastException("null cannot be cast to non-null type kotlin.Float");
                    }
                    layoutParams2.width = (int) ((Float) animatedValue).floatValue();
                    GlobalProfileFollowView.this.followNotificationView.setLayoutParams(layoutParams2);
                }
            });
        }
        ValueAnimator valueAnimator3 = this.animator;
        if (valueAnimator3 != null) {
            valueAnimator3.addListener(new AnimatorListenerAdapter() { // from class: com.narvii.master.home.widgets.GlobalProfileFollowView.updateNotificationView.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) throws Resources.NotFoundException {
                    Function0<Boolean> checkCanShowTooltip;
                    if (!z) {
                        GlobalProfileFollowView.this.followNotificationView.setVisibility(8);
                    } else {
                        GlobalProfileFollowView.this.setFollowNotificationState(z2);
                        if (!z2 && ((checkCanShowTooltip = GlobalProfileFollowView.this.getCheckCanShowTooltip()) == null || checkCanShowTooltip.invoke().booleanValue())) {
                            GlobalProfileFollowView.this.toolTipHelper.showToolTip(Tooltip.builder().anchorView(GlobalProfileFollowView.this.followNotificationView).textId(R.string.enable_notification).textSize(Utils.dpToPx(GlobalProfileFollowView.this.getContext(), 12.0f)).indicatorUp(true).background(Color.parseColor("#FFFFC700")).showOnlyOnce(false).autoHide().isVibrate(false).build());
                        }
                    }
                    GlobalProfileFollowView.this.isAnimating = false;
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

    /* JADX INFO: Access modifiers changed from: private */
    public final void setFollowNotificationState(boolean z) {
        if (this.isSendingFollowingNotification) {
            this.followRingView.setVisibility(8);
            this.followNotificationProgressView.setVisibility(0);
            this.followGradientView.setVisibility(0);
        } else {
            this.followRingView.setVisibility(0);
            this.followNotificationProgressView.setVisibility(8);
            this.followGradientView.setVisibility(8);
        }
        if (z) {
            int color = Utils.getColor(-1, 0.2f);
            this.followGradientView.setColor(color, color);
            this.followRingView.setImageResource(R.drawable.follow_notification_on);
        } else {
            this.followGradientView.setColor(Color.argb(255, 255, 194, 0), Color.argb(255, 255, 194, 0));
            this.followGradientView.setGradientLine(0.25f, 0.0f, 0.75f, 1.0f);
            this.followRingView.setImageResource(R.drawable.follow_notification_off);
        }
    }
}
