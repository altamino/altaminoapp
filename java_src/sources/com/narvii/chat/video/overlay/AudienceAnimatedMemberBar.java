package com.narvii.chat.video.overlay;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.ColorDrawable;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.view.animation.OvershootInterpolator;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.narvii.amino.master.R;
import com.narvii.chat.signalling.ChannelUser;
import com.narvii.livelayer.ws.ClipLayout;
import com.narvii.model.User;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.util.CollectionUtils;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.widget.NVImageView;
import com.narvii.widget.UserAvatarLayout;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Random;

/* JADX INFO: loaded from: classes4.dex */
public class AudienceAnimatedMemberBar extends FrameLayout {
    public static final float PRESS_SCALE = 0.98f;
    static int shadowColor = 1610612736;
    public Runnable animEndRunnable;
    boolean animateLayoutChanges;
    boolean animating;
    ValueAnimator animator;
    int autoFitAvatarCountMax;
    boolean autoFitAvatarSize;
    int avatarCount;
    private int avatarShadowSize;
    public boolean avatarShown;
    int avatarSize;
    int barColor;
    public Runnable checkRunnable;
    private int currentMembersCount;
    private int defaultAvatarSize;
    public Animation dotFadeAnimation;
    public Animation dotFadeInAnimation;
    Animation fadeoutAnim;
    public TextView foldCountView;
    public View foldGreenOval;
    View halo;
    public Animation holoAnimation;
    public Animation holoAnimation2;
    public Runnable joinAnimRunnable;
    private ValueAnimator layoutAnimator;
    public final int mTouchSlop;
    ClipLayout mainLayout;
    int maxAvatarCount;
    private int maxWidth;
    int minAvatarCount;
    public Runnable nextRunnable;
    OnAvatarShownChangeListener onAvatarShownChangeListener;
    OnMemberCountChangedListener onMemberCountChangedListener;
    int onlineText;
    View onlineTextLayout;
    int onlineTextOne;
    TextView onlineTextView;
    float overlapRatio;
    Random random;
    UserAvatarLayout recentAvatar;
    View recentAvatarLayout;
    boolean showFadeAnimation;
    boolean showMore;
    boolean showRightCorner;
    boolean showShadow;
    int textMarginEnd;
    Animation userJoinedAnim;
    int userJoinedText;
    View userJoinedView;
    LinkedList<User> userList;
    LinkedList<User> userQueue;

    /* JADX INFO: renamed from: com.narvii.chat.video.overlay.AudienceAnimatedMemberBar$4, reason: invalid class name */
    class AnonymousClass4 implements Runnable {
        final /* synthetic */ CommunityConfigHelper val$communityConfigHelper;
        final /* synthetic */ User val$user;

        AnonymousClass4(User user, CommunityConfigHelper communityConfigHelper) {
            this.val$user = user;
            this.val$communityConfigHelper = communityConfigHelper;
        }

        @Override // java.lang.Runnable
        public void run() {
            AudienceAnimatedMemberBar.this.userQueue.remove(this.val$user);
            AudienceAnimatedMemberBar.this.addUserIntoList(this.val$user);
            AudienceAnimatedMemberBar.this.animEndRunnable = new Runnable() { // from class: com.narvii.chat.video.overlay.AudienceAnimatedMemberBar.4.1
                @Override // java.lang.Runnable
                public void run() {
                    View viewFindViewById = AudienceAnimatedMemberBar.this.userJoinedView.findViewById(R.id.user_came);
                    if (viewFindViewById != null) {
                        AudienceAnimatedMemberBar audienceAnimatedMemberBar = AudienceAnimatedMemberBar.this;
                        audienceAnimatedMemberBar.fadeoutAnim = AnimationUtils.loadAnimation(audienceAnimatedMemberBar.getContext(), R.anim.fade_out);
                        AudienceAnimatedMemberBar.this.fadeoutAnim.setFillAfter(true);
                        AudienceAnimatedMemberBar.this.fadeoutAnim.setDuration(150L);
                        AudienceAnimatedMemberBar.startAnimation(viewFindViewById, AudienceAnimatedMemberBar.this.fadeoutAnim, null);
                    }
                    View viewFindViewById2 = AudienceAnimatedMemberBar.this.findViewById(R.id.live_layer_halo);
                    if (viewFindViewById2 != null) {
                        viewFindViewById2.setBackgroundResource((AnonymousClass4.this.val$user.isSubscribeMemberShip() && AnonymousClass4.this.val$communityConfigHelper.isPremiumFeatureEnabled()) ? R.drawable.live_layer_halo_amino_plus : R.drawable.live_layer_halo);
                        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
                        alphaAnimation.setInterpolator(new Interpolator() { // from class: com.narvii.chat.video.overlay.AudienceAnimatedMemberBar.4.1.1
                            @Override // android.animation.TimeInterpolator
                            public float getInterpolation(float f) {
                                return f < 0.15f ? (f / 0.15f) * 0.9f : (1.0f - ((f - 0.15f) / 0.85f)) * 0.9f;
                            }
                        });
                        alphaAnimation.setDuration(2000L);
                        ScaleAnimation scaleAnimation = new ScaleAnimation(1.0f, 1.24f, 1.0f, 1.24f, 1, 0.5f, 1, 0.5f);
                        scaleAnimation.setInterpolator(new Interpolator() { // from class: com.narvii.chat.video.overlay.AudienceAnimatedMemberBar.4.1.2
                            @Override // android.animation.TimeInterpolator
                            public float getInterpolation(float f) {
                                if (f >= 0.2f) {
                                    return 0.0f;
                                }
                                float f6 = (f / 0.2f) - 0.5f;
                                return 1.0f - ((f6 * f6) * 4.0f);
                            }
                        });
                        scaleAnimation.setDuration(2000L);
                        AnimationSet animationSet = new AnimationSet(false);
                        animationSet.addAnimation(alphaAnimation);
                        animationSet.addAnimation(scaleAnimation);
                        AudienceAnimatedMemberBar.this.holoAnimation = animationSet;
                        AudienceAnimatedMemberBar.startAnimation(viewFindViewById2, animationSet, null);
                    }
                    View viewFindViewById3 = AudienceAnimatedMemberBar.this.userJoinedView.findViewById(R.id.user_avatar_layout);
                    ScaleAnimation scaleAnimation2 = new ScaleAnimation(1.0f, 1.2f, 1.0f, 1.2f, 1, 0.5f, 1, 0.5f);
                    scaleAnimation2.setInterpolator(new Interpolator() { // from class: com.narvii.chat.video.overlay.AudienceAnimatedMemberBar.4.1.3
                        @Override // android.animation.TimeInterpolator
                        public float getInterpolation(float f) {
                            if (f >= 1.0f) {
                                return 0.0f;
                            }
                            float f6 = (f / 1.0f) - 0.5f;
                            return 1.0f - ((f6 * f6) * 4.0f);
                        }
                    });
                    scaleAnimation2.setDuration(400L);
                    AudienceAnimatedMemberBar.this.holoAnimation2 = scaleAnimation2;
                    AudienceAnimatedMemberBar.startAnimation(viewFindViewById3, scaleAnimation2, new Animation.AnimationListener() { // from class: com.narvii.chat.video.overlay.AudienceAnimatedMemberBar.4.1.4
                        @Override // android.view.animation.Animation.AnimationListener
                        public void onAnimationRepeat(Animation animation) {
                        }

                        @Override // android.view.animation.Animation.AnimationListener
                        public void onAnimationStart(Animation animation) {
                        }

                        @Override // android.view.animation.Animation.AnimationListener
                        public void onAnimationEnd(Animation animation) {
                            AudienceAnimatedMemberBar audienceAnimatedMemberBar2 = AudienceAnimatedMemberBar.this;
                            audienceAnimatedMemberBar2.removeView(audienceAnimatedMemberBar2.userJoinedView);
                        }
                    });
                    AudienceAnimatedMemberBar audienceAnimatedMemberBar2 = AudienceAnimatedMemberBar.this;
                    final boolean z6 = audienceAnimatedMemberBar2.avatarCount < audienceAnimatedMemberBar2.maxAvatarCount;
                    audienceAnimatedMemberBar2.currentMembersCount++;
                    AudienceAnimatedMemberBar audienceAnimatedMemberBar3 = AudienceAnimatedMemberBar.this;
                    audienceAnimatedMemberBar3.onMembersCountChanged(audienceAnimatedMemberBar3.currentMembersCount - 1);
                    AnonymousClass4 anonymousClass4 = AnonymousClass4.this;
                    View avatarView = AudienceAnimatedMemberBar.this.getAvatarView(anonymousClass4.val$user);
                    AudienceAnimatedMemberBar audienceAnimatedMemberBar4 = AudienceAnimatedMemberBar.this;
                    audienceAnimatedMemberBar4.mainLayout.addView(avatarView, audienceAnimatedMemberBar4.avatarCount + 1);
                    AnonymousClass4 anonymousClass5 = AnonymousClass4.this;
                    AudienceAnimatedMemberBar audienceAnimatedMemberBar5 = AudienceAnimatedMemberBar.this;
                    audienceAnimatedMemberBar5.setUserAvatarView(audienceAnimatedMemberBar5.recentAvatar, anonymousClass5.val$user);
                    AudienceAnimatedMemberBar audienceAnimatedMemberBar6 = AudienceAnimatedMemberBar.this;
                    audienceAnimatedMemberBar6.avatarCount++;
                    final int i10 = (int) (audienceAnimatedMemberBar6.avatarSize * (1.0f - audienceAnimatedMemberBar6.overlapRatio));
                    if (audienceAnimatedMemberBar6.layoutAnimator != null && AudienceAnimatedMemberBar.this.layoutAnimator.isRunning()) {
                        AudienceAnimatedMemberBar.this.layoutAnimator.end();
                    }
                    AudienceAnimatedMemberBar.this.layoutAnimator = ValueAnimator.ofInt(0, i10);
                    AudienceAnimatedMemberBar.this.layoutAnimator.setDuration(200L);
                    AudienceAnimatedMemberBar.this.layoutAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.chat.video.overlay.AudienceAnimatedMemberBar.4.1.5
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public void onAnimationUpdate(ValueAnimator valueAnimator) {
                            AudienceAnimatedMemberBar audienceAnimatedMemberBar7;
                            int i11;
                            int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                            int i12 = 0;
                            int i13 = 0;
                            while (true) {
                                audienceAnimatedMemberBar7 = AudienceAnimatedMemberBar.this;
                                i11 = audienceAnimatedMemberBar7.avatarCount;
                                if (i12 >= i11 - 1) {
                                    break;
                                }
                                View childAt = audienceAnimatedMemberBar7.mainLayout.getChildAt((i11 - 1) - i12);
                                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                                float f = iIntValue;
                                AudienceAnimatedMemberBar audienceAnimatedMemberBar8 = AudienceAnimatedMemberBar.this;
                                float f6 = 1.0f;
                                ViewUtils.setMarginStart(layoutParams, (int) ((audienceAnimatedMemberBar8.avatarSize * (1.0f - audienceAnimatedMemberBar8.overlapRatio) * i13) + f));
                                childAt.setLayoutParams(layoutParams);
                                i13++;
                                if (!z6 && i12 == AudienceAnimatedMemberBar.this.avatarCount - 2) {
                                    int i14 = i10;
                                    if (f >= i14 * 0.3f) {
                                        f6 = (i14 - iIntValue) / (i14 * 0.7f);
                                    }
                                    childAt.setAlpha(f6);
                                }
                                i12++;
                            }
                            if (i11 > 0) {
                                try {
                                    UserAvatarLayout userAvatarLayout = (UserAvatarLayout) audienceAnimatedMemberBar7.mainLayout.getChildAt(i11 - 1).findViewById(R.id.user_avatar_layout);
                                    if (userAvatarLayout != null) {
                                        userAvatarLayout.setAvatarShadow(AudienceAnimatedMemberBar.this.avatarShadowSize, AudienceAnimatedMemberBar.shadowColor);
                                    }
                                } catch (Exception unused) {
                                }
                            }
                            if (z6) {
                                ViewGroup.LayoutParams layoutParams2 = AudienceAnimatedMemberBar.this.onlineTextLayout.getLayoutParams();
                                int i15 = i10;
                                AudienceAnimatedMemberBar audienceAnimatedMemberBar9 = AudienceAnimatedMemberBar.this;
                                int i16 = iIntValue + (i15 * (audienceAnimatedMemberBar9.avatarCount - 2));
                                int i17 = audienceAnimatedMemberBar9.avatarSize;
                                ViewUtils.setMarginStart(layoutParams2, (i16 + i17) - (i17 / 2));
                                AudienceAnimatedMemberBar.this.onlineTextLayout.setLayoutParams(layoutParams2);
                            }
                        }
                    });
                    AudienceAnimatedMemberBar.this.layoutAnimator.addListener(new Animator.AnimatorListener() { // from class: com.narvii.chat.video.overlay.AudienceAnimatedMemberBar.4.1.6
                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationCancel(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationRepeat(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            AudienceAnimatedMemberBar.this.layoutAnimator = null;
                            if (!z6) {
                                AudienceAnimatedMemberBar.this.mainLayout.removeViewAt(1);
                                AudienceAnimatedMemberBar.this.avatarCount--;
                            }
                            AudienceAnimatedMemberBar.this.relayout();
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationStart(Animator animator) {
                            AudienceAnimatedMemberBar.this.mainLayout.setShouldClip(false);
                        }
                    });
                    AudienceAnimatedMemberBar.this.layoutAnimator.start();
                    Utils.handler.removeCallbacks(AudienceAnimatedMemberBar.this.nextRunnable);
                    AudienceAnimatedMemberBar audienceAnimatedMemberBar7 = AudienceAnimatedMemberBar.this;
                    Utils.postDelayed(audienceAnimatedMemberBar7.nextRunnable, audienceAnimatedMemberBar7.getRandomDelayTime());
                    AudienceAnimatedMemberBar.this.animEndRunnable = null;
                }
            };
            Animation.AnimationListener animationListener = new Animation.AnimationListener() { // from class: com.narvii.chat.video.overlay.AudienceAnimatedMemberBar.4.2
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    Utils.handler.postDelayed(AudienceAnimatedMemberBar.this.animEndRunnable, 800L);
                }
            };
            if (Utils.isRtl()) {
                AudienceAnimatedMemberBar.this.userJoinedAnim = new TranslateAnimation(-Utils.getScreenWidth(AudienceAnimatedMemberBar.this.getContext()), 0.0f, 0.0f, 0.0f);
            } else {
                AudienceAnimatedMemberBar.this.userJoinedAnim = new TranslateAnimation(Utils.getScreenWidth(AudienceAnimatedMemberBar.this.getContext()), 0.0f, 0.0f, 0.0f);
            }
            AudienceAnimatedMemberBar.this.userJoinedAnim.setInterpolator(new OvershootInterpolator(0.7f));
            AudienceAnimatedMemberBar.this.userJoinedAnim.setDuration(300L);
            AudienceAnimatedMemberBar.this.userJoinedView.setVisibility(0);
            AudienceAnimatedMemberBar audienceAnimatedMemberBar = AudienceAnimatedMemberBar.this;
            AudienceAnimatedMemberBar.startAnimation(audienceAnimatedMemberBar.userJoinedView, audienceAnimatedMemberBar.userJoinedAnim, animationListener);
        }
    }

    public interface OnAvatarShownChangeListener {
        void onAvatarShownChanged(boolean z6);
    }

    interface OnMemberCountChangedListener {
        void onMemberCountChanged(int i10);
    }

    private void cancelAnimation(boolean z6) {
        this.animating = false;
        Animation animation = this.userJoinedAnim;
        if (animation != null) {
            animation.setAnimationListener(null);
            this.userJoinedAnim.cancel();
        }
        Animation animation2 = this.dotFadeAnimation;
        if (animation2 != null) {
            animation2.cancel();
        }
        View view = this.userJoinedView;
        if (view != null) {
            view.clearAnimation();
            removeView(this.userJoinedView);
        }
        ValueAnimator valueAnimator = this.animator;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.animator.end();
        }
        ValueAnimator valueAnimator2 = this.layoutAnimator;
        if (valueAnimator2 != null && valueAnimator2.isRunning()) {
            this.layoutAnimator.end();
        }
        Handler handler = Utils.handler;
        handler.removeCallbacks(this.joinAnimRunnable);
        handler.removeCallbacks(this.checkRunnable);
        handler.removeCallbacks(this.nextRunnable);
        Runnable runnable = this.animEndRunnable;
        if (runnable != null) {
            handler.removeCallbacks(runnable);
            if (z6) {
                this.animEndRunnable.run();
            }
            this.animEndRunnable = null;
        }
        handler.removeCallbacks(this.nextRunnable);
        ValueAnimator valueAnimator3 = this.layoutAnimator;
        if (valueAnimator3 != null && valueAnimator3.isRunning()) {
            this.layoutAnimator.end();
        }
        Animation animation3 = this.holoAnimation;
        if (animation3 != null) {
            animation3.cancel();
        }
        Animation animation4 = this.holoAnimation2;
        if (animation4 != null) {
            animation4.cancel();
        }
        View viewFindViewById = findViewById(R.id.live_layer_halo);
        if (viewFindViewById != null) {
            viewFindViewById.clearAnimation();
        }
        Animation animation5 = this.dotFadeInAnimation;
        if (animation5 != null) {
            animation5.cancel();
        }
        View view2 = this.foldGreenOval;
        if (view2 != null) {
            view2.clearAnimation();
            this.foldGreenOval.setAlpha(1.0f);
        }
    }

    private View getAvatarView() {
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.live_layer_online_member_avatar, (ViewGroup) this, false);
        UserAvatarLayout userAvatarLayout = (UserAvatarLayout) viewInflate.findViewById(R.id.user_avatar_layout);
        ViewGroup.LayoutParams layoutParams = userAvatarLayout.getLayoutParams();
        int i10 = this.avatarSize;
        layoutParams.width = i10;
        layoutParams.height = i10;
        userAvatarLayout.setLayoutParams(layoutParams);
        if (!this.showShadow) {
            userAvatarLayout.setAvatarShadow(0, shadowColor);
        }
        return viewInflate;
    }

    private void resetShadowColor(int i10) {
        int i11;
        UserAvatarLayout userAvatarLayout;
        int i12 = 0;
        while (true) {
            i11 = this.avatarCount;
            if (i12 >= i11 - 1) {
                break;
            }
            UserAvatarLayout userAvatarLayout2 = (UserAvatarLayout) this.mainLayout.getChildAt((i11 - 1) - i12).findViewById(R.id.user_avatar_layout);
            if (userAvatarLayout2 != null) {
                userAvatarLayout2.setAvatarShadow(this.avatarShadowSize, i10);
            }
            i12++;
        }
        if (i11 <= 0 || (userAvatarLayout = (UserAvatarLayout) this.mainLayout.getChildAt(i11).findViewById(R.id.user_avatar_layout)) == null) {
            return;
        }
        userAvatarLayout.setAvatarShadow(this.avatarShadowSize, 0);
    }

    private void setUserList(List<User> list) {
        setUserList(list, this.currentMembersCount);
    }

    public boolean isAvatarShown() {
        return this.avatarShown;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.avatarShown;
    }

    public void onUserJoined(List<User> list, int i10) {
        int i11 = this.avatarCount;
        int i12 = this.minAvatarCount;
        if (i11 >= i12 && i10 >= i12) {
            Iterator<User> it = list.iterator();
            while (it.hasNext()) {
                addUsersIntoQueue(it.next());
            }
            Utils.post(this.checkRunnable);
            return;
        }
        this.userQueue.clear();
        Iterator<User> it2 = list.iterator();
        while (it2.hasNext()) {
            addUserIntoList(it2.next());
        }
        setUserList(this.userList, i10);
    }

    public void setOnAvatarShownChangeListener(OnAvatarShownChangeListener onAvatarShownChangeListener) {
        this.onAvatarShownChangeListener = onAvatarShownChangeListener;
    }

    public void setOnMemberCountChangedListener(OnMemberCountChangedListener onMemberCountChangedListener) {
        this.onMemberCountChangedListener = onMemberCountChangedListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addUserIntoList(User user) {
        this.userList.addFirst(user);
    }

    private void addUsersIntoQueue(User user) {
        this.userQueue.addLast(user);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkUserJoined() {
        if (CollectionUtils.isEmpty(this.userQueue) || this.animating) {
            return;
        }
        onUserJoined(this.userQueue.get(0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getRandomDelayTime() {
        return this.random.nextInt(1000) + 2000;
    }

    private void onAvatarSizeChanged() {
        ClipLayout clipLayout = this.mainLayout;
        if (clipLayout != null) {
            clipLayout.setAvatarSize(this.avatarSize);
        }
        UserAvatarLayout userAvatarLayout = this.recentAvatar;
        if (userAvatarLayout != null) {
            setAvatarSize(userAvatarLayout);
        }
        View view = this.onlineTextLayout;
        if (view != null) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            int i10 = layoutParams.height;
            int i11 = (this.avatarSize * 5) / 6;
            if (i10 != i11) {
                layoutParams.height = i11;
                this.onlineTextLayout.setLayoutParams(layoutParams);
            }
        }
        View view2 = this.halo;
        if (view2 != null) {
            ViewGroup.LayoutParams layoutParams2 = view2.getLayoutParams();
            int iDpToPx = (int) Utils.dpToPx(getContext(), 6.0f);
            int i12 = this.avatarSize;
            layoutParams2.width = i12 + iDpToPx;
            layoutParams2.height = i12 + iDpToPx;
            this.halo.setLayoutParams(layoutParams2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onMembersCountChanged(int i10) {
        ValueAnimator valueAnimator = this.animator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        int i11 = this.currentMembersCount;
        if (i10 != i11) {
            ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(i10, i11);
            this.animator = valueAnimatorOfInt;
            valueAnimatorOfInt.setDuration(Math.min(800, Math.abs(this.currentMembersCount - i10) * 100));
            this.animator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.chat.video.overlay.AudienceAnimatedMemberBar.3
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    int iIntValue = ((Integer) valueAnimator2.getAnimatedValue()).intValue();
                    AudienceAnimatedMemberBar.this.updateMemberCount(iIntValue);
                    OnMemberCountChangedListener onMemberCountChangedListener = AudienceAnimatedMemberBar.this.onMemberCountChangedListener;
                    if (onMemberCountChangedListener != null) {
                        onMemberCountChangedListener.onMemberCountChanged(iIntValue);
                    }
                }
            });
            this.animator.start();
        } else {
            updateMemberCount(i11);
        }
        resetMoreLayer();
    }

    private void resetMoreLayer() {
        View childAt;
        if (!this.showMore || (childAt = this.mainLayout.getChildAt(1)) == null) {
            return;
        }
        View viewFindViewById = childAt.findViewById(R.id.more);
        View viewFindViewById2 = childAt.findViewById(R.id.overlay);
        ViewGroup.LayoutParams layoutParams = viewFindViewById2.getLayoutParams();
        int i10 = this.avatarSize;
        layoutParams.width = i10;
        layoutParams.height = i10;
        viewFindViewById2.setLayoutParams(layoutParams);
        int i11 = (this.avatarSize * 2) / 3;
        viewFindViewById.getLayoutParams().width = i11;
        viewFindViewById.getLayoutParams().height = (i11 * 6) / 20;
        viewFindViewById.requestLayout();
        int visibility = viewFindViewById.getVisibility();
        int i12 = this.currentMembersCount > this.avatarCount ? 0 : 8;
        viewFindViewById.setVisibility(i12);
        viewFindViewById2.setVisibility(i12);
        if (visibility == 8 && i12 == 0) {
            startAnimation(viewFindViewById, AnimationUtils.loadAnimation(getContext(), R.anim.fade_in), null);
            startAnimation(viewFindViewById2, AnimationUtils.loadAnimation(getContext(), R.anim.fade_in), null);
        }
    }

    private void setAvatarSize(View view) {
        if (view == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        int i10 = this.avatarSize;
        layoutParams.width = i10;
        layoutParams.height = i10;
        view.setLayoutParams(layoutParams);
    }

    private void setUpAvatarLayout() {
        if (this.avatarCount > this.maxAvatarCount) {
            Log.e("avatar count is beyond max");
        }
        int i10 = 0;
        while (i10 < this.avatarCount) {
            int i11 = i10 + 1;
            View childAt = this.mainLayout.getChildAt(i11);
            childAt.setVisibility(0);
            int i12 = this.avatarCount;
            ViewUtils.setMarginStart(childAt, (i12 + (-1)) - i10 == 0 ? 0 : (int) (((i12 - 1) - i10) * this.avatarSize * (1.0f - this.overlapRatio)));
            i10 = i11;
        }
    }

    private void setUpTextLayout() {
        this.onlineTextLayout.setVisibility((this.autoFitAvatarSize || this.avatarCount < this.minAvatarCount) ? 8 : 0);
        int i10 = this.avatarSize;
        ViewUtils.setMarginStart(this.onlineTextLayout, ((int) (((i10 * (1.0f - this.overlapRatio)) * (this.avatarCount - 1)) + i10)) - (i10 / 2));
    }

    static void startAnimation(View view, Animation animation, Animation.AnimationListener animationListener) {
        if (animationListener != null) {
            animation.setAnimationListener(animationListener);
        }
        view.startAnimation(animation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateMemberCount(int i10) {
        int i11;
        TextView textView = this.onlineTextView;
        if (textView != null) {
            if (i10 != 1 || (i11 = this.onlineTextOne) == 0) {
                textView.setText(getResources().getString(this.onlineText, String.valueOf(i10)));
            } else {
                textView.setText(i11);
            }
        }
        TextView textView2 = this.foldCountView;
        if (textView2 != null) {
            textView2.setText(String.valueOf(i10));
        }
    }

    public void notifyUserChanged(List<ChannelUser> list) {
        User user;
        ArrayList<User> arrayList = new ArrayList();
        for (ChannelUser channelUser : list) {
            if (channelUser != null && (user = channelUser.userProfile) != null) {
                arrayList.add(user);
            }
        }
        Iterator<User> it = this.userQueue.iterator();
        while (it.hasNext()) {
            if (!Utils.containsId(arrayList, it.next().id())) {
                it.remove();
            }
        }
        ArrayList arrayList2 = new ArrayList(this.userList);
        Iterator<User> it2 = arrayList2.iterator();
        boolean z6 = false;
        while (it2.hasNext()) {
            if (!Utils.containsId(arrayList, it2.next().id())) {
                it2.remove();
                z6 = true;
            }
        }
        ArrayList arrayList3 = new ArrayList();
        if (z6) {
            arrayList3.addAll(this.userQueue);
            setUserList(arrayList2, arrayList2.size());
        }
        for (User user2 : arrayList) {
            boolean zContainsId = Utils.containsId(this.userList, user2.id());
            if (!zContainsId) {
                zContainsId = Utils.containsId(this.userQueue, user2.id());
            }
            if (!zContainsId) {
                arrayList3.add(user2);
            }
        }
        onUserJoined(arrayList3, arrayList3.size());
    }

    public void setUserList(List<User> list, int i10) {
        UserAvatarLayout userAvatarLayout;
        int size = CollectionUtils.getSize(list);
        if (size < this.maxAvatarCount) {
            i10 = Math.min(i10, size);
        }
        this.userQueue.clear();
        cancelAnimation(false);
        this.mainLayout.setShouldClip(false);
        View view = this.userJoinedView;
        if (view != null) {
            removeView(view);
        }
        if (list == null) {
            list = new ArrayList<>();
        }
        this.userList = new LinkedList<>(list);
        this.avatarCount = 0;
        this.recentAvatarLayout.setVisibility(8);
        if (CollectionUtils.isEmpty(list)) {
            int childCount = this.mainLayout.getChildCount();
            for (int i11 = 1; i11 < childCount; i11++) {
                this.mainLayout.removeViewAt(1);
            }
            relayout();
            return;
        }
        this.avatarCount = Math.min(this.maxAvatarCount, list.size());
        int childCount2 = this.mainLayout.getChildCount() - 1;
        int i12 = this.avatarCount;
        if (i12 >= this.minAvatarCount) {
            int i13 = childCount2 - i12;
            if (i13 > 0) {
                for (int i14 = 0; i14 < i13; i14++) {
                    this.mainLayout.removeViewAt(1);
                }
            } else if (i13 < 0) {
                for (int i15 = 0; i15 < (-i13); i15++) {
                    this.mainLayout.addView(getAvatarView());
                }
            }
            int i16 = 1;
            for (int i17 = this.avatarCount - 1; i17 >= 0; i17--) {
                User user = list.get(i17);
                View childAt = this.mainLayout.getChildAt(i16);
                i16++;
                if (childAt != null && (userAvatarLayout = (UserAvatarLayout) childAt.findViewById(R.id.user_avatar_layout)) != null) {
                    setUserAvatarView(userAvatarLayout, user);
                }
            }
            if (!CollectionUtils.isEmpty(list)) {
                setUserAvatarView(this.recentAvatar, list.get(0));
                this.recentAvatarLayout.setVisibility(0);
            }
        } else {
            int childCount3 = this.mainLayout.getChildCount();
            for (int i18 = 1; i18 < childCount3; i18++) {
                this.mainLayout.removeViewAt(1);
            }
            this.avatarCount = 0;
        }
        relayout();
        this.currentMembersCount = i10;
        int iMax = Math.max(i10, this.avatarCount);
        this.currentMembersCount = iMax;
        onMembersCountChanged(iMax);
    }

    public AudienceAnimatedMemberBar(Context context, AttributeSet attributeSet) {
        int i10;
        super(context, attributeSet);
        this.userList = new LinkedList<>();
        this.userQueue = new LinkedList<>();
        this.maxAvatarCount = 4;
        this.autoFitAvatarCountMax = -1;
        this.minAvatarCount = 1;
        this.random = new Random();
        this.nextRunnable = new Runnable() { // from class: com.narvii.chat.video.overlay.AudienceAnimatedMemberBar.1
            @Override // java.lang.Runnable
            public void run() {
                AudienceAnimatedMemberBar audienceAnimatedMemberBar = AudienceAnimatedMemberBar.this;
                audienceAnimatedMemberBar.animating = false;
                audienceAnimatedMemberBar.checkUserJoined();
            }
        };
        this.checkRunnable = new Runnable() { // from class: com.narvii.chat.video.overlay.AudienceAnimatedMemberBar.2
            @Override // java.lang.Runnable
            public void run() {
                AudienceAnimatedMemberBar.this.checkUserJoined();
            }
        };
        this.mTouchSlop = ViewConfiguration.get(getContext()).getScaledTouchSlop() / 2;
        View.inflate(getContext(), R.layout.live_layer_online_member_bar, this);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, com.narvii.amino.R.styleable.LiveLayerOnlineBar);
        this.defaultAvatarSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(3, getResources().getDimensionPixelSize(R.dimen.live_layer_online_avatar_width));
        this.onlineText = typedArrayObtainStyledAttributes.getResourceId(7, R.string.online_status_n_members_online);
        this.userJoinedText = typedArrayObtainStyledAttributes.getResourceId(16, 0);
        this.onlineTextOne = typedArrayObtainStyledAttributes.getResourceId(8, 0);
        this.autoFitAvatarSize = typedArrayObtainStyledAttributes.getBoolean(2, false);
        this.autoFitAvatarCountMax = typedArrayObtainStyledAttributes.getInteger(1, -1);
        this.minAvatarCount = typedArrayObtainStyledAttributes.getInteger(6, 1);
        this.showMore = typedArrayObtainStyledAttributes.getBoolean(11, false);
        this.showShadow = typedArrayObtainStyledAttributes.getBoolean(13, false);
        this.overlapRatio = typedArrayObtainStyledAttributes.getFloat(9, 0.25f);
        this.showRightCorner = typedArrayObtainStyledAttributes.getBoolean(12, true);
        this.barColor = typedArrayObtainStyledAttributes.getColor(4, -872415232);
        this.animateLayoutChanges = typedArrayObtainStyledAttributes.getBoolean(0, true);
        this.showFadeAnimation = typedArrayObtainStyledAttributes.getBoolean(10, false);
        this.textMarginEnd = typedArrayObtainStyledAttributes.getDimensionPixelSize(15, getResources().getDimensionPixelSize(R.dimen.live_layer_text_marginEnd));
        typedArrayObtainStyledAttributes.recycle();
        this.avatarShadowSize = Utils.dpToPxInt(getContext(), 3.0f);
        this.avatarSize = this.defaultAvatarSize;
        this.mainLayout = (ClipLayout) findViewById(R.id.main_layout);
        ViewUtils.setMarginStart(findViewById(R.id.green_oval).getLayoutParams(), (this.avatarSize / 2) + getContext().getResources().getDimensionPixelSize(R.dimen.live_layer_green_oval_marginStart));
        View viewFindViewById = findViewById(R.id.recent_avatar);
        this.recentAvatarLayout = viewFindViewById;
        UserAvatarLayout userAvatarLayout = (UserAvatarLayout) viewFindViewById.findViewById(R.id.user_avatar_layout);
        this.recentAvatar = userAvatarLayout;
        if (this.showShadow) {
            i10 = this.avatarShadowSize;
        } else {
            i10 = 0;
        }
        userAvatarLayout.setAvatarShadow(i10, shadowColor);
        NVImageView nVImageView = (NVImageView) findViewById(R.id.bar);
        if (!this.showRightCorner) {
            nVImageView.setCornerMask(Utils.isRtl() ? 9 : 6);
        }
        nVImageView.setImageDrawable(new ColorDrawable(this.barColor));
        setClipChildren(false);
        setClipToPadding(false);
        this.onlineTextLayout = findViewById(R.id.online_text_layout);
        TextView textView = (TextView) findViewById(R.id.online_tv);
        this.onlineTextView = textView;
        ViewUtils.setMarginEnd(textView.getLayoutParams(), this.textMarginEnd);
        this.halo = findViewById(R.id.live_layer_halo);
        onAvatarSizeChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void relayout() {
        boolean z6;
        int i10;
        setUpAvatarLayout();
        setUpTextLayout();
        resetShadowColor(shadowColor);
        resetMoreLayer();
        if (this.avatarCount >= this.minAvatarCount) {
            z6 = true;
        } else {
            z6 = false;
        }
        if (this.avatarShown != z6) {
            this.avatarShown = z6;
            if (this.showFadeAnimation) {
                Context context = getContext();
                if (z6) {
                    i10 = R.anim.fade_in;
                } else {
                    i10 = R.anim.fade_out;
                }
                Animation animationLoadAnimation = AnimationUtils.loadAnimation(context, i10);
                animationLoadAnimation.setDuration(400L);
                startAnimation(this, animationLoadAnimation, null);
            }
            OnAvatarShownChangeListener onAvatarShownChangeListener = this.onAvatarShownChangeListener;
            if (onAvatarShownChangeListener != null) {
                onAvatarShownChangeListener.onAvatarShownChanged(z6);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setUserAvatarView(UserAvatarLayout userAvatarLayout, User user) {
        userAvatarLayout.setUser(user);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (getParent() instanceof ViewGroup) {
            ((ViewGroup) getParent()).setClipChildren(false);
            ((ViewGroup) getParent()).setClipToPadding(false);
        }
        Handler handler = Utils.handler;
        handler.removeCallbacks(this.checkRunnable);
        handler.postDelayed(this.checkRunnable, 2000L);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        cancelAnimation(true);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        int measuredWidth;
        ViewGroup.LayoutParams layoutParams;
        super.onMeasure(i10, i11);
        int size = (View.MeasureSpec.getSize(i10) - getPaddingLeft()) - getPaddingRight();
        int mode = View.MeasureSpec.getMode(i10);
        if (this.autoFitAvatarCountMax != -1 && (layoutParams = this.onlineTextLayout.getLayoutParams()) != null) {
            this.onlineTextLayout.measure(View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(layoutParams.height, 1073741824));
        }
        if (this.onlineTextLayout.getVisibility() == 8) {
            measuredWidth = 0;
        } else {
            measuredWidth = this.onlineTextLayout.getMeasuredWidth() - (this.avatarSize / 2);
        }
        int i12 = size - measuredWidth;
        int i13 = this.autoFitAvatarCountMax;
        if ((i13 != -1 || this.autoFitAvatarSize) && mode != 0 && i12 != this.maxWidth) {
            this.maxWidth = i12;
            if (i13 != -1) {
                int iMin = Math.min(i13, (int) (((i12 - this.defaultAvatarSize) / (this.avatarSize * (1.0f - this.overlapRatio))) + 1.0f));
                int i14 = this.minAvatarCount;
                if (iMin < i14) {
                    iMin = i14;
                }
                if (iMin != this.maxAvatarCount) {
                    this.maxAvatarCount = iMin;
                    setUserList(this.userList);
                    super.onMeasure(i10, i11);
                }
            } else if (this.autoFitAvatarSize) {
                float f = i12 - this.defaultAvatarSize;
                float f6 = this.avatarSize;
                float f7 = this.overlapRatio;
                int i15 = (int) ((f / (f6 * (1.0f - f7))) + 1.0f);
                this.maxAvatarCount = i15;
                this.avatarSize = (int) (i12 / (((1.0f - f7) * (i15 - 1)) + 1.0f));
                onAvatarSizeChanged();
                setUserList(this.userList);
                super.onMeasure(i10, i11);
            }
        }
        setMeasuredDimension(getMeasuredWidth(), this.avatarSize + getPaddingTop() + getPaddingBottom());
    }

    public void onUserLeft(List<User> list) {
        if (!CollectionUtils.isEmpty(list)) {
            Iterator<User> it = this.userList.iterator();
            int i10 = this.avatarCount;
            for (int i11 = 0; it.hasNext() && i11 < i10; i11++) {
                User next = it.next();
                Iterator<User> it2 = list.iterator();
                while (it2.hasNext()) {
                    if (Utils.isEqualsNotNull(it2.next().id(), next.id())) {
                        try {
                            this.mainLayout.removeViewAt(this.avatarCount - i11);
                            this.avatarCount--;
                            relayout();
                            break;
                        } catch (Exception e) {
                            Log.e(e.getMessage());
                        }
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public View getAvatarView(User user) {
        View avatarView = getAvatarView();
        setUserAvatarView((UserAvatarLayout) avatarView.findViewById(R.id.user_avatar_layout), user);
        return avatarView;
    }

    public void onUserJoined(User user) {
        if (user == null) {
            return;
        }
        this.animating = true;
        CommunityConfigHelper communityConfigHelper = new CommunityConfigHelper(Utils.getNVContext(getContext()));
        if (this.userList == null) {
            this.userList = new LinkedList<>();
        }
        View view = this.userJoinedView;
        if (view != null) {
            removeView(view);
        }
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.live_layer_online_member_new_user, (ViewGroup) this, false);
        this.userJoinedView = viewInflate;
        UserAvatarLayout userAvatarLayout = (UserAvatarLayout) viewInflate.findViewById(R.id.user_avatar_layout);
        setAvatarSize(userAvatarLayout);
        setUserAvatarView(userAvatarLayout, user);
        this.userJoinedView.setVisibility(8);
        TextView textView = (TextView) this.userJoinedView.findViewById(R.id.user_came);
        if (this.userJoinedText != 0) {
            textView.setText(getContext().getString(this.userJoinedText, user.ellipticalNickname(12)));
        } else {
            textView.setText(user.ellipticalNickname(30));
        }
        textView.setBackgroundResource((user.isSubscribeMemberShip() && communityConfigHelper.isPremiumFeatureEnabled()) ? R.drawable.online_new_user_bg_amino_plus : R.drawable.online_new_user_bg);
        addView(this.userJoinedView, 3);
        Utils.handler.removeCallbacks(this.joinAnimRunnable);
        AnonymousClass4 anonymousClass4 = new AnonymousClass4(user, communityConfigHelper);
        this.joinAnimRunnable = anonymousClass4;
        Utils.postDelayed(anonymousClass4, 1000L);
    }
}
