package com.narvii.chat.video.overlay;

import android.content.Context;
import android.util.AttributeSet;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.OvershootInterpolator;
import android.view.animation.TranslateAnimation;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.chat.signalling.ChannelUser;
import com.narvii.model.User;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class ViewerHintView extends LinearLayout {
    private static final int ALPHA_DURATION = 1000;
    private static final int NICKNAME_LIMIT = 20;
    AlphaAnimation alphaAnimation;
    private boolean alphaAnimationRunning;
    Animation.AnimationListener alphaListener;
    private List<ChannelUser> pendingUser;
    private boolean transAnimationRunning;
    Animation.AnimationListener transListener;
    TranslateAnimation translateAnimation;
    private TextView tvViewerHint;

    public ViewerHintView(Context context) {
        this(context, null);
    }

    public ViewerHintView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.pendingUser = new ArrayList();
        this.transListener = new Animation.AnimationListener() { // from class: com.narvii.chat.video.overlay.ViewerHintView.1
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
                ViewerHintView.this.transAnimationRunning = true;
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                ViewerHintView.this.transAnimationRunning = false;
                ViewerHintView.this.tvViewerHint.startAnimation(ViewerHintView.this.alphaAnimation);
            }
        };
        this.alphaListener = new Animation.AnimationListener() { // from class: com.narvii.chat.video.overlay.ViewerHintView.2
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
                ViewerHintView.this.alphaAnimationRunning = true;
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                ViewerHintView.this.alphaAnimationRunning = false;
                if (ViewerHintView.this.pendingUser.size() > 0) {
                    ViewerHintView.this.startViewerAnimation((ChannelUser) ViewerHintView.this.pendingUser.remove(0));
                } else {
                    ViewerHintView.this.setVisibility(4);
                }
            }
        };
        setOrientation(1);
        LinearLayout.inflate(getContext(), R.layout.viewer_hint_layout, this);
        this.translateAnimation = new TranslateAnimation(1, -1.0f, 1, 0.0f, 1, 0.0f, 1, 0.0f);
        this.translateAnimation.setDuration(500L);
        this.translateAnimation.setInterpolator(new OvershootInterpolator(1.0f));
        this.translateAnimation.setAnimationListener(this.transListener);
        this.alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        this.alphaAnimation.setDuration(1000L);
        this.alphaAnimation.setAnimationListener(this.alphaListener);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.tvViewerHint = (TextView) findViewById(R.id.viewing_hint);
    }

    public void addNewUser(ChannelUser channelUser) {
        if (channelUser == null || channelUser.userProfile == null || this.transAnimationRunning || this.alphaAnimationRunning) {
            if (this.pendingUser.size() == 0) {
                this.pendingUser.add(channelUser);
                return;
            }
            return;
        }
        startViewerAnimation(channelUser);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startViewerAnimation(ChannelUser channelUser) {
        User user;
        if (channelUser == null || (user = channelUser.userProfile) == null) {
            return;
        }
        setVisibility(0);
        String strNickname = user.nickname();
        if (strNickname.length() > 20) {
            strNickname = strNickname.substring(0, 20) + "...";
        }
        this.tvViewerHint.setText(getContext().getString(channelUser.joinRole == 1 ? R.string.just_joined : R.string.is_viewing, strNickname));
        this.tvViewerHint.startAnimation(this.translateAnimation);
    }
}
