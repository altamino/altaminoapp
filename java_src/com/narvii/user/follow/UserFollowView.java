package com.narvii.user.follow;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.narvii.account.push.PushNotificationHelper;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.model.User;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import java.util.HashMap;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: UserFollowView.kt */
/* loaded from: classes3.dex */
public final class UserFollowView extends FrameLayout implements View.OnClickListener, IUserFollow {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(UserFollowView.class), "followLayout", "getFollowLayout()Landroid/view/View;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(UserFollowView.class), "notificationLayout", "getNotificationLayout()Landroid/view/View;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(UserFollowView.class), "followSuccessLayout", "getFollowSuccessLayout()Landroid/view/View;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(UserFollowView.class), "followContentLayout", "getFollowContentLayout()Landroid/view/View;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(UserFollowView.class), "notificationContentLayout", "getNotificationContentLayout()Landroid/view/View;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(UserFollowView.class), "followProgress", "getFollowProgress()Landroid/view/View;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(UserFollowView.class), "notificationProgress", "getNotificationProgress()Landroid/view/View;"))};
    public static final Companion Companion = new Companion(null);
    private static final int FINAL_STATUS = 4;
    private static final int FOLLOWING_STATUS = 1;
    private static final long SCALE_ANIMATION_DURATION = 200;
    private static final int SUBSCRIBING_STATUS = 3;
    private static final int UNFOLLOW_STATUS = 0;
    private static final int UNSUBSCRIBE_STATUS = 2;
    private HashMap _$_findViewCache;
    private ClickListener clickListener;
    private final Lazy followContentLayout$delegate;
    private UserFollowDelegate followDelegate;
    private final Lazy followLayout$delegate;
    private final Lazy followProgress$delegate;
    private final Lazy followSuccessLayout$delegate;
    private boolean isPerformFollowAnimator;
    private boolean isPerformSubscribeAnimator;
    private boolean isSupportSubscribe;
    private final Lazy notificationContentLayout$delegate;
    private final Lazy notificationLayout$delegate;
    private final Lazy notificationProgress$delegate;
    private PushNotificationHelper pushNotificationHelper;
    private int status;
    private FollowNotificationHelper subscribeHelper;
    private User user;

    /* compiled from: UserFollowView.kt */
    public interface ClickListener {
        void onClickFollow();

        void onClickNotification();
    }

    public UserFollowView(Context context) {
        this(context, null, 0, 6, null);
    }

    public UserFollowView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    private final View getFollowContentLayout() {
        Lazy lazy = this.followContentLayout$delegate;
        KProperty kProperty = $$delegatedProperties[3];
        return (View) lazy.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final View getFollowLayout() {
        Lazy lazy = this.followLayout$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (View) lazy.getValue();
    }

    private final View getFollowProgress() {
        Lazy lazy = this.followProgress$delegate;
        KProperty kProperty = $$delegatedProperties[5];
        return (View) lazy.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final View getFollowSuccessLayout() {
        Lazy lazy = this.followSuccessLayout$delegate;
        KProperty kProperty = $$delegatedProperties[2];
        return (View) lazy.getValue();
    }

    private final View getNotificationContentLayout() {
        Lazy lazy = this.notificationContentLayout$delegate;
        KProperty kProperty = $$delegatedProperties[4];
        return (View) lazy.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final View getNotificationLayout() {
        Lazy lazy = this.notificationLayout$delegate;
        KProperty kProperty = $$delegatedProperties[1];
        return (View) lazy.getValue();
    }

    private final View getNotificationProgress() {
        Lazy lazy = this.notificationProgress$delegate;
        KProperty kProperty = $$delegatedProperties[6];
        return (View) lazy.getValue();
    }

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

    @Override // com.narvii.user.follow.IUserFollow
    public boolean needUpdateUserAfterFollow() {
        return true;
    }

    @Override // com.narvii.user.follow.IUserFollow
    public void onFollowStatusUpdated() {
    }

    /* compiled from: UserFollowView.kt */
    /* renamed from: com.narvii.user.follow.UserFollowView$init$2, reason: invalid class name */
    static final class AnonymousClass2 extends Lambda implements Function1<Boolean, Unit> {
        AnonymousClass2() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) throws Resources.NotFoundException {
            invoke(bool.booleanValue());
            return Unit.INSTANCE;
        }

        public final void invoke(final boolean z) throws Resources.NotFoundException {
            boolean zShowRemindDialogIfNeeded;
            User user = UserFollowView.this.user;
            if (user != null) {
                user.notificationSubscriptionStatus = z ? 1 : 0;
                UserFollowView.this.bindUser(user, true);
                PushNotificationHelper pushNotificationHelper = UserFollowView.this.pushNotificationHelper;
                if (pushNotificationHelper != null) {
                    String str = user.nickname;
                    Intrinsics.checkExpressionValueIsNotNull(str, "it.nickname");
                    zShowRemindDialogIfNeeded = pushNotificationHelper.showRemindDialogIfNeeded(PushNotificationHelper.SCENARIO_SUBSCRIBE_USER, str);
                } else {
                    zShowRemindDialogIfNeeded = false;
                }
                if (zShowRemindDialogIfNeeded) {
                    return;
                }
                Utils.postDelayed(new Runnable() { // from class: com.narvii.user.follow.UserFollowView$init$2$$special$$inlined$let$lambda$1
                    @Override // java.lang.Runnable
                    public final void run() {
                        NVToast.makeText(UserFollowView.this.getContext(), R.string.enable_notification_success_hint, 0).show();
                    }
                }, UserFollowView.SCALE_ANIMATION_DURATION);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UserFollowView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkParameterIsNotNull(context, "context");
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

    public /* synthetic */ UserFollowView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* compiled from: UserFollowView.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public final ClickListener getClickListener() {
        return this.clickListener;
    }

    public final void setClickListener(ClickListener clickListener) {
        this.clickListener = clickListener;
    }

    public final void init(NVContext ctx) {
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        this.followDelegate = new UserFollowDelegate(this, ctx);
        this.subscribeHelper = new FollowNotificationHelper(ctx);
        FollowNotificationHelper followNotificationHelper = this.subscribeHelper;
        if (followNotificationHelper == null) {
            Intrinsics.throwNpe();
            throw null;
        }
        followNotificationHelper.setLoading(new Function0<Unit>() { // from class: com.narvii.user.follow.UserFollowView.init.1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                UserFollowView.this.setStatus(3);
            }
        });
        FollowNotificationHelper followNotificationHelper2 = this.subscribeHelper;
        if (followNotificationHelper2 == null) {
            Intrinsics.throwNpe();
            throw null;
        }
        followNotificationHelper2.setSuccess(new AnonymousClass2());
        FollowNotificationHelper followNotificationHelper3 = this.subscribeHelper;
        if (followNotificationHelper3 == null) {
            Intrinsics.throwNpe();
            throw null;
        }
        followNotificationHelper3.setFail(new Function1<String, Unit>() { // from class: com.narvii.user.follow.UserFollowView.init.3
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(String str) {
                invoke2(str);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(String str) {
                User user = UserFollowView.this.user;
                if (user != null) {
                    UserFollowView.this.bindUser(user, true);
                }
            }
        });
        this.pushNotificationHelper = new PushNotificationHelper(ctx);
    }

    public final void resetSupportSubscribe() {
        this.isSupportSubscribe = false;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
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
                followNotificationHelper.subscribe(this.user, true, false);
            }
        }
    }

    public final void bindUser(User user, boolean z) {
        int i;
        Intrinsics.checkParameterIsNotNull(user, "user");
        this.user = user;
        if (user.isForwardFollowing()) {
            i = (user.ndcId == 0 && user.notificationSubscriptionStatus == 0 && this.isSupportSubscribe) ? 2 : 4;
        } else {
            i = 0;
        }
        this.status = i;
        updateView(z);
    }

    private final void updateView(boolean z) {
        int i = this.status;
        if (i == 0) {
            getFollowLayout().setVisibility(0);
            getFollowContentLayout().setVisibility(0);
            getFollowProgress().setVisibility(4);
            getNotificationLayout().setVisibility(4);
            getFollowSuccessLayout().setVisibility(4);
            return;
        }
        if (i == 1) {
            getFollowLayout().setVisibility(0);
            getFollowContentLayout().setVisibility(4);
            getFollowProgress().setVisibility(0);
            getNotificationLayout().setVisibility(4);
            getFollowSuccessLayout().setVisibility(4);
            return;
        }
        if (i == 2) {
            if (this.isPerformFollowAnimator) {
                return;
            }
            if (!z) {
                updateUnscribeStatus();
                return;
            }
            this.isPerformFollowAnimator = true;
            final int width = getFollowLayout().getWidth();
            ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(getFollowLayout().getWidth(), getNotificationLayout().getWidth());
            final ViewGroup.LayoutParams layoutParams = getFollowLayout().getLayoutParams();
            valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.user.follow.UserFollowView$updateView$$inlined$apply$lambda$1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator it) {
                    ViewGroup.LayoutParams layoutParams2 = layoutParams;
                    Intrinsics.checkExpressionValueIsNotNull(it, "it");
                    Object animatedValue = it.getAnimatedValue();
                    if (animatedValue != null) {
                        layoutParams2.width = ((Integer) animatedValue).intValue();
                        this.getFollowLayout().setLayoutParams(layoutParams);
                        return;
                    }
                    throw new TypeCastException("null cannot be cast to non-null type kotlin.Int");
                }
            });
            valueAnimatorOfInt.addListener(new AnimatorListenerAdapter() { // from class: com.narvii.user.follow.UserFollowView$updateView$$inlined$apply$lambda$2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
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
        if (i == 3) {
            getNotificationLayout().setVisibility(0);
            getNotificationContentLayout().setVisibility(4);
            getNotificationProgress().setVisibility(0);
            getFollowLayout().setVisibility(4);
            getFollowSuccessLayout().setVisibility(4);
            return;
        }
        if (i == 4 && !this.isPerformSubscribeAnimator) {
            this.isSupportSubscribe = false;
            if (!z) {
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
            valueAnimatorOfInt2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.user.follow.UserFollowView$updateView$$inlined$apply$lambda$3
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator it) {
                    ViewGroup.LayoutParams layoutParams3 = layoutParams2;
                    Intrinsics.checkExpressionValueIsNotNull(it, "it");
                    Object animatedValue = it.getAnimatedValue();
                    if (animatedValue == null) {
                        throw new TypeCastException("null cannot be cast to non-null type kotlin.Int");
                    }
                    layoutParams3.width = ((Integer) animatedValue).intValue();
                    notificationLayout.setLayoutParams(layoutParams2);
                }
            });
            valueAnimatorOfInt2.addListener(new AnimatorListenerAdapter() { // from class: com.narvii.user.follow.UserFollowView$updateView$$inlined$apply$lambda$4
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    this.this$0.getFollowSuccessLayout().setVisibility(0);
                    this.this$0.getFollowLayout().setVisibility(4);
                    this.this$0.getNotificationLayout().setVisibility(4);
                    notificationLayout.getLayoutParams().width = width2;
                    String string = this.this$0.getContext().getString(R.string.enable_notification_success_hint);
                    Intrinsics.checkExpressionValueIsNotNull(string, "context.getString(R.stri…otification_success_hint)");
                    int length = string.length();
                    final long j = 1200;
                    if (length >= 8) {
                        j = length > 20 ? 2000L : 1200 + ((800 * (length - 8)) / 12);
                    }
                    AnimatorSet animatorSet = new AnimatorSet();
                    AnimatorSet animatorSet2 = new AnimatorSet();
                    ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.this$0.getFollowSuccessLayout(), "scaleX", 0.9f, 0.95f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f);
                    objectAnimatorOfFloat.setDuration(j);
                    ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.this$0.getFollowSuccessLayout(), "scaleY", 0.9f, 0.95f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f);
                    objectAnimatorOfFloat2.setDuration(j);
                    animatorSet2.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2);
                    AnimatorSet animatorSet3 = new AnimatorSet();
                    ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this.this$0.getFollowSuccessLayout(), "scaleX", 1.0f, 0.0f);
                    objectAnimatorOfFloat3.setDuration(400L);
                    ObjectAnimator objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(this.this$0.getFollowSuccessLayout(), "scaleY", 1.0f, 0.0f);
                    objectAnimatorOfFloat4.setDuration(400L);
                    animatorSet3.playTogether(objectAnimatorOfFloat3, objectAnimatorOfFloat4);
                    animatorSet.playSequentially(animatorSet2, animatorSet3);
                    animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.narvii.user.follow.UserFollowView$updateView$$inlined$apply$lambda$4.1
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator2) {
                            super.onAnimationEnd(animator2);
                            UserFollowView$updateView$$inlined$apply$lambda$4.this.this$0.isPerformSubscribeAnimator = false;
                            UserFollowView$updateView$$inlined$apply$lambda$4.this.this$0.getFollowSuccessLayout().setVisibility(4);
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
    public final void updateUnscribeStatus() {
        getNotificationLayout().setVisibility(0);
        getNotificationContentLayout().setVisibility(0);
        getNotificationProgress().setVisibility(4);
        getFollowLayout().setVisibility(8);
        getFollowSuccessLayout().setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setStatus(int i) {
        this.status = i;
        updateView(true);
    }

    private final boolean isGlobalUser() {
        User user = this.user;
        return user != null && user.ndcId == 0;
    }

    @Override // com.narvii.user.follow.IUserFollow
    public void follow(User user) {
        Intrinsics.checkParameterIsNotNull(user, "user");
        setStatus(1);
        UserFollowDelegate userFollowDelegate = this.followDelegate;
        if (userFollowDelegate != null) {
            userFollowDelegate.follow(user);
        }
    }

    @Override // com.narvii.user.follow.IUserFollow
    public boolean isSendingFollow(User user) {
        UserFollowDelegate userFollowDelegate = this.followDelegate;
        if (userFollowDelegate != null) {
            return userFollowDelegate.isSendingFollow(user);
        }
        return false;
    }

    @Override // com.narvii.user.follow.IUserFollow
    public void followSuccess() {
        User user = this.user;
        if (user != null) {
            user.followingStatus |= 1;
            bindUser(user, true);
        }
    }

    @Override // com.narvii.user.follow.IUserFollow
    public void followFail() {
        setStatus(0);
    }

    private final <T extends View> Lazy<T> bind(final int i) {
        return LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, new Function0<T>() { // from class: com.narvii.user.follow.UserFollowView.bind.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Incorrect return type in method signature: ()TT; */
            @Override // kotlin.jvm.functions.Function0
            public final View invoke() {
                return UserFollowView.this.findViewById(i);
            }
        });
    }
}
