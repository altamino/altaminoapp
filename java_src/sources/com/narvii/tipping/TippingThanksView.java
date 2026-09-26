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
import androidx.annotation.Nullable;
import com.narvii.amino.master.R;
import com.narvii.model.Benefactor;
import com.narvii.model.User;

/* JADX INFO: loaded from: classes10.dex */
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

    /* JADX INFO: Access modifiers changed from: private */
    public void onAnimationFlowEnded() {
        this.hasLiked = true;
        setClickable(true);
    }

    public void bindBebefactor(Benefactor benefactor) {
        bindBebefactor(benefactor, true);
    }

    public void isSupportChat(boolean z6) {
        this.isSupportChat = z6;
    }

    public void bindBebefactor(Benefactor benefactor, boolean z6) {
        this.isSupportChat = z6;
        if (benefactor == null) {
            return;
        }
        this.tipper = benefactor.getBenefactor();
        boolean zIsThanksSent = benefactor.isThanksSent();
        this.hasLiked = zIsThanksSent;
        this.baseView.setVisibility(zIsThanksSent ? 8 : 0);
        this.heartView.setVisibility(8);
        this.chatView.setVisibility((this.hasLiked && z6) ? 0 : 8);
    }

    protected void onLayoutComplete() {
        ImageView imageView = this.heartView;
        imageView.setPivotX(imageView.getWidth() / 2.0f);
        ImageView imageView2 = this.heartView;
        imageView2.setPivotY(imageView2.getHeight());
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

    public TippingThanksView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.isSupportChat = true;
        init(context);
    }

    private void init(Context context) {
        LayoutInflater.from(context).inflate(R.layout.component_tipping_thanks_view, (ViewGroup) this, true);
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

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.baseView = (ImageView) findViewById(R.id.base_view);
        this.heartView = (ImageView) findViewById(R.id.heart_view);
        this.chatView = (TextView) findViewById(R.id.chat_view);
        ImageView imageView = this.heartView;
        Property property = View.SCALE_X;
        this.heartViewScaleX = ObjectAnimator.ofFloat(imageView, (Property<ImageView, Float>) property, 1.0f, 8.0f).setDuration(1000L);
        ImageView imageView2 = this.heartView;
        Property property2 = View.SCALE_Y;
        this.heartViewScaleY = ObjectAnimator.ofFloat(imageView2, (Property<ImageView, Float>) property2, 1.0f, 8.0f).setDuration(1000L);
        this.heartViewTranslate = ObjectAnimator.ofFloat(this.heartView, (Property<ImageView, Float>) View.TRANSLATION_Y, -100.0f).setDuration(1000L);
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.heartView, (Property<ImageView, Float>) View.ROTATION, 90.0f).setDuration(500L);
        this.heartViewRotate = duration;
        duration.setStartDelay(500L);
        ObjectAnimator duration2 = ObjectAnimator.ofFloat(this.chatView, (Property<TextView, Float>) property, 0.1f, 1.0f).setDuration(400L);
        this.chatViewScaleX = duration2;
        duration2.setInterpolator(new OvershootInterpolator(3.0f));
        ObjectAnimator duration3 = ObjectAnimator.ofFloat(this.chatView, (Property<TextView, Float>) property2, 0.1f, 1.0f).setDuration(400L);
        this.chatViewScaleY = duration3;
        duration3.setInterpolator(new OvershootInterpolator(3.0f));
        ImageView imageView3 = this.heartView;
        Property property3 = View.ALPHA;
        ObjectAnimator duration4 = ObjectAnimator.ofFloat(imageView3, (Property<ImageView, Float>) property3, 1.0f, 0.7f, 0.0f).setDuration(500L);
        this.heartViewAlpha = duration4;
        duration4.setStartDelay(500L);
        ObjectAnimator duration5 = ObjectAnimator.ofFloat(this.baseView, (Property<ImageView, Float>) property3, 1.0f, 0.7f, 0.0f).setDuration(500L);
        this.baseViewAlpha = duration5;
        duration5.setStartDelay(500L);
        this.baseViewAlpha.addListener(new Animator.AnimatorListener() { // from class: com.narvii.tipping.TippingThanksView.1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                TippingThanksView.this.onAnimationFlowEnded();
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
        });
        this.chatViewScaleX.addListener(new Animator.AnimatorListener() { // from class: com.narvii.tipping.TippingThanksView.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                TippingThanksView.this.onAnimationFlowEnded();
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                TippingThanksView.this.onAnimationFlowEnded();
            }
        });
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        super.onLayout(z6, i10, i11, i12, i13);
        if (!this.layoutComplete) {
            if (getHeight() > 0 || getWidth() > 0) {
                onLayoutComplete();
                this.layoutComplete = true;
            }
        }
    }

    public TippingThanksView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.isSupportChat = true;
        init(context);
    }
}
