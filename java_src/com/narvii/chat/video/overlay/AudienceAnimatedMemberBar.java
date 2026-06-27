package com.narvii.chat.video.overlay;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
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
import com.narvii.amino.mastes.R;
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

/* loaded from: classes2.dex */
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

    public interface OnAvatarShownChangeListener {
        void onAvatarShownChanged(boolean z);
    }

    interface OnMemberCountChangedListener {
        void onMemberCountChanged(int i);
    }

    static /* synthetic */ int access$308(AudienceAnimatedMemberBar audienceAnimatedMemberBar) {
        int i = audienceAnimatedMemberBar.currentMembersCount;
        audienceAnimatedMemberBar.currentMembersCount = i + 1;
        return i;
    }

    public AudienceAnimatedMemberBar(Context context, AttributeSet attributeSet) {
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
        FrameLayout.inflate(getContext(), R.layout.live_layer_online_member_bar, this);
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
        this.recentAvatarLayout = findViewById(R.id.recent_avatar);
        this.recentAvatar = (UserAvatarLayout) this.recentAvatarLayout.findViewById(R.id.user_avatar_layout);
        this.recentAvatar.setAvatarShadow(this.showShadow ? this.avatarShadowSize : 0, shadowColor);
        NVImageView nVImageView = (NVImageView) findViewById(R.id.bar);
        if (!this.showRightCorner) {
            nVImageView.setCornerMask(Utils.isRtl() ? 9 : 6);
        }
        nVImageView.setImageDrawable(new ColorDrawable(this.barColor));
        setClipChildren(false);
        setClipToPadding(false);
        this.onlineTextLayout = findViewById(R.id.online_text_layout);
        this.onlineTextView = (TextView) findViewById(R.id.online_tv);
        ViewUtils.setMarginEnd(this.onlineTextView.getLayoutParams(), this.textMarginEnd);
        this.halo = findViewById(R.id.live_layer_halo);
        onAvatarSizeChanged();
    }

    static void startAnimation(View view, Animation animation, Animation.AnimationListener animationListener) {
        if (Build.VERSION.SDK_INT < 16) {
            if (animationListener != null) {
                animationListener.onAnimationEnd(animation);
            }
        } else {
            if (animationListener != null) {
                animation.setAnimationListener(animationListener);
            }
            view.startAnimation(animation);
        }
    }

    public void notifyUserChanged(List<ChannelUser> list) throws Resources.NotFoundException {
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
        boolean z = false;
        ArrayList arrayList2 = new ArrayList(this.userList);
        Iterator<User> it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            if (!Utils.containsId(arrayList, it2.next().id())) {
                it2.remove();
                z = true;
            }
        }
        ArrayList arrayList3 = new ArrayList();
        if (z) {
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

    public void onUserJoined(List<User> list, int i) throws Resources.NotFoundException {
        int i2 = this.avatarCount;
        int i3 = this.minAvatarCount;
        if (i2 < i3 || i < i3) {
            this.userQueue.clear();
            Iterator<User> it = list.iterator();
            while (it.hasNext()) {
                addUserIntoList(it.next());
            }
            setUserList(this.userList, i);
            return;
        }
        Iterator<User> it2 = list.iterator();
        while (it2.hasNext()) {
            addUsersIntoQueue(it2.next());
        }
        Utils.post(this.checkRunnable);
    }

    public void onUserLeft(List<User> list) {
        if (CollectionUtils.isEmpty(list)) {
            return;
        }
        Iterator<User> it = this.userList.iterator();
        int i = this.avatarCount;
        for (int i2 = 0; it.hasNext() && i2 < i; i2++) {
            User next = it.next();
            Iterator<User> it2 = list.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                if (Utils.isEqualsNotNull(it2.next().id(), next.id())) {
                    try {
                        this.mainLayout.removeViewAt(this.avatarCount - i2);
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

    public void setOnAvatarShownChangeListener(OnAvatarShownChangeListener onAvatarShownChangeListener) {
        this.onAvatarShownChangeListener = onAvatarShownChangeListener;
    }

    public boolean isAvatarShown() {
        return this.avatarShown;
    }

    public void setOnMemberCountChangedListener(OnMemberCountChangedListener onMemberCountChangedListener) {
        this.onMemberCountChangedListener = onMemberCountChangedListener;
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
            int i = layoutParams.height;
            int i2 = (this.avatarSize * 5) / 6;
            if (i != i2) {
                layoutParams.height = i2;
                this.onlineTextLayout.setLayoutParams(layoutParams);
            }
        }
        View view2 = this.halo;
        if (view2 != null) {
            ViewGroup.LayoutParams layoutParams2 = view2.getLayoutParams();
            int iDpToPx = (int) Utils.dpToPx(getContext(), 6.0f);
            int i3 = this.avatarSize;
            layoutParams2.width = i3 + iDpToPx;
            layoutParams2.height = i3 + iDpToPx;
            this.halo.setLayoutParams(layoutParams2);
        }
    }

    private void setAvatarSize(View view) {
        if (view == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        int i = this.avatarSize;
        layoutParams.width = i;
        layoutParams.height = i;
        view.setLayoutParams(layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkUserJoined() {
        if (CollectionUtils.isEmpty(this.userQueue) || this.animating) {
            return;
        }
        onUserJoined(this.userQueue.get(0));
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (getParent() instanceof ViewGroup) {
            ((ViewGroup) getParent()).setClipChildren(false);
            ((ViewGroup) getParent()).setClipToPadding(false);
        }
        Utils.handler.removeCallbacks(this.checkRunnable);
        Utils.handler.postDelayed(this.checkRunnable, 2000L);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.avatarShown;
    }

    private void resetShadowColor(int i) {
        int i2;
        UserAvatarLayout userAvatarLayout;
        int i3 = 0;
        while (true) {
            i2 = this.avatarCount;
            if (i3 >= i2 - 1) {
                break;
            }
            UserAvatarLayout userAvatarLayout2 = (UserAvatarLayout) this.mainLayout.getChildAt((i2 - 1) - i3).findViewById(R.id.user_avatar_layout);
            if (userAvatarLayout2 != null) {
                userAvatarLayout2.setAvatarShadow(this.avatarShadowSize, i);
            }
            i3++;
        }
        if (i2 <= 0 || (userAvatarLayout = (UserAvatarLayout) this.mainLayout.getChildAt(i2).findViewById(R.id.user_avatar_layout)) == null) {
            return;
        }
        userAvatarLayout.setAvatarShadow(this.avatarShadowSize, 0);
    }

    private View getAvatarView() {
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.live_layer_online_member_avatar, (ViewGroup) this, false);
        UserAvatarLayout userAvatarLayout = (UserAvatarLayout) viewInflate.findViewById(R.id.user_avatar_layout);
        ViewGroup.LayoutParams layoutParams = userAvatarLayout.getLayoutParams();
        int i = this.avatarSize;
        layoutParams.width = i;
        layoutParams.height = i;
        userAvatarLayout.setLayoutParams(layoutParams);
        if (!this.showShadow) {
            userAvatarLayout.setAvatarShadow(0, shadowColor);
        }
        return viewInflate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public View getAvatarView(User user) {
        View avatarView = getAvatarView();
        setUserAvatarView((UserAvatarLayout) avatarView.findViewById(R.id.user_avatar_layout), user);
        return avatarView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setUserAvatarView(UserAvatarLayout userAvatarLayout, User user) {
        userAvatarLayout.setUser(user);
    }

    private void setUserList(List<User> list) throws Resources.NotFoundException {
        setUserList(list, this.currentMembersCount);
    }

    public void setUserList(List<User> list, int i) throws Resources.NotFoundException {
        UserAvatarLayout userAvatarLayout;
        int size = CollectionUtils.getSize(list);
        if (size < this.maxAvatarCount) {
            i = Math.min(i, size);
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
            for (int i2 = 1; i2 < childCount; i2++) {
                this.mainLayout.removeViewAt(1);
            }
            relayout();
            return;
        }
        this.avatarCount = Math.min(this.maxAvatarCount, list.size());
        int childCount2 = this.mainLayout.getChildCount() - 1;
        int i3 = this.avatarCount;
        if (i3 >= this.minAvatarCount) {
            int i4 = childCount2 - i3;
            if (i4 > 0) {
                for (int i5 = 0; i5 < i4; i5++) {
                    this.mainLayout.removeViewAt(1);
                }
            } else if (i4 < 0) {
                for (int i6 = 0; i6 < (-i4); i6++) {
                    this.mainLayout.addView(getAvatarView());
                }
            }
            int i7 = 1;
            for (int i8 = this.avatarCount - 1; i8 >= 0; i8--) {
                User user = list.get(i8);
                View childAt = this.mainLayout.getChildAt(i7);
                i7++;
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
            for (int i9 = 1; i9 < childCount3; i9++) {
                this.mainLayout.removeViewAt(1);
            }
            this.avatarCount = 0;
        }
        relayout();
        this.currentMembersCount = i;
        this.currentMembersCount = Math.max(this.currentMembersCount, this.avatarCount);
        onMembersCountChanged(this.currentMembersCount);
    }

    private void cancelAnimation(boolean z) {
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
        Utils.handler.removeCallbacks(this.joinAnimRunnable);
        Utils.handler.removeCallbacks(this.checkRunnable);
        Utils.handler.removeCallbacks(this.nextRunnable);
        Runnable runnable = this.animEndRunnable;
        if (runnable != null) {
            Utils.handler.removeCallbacks(runnable);
            if (z) {
                this.animEndRunnable.run();
            }
            this.animEndRunnable = null;
        }
        Utils.handler.removeCallbacks(this.nextRunnable);
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

    /* JADX INFO: Access modifiers changed from: private */
    public void onMembersCountChanged(int i) {
        ValueAnimator valueAnimator = this.animator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        int i2 = this.currentMembersCount;
        if (i != i2) {
            this.animator = ValueAnimator.ofInt(i, i2);
            this.animator.setDuration(Math.min(800, Math.abs(this.currentMembersCount - i) * 100));
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
            updateMemberCount(i2);
        }
        resetMoreLayer();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateMemberCount(int i) {
        int i2;
        TextView textView = this.onlineTextView;
        if (textView != null) {
            if (i == 1 && (i2 = this.onlineTextOne) != 0) {
                textView.setText(i2);
            } else {
                this.onlineTextView.setText(getResources().getString(this.onlineText, String.valueOf(i)));
            }
        }
        TextView textView2 = this.foldCountView;
        if (textView2 != null) {
            textView2.setText(String.valueOf(i));
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
        int i = this.avatarSize;
        layoutParams.width = i;
        layoutParams.height = i;
        viewFindViewById2.setLayoutParams(layoutParams);
        int i2 = (this.avatarSize * 2) / 3;
        viewFindViewById.getLayoutParams().width = i2;
        viewFindViewById.getLayoutParams().height = (i2 * 6) / 20;
        viewFindViewById.requestLayout();
        int visibility = viewFindViewById.getVisibility();
        int i3 = this.currentMembersCount > this.avatarCount ? 0 : 8;
        viewFindViewById.setVisibility(i3);
        viewFindViewById2.setVisibility(i3);
        if (visibility == 8 && i3 == 0) {
            startAnimation(viewFindViewById, AnimationUtils.loadAnimation(getContext(), R.anim.fade_in), null);
            startAnimation(viewFindViewById2, AnimationUtils.loadAnimation(getContext(), R.anim.fade_in), null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addUserIntoList(User user) {
        this.userList.addFirst(user);
    }

    private void addUsersIntoQueue(User user) {
        this.userQueue.addLast(user);
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
        this.userJoinedView = LayoutInflater.from(getContext()).inflate(R.layout.live_layer_online_member_new_user, (ViewGroup) this, false);
        UserAvatarLayout userAvatarLayout = (UserAvatarLayout) this.userJoinedView.findViewById(R.id.user_avatar_layout);
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
        this.joinAnimRunnable = new AnonymousClass4(user, communityConfigHelper);
        Utils.postDelayed(this.joinAnimRunnable, 1000L);
    }

    /* renamed from: com.narvii.chat.video.overlay.AudienceAnimatedMemberBar$4, reason: invalid class name */
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
                                float f2 = (f / 0.2f) - 0.5f;
                                return 1.0f - ((f2 * f2) * 4.0f);
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
                            float f2 = (f / 1.0f) - 0.5f;
                            return 1.0f - ((f2 * f2) * 4.0f);
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
                    final boolean z = audienceAnimatedMemberBar2.avatarCount < audienceAnimatedMemberBar2.maxAvatarCount;
                    AudienceAnimatedMemberBar.access$308(AudienceAnimatedMemberBar.this);
                    AudienceAnimatedMemberBar audienceAnimatedMemberBar3 = AudienceAnimatedMemberBar.this;
                    audienceAnimatedMemberBar3.onMembersCountChanged(audienceAnimatedMemberBar3.currentMembersCount - 1);
                    AnonymousClass4 anonymousClass4 = AnonymousClass4.this;
                    View avatarView = AudienceAnimatedMemberBar.this.getAvatarView(anonymousClass4.val$user);
                    AudienceAnimatedMemberBar audienceAnimatedMemberBar4 = AudienceAnimatedMemberBar.this;
                    audienceAnimatedMemberBar4.mainLayout.addView(avatarView, audienceAnimatedMemberBar4.avatarCount + 1);
                    AnonymousClass4 anonymousClass42 = AnonymousClass4.this;
                    AudienceAnimatedMemberBar audienceAnimatedMemberBar5 = AudienceAnimatedMemberBar.this;
                    audienceAnimatedMemberBar5.setUserAvatarView(audienceAnimatedMemberBar5.recentAvatar, anonymousClass42.val$user);
                    AudienceAnimatedMemberBar audienceAnimatedMemberBar6 = AudienceAnimatedMemberBar.this;
                    audienceAnimatedMemberBar6.avatarCount++;
                    final int i = (int) (audienceAnimatedMemberBar6.avatarSize * (1.0f - audienceAnimatedMemberBar6.overlapRatio));
                    if (audienceAnimatedMemberBar6.layoutAnimator != null && AudienceAnimatedMemberBar.this.layoutAnimator.isRunning()) {
                        AudienceAnimatedMemberBar.this.layoutAnimator.end();
                    }
                    AudienceAnimatedMemberBar.this.layoutAnimator = ValueAnimator.ofInt(0, i);
                    AudienceAnimatedMemberBar.this.layoutAnimator.setDuration(200L);
                    AudienceAnimatedMemberBar.this.layoutAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.chat.video.overlay.AudienceAnimatedMemberBar.4.1.5
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public void onAnimationUpdate(ValueAnimator valueAnimator) {
                            AudienceAnimatedMemberBar audienceAnimatedMemberBar7;
                            int i2;
                            int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                            int i3 = 0;
                            int i4 = 0;
                            while (true) {
                                audienceAnimatedMemberBar7 = AudienceAnimatedMemberBar.this;
                                i2 = audienceAnimatedMemberBar7.avatarCount;
                                if (i3 >= i2 - 1) {
                                    break;
                                }
                                View childAt = audienceAnimatedMemberBar7.mainLayout.getChildAt((i2 - 1) - i3);
                                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                                float f = iIntValue;
                                ViewUtils.setMarginStart(layoutParams, (int) ((r5.avatarSize * (1.0f - AudienceAnimatedMemberBar.this.overlapRatio) * i4) + f));
                                childAt.setLayoutParams(layoutParams);
                                i4++;
                                if (!z && i3 == AudienceAnimatedMemberBar.this.avatarCount - 2) {
                                    int i5 = i;
                                    childAt.setAlpha(f >= ((float) i5) * 0.3f ? (i5 - iIntValue) / (i5 * 0.7f) : 1.0f);
                                }
                                i3++;
                            }
                            if (i2 > 0) {
                                try {
                                    UserAvatarLayout userAvatarLayout = (UserAvatarLayout) audienceAnimatedMemberBar7.mainLayout.getChildAt(i2 - 1).findViewById(R.id.user_avatar_layout);
                                    if (userAvatarLayout != null) {
                                        userAvatarLayout.setAvatarShadow(AudienceAnimatedMemberBar.this.avatarShadowSize, AudienceAnimatedMemberBar.shadowColor);
                                    }
                                } catch (Exception unused) {
                                }
                            }
                            if (z) {
                                ViewGroup.LayoutParams layoutParams2 = AudienceAnimatedMemberBar.this.onlineTextLayout.getLayoutParams();
                                int i6 = i;
                                int i7 = iIntValue + (i6 * (r2.avatarCount - 2));
                                int i8 = AudienceAnimatedMemberBar.this.avatarSize;
                                ViewUtils.setMarginStart(layoutParams2, (i7 + i8) - (i8 / 2));
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
                        public void onAnimationStart(Animator animator) {
                            AudienceAnimatedMemberBar.this.mainLayout.setShouldClip(false);
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) throws Resources.NotFoundException {
                            AudienceAnimatedMemberBar.this.layoutAnimator = null;
                            if (!z) {
                                AudienceAnimatedMemberBar.this.mainLayout.removeViewAt(1);
                                AudienceAnimatedMemberBar.this.avatarCount--;
                            }
                            AudienceAnimatedMemberBar.this.relayout();
                        }
                    });
                    AudienceAnimatedMemberBar.this.layoutAnimator.start();
                    Utils.handler.removeCallbacks(AudienceAnimatedMemberBar.this.nextRunnable);
                    Utils.postDelayed(AudienceAnimatedMemberBar.this.nextRunnable, r1.getRandomDelayTime());
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
                AudienceAnimatedMemberBar.this.userJoinedAnim = new TranslateAnimation(-Utils.getScreenWidth(r1.getContext()), 0.0f, 0.0f, 0.0f);
            } else {
                AudienceAnimatedMemberBar.this.userJoinedAnim = new TranslateAnimation(Utils.getScreenWidth(r1.getContext()), 0.0f, 0.0f, 0.0f);
            }
            AudienceAnimatedMemberBar.this.userJoinedAnim.setInterpolator(new OvershootInterpolator(0.7f));
            AudienceAnimatedMemberBar.this.userJoinedAnim.setDuration(300L);
            AudienceAnimatedMemberBar.this.userJoinedView.setVisibility(0);
            AudienceAnimatedMemberBar audienceAnimatedMemberBar = AudienceAnimatedMemberBar.this;
            AudienceAnimatedMemberBar.startAnimation(audienceAnimatedMemberBar.userJoinedView, audienceAnimatedMemberBar.userJoinedAnim, animationListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getRandomDelayTime() {
        return this.random.nextInt(1000) + 2000;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void relayout() throws Resources.NotFoundException {
        setUpAvatarLayout();
        setUpTextLayout();
        resetShadowColor(shadowColor);
        resetMoreLayer();
        boolean z = this.avatarCount >= this.minAvatarCount;
        if (this.avatarShown != z) {
            this.avatarShown = z;
            if (this.showFadeAnimation) {
                Animation animationLoadAnimation = AnimationUtils.loadAnimation(getContext(), z ? R.anim.fade_in : R.anim.fade_out);
                animationLoadAnimation.setDuration(400L);
                startAnimation(this, animationLoadAnimation, null);
            }
            OnAvatarShownChangeListener onAvatarShownChangeListener = this.onAvatarShownChangeListener;
            if (onAvatarShownChangeListener != null) {
                onAvatarShownChangeListener.onAvatarShownChanged(z);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        cancelAnimation(true);
    }

    private void setUpTextLayout() {
        this.onlineTextLayout.setVisibility((this.autoFitAvatarSize || this.avatarCount < this.minAvatarCount) ? 8 : 0);
        int i = this.avatarSize;
        ViewUtils.setMarginStart(this.onlineTextLayout, ((int) (((i * (1.0f - this.overlapRatio)) * (this.avatarCount - 1)) + i)) - (i / 2));
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) throws Resources.NotFoundException {
        ViewGroup.LayoutParams layoutParams;
        super.onMeasure(i, i2);
        int size = (View.MeasureSpec.getSize(i) - getPaddingLeft()) - getPaddingRight();
        int mode = View.MeasureSpec.getMode(i);
        if (this.autoFitAvatarCountMax != -1 && (layoutParams = this.onlineTextLayout.getLayoutParams()) != null) {
            this.onlineTextLayout.measure(View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(layoutParams.height, 1073741824));
        }
        int measuredWidth = size - (this.onlineTextLayout.getVisibility() == 8 ? 0 : this.onlineTextLayout.getMeasuredWidth() - (this.avatarSize / 2));
        if ((this.autoFitAvatarCountMax != -1 || this.autoFitAvatarSize) && mode != 0 && measuredWidth != this.maxWidth) {
            this.maxWidth = measuredWidth;
            int i3 = this.autoFitAvatarCountMax;
            if (i3 != -1) {
                int iMin = Math.min(i3, (int) (((measuredWidth - this.defaultAvatarSize) / (this.avatarSize * (1.0f - this.overlapRatio))) + 1.0f));
                int i4 = this.minAvatarCount;
                if (iMin < i4) {
                    iMin = i4;
                }
                if (iMin != this.maxAvatarCount) {
                    this.maxAvatarCount = iMin;
                    setUserList(this.userList);
                    super.onMeasure(i, i2);
                }
            } else if (this.autoFitAvatarSize) {
                int i5 = this.maxWidth;
                float f = i5 - this.defaultAvatarSize;
                float f2 = this.avatarSize;
                float f3 = this.overlapRatio;
                this.maxAvatarCount = (int) ((f / (f2 * (1.0f - f3))) + 1.0f);
                this.avatarSize = (int) (i5 / (((1.0f - f3) * (this.maxAvatarCount - 1)) + 1.0f));
                onAvatarSizeChanged();
                setUserList(this.userList);
                super.onMeasure(i, i2);
            }
        }
        setMeasuredDimension(getMeasuredWidth(), this.avatarSize + getPaddingTop() + getPaddingBottom());
    }

    private void setUpAvatarLayout() {
        if (this.avatarCount > this.maxAvatarCount) {
            Log.e("avatar count is beyond max");
        }
        int i = 0;
        while (i < this.avatarCount) {
            int i2 = i + 1;
            View childAt = this.mainLayout.getChildAt(i2);
            childAt.setVisibility(0);
            ViewUtils.setMarginStart(childAt, (this.avatarCount + (-1)) - i == 0 ? 0 : (int) (((r4 - 1) - i) * this.avatarSize * (1.0f - this.overlapRatio)));
            i = i2;
        }
    }
}
