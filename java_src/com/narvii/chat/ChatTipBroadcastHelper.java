package com.narvii.chat;

import android.content.Context;
import android.content.res.Resources;
import android.os.SystemClock;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.OvershootInterpolator;
import android.view.animation.TranslateAnimation;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.chat.video.ChatTipBroadcastBackground;
import com.narvii.livelayer.LiveLayerPreloadHelper;
import com.narvii.model.User;
import com.narvii.scene.poll.ScenePollPlayView;
import com.narvii.tipping.model.TipLog;
import com.narvii.util.CollectionUtils;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.text.TextUtils;
import com.narvii.widget.NVImageView;
import com.narvii.widget.UserAvatarLayout;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public abstract class ChatTipBroadcastHelper {
    public static final int AUTO_HIDE_DURATION = 3000;
    public static final int AUTO_HIDE_DURATION_WHEN_HAS_NEXT = 1000;
    Context context;
    boolean isActive;
    private final NVContext nvContext;
    boolean pendingAnimIn;
    LiveLayerPreloadHelper preloadHelper;
    boolean showingTip;
    long startHideRunnableTime;
    private TipLog tipLog;
    private View tipView;
    ViewGroup tipViewParent;
    List<TipLog> tipLogList = new ArrayList();
    Runnable hideRunnable = new Runnable() { // from class: com.narvii.chat.ChatTipBroadcastHelper.1
        @Override // java.lang.Runnable
        public void run() throws Resources.NotFoundException {
            ChatTipBroadcastHelper chatTipBroadcastHelper = ChatTipBroadcastHelper.this;
            chatTipBroadcastHelper.startHideRunnableTime = 0L;
            if (chatTipBroadcastHelper.tipView != null) {
                Animation animationLoadAnimation = AnimationUtils.loadAnimation(ChatTipBroadcastHelper.this.context, R.anim.fade_out);
                animationLoadAnimation.setDuration(300L);
                animationLoadAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.narvii.chat.ChatTipBroadcastHelper.1.1
                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationRepeat(Animation animation) {
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationStart(Animation animation) {
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationEnd(Animation animation) throws Resources.NotFoundException {
                        ChatTipBroadcastHelper.this.removeCurrentTip();
                        ChatTipBroadcastHelper.this.tryShowNext();
                    }
                });
                ChatTipBroadcastHelper.this.tipView.startAnimation(animationLoadAnimation);
            }
        }
    };
    Runnable animInRunnable = new Runnable() { // from class: com.narvii.chat.ChatTipBroadcastHelper.2
        @Override // java.lang.Runnable
        public void run() {
            TranslateAnimation translateAnimation;
            ChatTipBroadcastHelper chatTipBroadcastHelper = ChatTipBroadcastHelper.this;
            chatTipBroadcastHelper.pendingAnimIn = false;
            if (chatTipBroadcastHelper.tipView == null) {
                return;
            }
            ChatTipBroadcastHelper.this.tipView.clearAnimation();
            ChatTipBroadcastHelper.this.tipView.setVisibility(0);
            if (Utils.isRtl()) {
                translateAnimation = new TranslateAnimation(-Utils.getScreenWidth(ChatTipBroadcastHelper.this.context), 0.0f, 0.0f, 0.0f);
            } else {
                translateAnimation = new TranslateAnimation(Utils.getScreenWidth(ChatTipBroadcastHelper.this.context), 0.0f, 0.0f, 0.0f);
            }
            translateAnimation.setInterpolator(new OvershootInterpolator(0.7f));
            translateAnimation.setDuration(300L);
            translateAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.narvii.chat.ChatTipBroadcastHelper.2.1
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    if (ChatTipBroadcastHelper.this.tipView == null) {
                        Log.e("tip view is null");
                        return;
                    }
                    ChatTipBroadcastHelper chatTipBroadcastHelper2 = ChatTipBroadcastHelper.this;
                    chatTipBroadcastHelper2.applyTipCoins(chatTipBroadcastHelper2.getCoinsToAdd(chatTipBroadcastHelper2.tipLog));
                    ChatTipBroadcastHelper.this.tipLog.totalTippedCoins = 0;
                    ChatTipBroadcastHelper.this.startHideRunnableTime = SystemClock.elapsedRealtime();
                    ChatTipBroadcastHelper chatTipBroadcastHelper3 = ChatTipBroadcastHelper.this;
                    Utils.postDelayed(chatTipBroadcastHelper3.hideRunnable, CollectionUtils.isEmpty(chatTipBroadcastHelper3.tipLogList) ? ScenePollPlayView.POLL_RESULT_COUNT_DOWN_MS : 1000L);
                }
            });
            ChatTipBroadcastHelper.this.tipView.startAnimation(translateAnimation);
        }
    };

    protected abstract void applyTipCoins(int i);

    protected abstract void onClickTipBroadcast(User user);

    public ChatTipBroadcastHelper(ViewGroup viewGroup) {
        this.tipViewParent = viewGroup;
        this.context = viewGroup.getContext();
        this.nvContext = Utils.getNVContext(this.context);
        this.preloadHelper = new LiveLayerPreloadHelper(this.nvContext);
    }

    public void onNewTipLog(TipLog tipLog) {
        if (tipLog == null) {
            return;
        }
        if (this.isActive) {
            if (tipLog.tipper != null && Utils.isEqualsNotNull(((AccountService) this.nvContext.getService("account")).getUserId(), tipLog.tipper.uid())) {
                this.tipLogList.add(0, tipLog);
            } else {
                this.tipLogList.add(tipLog);
            }
            if (this.startHideRunnableTime != 0) {
                Utils.handler.removeCallbacks(this.hideRunnable);
                Utils.handler.postDelayed(this.hideRunnable, Math.max(0L, 1000 - (SystemClock.elapsedRealtime() - this.startHideRunnableTime)));
            }
            tryShowNext();
            return;
        }
        applyTipCoins(getCoinsToAdd(tipLog));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tryShowNext() throws Resources.NotFoundException {
        if (this.showingTip || !this.isActive || CollectionUtils.isEmpty(this.tipLogList)) {
            return;
        }
        this.tipLog = this.tipLogList.get(0);
        this.tipLogList.remove(0);
        showTip(this.tipLog);
    }

    public void onActiveChanged(boolean z) {
        this.isActive = z;
        if (z) {
            return;
        }
        TipLog tipLog = this.tipLog;
        int coinsToAdd = tipLog != null ? 0 + getCoinsToAdd(tipLog) : 0;
        Iterator<TipLog> it = this.tipLogList.iterator();
        while (it.hasNext()) {
            coinsToAdd += getCoinsToAdd(it.next());
        }
        applyTipCoins(coinsToAdd);
        this.tipLogList.clear();
        removeCurrentTip();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeCurrentTip() {
        View view = this.tipView;
        if (view != null) {
            Animation animation = view.getAnimation();
            if (animation != null) {
                animation.setAnimationListener(null);
            }
            this.tipView.clearAnimation();
        }
        this.showingTip = false;
        this.pendingAnimIn = false;
        this.tipView = null;
        this.tipLog = null;
        this.tipViewParent.removeAllViews();
        Utils.handler.removeCallbacks(this.hideRunnable);
        Utils.handler.removeCallbacks(this.animInRunnable);
    }

    public void clearPendingTipLog() {
        this.tipLogList.clear();
        TipLog tipLog = this.tipLog;
        if (tipLog != null) {
            tipLog.totalTippedCoins = 0;
            if (this.pendingAnimIn) {
                removeCurrentTip();
            }
        }
    }

    private void showTip(TipLog tipLog) throws Resources.NotFoundException {
        ViewGroup viewGroup = this.tipViewParent;
        if (viewGroup == null || tipLog == null) {
            return;
        }
        viewGroup.removeAllViews();
        this.showingTip = true;
        final User user = tipLog.tipper;
        this.tipView = LayoutInflater.from(this.context).inflate(R.layout.tip_broadcast_item, this.tipViewParent, false);
        this.tipView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.ChatTipBroadcastHelper.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                User user2 = user;
                if (user2 != null) {
                    ChatTipBroadcastHelper.this.onClickTipBroadcast(user2);
                }
            }
        });
        ((TextView) this.tipView.findViewById(R.id.coins_count)).setText("x" + tipLog.totalTippedCoins);
        ((UserAvatarLayout) this.tipView.findViewById(R.id.user_avatar_layout)).setUser(user);
        ((TextView) this.tipView.findViewById(R.id.nickname)).setText(user != null ? user.nickname() : "");
        ((TextView) this.tipView.findViewById(R.id.give_coins)).setText(TextUtils.getCountText(this.context, tipLog.totalTippedCoins, R.string.give_coin_to_host, R.string.give_coins_to_host));
        this.tipView.setBackground(new ChatTipBroadcastBackground(-8512513));
        this.tipViewParent.addView(this.tipView);
        this.tipView.setVisibility(8);
        if (user != null && user.icon != null) {
            int dimensionPixelSize = this.context.getResources().getDimensionPixelSize(R.dimen.tip_broadcast_item_avatar_size);
            this.preloadHelper.preloadIcon(NVImageView.fitSize(user.icon, null, dimensionPixelSize, dimensionPixelSize), dimensionPixelSize, null);
        }
        this.pendingAnimIn = true;
        Utils.postDelayed(this.animInRunnable, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getCoinsToAdd(TipLog tipLog) {
        return tipLog.totalTippedCoins;
    }

    public void onDestroy() {
        removeCurrentTip();
    }
}
