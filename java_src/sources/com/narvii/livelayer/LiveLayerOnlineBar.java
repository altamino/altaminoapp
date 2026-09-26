package com.narvii.livelayer;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.TypedArray;
import android.graphics.drawable.ColorDrawable;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
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
import androidx.annotation.NonNull;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.ImageLoader;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.app.incubator.IncubatorApplication;
import com.narvii.livelayer.ws.ClipLayout;
import com.narvii.livelayer.ws.LiveLayerWsService;
import com.narvii.model.User;
import com.narvii.util.CollectionUtils;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.widget.NVImageView;
import com.narvii.widget.ThumbImageView;
import com.narvii.widget.UserAvatarLayout;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Random;

/* JADX INFO: loaded from: classes6.dex */
public class LiveLayerOnlineBar extends FrameLayout implements ILiveLayerView {
    public static final float PRESS_SCALE = 0.98f;
    static boolean liveLayerBarStated = false;
    static int shadowColor = 805306368;
    public Runnable animEndRunnable;
    boolean animateLayoutChanges;
    boolean animating;
    ValueAnimator animator;
    int autoFitAvatarCountMax;
    boolean autoFitAvatarSize;
    int avatarCount;
    int avatarShadowSize;
    public boolean avatarShown;
    int avatarSize;
    int avatarStrokeWidth;
    int barColor;
    int cid;
    String currentTopic;
    public LiveLayerDataSource dataSource;
    private int defaultAvatarSize;
    public Animation dotFadeAnimation;
    public Animation dotFadeInAnimation;
    ImageLoader.ImageListener emptyImageListener;
    Animation fadeoutAnim;
    boolean fold;
    private ValueAnimator foldAnimator;
    public TextView foldCountView;
    public View foldGreenOval;
    boolean forceHideOnlineTextLayout;
    boolean fromCBB;
    GestureDetector gestureDetector;
    View greenOval;
    View halo;
    public Animation holoAnimation;
    public Animation holoAnimation2;
    float initialMotionX;
    int initialWidth;
    private boolean isDragging;
    public Runnable joinAnimRunnable;
    private ValueAnimator layoutAnimator;
    int lift;
    LiveLayerHelper liveLayerHelper;
    private int mMaximumFlingVelocity;
    private int mMinimumFlingVelocity;
    public final int mTouchSlop;
    private VelocityTracker mVelocityTracker;
    ClipLayout mainLayout;
    int maxAvatarCount;
    private int maxWidth;
    int minAvatarCount;
    public Runnable nextRunnable;
    OnAvatarShownChangeListener onAvatarShownChangeListener;
    View.OnClickListener onBarClickListener;
    OnFoldChangedListener onFoldChangedListener;
    OnMemberCountChangedListener onMemberCountChangedListener;
    OnUpdateMemberCountListener onUpdateMemberCountListener;
    int onlineText;
    View onlineTextLayout;
    int onlineTextOne;
    TextView onlineTextView;
    boolean organizerInList;
    float overlapRatio;
    LiveLayerPreloadHelper preloadHelper;
    boolean pressed;
    Random random;
    UserAvatarLayout recentAvatar;
    View recentAvatarLayout;
    boolean shouldFilterUserList;
    boolean showFadeAnimation;
    boolean showMore;
    boolean showRightCorner;
    boolean showShadow;
    boolean supportFold;
    boolean tapping;
    int textMarginEnd;
    Animation userJoinedAnim;
    int userJoinedText;
    View userJoinedView;

    /* JADX INFO: renamed from: com.narvii.livelayer.LiveLayerOnlineBar$7, reason: invalid class name */
    class AnonymousClass7 implements Runnable {
        final /* synthetic */ User val$user;

        AnonymousClass7(User user) {
            this.val$user = user;
        }

        @Override // java.lang.Runnable
        public void run() {
            LiveLayerOnlineBar.this.dataSource.moveFromQueueIntoList(this.val$user);
            LiveLayerOnlineBar.this.animEndRunnable = new Runnable() { // from class: com.narvii.livelayer.LiveLayerOnlineBar.7.1
                @Override // java.lang.Runnable
                public void run() {
                    final boolean z6;
                    LiveLayerOnlineBar liveLayerOnlineBar = LiveLayerOnlineBar.this;
                    if (liveLayerOnlineBar.fromCBB) {
                        liveLayerOnlineBar.userJoinedView.setVisibility(0);
                        AnonymousClass7 anonymousClass7 = AnonymousClass7.this;
                        LiveLayerOnlineBar.this.startHoloAnimation(anonymousClass7.val$user);
                        View viewFindViewById = LiveLayerOnlineBar.this.userJoinedView.findViewById(R.id.avatar);
                        ScaleAnimation scaleAnimation = new ScaleAnimation(1.0f, 1.2f, 1.0f, 1.2f, 1, 0.5f, 1, 0.5f);
                        scaleAnimation.setInterpolator(new Interpolator() { // from class: com.narvii.livelayer.LiveLayerOnlineBar.7.1.1
                            @Override // android.animation.TimeInterpolator
                            public float getInterpolation(float f) {
                                if (f >= 1.0f) {
                                    return 0.0f;
                                }
                                float f6 = (f / 1.0f) - 0.5f;
                                return 1.0f - ((f6 * f6) * 4.0f);
                            }
                        });
                        scaleAnimation.setDuration(400L);
                        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
                        alphaAnimation.setDuration(400L);
                        AnimationSet animationSet = new AnimationSet(false);
                        animationSet.addAnimation(alphaAnimation);
                        animationSet.addAnimation(scaleAnimation);
                        LiveLayerOnlineBar.this.holoAnimation2 = animationSet;
                        LiveLayerOnlineBar.startAnimation(viewFindViewById, animationSet, new Animation.AnimationListener() { // from class: com.narvii.livelayer.LiveLayerOnlineBar.7.1.2
                            @Override // android.view.animation.Animation.AnimationListener
                            public void onAnimationRepeat(Animation animation) {
                            }

                            @Override // android.view.animation.Animation.AnimationListener
                            public void onAnimationStart(Animation animation) {
                            }

                            @Override // android.view.animation.Animation.AnimationListener
                            public void onAnimationEnd(Animation animation) {
                                LiveLayerOnlineBar liveLayerOnlineBar2 = LiveLayerOnlineBar.this;
                                liveLayerOnlineBar2.removeView(liveLayerOnlineBar2.userJoinedView);
                            }
                        });
                    } else if (liveLayerOnlineBar.fold) {
                        liveLayerOnlineBar.removeView(liveLayerOnlineBar.userJoinedView);
                        LiveLayerOnlineBar liveLayerOnlineBar2 = LiveLayerOnlineBar.this;
                        if (liveLayerOnlineBar2.foldGreenOval != null) {
                            liveLayerOnlineBar2.dotFadeInAnimation = AnimationUtils.loadAnimation(liveLayerOnlineBar2.getContext(), R.anim.fade_in);
                            LiveLayerOnlineBar.this.dotFadeInAnimation.setFillAfter(true);
                            LiveLayerOnlineBar.this.dotFadeInAnimation.setDuration(1000L);
                            LiveLayerOnlineBar liveLayerOnlineBar3 = LiveLayerOnlineBar.this;
                            LiveLayerOnlineBar.startAnimation(liveLayerOnlineBar3.foldGreenOval, liveLayerOnlineBar3.dotFadeInAnimation, null);
                        }
                    } else {
                        View viewFindViewById2 = liveLayerOnlineBar.userJoinedView.findViewById(R.id.user_came);
                        if (viewFindViewById2 != null) {
                            LiveLayerOnlineBar liveLayerOnlineBar4 = LiveLayerOnlineBar.this;
                            liveLayerOnlineBar4.fadeoutAnim = AnimationUtils.loadAnimation(liveLayerOnlineBar4.getContext(), R.anim.fade_out);
                            LiveLayerOnlineBar.this.fadeoutAnim.setFillAfter(true);
                            LiveLayerOnlineBar.this.fadeoutAnim.setDuration(150L);
                            LiveLayerOnlineBar.startAnimation(viewFindViewById2, LiveLayerOnlineBar.this.fadeoutAnim, null);
                        }
                        AnonymousClass7 anonymousClass8 = AnonymousClass7.this;
                        LiveLayerOnlineBar.this.startHoloAnimation(anonymousClass8.val$user);
                        View viewFindViewById3 = LiveLayerOnlineBar.this.userJoinedView.findViewById(R.id.user_avatar_layout);
                        ScaleAnimation scaleAnimation2 = new ScaleAnimation(1.0f, 1.2f, 1.0f, 1.2f, 1, 0.5f, 1, 0.5f);
                        scaleAnimation2.setInterpolator(new Interpolator() { // from class: com.narvii.livelayer.LiveLayerOnlineBar.7.1.3
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
                        LiveLayerOnlineBar.this.holoAnimation2 = scaleAnimation2;
                        LiveLayerOnlineBar.startAnimation(viewFindViewById3, scaleAnimation2, new Animation.AnimationListener() { // from class: com.narvii.livelayer.LiveLayerOnlineBar.7.1.4
                            @Override // android.view.animation.Animation.AnimationListener
                            public void onAnimationRepeat(Animation animation) {
                            }

                            @Override // android.view.animation.Animation.AnimationListener
                            public void onAnimationStart(Animation animation) {
                            }

                            @Override // android.view.animation.Animation.AnimationListener
                            public void onAnimationEnd(Animation animation) {
                                LiveLayerOnlineBar liveLayerOnlineBar5 = LiveLayerOnlineBar.this;
                                liveLayerOnlineBar5.removeView(liveLayerOnlineBar5.userJoinedView);
                            }
                        });
                    }
                    LiveLayerOnlineBar liveLayerOnlineBar5 = LiveLayerOnlineBar.this;
                    if (liveLayerOnlineBar5.avatarCount >= liveLayerOnlineBar5.maxAvatarCount) {
                        if (liveLayerOnlineBar5.fold) {
                            liveLayerOnlineBar5.mainLayout.removeViewAt(1);
                            LiveLayerOnlineBar.this.avatarCount--;
                        }
                        z6 = false;
                    } else {
                        z6 = true;
                    }
                    LiveLayerOnlineBar liveLayerOnlineBar6 = LiveLayerOnlineBar.this;
                    LiveLayerDataSource liveLayerDataSource = liveLayerOnlineBar6.dataSource;
                    int i10 = liveLayerDataSource.currentMembersCount;
                    liveLayerDataSource.currentMembersCount = i10 + 1;
                    liveLayerOnlineBar6.onMembersCountChanged(i10);
                    AnonymousClass7 anonymousClass9 = AnonymousClass7.this;
                    View avatarView = LiveLayerOnlineBar.this.getAvatarView(anonymousClass9.val$user);
                    LiveLayerOnlineBar liveLayerOnlineBar7 = LiveLayerOnlineBar.this;
                    liveLayerOnlineBar7.mainLayout.addView(avatarView, liveLayerOnlineBar7.avatarCount + 1);
                    AnonymousClass7 anonymousClass10 = AnonymousClass7.this;
                    LiveLayerOnlineBar liveLayerOnlineBar8 = LiveLayerOnlineBar.this;
                    liveLayerOnlineBar8.setUserAvatarView(liveLayerOnlineBar8.recentAvatar, anonymousClass10.val$user);
                    LiveLayerOnlineBar liveLayerOnlineBar9 = LiveLayerOnlineBar.this;
                    liveLayerOnlineBar9.avatarCount++;
                    final int i11 = (int) (liveLayerOnlineBar9.avatarSize * (1.0f - liveLayerOnlineBar9.overlapRatio));
                    if (liveLayerOnlineBar9.layoutAnimator != null && LiveLayerOnlineBar.this.layoutAnimator.isRunning()) {
                        LiveLayerOnlineBar.this.layoutAnimator.end();
                    }
                    LiveLayerOnlineBar liveLayerOnlineBar10 = LiveLayerOnlineBar.this;
                    if (liveLayerOnlineBar10.fold) {
                        liveLayerOnlineBar10.relayout();
                    } else {
                        liveLayerOnlineBar10.layoutAnimator = ValueAnimator.ofInt(0, i11);
                        LiveLayerOnlineBar.this.layoutAnimator.setDuration(200L);
                        LiveLayerOnlineBar.this.layoutAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.livelayer.LiveLayerOnlineBar.7.1.5
                            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                                LiveLayerOnlineBar liveLayerOnlineBar11;
                                int i12;
                                int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                                int i13 = 0;
                                int i14 = 0;
                                while (true) {
                                    liveLayerOnlineBar11 = LiveLayerOnlineBar.this;
                                    i12 = liveLayerOnlineBar11.avatarCount;
                                    if (i13 >= i12 - 1) {
                                        break;
                                    }
                                    View childAt = liveLayerOnlineBar11.mainLayout.getChildAt((i12 - 1) - i13);
                                    ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                                    float f = iIntValue;
                                    LiveLayerOnlineBar liveLayerOnlineBar12 = LiveLayerOnlineBar.this;
                                    float f6 = 1.0f;
                                    ViewUtils.setMarginStart(layoutParams, (int) ((liveLayerOnlineBar12.avatarSize * (1.0f - liveLayerOnlineBar12.overlapRatio) * i14) + f));
                                    childAt.setLayoutParams(layoutParams);
                                    i14++;
                                    if (!z6 && i13 == LiveLayerOnlineBar.this.avatarCount - 2) {
                                        int i15 = i11;
                                        if (f >= i15 * 0.3f) {
                                            f6 = (i15 - iIntValue) / (i15 * 0.7f);
                                        }
                                        childAt.setAlpha(f6);
                                    }
                                    i13++;
                                }
                                if (i12 > 0) {
                                    try {
                                        UserAvatarLayout userAvatarLayout = (UserAvatarLayout) liveLayerOnlineBar11.mainLayout.getChildAt(i12 - 1).findViewById(R.id.user_avatar_layout);
                                        if (userAvatarLayout != null) {
                                            userAvatarLayout.setAvatarShadow(LiveLayerOnlineBar.this.avatarShadowSize, LiveLayerOnlineBar.shadowColor);
                                        }
                                    } catch (Exception unused) {
                                    }
                                }
                                if (z6) {
                                    ViewGroup.LayoutParams layoutParams2 = LiveLayerOnlineBar.this.onlineTextLayout.getLayoutParams();
                                    int i16 = i11;
                                    LiveLayerOnlineBar liveLayerOnlineBar13 = LiveLayerOnlineBar.this;
                                    int i17 = iIntValue + (i16 * (liveLayerOnlineBar13.avatarCount - 2));
                                    int i18 = liveLayerOnlineBar13.avatarSize;
                                    ViewUtils.setMarginStart(layoutParams2, (i17 + i18) - (i18 / 2));
                                    LiveLayerOnlineBar.this.onlineTextLayout.setLayoutParams(layoutParams2);
                                }
                            }
                        });
                        LiveLayerOnlineBar.this.layoutAnimator.addListener(new Animator.AnimatorListener() { // from class: com.narvii.livelayer.LiveLayerOnlineBar.7.1.6
                            @Override // android.animation.Animator.AnimatorListener
                            public void onAnimationCancel(Animator animator) {
                            }

                            @Override // android.animation.Animator.AnimatorListener
                            public void onAnimationRepeat(Animator animator) {
                            }

                            @Override // android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator) {
                                LiveLayerOnlineBar.this.layoutAnimator = null;
                                if (!z6) {
                                    LiveLayerOnlineBar.this.mainLayout.removeViewAt(1);
                                    LiveLayerOnlineBar.this.avatarCount--;
                                }
                                LiveLayerOnlineBar.this.relayout();
                            }

                            @Override // android.animation.Animator.AnimatorListener
                            public void onAnimationStart(Animator animator) {
                                LiveLayerOnlineBar.this.mainLayout.setShouldClip(false);
                            }
                        });
                        LiveLayerOnlineBar.this.layoutAnimator.start();
                    }
                    Handler handler = Utils.handler;
                    handler.removeCallbacks(LiveLayerOnlineBar.this.dataSource.correctMembersCountRunnable);
                    handler.postDelayed(LiveLayerOnlineBar.this.dataSource.correctMembersCountRunnable, 2000L);
                    handler.removeCallbacks(LiveLayerOnlineBar.this.nextRunnable);
                    LiveLayerOnlineBar liveLayerOnlineBar11 = LiveLayerOnlineBar.this;
                    Utils.postDelayed(liveLayerOnlineBar11.nextRunnable, liveLayerOnlineBar11.getRandomDelayTime());
                    LiveLayerOnlineBar.this.animEndRunnable = null;
                }
            };
            LiveLayerOnlineBar liveLayerOnlineBar = LiveLayerOnlineBar.this;
            if (liveLayerOnlineBar.fromCBB) {
                liveLayerOnlineBar.userJoinedView.setVisibility(4);
                Utils.handler.postDelayed(LiveLayerOnlineBar.this.animEndRunnable, 500L);
                return;
            }
            Animation.AnimationListener animationListener = new Animation.AnimationListener() { // from class: com.narvii.livelayer.LiveLayerOnlineBar.7.2
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    Utils.handler.postDelayed(LiveLayerOnlineBar.this.animEndRunnable, 500L);
                }
            };
            LiveLayerOnlineBar liveLayerOnlineBar2 = LiveLayerOnlineBar.this;
            if (liveLayerOnlineBar2.fold) {
                liveLayerOnlineBar2.userJoinedAnim = AnimationUtils.loadAnimation(liveLayerOnlineBar2.getContext(), R.anim.fade_in);
                LiveLayerOnlineBar.this.userJoinedAnim.setInterpolator(new AccelerateDecelerateInterpolator());
                LiveLayerOnlineBar.this.userJoinedAnim.setDuration(1000L);
                LiveLayerOnlineBar liveLayerOnlineBar3 = LiveLayerOnlineBar.this;
                if (liveLayerOnlineBar3.foldGreenOval != null) {
                    liveLayerOnlineBar3.dotFadeAnimation = AnimationUtils.loadAnimation(liveLayerOnlineBar3.getContext(), R.anim.fade_out);
                    LiveLayerOnlineBar.this.dotFadeAnimation.setDuration(1000L);
                    LiveLayerOnlineBar.this.dotFadeAnimation.setFillAfter(true);
                    LiveLayerOnlineBar liveLayerOnlineBar4 = LiveLayerOnlineBar.this;
                    LiveLayerOnlineBar.startAnimation(liveLayerOnlineBar4.foldGreenOval, liveLayerOnlineBar4.dotFadeAnimation, null);
                }
            } else {
                if (Utils.isRtl()) {
                    LiveLayerOnlineBar.this.userJoinedAnim = new TranslateAnimation(-Utils.getScreenWidth(LiveLayerOnlineBar.this.getContext()), 0.0f, 0.0f, 0.0f);
                } else {
                    LiveLayerOnlineBar.this.userJoinedAnim = new TranslateAnimation(Utils.getScreenWidth(LiveLayerOnlineBar.this.getContext()), 0.0f, 0.0f, 0.0f);
                }
                LiveLayerOnlineBar.this.userJoinedAnim.setInterpolator(new OvershootInterpolator(0.7f));
                LiveLayerOnlineBar.this.userJoinedAnim.setDuration(300L);
            }
            LiveLayerOnlineBar.this.userJoinedView.setVisibility(0);
            LiveLayerOnlineBar liveLayerOnlineBar5 = LiveLayerOnlineBar.this;
            if (liveLayerOnlineBar5.fold) {
                LiveLayerOnlineBar.startAnimation(liveLayerOnlineBar5.userJoinedView.findViewById(R.id.user_avatar_layout), LiveLayerOnlineBar.this.userJoinedAnim, animationListener);
            } else {
                LiveLayerOnlineBar.startAnimation(liveLayerOnlineBar5.userJoinedView, liveLayerOnlineBar5.userJoinedAnim, animationListener);
            }
        }
    }

    public interface OnAvatarShownChangeListener {
        void onAvatarShownChanged(boolean z6);
    }

    public interface OnFoldChangedListener {
        void onFoldChanged(boolean z6);
    }

    public interface OnMemberCountChangedListener {
        void onMemberCountChanged(int i10);
    }

    public interface OnUpdateMemberCountListener {
        void onUpdateMemberCount(int i10);
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
        ValueAnimator valueAnimator = this.foldAnimator;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.foldAnimator.end();
        }
        View view = this.userJoinedView;
        if (view != null) {
            view.clearAnimation();
            removeView(this.userJoinedView);
        }
        ValueAnimator valueAnimator2 = this.animator;
        if (valueAnimator2 != null && valueAnimator2.isRunning()) {
            this.animator.end();
        }
        ValueAnimator valueAnimator3 = this.layoutAnimator;
        if (valueAnimator3 != null && valueAnimator3.isRunning()) {
            this.layoutAnimator.end();
        }
        Handler handler = Utils.handler;
        handler.removeCallbacks(this.joinAnimRunnable);
        handler.removeCallbacks(this.dataSource.checkRunnable);
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
        ValueAnimator valueAnimator4 = this.layoutAnimator;
        if (valueAnimator4 != null && valueAnimator4.isRunning()) {
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
        handler.removeCallbacks(this.dataSource.correctMembersCountRunnable);
    }

    private void changeX(int i10) {
        for (int i11 = 0; i11 < this.mainLayout.getChildCount(); i11++) {
            this.mainLayout.getChildAt(i11).setX(i10);
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
        userAvatarLayout.getAvatarView().setForceRequestSize(getForceRequestWidth(), getForceRequestHeight());
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
        setUserList(list, this.dataSource.getCurrentMembersCount(), this.organizerInList);
    }

    @Override // com.narvii.livelayer.ILiveLayerView
    public boolean disallowNewUserCome() {
        return this.tapping || this.isDragging || this.animating;
    }

    @Override // com.narvii.livelayer.ILiveLayerView
    public int getAvatarCount() {
        return this.avatarCount;
    }

    protected int getForceRequestHeight() {
        return 0;
    }

    protected int getForceRequestWidth() {
        return 0;
    }

    @Override // com.narvii.livelayer.ILiveLayerView
    public int getMinAvatarCount() {
        return this.minAvatarCount;
    }

    public View.OnClickListener getOnBarClickListener() {
        return this.onBarClickListener;
    }

    public OnFoldChangedListener getOnFoldChangedListener() {
        return this.onFoldChangedListener;
    }

    protected int getPreloadAvatarSize() {
        return this.avatarSize;
    }

    public boolean isAvatarShown() {
        return this.avatarShown;
    }

    public boolean isDragging() {
        return this.isDragging;
    }

    public boolean isTapping() {
        return this.tapping;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.supportFold || this.onBarClickListener != null) {
            return this.avatarShown;
        }
        return false;
    }

    public void setAvatarStrokeWidth(int i10) {
        this.avatarStrokeWidth = i10;
    }

    public void setCid(int i10) {
        this.cid = i10;
    }

    public void setForceHideOnlineTextLayout(boolean z6) {
        this.forceHideOnlineTextLayout = z6;
    }

    public void setOnAvatarShownChangeListener(OnAvatarShownChangeListener onAvatarShownChangeListener) {
        this.onAvatarShownChangeListener = onAvatarShownChangeListener;
    }

    public void setOnBarClickListener(View.OnClickListener onClickListener) {
        this.onBarClickListener = onClickListener;
    }

    public void setOnFoldChangedListener(OnFoldChangedListener onFoldChangedListener) {
        this.onFoldChangedListener = onFoldChangedListener;
    }

    public void setOnMemberCountChangedListener(OnMemberCountChangedListener onMemberCountChangedListener) {
        this.onMemberCountChangedListener = onMemberCountChangedListener;
    }

    public void setOnUpdateMemberCountListener(OnUpdateMemberCountListener onUpdateMemberCountListener) {
        this.onUpdateMemberCountListener = onUpdateMemberCountListener;
    }

    public void setShouldFilterUserList(boolean z6) {
        this.shouldFilterUserList = z6;
    }

    private int getExpandWidth() {
        int i10 = this.avatarSize;
        int i11 = ((int) (((i10 * (1.0f - this.overlapRatio)) * (this.avatarCount - 1)) + i10)) - (i10 / 2);
        View view = this.onlineTextLayout;
        return i11 + (view != null ? view.getWidth() : 0);
    }

    @NonNull
    private AlphaAnimation getHoloAlphaAnimation() {
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        alphaAnimation.setInterpolator(new Interpolator() { // from class: com.narvii.livelayer.LiveLayerOnlineBar.9
            @Override // android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                return f < 0.15f ? (f / 0.15f) * 0.9f : (1.0f - ((f - 0.15f) / 0.85f)) * 0.9f;
            }
        });
        alphaAnimation.setDuration(2000L);
        return alphaAnimation;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getRandomDelayTime() {
        return this.random.nextInt(1000) + 2500;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void moveLayout(int i10) {
        int i11 = (int) (this.avatarSize * (1.0f - this.overlapRatio));
        int i12 = 0;
        int i13 = 0;
        while (true) {
            int i14 = this.avatarCount;
            if (i12 >= i14 - 1) {
                resetShadowColor(0);
                ViewGroup.LayoutParams layoutParams = this.onlineTextLayout.getLayoutParams();
                int i15 = this.avatarSize;
                ViewUtils.setMarginStart(layoutParams, (int) (((i10 + ((i15 * (1.0f - this.overlapRatio)) * (this.avatarCount - 2))) + i15) - (i15 / 2)));
                this.onlineTextLayout.setLayoutParams(layoutParams);
                return;
            }
            View childAt = this.mainLayout.getChildAt((i14 - 1) - i12);
            ViewGroup.LayoutParams layoutParams2 = childAt.getLayoutParams();
            ViewUtils.setMarginStart(layoutParams2, (i11 * i13) + i10);
            childAt.setLayoutParams(layoutParams2);
            i13++;
            i12++;
        }
    }

    private void onAvatarSizeChanged() {
        ClipLayout clipLayout = this.mainLayout;
        if (clipLayout != null) {
            clipLayout.setAvatarSize(this.avatarSize);
            int i10 = 0;
            while (i10 < this.mainLayout.getChildCount()) {
                i10++;
                View childAt = this.mainLayout.getChildAt(i10);
                if (childAt != null) {
                    setAvatarSize((UserAvatarLayout) childAt.findViewById(R.id.user_avatar_layout));
                }
            }
        }
        UserAvatarLayout userAvatarLayout = this.recentAvatar;
        if (userAvatarLayout != null) {
            setAvatarSize(userAvatarLayout);
        }
        View view = this.onlineTextLayout;
        if (view != null) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            int i11 = layoutParams.height;
            int i12 = (this.avatarSize * 5) / 6;
            if (i11 != i12) {
                layoutParams.height = i12;
                this.onlineTextLayout.setLayoutParams(layoutParams);
            }
        }
        View view2 = this.halo;
        if (view2 != null) {
            ViewGroup.LayoutParams layoutParams2 = view2.getLayoutParams();
            int iDpToPx = (int) Utils.dpToPx(getContext(), 6.0f);
            int i13 = this.avatarSize;
            layoutParams2.width = i13 + iDpToPx;
            layoutParams2.height = i13 + iDpToPx;
            this.halo.setLayoutParams(layoutParams2);
        }
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
        int i12 = this.dataSource.currentMembersCount > this.avatarCount ? 0 : 8;
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
            if (this.fold) {
                childAt.setVisibility(4);
                ViewUtils.setMarginStart(childAt, 0);
            } else {
                childAt.setVisibility(0);
                int i12 = this.avatarCount;
                ViewUtils.setMarginStart(childAt, (i12 + (-1)) - i10 == 0 ? 0 : (int) (((i12 - 1) - i10) * this.avatarSize * (1.0f - this.overlapRatio)));
            }
            i10 = i11;
        }
    }

    private void setUpTextLayout() {
        if (this.fold) {
            this.onlineTextLayout.setVisibility(4);
        } else {
            this.onlineTextLayout.setVisibility((this.autoFitAvatarSize || (this.organizerInList && this.avatarCount < this.minAvatarCount) || this.forceHideOnlineTextLayout) ? 8 : 0);
            if (this.onlineTextLayout.getVisibility() == 0) {
                adjustOnlineTextBarWidth(this.avatarCount > 0);
            }
        }
        int i10 = this.avatarSize;
        int i11 = (int) ((i10 * (1.0f - this.overlapRatio) * (this.avatarCount - 1)) + i10);
        if (this.fold) {
            ViewUtils.setMarginStart(this.onlineTextLayout, i10 - getResources().getDisplayMetrics().widthPixels);
        } else {
            ViewUtils.setMarginStart(this.onlineTextLayout, i11 - (i10 / 2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showPress(boolean z6) {
        if (this.pressed == z6) {
            return;
        }
        this.pressed = z6;
        if (z6) {
            ScaleAnimation scaleAnimation = new ScaleAnimation(1.0f, 0.98f, 1.0f, 0.98f, getWidth() / 2, getHeight() / 2);
            scaleAnimation.setDuration(200L);
            scaleAnimation.setFillAfter(true);
            startAnimation(this, scaleAnimation, null);
            return;
        }
        ScaleAnimation scaleAnimation2 = new ScaleAnimation(0.98f, 1.0f, 0.98f, 1.0f, getWidth() / 2, getHeight() / 2);
        scaleAnimation2.setDuration(200L);
        scaleAnimation2.setFillAfter(true);
        startAnimation(this, scaleAnimation2, null);
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
        OnUpdateMemberCountListener onUpdateMemberCountListener = this.onUpdateMemberCountListener;
        if (onUpdateMemberCountListener != null) {
            onUpdateMemberCountListener.onUpdateMemberCount(i10);
        }
    }

    public void goFold(boolean z6) {
        if (this.supportFold) {
            NVContext nVContext = Utils.getNVContext(getContext());
            boolean z10 = !liveLayerBarStated;
            if (this.fold != z6) {
                SharedPreferences sharedPreferences = (SharedPreferences) nVContext.getService(IncubatorApplication.PREFS_SERVICE_KEY);
                Boolean boolValueOf = sharedPreferences.contains("liveLayerFold") ? Boolean.valueOf(sharedPreferences.getBoolean("liveLayerFold", false)) : null;
                sharedPreferences.edit().putBoolean("liveLayerFold", z6).apply();
                z10 |= boolValueOf != Boolean.valueOf(z6);
            }
            if (z10) {
                ((StatisticsService) nVContext.getService("statistics")).event(null).userProp("Live Layer Bar Extended", !z6);
                liveLayerBarStated = true;
            }
            this.fold = z6;
            if (this.supportFold) {
                View viewFindViewById = findViewById(R.id.lite_layer);
                if (viewFindViewById == null) {
                    viewFindViewById = LayoutInflater.from(getContext()).inflate(R.layout.live_layer_online_lite_layer, (ViewGroup) this, false);
                    this.foldGreenOval = viewFindViewById.findViewById(R.id.green_oval);
                    TextView textView = (TextView) viewFindViewById.findViewById(R.id.online_count);
                    this.foldCountView = textView;
                    ViewGroup.LayoutParams layoutParams = textView.getLayoutParams();
                    if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                        layoutParams.width = (int) (this.avatarSize + Utils.dpToPx(getContext(), 10.0f));
                        ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = (int) (this.avatarSize - Utils.dpToPx(getContext(), 8.0f));
                    }
                    this.foldCountView.setLayoutParams(layoutParams);
                    this.foldCountView.setText(String.valueOf(this.dataSource.currentMembersCount));
                    View viewFindViewById2 = viewFindViewById.findViewById(R.id.green_oval);
                    ViewGroup.LayoutParams layoutParams2 = viewFindViewById2.getLayoutParams();
                    ViewUtils.setMarginStart(layoutParams2, (int) (this.avatarSize * 0.73f));
                    viewFindViewById2.setLayoutParams(layoutParams2);
                    addView(viewFindViewById);
                }
                viewFindViewById.setVisibility((!z6 || this.avatarCount < this.minAvatarCount) ? 8 : 0);
            }
            cancelAnimation(true);
            relayout();
            if (z6) {
                resetShadowColor(0);
            } else {
                resetShadowColor(shadowColor);
            }
        }
    }

    @Override // com.narvii.livelayer.ILiveLayerView
    public void onMembersCountChanged(int i10) {
        ValueAnimator valueAnimator = this.animator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        int i11 = this.dataSource.currentMembersCount;
        if (i10 != i11) {
            ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(i10, i11);
            this.animator = valueAnimatorOfInt;
            valueAnimatorOfInt.setDuration(Math.min(800, Math.abs(this.dataSource.currentMembersCount - i10) * 100));
            this.animator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.livelayer.LiveLayerOnlineBar.6
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    int iIntValue = ((Integer) valueAnimator2.getAnimatedValue()).intValue();
                    LiveLayerOnlineBar.this.updateMemberCount(iIntValue);
                    OnMemberCountChangedListener onMemberCountChangedListener = LiveLayerOnlineBar.this.onMemberCountChangedListener;
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

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int iMin;
        final boolean z6 = false;
        if ((!this.supportFold && this.onBarClickListener == null) || !this.avatarShown) {
            return false;
        }
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        if (this.gestureDetector == null) {
            this.gestureDetector = new GestureDetector(getContext(), new GestureDetector.OnGestureListener() { // from class: com.narvii.livelayer.LiveLayerOnlineBar.3
                @Override // android.view.GestureDetector.OnGestureListener
                public boolean onDown(MotionEvent motionEvent2) {
                    return false;
                }

                @Override // android.view.GestureDetector.OnGestureListener
                public boolean onFling(MotionEvent motionEvent2, MotionEvent motionEvent3, float f, float f6) {
                    return false;
                }

                @Override // android.view.GestureDetector.OnGestureListener
                public void onLongPress(MotionEvent motionEvent2) {
                }

                @Override // android.view.GestureDetector.OnGestureListener
                public boolean onScroll(MotionEvent motionEvent2, MotionEvent motionEvent3, float f, float f6) {
                    return false;
                }

                @Override // android.view.GestureDetector.OnGestureListener
                public boolean onSingleTapUp(MotionEvent motionEvent2) {
                    return false;
                }

                @Override // android.view.GestureDetector.OnGestureListener
                public void onShowPress(MotionEvent motionEvent2) {
                    LiveLayerOnlineBar.this.showPress(true);
                }
            });
        }
        this.mVelocityTracker.addMovement(motionEvent);
        this.gestureDetector.onTouchEvent(motionEvent);
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            ValueAnimator valueAnimator = this.foldAnimator;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                this.foldAnimator.end();
            }
            this.tapping = true;
            this.initialMotionX = motionEvent.getRawX();
            this.initialWidth = getWidth();
        } else if (action == 1) {
            showPress(false);
            if (this.isDragging) {
                Handler handler = Utils.handler;
                handler.removeCallbacks(this.dataSource.checkRunnable);
                handler.postDelayed(this.dataSource.checkRunnable, getRandomDelayTime());
                resetShadowColor(shadowColor);
                int rawX = (int) (motionEvent.getRawX() - this.initialMotionX);
                int expandWidth = getExpandWidth() / 4;
                this.mVelocityTracker.computeCurrentVelocity(1000, this.mMaximumFlingVelocity);
                float xVelocity = this.mVelocityTracker.getXVelocity(0);
                float fAbs = Math.abs(xVelocity);
                if (!this.fold ? !(!Utils.isRtl() ? xVelocity >= (-this.mMinimumFlingVelocity) : xVelocity <= this.mMinimumFlingVelocity) : !(!Utils.isRtl() ? xVelocity <= this.mMinimumFlingVelocity : xVelocity >= (-this.mMinimumFlingVelocity))) {
                    z6 = true;
                }
                if (!z6 && ((this.fold && (!Utils.isRtl() ? rawX > expandWidth : rawX < (-expandWidth))) || (!this.fold && (!Utils.isRtl() ? rawX < (-expandWidth) : rawX > expandWidth)))) {
                    z6 = true;
                }
                View childAt = this.mainLayout.getChildAt(this.avatarCount - 1);
                int iMin2 = (int) (this.avatarSize * (1.0f - this.overlapRatio));
                int marginStart = ViewUtils.getMarginStart(childAt.getLayoutParams());
                if (z6 != this.fold) {
                    iMin2 = Math.min(iMin2, ((this.avatarSize / 2) - ((this.avatarCount - 2) * iMin2)) - this.onlineTextLayout.getWidth());
                }
                ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(marginStart, iMin2);
                this.foldAnimator = valueAnimatorOfInt;
                valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.livelayer.LiveLayerOnlineBar.4
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        LiveLayerOnlineBar.this.moveLayout(((Integer) valueAnimator2.getAnimatedValue()).intValue());
                    }
                });
                int iAbs = Math.abs(iMin2 - marginStart);
                int iMin3 = Math.min(fAbs > 0.0f ? Math.round(Math.abs(iAbs / fAbs) * 1000.0f) : Math.round(Math.abs(iAbs / 50.0f) * 1000.0f), 250);
                Log.d("speed", iAbs + "-" + fAbs + "-" + iMin3);
                this.foldAnimator.setDuration((long) iMin3);
                this.foldAnimator.start();
                this.foldAnimator.addListener(new Animator.AnimatorListener() { // from class: com.narvii.livelayer.LiveLayerOnlineBar.5
                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationRepeat(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        LiveLayerOnlineBar.this.foldAnimator = null;
                        LiveLayerOnlineBar liveLayerOnlineBar = LiveLayerOnlineBar.this;
                        liveLayerOnlineBar.tapping = false;
                        liveLayerOnlineBar.isDragging = false;
                        if (!z6) {
                            LiveLayerOnlineBar liveLayerOnlineBar2 = LiveLayerOnlineBar.this;
                            liveLayerOnlineBar2.goFold(liveLayerOnlineBar2.fold);
                            return;
                        }
                        LiveLayerOnlineBar liveLayerOnlineBar3 = LiveLayerOnlineBar.this;
                        liveLayerOnlineBar3.goFold(!liveLayerOnlineBar3.fold);
                        LiveLayerOnlineBar liveLayerOnlineBar4 = LiveLayerOnlineBar.this;
                        OnFoldChangedListener onFoldChangedListener = liveLayerOnlineBar4.onFoldChangedListener;
                        if (onFoldChangedListener != null) {
                            onFoldChangedListener.onFoldChanged(liveLayerOnlineBar4.fold);
                        }
                    }
                });
            } else {
                this.tapping = false;
                View.OnClickListener onClickListener = this.onBarClickListener;
                if (onClickListener != null) {
                    onClickListener.onClick(this);
                }
            }
        } else if (action != 2) {
            if (action == 3) {
                this.tapping = false;
                this.isDragging = false;
                showPress(false);
                goFold(this.fold);
                resetShadowColor(shadowColor);
            }
        } else {
            if (!this.supportFold) {
                return true;
            }
            int rawX2 = (int) (motionEvent.getRawX() - this.initialMotionX);
            int iAbs2 = Math.abs(rawX2);
            if (iAbs2 > this.mTouchSlop) {
                this.isDragging = true;
            }
            if (this.isDragging) {
                int i10 = (int) (this.avatarSize * (1.0f - this.overlapRatio));
                showPress(false);
                if (this.fold) {
                    iAbs2 = Utils.isRtl() ? 0 : 0;
                    iMin = Math.min(i10, (((this.avatarSize / 2) - ((this.avatarCount - 2) * i10)) + iAbs2) - this.onlineTextLayout.getWidth());
                } else {
                    iAbs2 = Utils.isRtl() ? 0 : 0;
                    iMin = i10 - iAbs2;
                    Log.d("marginStart", iMin + "-" + i10);
                }
                cancelAnimation(true);
                this.mainLayout.setShouldClip(true);
                this.onlineTextLayout.setVisibility(0);
                int i11 = 0;
                while (i11 < this.avatarCount) {
                    i11++;
                    View childAt2 = this.mainLayout.getChildAt(i11);
                    if (childAt2 != null) {
                        childAt2.setVisibility(0);
                    }
                }
                moveLayout(iMin);
            }
        }
        return true;
    }

    @Override // com.narvii.livelayer.ILiveLayerView
    public void onUserJoined(User user) {
        if (user == null) {
            return;
        }
        this.animating = true;
        Handler handler = Utils.handler;
        handler.removeCallbacks(this.dataSource.correctMembersCountRunnable);
        View view = this.userJoinedView;
        if (view != null) {
            removeView(view);
        }
        View viewInflate = LayoutInflater.from(getContext()).inflate((this.fold || this.fromCBB) ? R.layout.live_layer_online_member_new_user_fold : R.layout.live_layer_online_member_new_user, (ViewGroup) this, false);
        this.userJoinedView = viewInflate;
        UserAvatarLayout userAvatarLayout = (UserAvatarLayout) viewInflate.findViewById(R.id.user_avatar_layout);
        setAvatarSize(userAvatarLayout);
        setUserAvatarView(userAvatarLayout, user);
        ((ThumbImageView) this.userJoinedView.findViewById(R.id.avatar)).setForceRequestSize(getForceRequestWidth(), getForceRequestHeight());
        this.userJoinedView.setVisibility(8);
        if (!this.fold && !this.fromCBB) {
            TextView textView = (TextView) this.userJoinedView.findViewById(R.id.user_came);
            if (this.userJoinedText != 0) {
                textView.setText(getContext().getString(this.userJoinedText, user.ellipticalNickname(12)));
            } else {
                textView.setText(user.ellipticalNickname(30));
            }
            textView.setBackgroundResource(user.isSubscribeMemberShip() ? R.drawable.online_new_user_bg_amino_plus : R.drawable.online_new_user_bg);
        }
        addView(this.userJoinedView, 3);
        String str = user.icon;
        if (str != null) {
            this.preloadHelper.preloadIcon(NVImageView.fitSize(str, null, getPreloadAvatarSize(), getPreloadAvatarSize()), getPreloadAvatarSize(), null);
        }
        handler.removeCallbacks(this.joinAnimRunnable);
        AnonymousClass7 anonymousClass7 = new AnonymousClass7(user);
        this.joinAnimRunnable = anonymousClass7;
        Utils.postDelayed(anonymousClass7, 1500L);
    }

    public void setLift(int i10) {
        FrameLayout.LayoutParams layoutParams;
        if (this.lift == i10) {
            return;
        }
        this.lift = i10;
        if (!(getLayoutParams() instanceof FrameLayout.LayoutParams) || (layoutParams = (FrameLayout.LayoutParams) getLayoutParams()) == null) {
            return;
        }
        layoutParams.bottomMargin = i10 + getContext().getResources().getDimensionPixelSize(R.dimen.live_layer_online_bar_margin_bottom);
        setLayoutParams(layoutParams);
    }

    public void setShowMore(boolean z6) {
        this.showMore = z6;
        resetMoreLayer();
    }

    @Override // com.narvii.livelayer.ILiveLayerView
    public void setUserList(List<User> list, int i10) {
        setUserList(list, i10, true);
    }

    public void subscribeTopic(String str) {
        if (str == null) {
            return;
        }
        NVContext nVContext = Utils.getNVContext(getContext());
        LiveLayerService liveLayerService = (LiveLayerService) nVContext.getService("liveLayer");
        if (liveLayerService != null) {
            liveLayerService.subscribe(str, this.dataSource.liveLayerEventListener);
        } else {
            if (this.liveLayerHelper == null) {
                this.liveLayerHelper = new LiveLayerHelper(nVContext, this.cid);
            }
            ((LiveLayerWsService) nVContext.getService("liveLayerWS")).subscribe(this.cid, this.liveLayerHelper.getNdtopic(str), this.dataSource.liveLayerEventListener);
        }
        this.currentTopic = str;
    }

    public void unsubscribeTopic() {
        if (this.currentTopic == null) {
            return;
        }
        NVContext nVContext = Utils.getNVContext(getContext());
        LiveLayerService liveLayerService = (LiveLayerService) nVContext.getService("liveLayer");
        if (liveLayerService != null) {
            liveLayerService.unsubscribe(this.currentTopic, this.dataSource.liveLayerEventListener);
        } else {
            if (this.liveLayerHelper == null) {
                this.liveLayerHelper = new LiveLayerHelper(nVContext, this.cid);
            }
            ((LiveLayerWsService) nVContext.getService("liveLayerWS")).unsubscribe(this.cid, this.liveLayerHelper.getNdtopic(this.currentTopic), this.dataSource.liveLayerEventListener);
        }
        this.currentTopic = null;
    }

    public LiveLayerOnlineBar(Context context, AttributeSet attributeSet) {
        int iDpToPxInt;
        int i10;
        super(context, attributeSet);
        this.avatarStrokeWidth = -1;
        this.maxAvatarCount = 4;
        this.autoFitAvatarCountMax = -1;
        this.minAvatarCount = 1;
        this.random = new Random();
        this.shouldFilterUserList = true;
        this.organizerInList = true;
        this.emptyImageListener = new ImageLoader.ImageListener() { // from class: com.narvii.livelayer.LiveLayerOnlineBar.1
            @Override // com.android.volley.Response.ErrorListener
            public void onErrorResponse(VolleyError volleyError) {
            }

            @Override // com.android.volley.toolbox.ImageLoader.ImageListener
            public void onResponse(ImageLoader.ImageContainer imageContainer, boolean z6) {
            }
        };
        this.nextRunnable = new Runnable() { // from class: com.narvii.livelayer.LiveLayerOnlineBar.2
            @Override // java.lang.Runnable
            public void run() {
                LiveLayerOnlineBar liveLayerOnlineBar = LiveLayerOnlineBar.this;
                liveLayerOnlineBar.animating = false;
                liveLayerOnlineBar.dataSource.checkUserJoined();
            }
        };
        NVContext nVContext = Utils.getNVContext(getContext());
        LiveLayerDataSource liveLayerDataSource = new LiveLayerDataSource(nVContext);
        this.dataSource = liveLayerDataSource;
        liveLayerDataSource.setLiveLayerView(this);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop() / 2;
        this.mMinimumFlingVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
        this.mMaximumFlingVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
        View.inflate(getContext(), R.layout.live_layer_online_member_bar, this);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, com.narvii.amino.R.styleable.LiveLayerOnlineBar);
        this.defaultAvatarSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(3, getResources().getDimensionPixelSize(R.dimen.live_layer_online_avatar_width));
        this.onlineText = typedArrayObtainStyledAttributes.getResourceId(7, R.string.online_status_n_members_online);
        this.userJoinedText = typedArrayObtainStyledAttributes.getResourceId(16, 0);
        this.onlineTextOne = typedArrayObtainStyledAttributes.getResourceId(8, 0);
        this.autoFitAvatarSize = typedArrayObtainStyledAttributes.getBoolean(2, false);
        this.autoFitAvatarCountMax = typedArrayObtainStyledAttributes.getInteger(1, -1);
        this.minAvatarCount = typedArrayObtainStyledAttributes.getInteger(6, 1);
        this.maxAvatarCount = typedArrayObtainStyledAttributes.getInteger(5, 4);
        this.showMore = typedArrayObtainStyledAttributes.getBoolean(11, false);
        this.showShadow = typedArrayObtainStyledAttributes.getBoolean(13, false);
        this.overlapRatio = typedArrayObtainStyledAttributes.getFloat(9, 0.25f);
        this.showRightCorner = typedArrayObtainStyledAttributes.getBoolean(12, true);
        this.supportFold = typedArrayObtainStyledAttributes.getBoolean(14, false);
        this.barColor = typedArrayObtainStyledAttributes.getColor(4, -872415232);
        this.animateLayoutChanges = typedArrayObtainStyledAttributes.getBoolean(0, true);
        this.showFadeAnimation = typedArrayObtainStyledAttributes.getBoolean(10, this.supportFold);
        this.textMarginEnd = typedArrayObtainStyledAttributes.getDimensionPixelSize(15, getResources().getDimensionPixelSize(R.dimen.live_layer_text_marginEnd));
        typedArrayObtainStyledAttributes.recycle();
        if (this.showShadow) {
            iDpToPxInt = Utils.dpToPxInt(getContext(), 3.0f);
        } else {
            iDpToPxInt = 0;
        }
        this.avatarShadowSize = iDpToPxInt;
        this.avatarSize = this.defaultAvatarSize;
        this.mainLayout = (ClipLayout) findViewById(R.id.main_layout);
        View viewFindViewById = findViewById(R.id.green_oval);
        this.greenOval = viewFindViewById;
        ViewUtils.setMarginStart(viewFindViewById.getLayoutParams(), (this.avatarSize / 2) + getContext().getResources().getDimensionPixelSize(R.dimen.live_layer_green_oval_marginStart));
        View viewFindViewById2 = findViewById(R.id.recent_avatar);
        this.recentAvatarLayout = viewFindViewById2;
        UserAvatarLayout userAvatarLayout = (UserAvatarLayout) viewFindViewById2.findViewById(R.id.user_avatar_layout);
        this.recentAvatar = userAvatarLayout;
        if (this.showShadow) {
            i10 = this.avatarShadowSize;
        } else {
            i10 = 0;
        }
        userAvatarLayout.setAvatarShadow(i10, shadowColor);
        this.recentAvatar.getAvatarView().setForceRequestSize(getForceRequestWidth(), getForceRequestHeight());
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
        this.preloadHelper = new LiveLayerPreloadHelper(nVContext);
    }

    private void adjustOnlineTextBarWidth(boolean z6) {
        int i10;
        int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.live_layer_green_oval_marginStart);
        if (z6) {
            i10 = this.avatarSize / 2;
        } else {
            i10 = 0;
        }
        ViewUtils.setMarginStart(this.greenOval.getLayoutParams(), dimensionPixelSize + i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void relayout() {
        int i10;
        setUpAvatarLayout();
        setUpTextLayout();
        boolean z6 = false;
        if (this.fold) {
            resetShadowColor(0);
        } else {
            resetShadowColor(shadowColor);
        }
        resetMoreLayer();
        if (this.avatarCount >= this.minAvatarCount) {
            z6 = true;
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
        int i10 = this.avatarStrokeWidth;
        if (i10 != -1) {
            userAvatarLayout.setAvatarStroke(i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startHoloAnimation(User user) {
        int i10;
        View viewFindViewById = findViewById(R.id.live_layer_halo);
        if (viewFindViewById != null) {
            if (user.isSubscribeMemberShip()) {
                i10 = R.drawable.live_layer_halo_amino_plus;
            } else {
                i10 = R.drawable.live_layer_halo;
            }
            viewFindViewById.setBackgroundResource(i10);
            AlphaAnimation holoAlphaAnimation = getHoloAlphaAnimation();
            ScaleAnimation scaleAnimation = new ScaleAnimation(1.0f, 1.24f, 1.0f, 1.24f, 1, 0.5f, 1, 0.5f);
            scaleAnimation.setInterpolator(new Interpolator() { // from class: com.narvii.livelayer.LiveLayerOnlineBar.8
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
            animationSet.addAnimation(holoAlphaAnimation);
            animationSet.addAnimation(scaleAnimation);
            this.holoAnimation = animationSet;
            startAnimation(viewFindViewById, animationSet, null);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (getParent() instanceof ViewGroup) {
            ((ViewGroup) getParent()).setClipChildren(false);
            ((ViewGroup) getParent()).setClipToPadding(false);
        }
        Handler handler = Utils.handler;
        handler.removeCallbacks(this.dataSource.checkRunnable);
        handler.postDelayed(this.dataSource.checkRunnable, 2000L);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        cancelAnimation(true);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        int measuredWidth;
        int dimensionPixelSize;
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
            if (this.autoFitAvatarSize) {
                float f = i12 - this.defaultAvatarSize;
                float f6 = this.avatarSize;
                float f7 = this.overlapRatio;
                int i14 = (int) ((f / (f6 * (1.0f - f7))) + 1.0f);
                this.maxAvatarCount = i14;
                this.avatarSize = (int) (i12 / (((1.0f - f7) * (i14 - 1)) + 1.0f));
                onAvatarSizeChanged();
                setUserList(this.dataSource.getUserList());
                super.onMeasure(i10, i11);
            } else if (i13 != -1) {
                int iMin = Math.min(i13, (int) (((i12 - this.defaultAvatarSize) / (this.avatarSize * (1.0f - this.overlapRatio))) + 1.0f));
                int i15 = this.minAvatarCount;
                if (iMin < i15) {
                    iMin = i15;
                }
                if (iMin != this.maxAvatarCount) {
                    this.maxAvatarCount = iMin;
                    setUserList(this.dataSource.getUserList());
                    super.onMeasure(i10, i11);
                }
            }
        }
        int measuredWidth2 = getMeasuredWidth();
        if (this.supportFold) {
            dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.live_layer_fold_height);
        } else {
            dimensionPixelSize = this.avatarSize;
        }
        setMeasuredDimension(measuredWidth2, dimensionPixelSize + getPaddingTop() + getPaddingBottom());
    }

    public void setUserList(List<User> list, int i10, boolean z6) {
        UserAvatarLayout userAvatarLayout;
        this.organizerInList = z6;
        if (this.shouldFilterUserList) {
            list = this.dataSource.filterHelper.filter(list);
        }
        int size = CollectionUtils.getSize(list);
        if (size < this.maxAvatarCount && z6) {
            i10 = Math.min(i10, size);
        }
        LiveLayerDataSource liveLayerDataSource = this.dataSource;
        if (!liveLayerDataSource.shared) {
            liveLayerDataSource.getUserQueue().clear();
        }
        cancelAnimation(false);
        this.mainLayout.setShouldClip(false);
        View view = this.userJoinedView;
        if (view != null) {
            removeView(view);
        }
        if (list == null) {
            list = new ArrayList<>();
        }
        this.dataSource.setUserList(new LinkedList<>(list));
        this.avatarCount = 0;
        this.recentAvatarLayout.setVisibility(8);
        if (z6 && CollectionUtils.isEmpty(list)) {
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
        this.dataSource.setCurrentMembersCount(Math.max(i10, this.avatarCount));
        onMembersCountChanged(this.dataSource.getCurrentMembersCount());
        goFold(this.fold);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public View getAvatarView(User user) {
        View avatarView = getAvatarView();
        setUserAvatarView((UserAvatarLayout) avatarView.findViewById(R.id.user_avatar_layout), user);
        return avatarView;
    }
}
