package com.narvii.user.follow;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.IdRes;
import com.narvii.account.push.PushNotificationHelper;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.model.User;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import e8.l;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.m;
import w7.o;
import w7.q;

/* JADX INFO: loaded from: classes3.dex */
public final class UserFollowView extends FrameLayout implements View.OnClickListener, IUserFollow {

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int FINAL_STATUS = 4;
    private static final int FOLLOWING_STATUS = 1;
    private static final long SCALE_ANIMATION_DURATION = 200;
    private static final int SUBSCRIBING_STATUS = 3;
    private static final int UNFOLLOW_STATUS = 0;
    private static final int UNSUBSCRIBE_STATUS = 2;

    @Nullable
    private ClickListener clickListener;

    @NotNull
    private final m followContentLayout$delegate;

    @Nullable
    private UserFollowDelegate followDelegate;

    @NotNull
    private final m followLayout$delegate;

    @NotNull
    private final m followProgress$delegate;

    @NotNull
    private final m followSuccessLayout$delegate;
    private boolean isPerformFollowAnimator;
    private boolean isPerformSubscribeAnimator;
    private boolean isSupportSubscribe;

    @NotNull
    private final m notificationContentLayout$delegate;

    @NotNull
    private final m notificationLayout$delegate;

    @NotNull
    private final m notificationProgress$delegate;

    @Nullable
    private PushNotificationHelper pushNotificationHelper;
    private int status;

    @Nullable
    private FollowNotificationHelper subscribeHelper;

    @Nullable
    private User user;

    public interface ClickListener {
        void onClickFollow();

        void onClickNotification();
    }

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: com.narvii.user.follow.UserFollowView$bind$1, reason: invalid class name */
    static final class AnonymousClass1<T> extends v implements e8.a<T> {
        final /* synthetic */ int $res;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(int i10) {
            super(0);
            this.$res = i10;
        }

        /* JADX WARN: Incorrect return type in method signature: ()TT; */
        @Override // e8.a
        public final View invoke() {
            return UserFollowView.this.findViewById(this.$res);
        }
    }

    /* JADX INFO: renamed from: com.narvii.user.follow.UserFollowView$init$1, reason: invalid class name and case insensitive filesystem */
    static final class C05631 extends v implements e8.a<l0> {
        C05631() {
            super(0);
        }

        @Override // e8.a
        public /* bridge */ /* synthetic */ l0 invoke() {
            invoke2();
            return l0.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2() {
            UserFollowView.this.setStatus(3);
        }
    }

    /* JADX INFO: renamed from: com.narvii.user.follow.UserFollowView$init$2, reason: invalid class name */
    static final class AnonymousClass2 extends v implements l<Boolean, l0> {
        AnonymousClass2() {
            super(1);
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(Boolean bool) {
            invoke(bool.booleanValue());
            return l0.INSTANCE;
        }

        public final void invoke(boolean z6) {
            User user = UserFollowView.this.user;
            if (user != null) {
                final UserFollowView userFollowView = UserFollowView.this;
                user.notificationSubscriptionStatus = z6 ? 1 : 0;
                userFollowView.bindUser(user, true);
                PushNotificationHelper pushNotificationHelper = userFollowView.pushNotificationHelper;
                if (pushNotificationHelper != null) {
                    String nickname = user.nickname;
                    t.i(nickname, "nickname");
                    if (pushNotificationHelper.showRemindDialogIfNeeded(PushNotificationHelper.SCENARIO_SUBSCRIBE_USER, nickname)) {
                        return;
                    }
                }
                Utils.postDelayed(new Runnable() { // from class: com.narvii.user.follow.d
                    @Override // java.lang.Runnable
                    public final void run() {
                        UserFollowView.AnonymousClass2.invoke$lambda$1$lambda$0(userFollowView);
                    }
                }, UserFollowView.SCALE_ANIMATION_DURATION);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void invoke$lambda$1$lambda$0(UserFollowView this$0) {
            t.j(this$0, "this$0");
            NVToast.makeText(this$0.getContext(), R.string.enable_notification_success_hint, 0).show();
        }
    }

    /* JADX INFO: renamed from: com.narvii.user.follow.UserFollowView$init$3, reason: invalid class name */
    static final class AnonymousClass3 extends v implements l<String, l0> {
        AnonymousClass3() {
            super(1);
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(String str) {
            invoke2(str);
            return l0.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(@Nullable String str) {
            User user = UserFollowView.this.user;
            if (user != null) {
                UserFollowView.this.bindUser(user, true);
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public UserFollowView(@NotNull Context context) {
        this(context, null, 0, 6, null);
        t.j(context, "context");
    }

    @Override // com.narvii.user.follow.IUserFollow
    public void followFail() {
        setStatus(0);
    }

    @Nullable
    public final ClickListener getClickListener() {
        return this.clickListener;
    }

    @Override // com.narvii.user.follow.IUserFollow
    public boolean needUpdateUserAfterFollow() {
        return true;
    }

    @Override // com.narvii.user.follow.IUserFollow
    public void onFollowStatusUpdated() {
    }

    public final void resetSupportSubscribe() {
        this.isSupportSubscribe = false;
    }

    public final void setClickListener(@Nullable ClickListener clickListener) {
        this.clickListener = clickListener;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public UserFollowView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        t.j(context, "context");
    }

    private final <T extends View> m<T> bind(@IdRes int i10) {
        return o.b(q.NONE, new AnonymousClass1(i10));
    }

    private final View getFollowContentLayout() {
        return (View) this.followContentLayout$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final View getFollowLayout() {
        return (View) this.followLayout$delegate.getValue();
    }

    private final View getFollowProgress() {
        return (View) this.followProgress$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final View getFollowSuccessLayout() {
        return (View) this.followSuccessLayout$delegate.getValue();
    }

    private final View getNotificationContentLayout() {
        return (View) this.notificationContentLayout$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final View getNotificationLayout() {
        return (View) this.notificationLayout$delegate.getValue();
    }

    private final View getNotificationProgress() {
        return (View) this.notificationProgress$delegate.getValue();
    }

    private final boolean isGlobalUser() {
        User user = this.user;
        return user != null && user.ndcId == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setStatus(int i10) {
        this.status = i10;
        updateView(true);
    }

    private final void updateView(boolean z6) {
        int i10 = this.status;
        if (i10 == 0) {
            getFollowLayout().setVisibility(0);
            getFollowContentLayout().setVisibility(0);
            getFollowProgress().setVisibility(4);
            getNotificationLayout().setVisibility(4);
            getFollowSuccessLayout().setVisibility(4);
            return;
        }
        if (i10 == 1) {
            getFollowLayout().setVisibility(0);
            getFollowContentLayout().setVisibility(4);
            getFollowProgress().setVisibility(0);
            getNotificationLayout().setVisibility(4);
            getFollowSuccessLayout().setVisibility(4);
            return;
        }
        if (i10 == 2) {
            if (this.isPerformFollowAnimator) {
                return;
            }
            if (!z6) {
                updateUnscribeStatus();
                return;
            }
            this.isPerformFollowAnimator = true;
            final int width = getFollowLayout().getWidth();
            ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(getFollowLayout().getWidth(), getNotificationLayout().getWidth());
            final ViewGroup.LayoutParams layoutParams = getFollowLayout().getLayoutParams();
            valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.user.follow.b
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    UserFollowView.updateView$lambda$1$lambda$0(layoutParams, this, valueAnimator);
                }
            });
            valueAnimatorOfInt.addListener(new AnimatorListenerAdapter() { // from class: com.narvii.user.follow.UserFollowView$updateView$1$2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(@NotNull Animator animation) {
                    t.j(animation, "animation");
                    this.this$0.isPerformFollowAnimator = false;
                    this.this$0.getFollowLayout().setVisibility(4);
                    this.this$0.getFollowLayout().getLayoutParams().width = width;
                    this.this$0.updateUnscribeStatus();
                }
            });
            valueAnimatorOfInt.setDuration(SCALE_ANIMATION_DURATION);
            valueAnimatorOfInt.start();
            return;
        }
        if (i10 == 3) {
            getNotificationLayout().setVisibility(0);
            getNotificationContentLayout().setVisibility(4);
            getNotificationProgress().setVisibility(0);
            getFollowLayout().setVisibility(4);
            getFollowSuccessLayout().setVisibility(4);
            return;
        }
        if (i10 == 4 && !this.isPerformSubscribeAnimator) {
            this.isSupportSubscribe = false;
            if (!z6) {
                getFollowLayout().setVisibility(4);
                getNotificationLayout().setVisibility(4);
                getFollowSuccessLayout().setVisibility(4);
                return;
            }
            this.isPerformSubscribeAnimator = true;
            if (isGlobalUser()) {
                getNotificationContentLayout().setVisibility(8);
            } else {
                getFollowContentLayout().setVisibility(8);
            }
            final View notificationLayout = isGlobalUser() ? getNotificationLayout() : getFollowLayout();
            final int width2 = notificationLayout.getWidth();
            ValueAnimator valueAnimatorOfInt2 = ValueAnimator.ofInt(width2, getFollowSuccessLayout().getWidth());
            final ViewGroup.LayoutParams layoutParams2 = notificationLayout.getLayoutParams();
            valueAnimatorOfInt2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.user.follow.c
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    UserFollowView.updateView$lambda$3$lambda$2(layoutParams2, notificationLayout, valueAnimator);
                }
            });
            valueAnimatorOfInt2.addListener(new AnimatorListenerAdapter() { // from class: com.narvii.user.follow.UserFollowView$updateView$2$2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(@NotNull Animator animation) {
                    t.j(animation, "animation");
                    this.this$0.getFollowSuccessLayout().setVisibility(0);
                    this.this$0.getFollowLayout().setVisibility(4);
                    this.this$0.getNotificationLayout().setVisibility(4);
                    notificationLayout.getLayoutParams().width = width2;
                    String string = this.this$0.getContext().getString(R.string.enable_notification_success_hint);
                    t.i(string, "getString(...)");
                    int length = string.length();
                    long j6 = 1200;
                    if (length >= 8) {
                        j6 = length > 20 ? 2000L : 1200 + ((800 * ((long) (length - 8))) / ((long) 12));
                    }
                    AnimatorSet animatorSet = new AnimatorSet();
                    final UserFollowView userFollowView = this.this$0;
                    AnimatorSet animatorSet2 = new AnimatorSet();
                    ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(userFollowView.getFollowSuccessLayout(), "scaleX", 0.9f, 0.95f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f);
                    objectAnimatorOfFloat.setDuration(j6);
                    ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(userFollowView.getFollowSuccessLayout(), "scaleY", 0.9f, 0.95f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f);
                    objectAnimatorOfFloat2.setDuration(j6);
                    animatorSet2.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2);
                    AnimatorSet animatorSet3 = new AnimatorSet();
                    ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(userFollowView.getFollowSuccessLayout(), "scaleX", 1.0f, 0.0f);
                    objectAnimatorOfFloat3.setDuration(400L);
                    ObjectAnimator objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(userFollowView.getFollowSuccessLayout(), "scaleY", 1.0f, 0.0f);
                    objectAnimatorOfFloat4.setDuration(400L);
                    animatorSet3.playTogether(objectAnimatorOfFloat3, objectAnimatorOfFloat4);
                    animatorSet.playSequentially(animatorSet2, animatorSet3);
                    animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.narvii.user.follow.UserFollowView$updateView$2$2$onAnimationEnd$1$1
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(@NotNull Animator animation2) {
                            t.j(animation2, "animation");
                            super.onAnimationEnd(animation2);
                            userFollowView.isPerformSubscribeAnimator = false;
                            userFollowView.getFollowSuccessLayout().setVisibility(4);
                        }
                    });
                    animatorSet.start();
                }
            });
            valueAnimatorOfInt2.setDuration(SCALE_ANIMATION_DURATION);
            valueAnimatorOfInt2.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void updateView$lambda$3$lambda$2(ViewGroup.LayoutParams layoutParams, View animationLayout, ValueAnimator it) {
        t.j(animationLayout, "$animationLayout");
        t.j(it, "it");
        Object animatedValue = it.getAnimatedValue();
        t.h(animatedValue, "null cannot be cast to non-null type kotlin.Int");
        layoutParams.width = ((Integer) animatedValue).intValue();
        animationLayout.setLayoutParams(layoutParams);
    }

    @Override // com.narvii.user.follow.IUserFollow
    public void followSuccess() {
        User user = this.user;
        if (user != null) {
            user.followingStatus |= 1;
            bindUser(user, true);
        }
    }

    public final void init(@NotNull NVContext ctx) {
        t.j(ctx, "ctx");
        this.followDelegate = new UserFollowDelegate(this, ctx);
        FollowNotificationHelper followNotificationHelper = new FollowNotificationHelper(ctx);
        this.subscribeHelper = followNotificationHelper;
        t.g(followNotificationHelper);
        followNotificationHelper.setLoading(new C05631());
        FollowNotificationHelper followNotificationHelper2 = this.subscribeHelper;
        t.g(followNotificationHelper2);
        followNotificationHelper2.setSuccess(new AnonymousClass2());
        FollowNotificationHelper followNotificationHelper3 = this.subscribeHelper;
        t.g(followNotificationHelper3);
        followNotificationHelper3.setFail(new AnonymousClass3());
        this.pushNotificationHelper = new PushNotificationHelper(ctx);
    }

    @Override // com.narvii.user.follow.IUserFollow
    public boolean isSendingFollow(@Nullable User user) {
        UserFollowDelegate userFollowDelegate = this.followDelegate;
        if (userFollowDelegate != null) {
            return userFollowDelegate.isSendingFollow(user);
        }
        return false;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(@Nullable View view) {
        Integer numValueOf = view != null ? Integer.valueOf(view.getId()) : null;
        if (numValueOf != null && numValueOf.intValue() == R.id.follow_layout) {
            if (this.status != 0) {
                return;
            }
            this.isSupportSubscribe = true;
            ClickListener clickListener = this.clickListener;
            if (clickListener != null) {
                clickListener.onClickFollow();
                return;
            }
            return;
        }
        if (numValueOf != null && numValueOf.intValue() == R.id.notification_layout && this.status == 2) {
            ClickListener clickListener2 = this.clickListener;
            if (clickListener2 != null) {
                clickListener2.onClickNotification();
            }
            FollowNotificationHelper followNotificationHelper = this.subscribeHelper;
            if (followNotificationHelper != null) {
                followNotificationHelper.subscribe(this.user, Boolean.TRUE, false);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UserFollowView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        t.j(context, "context");
        this.followLayout$delegate = bind(R.id.follow_layout);
        this.notificationLayout$delegate = bind(R.id.notification_layout);
        this.followSuccessLayout$delegate = bind(R.id.follow_success_layout);
        this.followContentLayout$delegate = bind(R.id.follow_content_layout);
        this.notificationContentLayout$delegate = bind(R.id.notification_content_layout);
        this.followProgress$delegate = bind(R.id.follow_progress);
        this.notificationProgress$delegate = bind(R.id.notification_progress);
        View.inflate(context, R.layout.user_follow_view, this);
        getFollowLayout().setOnClickListener(this);
        getNotificationLayout().setOnClickListener(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateUnscribeStatus() {
        getNotificationLayout().setVisibility(0);
        getNotificationContentLayout().setVisibility(0);
        getNotificationProgress().setVisibility(4);
        getFollowLayout().setVisibility(8);
        getFollowSuccessLayout().setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void updateView$lambda$1$lambda$0(ViewGroup.LayoutParams layoutParams, UserFollowView this$0, ValueAnimator it) {
        t.j(this$0, "this$0");
        t.j(it, "it");
        Object animatedValue = it.getAnimatedValue();
        t.h(animatedValue, "null cannot be cast to non-null type kotlin.Int");
        layoutParams.width = ((Integer) animatedValue).intValue();
        this$0.getFollowLayout().setLayoutParams(layoutParams);
    }

    public final void bindUser(@NotNull User user, boolean z6) {
        int i10;
        t.j(user, "user");
        this.user = user;
        if (!user.isForwardFollowing()) {
            i10 = 0;
        } else if (user.ndcId == 0 && user.notificationSubscriptionStatus == 0 && this.isSupportSubscribe) {
            i10 = 2;
        } else {
            i10 = 4;
        }
        this.status = i10;
        updateView(z6);
    }

    @Override // com.narvii.user.follow.IUserFollow
    public void follow(@NotNull User user) {
        t.j(user, "user");
        setStatus(1);
        UserFollowDelegate userFollowDelegate = this.followDelegate;
        if (userFollowDelegate != null) {
            userFollowDelegate.follow(user);
        }
    }

    public /* synthetic */ UserFollowView(Context context, AttributeSet attributeSet, int i10, int i11, k kVar) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }
}
