package com.narvii.tipping;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.motion.widget.Key;
import androidx.core.view.ViewCompat;
import com.narvii.amino.master.R;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.util.text.TextUtils;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes6.dex */
public class TippingBoxView extends FrameLayout {
    private AnimatorSet animatorSet;
    private View authorCoin;
    private View authorCoinLayout;
    private View bg;
    private Runnable coinAudio;
    private TextView coins;
    private int coinsGot;
    private View coinsLayout;
    private boolean dataSet;
    private boolean isAuthor;
    private View root;
    private Runnable runnable;
    private View slot;
    private TextView tipAuthor;
    private ObjectAnimator tranYAnimator;
    private View viewerCoin;
    private View viewerCoinLayout;
    private View viewerLove;
    private NVImageView viewerStar;

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        ObjectAnimator objectAnimator = this.tranYAnimator;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        super.onDetachedFromWindow();
    }

    public void setInfo(boolean z6, int i10, boolean z10) {
        this.isAuthor = z6;
        this.coinsGot = i10;
        this.dataSet = true;
        ViewUtils.show(this.tipAuthor, !z6);
        ViewUtils.show(this.coinsLayout, z6);
        ViewUtils.show(this.viewerCoinLayout, !z6);
        ViewUtils.show(this.authorCoinLayout, z6);
        ViewUtils.show(this.authorCoin, z6 && i10 > 0);
        this.root.setPadding(0, z6 ? 0 : Utils.dpToPxInt(getContext(), 6.0f), 0, 0);
        this.coins.setText(TextUtils.numberFormat.format(i10));
        ViewUtils.show(this.viewerCoin, !z6);
        ViewUtils.show(this.viewerStar, !z6);
        this.viewerStar.setImageUrl("assets://tipping_star.webp");
        this.bg.setBackgroundResource(z10 ? R.drawable.tipping_box_bg_grey : R.drawable.tipping_box_bg);
        this.slot.setBackgroundResource(z10 ? R.drawable.tipping_box_slot_grey : R.drawable.tipping_box_slot);
        updateTranYAnimator();
    }

    public void startTipSuccessAnimation() {
        AnimatorSet animatorSet = this.animatorSet;
        if (animatorSet != null && animatorSet.isRunning()) {
            this.animatorSet.end();
        }
        Utils.handler.removeCallbacks(this.runnable);
        ObjectAnimator objectAnimator = this.tranYAnimator;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.tipping_box_viewer_coin_container_height) + Utils.dpToPxInt(getContext(), 3.0f);
        View view = this.viewerCoin;
        Property property = View.TRANSLATION_Y;
        float f = dimensionPixelSize;
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) property, 0.0f, f);
        objectAnimatorOfFloat.setInterpolator(new AccelerateInterpolator());
        objectAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.narvii.tipping.TippingBoxView.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                Utils.playAudioEffect(TippingBoxView.this.getContext(), R.raw.coins);
            }
        });
        objectAnimatorOfFloat.setDuration(300L);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.viewerLove, (Property<View, Float>) property, f, 0.0f);
        View view2 = this.viewerLove;
        Property property2 = View.ALPHA;
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(view2, (Property<View, Float>) property2, 0.0f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(this.viewerLove, (Property<View, Float>) View.SCALE_X, 0.3f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat5 = ObjectAnimator.ofFloat(this.viewerLove, (Property<View, Float>) View.SCALE_Y, 0.3f, 1.0f);
        AnimatorSet animatorSet2 = new AnimatorSet();
        animatorSet2.setDuration(600L);
        animatorSet2.playTogether(objectAnimatorOfFloat2, objectAnimatorOfFloat3, objectAnimatorOfFloat4, objectAnimatorOfFloat5);
        animatorSet2.addListener(new AnimatorListenerAdapter() { // from class: com.narvii.tipping.TippingBoxView.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                ViewUtils.show(TippingBoxView.this.viewerLove, !TippingBoxView.this.isAuthor);
                super.onAnimationStart(animator);
            }
        });
        ObjectAnimator objectAnimatorOfFloat6 = ObjectAnimator.ofFloat(this.viewerLove, Key.ROTATION, -15.0f, 15.0f);
        objectAnimatorOfFloat6.setDuration(150L);
        objectAnimatorOfFloat6.setRepeatCount(2);
        objectAnimatorOfFloat6.setRepeatMode(2);
        ObjectAnimator objectAnimatorOfFloat7 = ObjectAnimator.ofFloat(this.viewerLove, Key.ROTATION, 15.0f, 0.0f);
        objectAnimatorOfFloat7.setDuration(150L);
        AnimatorSet animatorSet3 = new AnimatorSet();
        this.animatorSet = animatorSet3;
        animatorSet3.playSequentially(objectAnimatorOfFloat6, objectAnimatorOfFloat7);
        AnimatorSet animatorSet4 = new AnimatorSet();
        ObjectAnimator objectAnimatorOfFloat8 = ObjectAnimator.ofFloat(this.viewerCoin, (Property<View, Float>) property2, 0.0f, 1.0f);
        objectAnimatorOfFloat8.addListener(new AnimatorListenerAdapter() { // from class: com.narvii.tipping.TippingBoxView.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                TippingBoxView.this.viewerCoin.setTranslationY(0.0f);
                super.onAnimationStart(animator);
            }
        });
        objectAnimatorOfFloat8.setDuration(200L);
        objectAnimatorOfFloat8.setStartDelay(100L);
        ObjectAnimator objectAnimatorOfFloat9 = ObjectAnimator.ofFloat(this.viewerLove, (Property<View, Float>) property2, 1.0f, 0.0f);
        animatorSet4.playTogether(objectAnimatorOfFloat8, objectAnimatorOfFloat9);
        objectAnimatorOfFloat9.setDuration(200L);
        AnimatorSet animatorSet5 = new AnimatorSet();
        this.animatorSet = animatorSet5;
        animatorSet5.setInterpolator(new AccelerateInterpolator());
        this.animatorSet.playSequentially(objectAnimatorOfFloat, animatorSet2, objectAnimatorOfFloat6, objectAnimatorOfFloat7, animatorSet4);
        this.animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.narvii.tipping.TippingBoxView.4
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                TippingBoxView.this.animatorSet = null;
                if (TippingBoxView.this.runnable == null) {
                    TippingBoxView.this.runnable = new Runnable() { // from class: com.narvii.tipping.TippingBoxView.4.1
                        @Override // java.lang.Runnable
                        public void run() {
                            TippingBoxView.this.viewerLove.setVisibility(8);
                            TippingBoxView.this.updateTranYAnimator();
                        }
                    };
                }
                Utils.handler.removeCallbacks(TippingBoxView.this.runnable);
                Utils.postDelayed(TippingBoxView.this.runnable, 200L);
            }
        });
        this.animatorSet.start();
    }

    public TippingBoxView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        View.inflate(context, R.layout.tipping_box, this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateTranYAnimator() {
        if (!ViewCompat.W(this)) {
            return;
        }
        if (!this.isAuthor && this.dataSet) {
            if (this.tranYAnimator == null) {
                ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.viewerCoin, (Property<View, Float>) View.TRANSLATION_Y, 0.0f, (getContext().getResources().getDimensionPixelSize(R.dimen.tipping_box_viewer_coin_container_height) - getContext().getResources().getDimensionPixelSize(R.dimen.tipping_box_viewer_coin_size)) - Utils.dpToPxInt(getContext(), 5.0f));
                this.tranYAnimator = objectAnimatorOfFloat;
                objectAnimatorOfFloat.setDuration(800L);
                this.tranYAnimator.setRepeatCount(-1);
                this.tranYAnimator.setRepeatMode(2);
            }
            if (!this.tranYAnimator.isStarted()) {
                AnimatorSet animatorSet = this.animatorSet;
                if (animatorSet != null && animatorSet.isRunning()) {
                    return;
                }
                this.tranYAnimator.start();
                return;
            }
            return;
        }
        ObjectAnimator objectAnimator = this.tranYAnimator;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        updateTranYAnimator();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.tipAuthor = (TextView) findViewById(R.id.tip_author);
        this.coins = (TextView) findViewById(R.id.coins);
        this.coinsLayout = findViewById(R.id.coins_layout);
        this.viewerCoin = findViewById(R.id.viewer_coin);
        this.viewerLove = findViewById(R.id.viewer_love);
        this.viewerStar = (NVImageView) findViewById(R.id.viewer_star);
        this.viewerCoinLayout = findViewById(R.id.viewer_coin_layout);
        this.authorCoinLayout = findViewById(R.id.author_coin_layout);
        this.authorCoin = findViewById(R.id.author_coin);
        this.slot = findViewById(R.id.box_slot);
        this.bg = findViewById(R.id.box_bg);
        this.root = findViewById(R.id.tip_box_root);
    }
}
