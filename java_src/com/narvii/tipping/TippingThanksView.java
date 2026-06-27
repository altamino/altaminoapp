package com.narvii.tipping;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.util.Property;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.OvershootInterpolator;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.model.Benefactor;
import com.narvii.model.User;

/* loaded from: classes3.dex */
public class TippingThanksView extends RelativeLayout {
    ImageView baseView;
    ObjectAnimator baseViewAlpha;
    TextView chatView;
    ObjectAnimator chatViewScaleX;
    ObjectAnimator chatViewScaleY;
    boolean hasLiked;
    ImageView heartView;
    ObjectAnimator heartViewAlpha;
    ObjectAnimator heartViewRotate;
    ObjectAnimator heartViewScaleX;
    ObjectAnimator heartViewScaleY;
    ObjectAnimator heartViewTranslate;
    boolean isSupportChat;
    boolean layoutComplete;
    User tipper;

    public TippingThanksView(Context context) {
        super(context);
        this.isSupportChat = true;
        init(context);
    }

    public TippingThanksView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.isSupportChat = true;
        init(context);
    }

    public TippingThanksView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.isSupportChat = true;
        init(context);
    }

    private void init(Context context) {
        LayoutInflater.from(context).inflate(R.layout.component_tipping_thanks_view, (ViewGroup) this, true);
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.layoutComplete) {
            return;
        }
        if (getHeight() > 0 || getWidth() > 0) {
            onLayoutComplete();
            this.layoutComplete = true;
        }
    }

    public void isSupportChat(boolean z) {
        this.isSupportChat = z;
    }

    protected void onLayoutComplete() {
        this.heartView.setPivotX(r0.getWidth() / 2.0f);
        this.heartView.setPivotY(r0.getHeight());
        setClickable(true);
    }

    public void startLikeAnimation() {
        this.heartView.setVisibility(0);
        this.heartViewScaleX.start();
        this.heartViewScaleY.start();
        this.heartViewTranslate.start();
        this.heartViewAlpha.start();
        this.baseViewAlpha.start();
        this.heartViewRotate.start();
        setClickable(false);
    }

    public void bindBebefactor(Benefactor benefactor) {
        bindBebefactor(benefactor, true);
    }

    public void bindBebefactor(Benefactor benefactor, boolean z) {
        this.isSupportChat = z;
        if (benefactor == null) {
            return;
        }
        this.tipper = benefactor.getBenefactor();
        this.hasLiked = benefactor.isThanksSent();
        this.baseView.setVisibility(this.hasLiked ? 8 : 0);
        this.heartView.setVisibility(8);
        this.chatView.setVisibility((this.hasLiked && z) ? 0 : 8);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.baseView = (ImageView) findViewById(R.id.base_view);
        this.heartView = (ImageView) findViewById(R.id.heart_view);
        this.chatView = (TextView) findViewById(R.id.chat_view);
        this.heartViewScaleX = ObjectAnimator.ofFloat(this.heartView, (Property<ImageView, Float>) View.SCALE_X, 1.0f, 8.0f).setDuration(1000L);
        this.heartViewScaleY = ObjectAnimator.ofFloat(this.heartView, (Property<ImageView, Float>) View.SCALE_Y, 1.0f, 8.0f).setDuration(1000L);
        this.heartViewTranslate = ObjectAnimator.ofFloat(this.heartView, (Property<ImageView, Float>) View.TRANSLATION_Y, -100.0f).setDuration(1000L);
        this.heartViewRotate = ObjectAnimator.ofFloat(this.heartView, (Property<ImageView, Float>) View.ROTATION, 90.0f).setDuration(500L);
        this.heartViewRotate.setStartDelay(500L);
        this.chatViewScaleX = ObjectAnimator.ofFloat(this.chatView, (Property<TextView, Float>) View.SCALE_X, 0.1f, 1.0f).setDuration(400L);
        this.chatViewScaleX.setInterpolator(new OvershootInterpolator(3.0f));
        this.chatViewScaleY = ObjectAnimator.ofFloat(this.chatView, (Property<TextView, Float>) View.SCALE_Y, 0.1f, 1.0f).setDuration(400L);
        this.chatViewScaleY.setInterpolator(new OvershootInterpolator(3.0f));
        this.heartViewAlpha = ObjectAnimator.ofFloat(this.heartView, (Property<ImageView, Float>) View.ALPHA, 1.0f, 0.7f, 0.0f).setDuration(500L);
        this.heartViewAlpha.setStartDelay(500L);
        this.baseViewAlpha = ObjectAnimator.ofFloat(this.baseView, (Property<ImageView, Float>) View.ALPHA, 1.0f, 0.7f, 0.0f).setDuration(500L);
        this.baseViewAlpha.setStartDelay(500L);
        this.baseViewAlpha.addListener(new Animator.AnimatorListener() { // from class: com.narvii.tipping.TippingThanksView.1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                TippingThanksView.this.baseView.setVisibility(8);
                TippingThanksView.this.heartView.setVisibility(8);
                TippingThanksView tippingThanksView = TippingThanksView.this;
                if (tippingThanksView.isSupportChat) {
                    tippingThanksView.chatView.setVisibility(0);
                    TippingThanksView.this.chatViewScaleX.start();
                    TippingThanksView.this.chatViewScaleY.start();
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                TippingThanksView.this.onAnimationFlowEnded();
            }
        });
        this.chatViewScaleX.addListener(new Animator.AnimatorListener() { // from class: com.narvii.tipping.TippingThanksView.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                TippingThanksView.this.onAnimationFlowEnded();
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                TippingThanksView.this.onAnimationFlowEnded();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAnimationFlowEnded() {
        this.hasLiked = true;
        setClickable(true);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ObjectAnimator objectAnimator = this.heartViewScaleX;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        ObjectAnimator objectAnimator2 = this.heartViewScaleY;
        if (objectAnimator2 != null) {
            objectAnimator2.cancel();
        }
        ObjectAnimator objectAnimator3 = this.heartViewAlpha;
        if (objectAnimator3 != null) {
            objectAnimator3.cancel();
        }
        ObjectAnimator objectAnimator4 = this.heartViewTranslate;
        if (objectAnimator4 != null) {
            objectAnimator4.cancel();
        }
        ObjectAnimator objectAnimator5 = this.heartViewRotate;
        if (objectAnimator5 != null) {
            objectAnimator5.cancel();
        }
        ObjectAnimator objectAnimator6 = this.baseViewAlpha;
        if (objectAnimator6 != null) {
            objectAnimator6.cancel();
        }
        ObjectAnimator objectAnimator7 = this.chatViewScaleX;
        if (objectAnimator7 != null) {
            objectAnimator7.cancel();
        }
        ObjectAnimator objectAnimator8 = this.chatViewScaleY;
        if (objectAnimator8 != null) {
            objectAnimator8.cancel();
        }
    }
}
