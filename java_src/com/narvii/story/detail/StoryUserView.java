package com.narvii.story.detail;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AnticipateInterpolator;
import android.view.animation.AnticipateOvershootInterpolator;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.community.CommunityHelper;
import com.narvii.config.ConfigService;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.logging.ObjectType;
import com.narvii.model.Blog;
import com.narvii.model.User;
import com.narvii.paging.PageView;
import com.narvii.paging.PageViewUtils;
import com.narvii.story.widgets.StoryGuideViewDoubleTap;
import com.narvii.user.follow.FollowNotificationHelper;
import com.narvii.user.follow.IUserFollow;
import com.narvii.user.follow.UserFollowDelegate;
import com.narvii.user.profile.UserProfileFragment;
import com.narvii.util.NVToast;
import com.narvii.util.StoryUtils;
import com.narvii.util.ToolTipHelper;
import com.narvii.util.Tooltip;
import com.narvii.util.Utils;
import com.narvii.widget.UserAvatarLayout;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* loaded from: classes3.dex */
public class StoryUserView extends FrameLayout implements View.OnClickListener, IUserFollow {
    public static final String GUIDE_FOLLOW_KEY = "has_story_guide_follow_shown";
    public static boolean isTooltipShown;
    private int alignWidth;
    private CommunityHelper communityHelper;
    private View fakeUserAvatarView;
    private boolean isPaddingAnimation;
    private boolean isPaddingFollow;
    private boolean isPaddingSubscribe;
    private boolean isPreview;
    private StoryUserViewNotificationBackgroundView notificationBar;
    private View notificationContainer;
    private Runnable notificationDismiss;
    private View notificationHint;
    private View notificationIcon;
    private View notificationSuccessIcon;
    private NVContext nvContext;
    private final Set<Animator> runningAnimators;
    private SharedPreferences sharedPreferences;
    private Blog story;
    private FollowNotificationHelper subscribeHelper;
    private int targetUserAvatarLeft;
    private int targetUserTranslationPadding;
    private ToolTipHelper toolTipHelper;
    private View userAvatarContainer;
    private UserAvatarLayout userAvatarView;
    private View userFollowButton;
    private View userFollowChecked;
    private View userFollowContainer;
    private UserFollowDelegate userFollowDelegate;

    @Override // com.narvii.user.follow.IUserFollow
    public void followFail() {
    }

    @Override // com.narvii.user.follow.IUserFollow
    public boolean needUpdateUserAfterFollow() {
        return true;
    }

    @Override // com.narvii.user.follow.IUserFollow
    public void onFollowStatusUpdated() {
    }

    public StoryUserView(Context context) {
        super(context);
        this.targetUserAvatarLeft = 0;
        this.runningAnimators = new HashSet();
        this.notificationDismiss = new Runnable() { // from class: com.narvii.story.detail.StoryUserView.2
            @Override // java.lang.Runnable
            public void run() {
                StoryUserView.this.reverseAnimation();
            }
        };
        init();
    }

    public StoryUserView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.targetUserAvatarLeft = 0;
        this.runningAnimators = new HashSet();
        this.notificationDismiss = new Runnable() { // from class: com.narvii.story.detail.StoryUserView.2
            @Override // java.lang.Runnable
            public void run() {
                StoryUserView.this.reverseAnimation();
            }
        };
        init();
    }

    public StoryUserView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.targetUserAvatarLeft = 0;
        this.runningAnimators = new HashSet();
        this.notificationDismiss = new Runnable() { // from class: com.narvii.story.detail.StoryUserView.2
            @Override // java.lang.Runnable
            public void run() {
                StoryUserView.this.reverseAnimation();
            }
        };
        init();
    }

    private void init() {
        this.nvContext = Utils.getNVContext(getContext());
        this.userFollowDelegate = new UserFollowDelegate(this, this.nvContext);
        this.subscribeHelper = new FollowNotificationHelper(this.nvContext);
        this.subscribeHelper.setSuccess(new Function1() { // from class: com.narvii.story.detail.-$$Lambda$StoryUserView$tqkLQvlJJKZeGpAPirPe8EZMSXo
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f$0.lambda$init$0$StoryUserView((Boolean) obj);
            }
        });
        this.subscribeHelper.setLoading(new Function0() { // from class: com.narvii.story.detail.-$$Lambda$StoryUserView$Z9hX6RiQlsP1gPDa5ABvf2ruUzY
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.f$0.lambda$init$1$StoryUserView();
            }
        });
        this.communityHelper = new CommunityHelper(this.nvContext) { // from class: com.narvii.story.detail.StoryUserView.1
            @Override // com.narvii.community.CommunityHelper
            protected void startActivity(Intent intent) {
                StoryUserView.this.startActivity(intent);
            }

            @Override // com.narvii.community.CommunityHelper
            protected void onCancelButtonPreClick(String str) {
                super.onCancelButtonPreClick(str);
                if (StoryUserView.this.story == null) {
                    return;
                }
                StoryUserView.this.getLogEventClickBuilder().area(str).actSemantic(ActSemantic.cancelJoin).objectType(ObjectType.community).objectSubType(null).objectId(StoryUserView.this.story.ndcId).send();
            }

            @Override // com.narvii.community.CommunityHelper
            protected void onJoinButtonPreClick(String str) {
                super.onJoinButtonPreClick(str);
                if (StoryUserView.this.story == null) {
                    return;
                }
                StoryUserView.this.getLogEventClickBuilder().area(str).actSemantic(ActSemantic.checkDetail).objectType(ObjectType.community).objectSubType(null).objectId(StoryUserView.this.story.ndcId).send();
            }
        };
        this.toolTipHelper = new ToolTipHelper();
        this.sharedPreferences = (SharedPreferences) this.nvContext.getService("prefs");
    }

    public /* synthetic */ Unit lambda$init$0$StoryUserView(Boolean bool) {
        this.story.author.addFollowingStatus(1);
        this.story.author.notificationSubscriptionStatus = 1;
        showSuccessNotificationAndReverse();
        return null;
    }

    public /* synthetic */ Unit lambda$init$1$StoryUserView() {
        this.isPaddingSubscribe = true;
        return null;
    }

    public void setStoryInfo(Blog blog, boolean z) {
        Blog blog2 = this.story;
        this.story = blog;
        this.isPreview = z;
        if (this.isPaddingAnimation && Utils.isEqualsNotNull(blog, blog2)) {
            return;
        }
        updateView();
    }

    @Override // android.view.View
    protected void onFinishInflate() throws Resources.NotFoundException {
        super.onFinishInflate();
        this.notificationBar = (StoryUserViewNotificationBackgroundView) findViewById(R.id.notification_bar);
        this.userAvatarContainer = findViewById(R.id.user_view);
        this.userAvatarView = (UserAvatarLayout) findViewById(R.id.user_avatar_layout);
        this.userFollowContainer = findViewById(R.id.user_follow_container);
        this.userFollowButton = findViewById(R.id.user_follow);
        this.userFollowChecked = findViewById(R.id.user_follow_checked);
        this.notificationContainer = findViewById(R.id.notification_container);
        this.fakeUserAvatarView = findViewById(R.id.fake_user_view);
        this.notificationHint = findViewById(R.id.notification_hint);
        this.notificationIcon = findViewById(R.id.notification_icon);
        this.notificationSuccessIcon = findViewById(R.id.notification_success_icon);
        this.notificationBar.setOnClickListener(this);
        this.userAvatarView.setOnClickListener(this);
        this.userFollowButton.setOnClickListener(this);
        this.notificationIcon.setOnClickListener(this);
        resetAnimation();
    }

    public void setAlignWidth(int i) {
        this.alignWidth = i;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.isPreview) {
            NVToast.makeText(getContext(), R.string.this_is_preview, 0).show();
        }
        switch (view.getId()) {
            case R.id.notification_bar /* 2131298187 */:
                reverseAnimation();
                break;
            case R.id.notification_icon /* 2131298193 */:
                if (!this.isPaddingSubscribe) {
                    if (this.story != null) {
                        getLogEventClickBuilder().area("AlertIcon").actSemantic(ActSemantic.turnOnAlert).object(this.story.author).send();
                    }
                    this.subscribeHelper.subscribe(this.story.author, true);
                    break;
                }
                break;
            case R.id.user_avatar_layout /* 2131299344 */:
                if (this.story != null) {
                    getLogEventClickBuilder().area("UserIcon").actSemantic(ActSemantic.checkDetail).object(this.story.author).toThirdParty().send();
                }
                if (this.communityHelper.checkCommunityJoined(this.story.ndcId, "UserIcon")) {
                    Intent intent = UserProfileFragment.intent(this.nvContext, this.story.author);
                    int i = this.story.ndcId;
                    if (i != -1) {
                        intent.putExtra("__communityId", i);
                    }
                    if (((ConfigService) this.nvContext.getService("config")).getCommunityId() == 0) {
                        intent.putExtra("__model", true);
                    }
                    startActivity(intent);
                    break;
                }
                break;
            case R.id.user_follow /* 2131299352 */:
                if (!this.isPaddingFollow) {
                    if (this.story != null) {
                        getLogEventClickBuilder().area("FollowIcon").actSemantic(ActSemantic.follow).object(this.story.author).send();
                    }
                    if (!Utils.shouldShowLoginPage(this.nvContext) && this.communityHelper.checkCommunityJoined(this.story.ndcId)) {
                        follow(this.story.author);
                        startFollowingAnimation();
                        break;
                    }
                }
                break;
        }
    }

    public void updateView() {
        Blog blog = this.story;
        if (blog == null) {
            return;
        }
        User user = blog.author;
        ((UserAvatarLayout) findViewById(R.id.user_avatar_layout)).setUser(user);
        if (user != null && !isMe(user) && (user.followingStatus & 1) == 0) {
            this.userFollowContainer.setVisibility(0);
        } else {
            this.userFollowContainer.setVisibility(8);
        }
        resetAnimation();
    }

    private boolean isMe(User user) {
        return Utils.isEqualsNotNull(((AccountService) this.nvContext.getService("account")).getUserId(), user.id());
    }

    public void showTooltip() {
        Blog blog;
        User user;
        if (!isTooltipShown) {
            isTooltipShown = this.sharedPreferences.getBoolean(GUIDE_FOLLOW_KEY, false);
        }
        if (isTooltipShown || (blog = this.story) == null || (user = blog.author) == null || Utils.isEqualsNotNull(((AccountService) this.nvContext.getService("account")).getUserId(), user.id()) || (user.followingStatus & 1) != 0 || !this.sharedPreferences.getBoolean(StoryGuideViewDoubleTap.KEY_HAS_GUIDE_SHOWN, false)) {
            return;
        }
        Utils.post(new Runnable() { // from class: com.narvii.story.detail.-$$Lambda$StoryUserView$1CNYw2z6ljrKd4XrCk2Rs7mvqMo
            @Override // java.lang.Runnable
            public final void run() throws Resources.NotFoundException {
                this.f$0.lambda$showTooltip$2$StoryUserView();
            }
        });
    }

    public /* synthetic */ void lambda$showTooltip$2$StoryUserView() throws Resources.NotFoundException {
        if (isTooltipShown || this.toolTipHelper.isTooltipShowing()) {
            return;
        }
        View view = this;
        for (int i = 10; i > 0 && !(view instanceof StoryInfoCover); i--) {
            Object parent = view.getParent();
            if (!(parent instanceof View)) {
                break;
            }
            view = (View) parent;
        }
        this.toolTipHelper.showToolTip(Tooltip.builder().anchorView(this.userAvatarView).textId(R.string.tap_to_follow).rootView((View) view.getParent()).indicatorUp(true).customTooltipBubbleLayout(R.layout.tooltip_story_follow_layout).background(Color.parseColor("#FFFFC700")).autoHide().build());
        isTooltipShown = true;
        this.sharedPreferences.edit().putBoolean(GUIDE_FOLLOW_KEY, true).apply();
    }

    private void hideToolTip() throws Resources.NotFoundException {
        if (this.toolTipHelper.isTooltipShowing()) {
            this.toolTipHelper.hideToolTip();
        }
    }

    private void resetAnimation() throws Resources.NotFoundException {
        this.isPaddingAnimation = false;
        this.isPaddingSubscribe = false;
        this.isPaddingFollow = false;
        HashSet<Animator> hashSet = new HashSet(this.runningAnimators);
        this.runningAnimators.clear();
        for (Animator animator : hashSet) {
            if (animator != null && animator.isStarted()) {
                animator.cancel();
            }
        }
        Utils.handler.removeCallbacks(this.notificationDismiss);
        this.userFollowButton.setScaleX(1.0f);
        this.userFollowButton.setScaleY(1.0f);
        this.userFollowButton.setAlpha(1.0f);
        this.userFollowChecked.setAlpha(0.0f);
        this.userFollowButton.setScaleX(1.0f);
        this.userFollowButton.setScaleY(1.0f);
        this.userAvatarContainer.setTranslationX(0.0f);
        this.notificationHint.setTranslationX(this.targetUserTranslationPadding);
        this.notificationBar.setTranslationX(this.targetUserTranslationPadding);
        this.notificationIcon.setAlpha(0.0f);
        this.notificationIcon.setScaleX(1.0f);
        this.notificationIcon.setScaleY(1.0f);
        this.notificationIcon.setRotation(0.0f);
        this.notificationSuccessIcon.setScaleX(0.3f);
        this.notificationSuccessIcon.setScaleY(0.3f);
        this.notificationSuccessIcon.setAlpha(0.0f);
        this.notificationSuccessIcon.setTranslationX(0.0f);
        this.notificationBar.setAnimatorProgress(0.0f);
        hideToolTip();
    }

    private void startFollowingAnimation() {
        User user;
        this.isPaddingAnimation = true;
        AnimatorSet animatorSet = new AnimatorSet();
        Blog blog = this.story;
        if ((blog == null || (user = blog.author) == null || !user.isGlobal) ? false : true) {
            Animator followDismissAnimator = getFollowDismissAnimator();
            Animator translationAnimator = getTranslationAnimator();
            Animator notificationIconAnimator = getNotificationIconAnimator();
            animatorSet.play(followDismissAnimator);
            animatorSet.play(translationAnimator).after(followDismissAnimator);
            notificationIconAnimator.setStartDelay(280L);
            animatorSet.play(notificationIconAnimator).with(translationAnimator);
        } else {
            animatorSet.play(getFollowDismissAnimator());
        }
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.narvii.story.detail.StoryUserView.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                Utils.handler.removeCallbacks(StoryUserView.this.notificationDismiss);
                Utils.postDelayed(StoryUserView.this.notificationDismiss, DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS);
                StoryUserView.this.isPaddingFollow = false;
            }
        });
        animatorSet.start();
        this.runningAnimators.add(animatorSet);
    }

    private void startFollowingFinishedAnimation() {
        User user;
        Blog blog = this.story;
        if ((blog == null || (user = blog.author) == null || !user.isGlobal) ? false : true) {
            return;
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(getCheckedShownAnimator());
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.narvii.story.detail.StoryUserView.4
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                StoryUserView.this.isPaddingAnimation = false;
                StoryUserView.this.updateView();
            }
        });
        animatorSet.start();
    }

    private void showSuccessNotificationAndReverse() {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playSequentially(getNotificationSuccessAnimator(), getTranslationDismissAnimator());
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.narvii.story.detail.StoryUserView.5
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                Utils.handler.removeCallbacks(StoryUserView.this.notificationDismiss);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                StoryUserView.this.isPaddingSubscribe = false;
                StoryUserView.this.updateView();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                StoryUserView.this.isPaddingSubscribe = false;
                StoryUserView.this.updateView();
            }
        });
        animatorSet.start();
        this.runningAnimators.add(animatorSet);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reverseAnimation() {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(getTranslationDismissAnimator());
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.narvii.story.detail.StoryUserView.6
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                Utils.handler.removeCallbacks(StoryUserView.this.notificationDismiss);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                StoryUserView.this.updateView();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                StoryUserView.this.updateView();
            }
        });
        animatorSet.start();
        this.runningAnimators.add(animatorSet);
    }

    private Animator getFollowDismissAnimator() {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(createAnimatorSequence(this.userFollowButton, "scaleX", new float[]{1.4f, 0.0f}, new long[]{80, 200}), createAnimatorSequence(this.userFollowButton, "scaleY", new float[]{1.4f, 0.0f}, new long[]{80, 200}), ObjectAnimator.ofFloat(this.userFollowButton, "alpha", 1.0f, 0.0f).setDuration(280L));
        return animatorSet;
    }

    private Animator getCheckedShownAnimator() {
        AnimatorSet animatorSet = new AnimatorSet();
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.userFollowChecked, "alpha", 0.0f, 1.0f).setDuration(760L);
        animatorSet.play(duration);
        Animator animatorCreateAnimatorSequence = createAnimatorSequence(this.userFollowChecked, "scaleX", new float[]{1.2f, 0.85f, 1.05f, 0.92f, 1.02f, 1.0f}, new long[]{80, 200, 200, 200, 240, 280});
        Animator animatorCreateAnimatorSequence2 = createAnimatorSequence(this.userFollowChecked, "scaleY", new float[]{1.2f, 0.85f, 1.05f, 0.92f, 1.02f, 1.0f}, new long[]{80, 200, 200, 200, 240, 280});
        AnimatorSet animatorSet2 = new AnimatorSet();
        animatorSet2.playTogether(animatorCreateAnimatorSequence, animatorCreateAnimatorSequence2);
        animatorSet2.setStartDelay(360L);
        animatorSet.play(animatorSet2).with(duration);
        AnimatorSet animatorSet3 = new AnimatorSet();
        animatorSet3.playTogether(ObjectAnimator.ofFloat(this.userFollowChecked, "alpha", 1.0f, 0.0f).setDuration(400L), createAnimatorSequence(this.userFollowChecked, "scaleX", new float[]{1.4f, 1.0f}, new long[]{80, 200}), createAnimatorSequence(this.userFollowChecked, "scaleY", new float[]{1.4f, 1.0f}, new long[]{80, 200}));
        animatorSet3.setStartDelay(640L);
        AnimatorSet animatorSet4 = new AnimatorSet();
        animatorSet4.playSequentially(animatorSet, animatorSet3);
        return animatorSet4;
    }

    private Animator getTranslationAnimator() {
        AnimatorSet animatorSet = new AnimatorSet();
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.userAvatarContainer, "translationX", 0.0f, this.targetUserAvatarLeft - this.userAvatarContainer.getLeft()).setDuration(680L);
        duration.setInterpolator(new AnticipateOvershootInterpolator(0.8f));
        animatorSet.playTogether(duration, createAnimatorSequence(this.userAvatarContainer, "scaleX", new float[]{1.03f, 1.0f, 0.95f, 1.0f}, new long[]{80, 120, 360, 200}));
        AnimatorSet animatorSet2 = new AnimatorSet();
        ObjectAnimator duration2 = ObjectAnimator.ofFloat(this.notificationHint, "translationX", this.targetUserTranslationPadding, 0.0f).setDuration(440L);
        duration2.setInterpolator(new OvershootInterpolator(0.8f));
        ObjectAnimator duration3 = ObjectAnimator.ofFloat(this.notificationBar, "translationX", this.targetUserTranslationPadding, 0.0f).setDuration(560L);
        duration3.setInterpolator(new OvershootInterpolator(0.8f));
        animatorSet2.playTogether(duration2, duration3);
        animatorSet2.setStartDelay(280L);
        AnimatorSet animatorSet3 = new AnimatorSet();
        animatorSet3.playTogether(animatorSet, animatorSet2);
        return animatorSet3;
    }

    private Animator getTranslationDismissAnimator() {
        AnimatorSet animatorSet = new AnimatorSet();
        AnimatorSet animatorSet2 = new AnimatorSet();
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.userAvatarContainer, "translationX", 0.0f).setDuration(680L);
        duration.setStartDelay(80L);
        duration.setInterpolator(new AnticipateOvershootInterpolator(0.8f));
        animatorSet2.playTogether(createAnimatorSequence(this.userAvatarContainer, "scaleX", new float[]{0.95f, 1.0f, 1.03f, 1.0f}, new long[]{200, 360, 120, 80}), duration);
        animatorSet2.setStartDelay(80L);
        AnimatorSet animatorSet3 = new AnimatorSet();
        ObjectAnimator duration2 = ObjectAnimator.ofFloat(this.notificationHint, "translationX", this.targetUserTranslationPadding).setDuration(440L);
        duration2.setInterpolator(new AnticipateInterpolator(0.8f));
        duration2.setStartDelay(120L);
        ObjectAnimator duration3 = ObjectAnimator.ofFloat(this.notificationBar, "translationX", this.targetUserTranslationPadding).setDuration(560L);
        duration3.setInterpolator(new AnticipateInterpolator(0.8f));
        ObjectAnimator duration4 = ObjectAnimator.ofFloat(this.notificationSuccessIcon, "translationX", this.targetUserTranslationPadding).setDuration(560L);
        duration4.setInterpolator(new AnticipateInterpolator(0.8f));
        ObjectAnimator duration5 = ObjectAnimator.ofFloat(this.notificationIcon, "alpha", 0.0f).setDuration(240L);
        duration5.setStartDelay(320L);
        animatorSet3.playTogether(duration3, duration4, duration2, duration5);
        animatorSet.playTogether(animatorSet3, animatorSet2);
        return animatorSet;
    }

    private Animator getNotificationIconAnimator() {
        AnimatorSet animatorSet = new AnimatorSet();
        Animator animatorCreateAnimatorSequence = createAnimatorSequence(this.notificationIcon, "alpha", new float[]{1.0f, 1.0f, 0.8f, 1.0f}, new long[]{240, 640, 280, 280});
        Animator animatorCreateAnimatorSequence2 = createAnimatorSequence(this.notificationIcon, "rotation", new float[]{15.0f, -12.0f, 8.0f, -4.0f, 2.0f, 0.0f}, new long[]{120, 120, 160, 160, 160, 160});
        animatorCreateAnimatorSequence2.setStartDelay(880L);
        animatorSet.playTogether(animatorCreateAnimatorSequence, animatorCreateAnimatorSequence2);
        return animatorSet;
    }

    private Animator getNotificationSuccessAnimator() {
        AnimatorSet animatorSet = new AnimatorSet();
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.notificationIcon, "scaleX", 0.0f).setDuration(320L);
        ObjectAnimator duration2 = ObjectAnimator.ofFloat(this.notificationIcon, "scaleY", 0.0f).setDuration(320L);
        ObjectAnimator duration3 = ObjectAnimator.ofFloat(this.notificationIcon, "alpha", 0.0f).setDuration(160L);
        duration3.setStartDelay(120L);
        AnimatorSet animatorSet2 = new AnimatorSet();
        animatorSet2.playTogether(duration, duration2, duration3);
        animatorSet2.setInterpolator(new AnticipateInterpolator(2.0f));
        ObjectAnimator duration4 = ObjectAnimator.ofFloat(this.notificationSuccessIcon, "scaleX", 0.3f, 1.0f).setDuration(2240L);
        duration4.setInterpolator(new DampedInterpolator(5, 0.3f));
        ObjectAnimator duration5 = ObjectAnimator.ofFloat(this.notificationSuccessIcon, "scaleY", 0.3f, 1.0f).setDuration(2240L);
        duration5.setInterpolator(new DampedInterpolator(5, 0.3f));
        ObjectAnimator duration6 = ObjectAnimator.ofFloat(this.notificationSuccessIcon, "alpha", 1.0f).setDuration(240L);
        AnimatorSet animatorSet3 = new AnimatorSet();
        animatorSet3.playTogether(duration4, duration5, duration6);
        animatorSet3.setStartDelay(120L);
        ObjectAnimator duration7 = ObjectAnimator.ofFloat(this.notificationBar, "animatorProgress", 0.0f, 1.0f).setDuration(480L);
        duration7.setStartDelay(160L);
        duration7.setInterpolator(new AccelerateDecelerateInterpolator());
        animatorSet.playTogether(animatorSet2, animatorSet3, duration7);
        return animatorSet;
    }

    private Animator createAnimatorSequence(View view, String str, float[] fArr, long[] jArr) {
        AnimatorSet animatorSet = new AnimatorSet();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < fArr.length && i < jArr.length; i++) {
            arrayList.add(ObjectAnimator.ofFloat(view, str, fArr[i]).setDuration(jArr[i]));
        }
        animatorSet.playSequentially(arrayList);
        return animatorSet;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.notificationBar.measure(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth() * 2, 1073741824), View.MeasureSpec.makeMeasureSpec(this.notificationBar.getMeasuredHeight(), 1073741824));
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) throws Resources.NotFoundException {
        super.onLayout(z, i, i2, i3, i4);
        boolean zIsRtl = Utils.isRtl();
        int i5 = this.alignWidth;
        if (i5 > 0) {
            int measuredWidth = (zIsRtl ? i5 / 2 : getMeasuredWidth() - (this.alignWidth / 2)) - (this.userAvatarContainer.getMeasuredWidth() / 2);
            if (this.userAvatarContainer.getMeasuredWidth() + measuredWidth < i3) {
                View view = this.userAvatarContainer;
                view.layout(measuredWidth, view.getTop(), this.userAvatarContainer.getMeasuredWidth() + measuredWidth, this.userAvatarContainer.getBottom());
            }
        }
        this.targetUserAvatarLeft = this.fakeUserAvatarView.getLeft() + this.notificationContainer.getLeft();
        this.targetUserTranslationPadding = zIsRtl ? -getMeasuredWidth() : getMeasuredWidth();
        if (hasAnimatorRunning() || this.isPaddingAnimation) {
            return;
        }
        resetAnimation();
    }

    private boolean hasAnimatorRunning() {
        for (Animator animator : this.runningAnimators) {
            if (animator != null && animator.isStarted()) {
                return true;
            }
        }
        return false;
    }

    @Override // com.narvii.user.follow.IUserFollow
    public void follow(User user) {
        this.isPaddingFollow = true;
        this.userFollowDelegate.follow(user);
    }

    @Override // com.narvii.user.follow.IUserFollow
    public boolean isSendingFollow(User user) {
        return this.userFollowDelegate.isSendingFollow(user);
    }

    @Override // com.narvii.user.follow.IUserFollow
    public void followSuccess() throws Resources.NotFoundException {
        this.story.author.addFollowingStatus(1);
        startFollowingFinishedAnimation();
        hideToolTip();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public LogEvent.Builder getLogEventClickBuilder() {
        return StoryUtils.getLogEventClickBuilder(this, this.story, this.isPreview).area("UserIcon");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startActivity(Intent intent) {
        PageView pageViewParent = PageViewUtils.getPageViewParent(this);
        if (pageViewParent != null) {
            pageViewParent.startActivity(intent);
        } else {
            this.nvContext.startActivity(intent);
        }
    }
}
