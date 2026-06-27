package com.narvii.master;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.widget.NVImageView;
import com.narvii.widget.TintButton;

/* loaded from: classes3.dex */
public class MasterTopBar extends FrameLayout {
    private AnimatorSet animatorSet;
    View.OnClickListener contentLanguageListener;
    NVContext context;
    boolean expanded;
    NVImageView imgStoreEntry;
    boolean isStandalone;
    private View lefeMenus;
    private View rightMenus;
    View searchBarBg;
    ViewGroup searchBarWithShadow;
    TintButton searchIcon;
    TextView searchText;
    View shadow;
    TextView tvContentLanguage;
    View tvContentLanguageInfo;

    public MasterTopBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.expanded = false;
        this.isStandalone = NVApplication.CLIENT_TYPE == 101;
        FrameLayout.inflate(context, this.isStandalone ? R.layout.standalone_home_top_tab_layout : R.layout.incubator_home_top_tab_layout, this);
        this.context = Utils.getNVContext(context);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.searchBarWithShadow = (ViewGroup) findViewById(R.id.search_layout_with_shadow);
        this.searchBarBg = findViewById(R.id.search_layout_bg);
        this.searchText = (TextView) findViewById(R.id.search_text);
        this.searchIcon = (TintButton) findViewById(R.id.ic_search);
        this.shadow = findViewById(R.id.shadow);
        this.rightMenus = findViewById(R.id.right_menus);
        this.lefeMenus = findViewById(R.id.store_entrance);
        this.imgStoreEntry = (NVImageView) findViewById(R.id.store_entrance);
        this.tvContentLanguageInfo = findViewById(R.id.current_language_info_layout);
        View view = this.tvContentLanguageInfo;
        if (view != null) {
            view.setOnClickListener(this.contentLanguageListener);
        }
        this.tvContentLanguage = (TextView) findViewById(R.id.current_content_language);
        NVImageView nVImageView = this.imgStoreEntry;
        if (nVImageView != null) {
            nVImageView.setImageUrl("assets://globalStoreIcon.webp");
        }
    }

    public void setContentLanguageClickListener(View.OnClickListener onClickListener) {
        this.contentLanguageListener = onClickListener;
        View view = this.tvContentLanguageInfo;
        if (view != null) {
            view.setOnClickListener(this.contentLanguageListener);
        }
    }

    public void setContentLanguage(String str) {
        TextView textView = this.tvContentLanguage;
        if (textView != null) {
            textView.setText(str);
        }
    }

    public void expand() throws Resources.NotFoundException {
        if (this.expanded || getWidth() == 0) {
            return;
        }
        AnimatorSet animatorSet = this.animatorSet;
        if (animatorSet != null && animatorSet.isStarted()) {
            this.animatorSet.end();
        }
        this.animatorSet = new AnimatorSet();
        ValueAnimator valueAnimatorOfObject = ValueAnimator.ofObject(new ArgbEvaluator(), Integer.valueOf(this.searchText.getCurrentTextColor()), -11908534);
        valueAnimatorOfObject.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.master.-$$Lambda$MasterTopBar$IRpsqPXA6h4ZuquxtehZwUn5J2c
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$expand$0$MasterTopBar(valueAnimator);
            }
        });
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, 100);
        final int marginStart = ViewUtils.getMarginStart(this.searchBarWithShadow.getLayoutParams());
        final int marginEnd = ViewUtils.getMarginEnd(this.searchBarWithShadow.getLayoutParams());
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.master.-$$Lambda$MasterTopBar$C2qh_-eCYxsR29HQzpF7sgQkeMo
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$expand$1$MasterTopBar(marginStart, marginEnd, valueAnimator);
            }
        });
        valueAnimatorOfInt.addListener(new AnimatorListenerAdapter() { // from class: com.narvii.master.MasterTopBar.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                MasterTopBar.this.shadow.setVisibility(0);
            }
        });
        valueAnimatorOfInt.setInterpolator(new OvershootInterpolator(1.5f));
        this.shadow.setVisibility(8);
        int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.master_home_top_tab_margin_horizontal);
        int dimensionPixelSize2 = getContext().getResources().getDimensionPixelSize(R.dimen.master_home_top_tab_search_inner_padding);
        int dimensionPixelSize3 = getContext().getResources().getDimensionPixelSize(R.dimen.master_home_top_tab_search_inner_margin);
        int width = ((Utils.isRtl() ? -1 : 1) * (this.searchIcon.getWidth() + dimensionPixelSize3)) / 2;
        TextView textView = this.searchText;
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) View.TRANSLATION_X, textView.getTranslationX(), width);
        objectAnimatorOfFloat.setInterpolator(new OvershootInterpolator(1.2f));
        ValueAnimator valueAnimatorOfObject2 = ValueAnimator.ofObject(new ArgbEvaluator(), Integer.valueOf(this.searchIcon.getTintColor()), -11908534);
        valueAnimatorOfObject2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.master.-$$Lambda$MasterTopBar$4hlPkMaOCtXMsjycEviCmoEJDnI
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$expand$2$MasterTopBar(valueAnimator);
            }
        });
        int width2 = (Utils.isRtl() ? -1 : 1) * ((((((getWidth() - (dimensionPixelSize * 2)) - this.searchIcon.getWidth()) - this.searchText.getWidth()) - dimensionPixelSize3) / 2) - dimensionPixelSize2);
        TintButton tintButton = this.searchIcon;
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(tintButton, (Property<TintButton, Float>) View.TRANSLATION_X, tintButton.getTranslationX(), width2);
        objectAnimatorOfFloat2.setInterpolator(new OvershootInterpolator(1.2f));
        View view = this.rightMenus;
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(view, (Property<View, Float>) View.ALPHA, view.getAlpha(), 0.0f);
        objectAnimatorOfFloat3.addListener(new AnimatorListenerAdapter() { // from class: com.narvii.master.MasterTopBar.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                MasterTopBar.this.rightMenus.setVisibility(8);
            }
        });
        View view2 = this.rightMenus;
        ObjectAnimator objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.ALPHA, view2.getAlpha(), 0.0f);
        objectAnimatorOfFloat4.addListener(new AnimatorListenerAdapter() { // from class: com.narvii.master.MasterTopBar.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                if (MasterTopBar.this.lefeMenus != null) {
                    MasterTopBar.this.lefeMenus.setVisibility(8);
                }
            }
        });
        this.searchBarBg.setBackgroundResource(R.drawable.selector_white_18_corner_4);
        ObjectAnimator objectAnimatorOfFloat5 = ObjectAnimator.ofFloat(this.searchBarBg, (Property<View, Float>) View.ALPHA, 0.4f, 1.0f);
        this.animatorSet.setDuration(400L);
        this.animatorSet.playTogether(valueAnimatorOfObject, valueAnimatorOfObject2, valueAnimatorOfInt, objectAnimatorOfFloat3, objectAnimatorOfFloat4, objectAnimatorOfFloat, objectAnimatorOfFloat2, objectAnimatorOfFloat5);
        this.animatorSet.start();
        this.expanded = true;
    }

    public /* synthetic */ void lambda$expand$0$MasterTopBar(ValueAnimator valueAnimator) {
        this.searchText.setTextColor(((Integer) valueAnimator.getAnimatedValue()).intValue());
    }

    public /* synthetic */ void lambda$expand$1$MasterTopBar(int i, int i2, ValueAnimator valueAnimator) {
        int iIntValue = i - ((int) ((((Integer) valueAnimator.getAnimatedValue()).intValue() * i) / 100.0f));
        int iIntValue2 = i2 - ((int) ((((Integer) valueAnimator.getAnimatedValue()).intValue() * i2) / 100.0f));
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.searchBarWithShadow.getLayoutParams();
        marginLayoutParams.setMargins(iIntValue, 0, iIntValue2, 0);
        if (Build.VERSION.SDK_INT >= 17) {
            marginLayoutParams.setMarginStart(iIntValue);
            marginLayoutParams.setMarginEnd(iIntValue2);
        }
        this.searchBarWithShadow.setLayoutParams(marginLayoutParams);
    }

    public /* synthetic */ void lambda$expand$2$MasterTopBar(ValueAnimator valueAnimator) {
        this.searchIcon.setTintColor(((Integer) valueAnimator.getAnimatedValue()).intValue());
    }

    public void collapse() {
        if (this.expanded) {
            AnimatorSet animatorSet = this.animatorSet;
            if (animatorSet != null && animatorSet.isStarted()) {
                this.animatorSet.end();
            }
            this.animatorSet = new AnimatorSet();
            ValueAnimator valueAnimatorOfObject = ValueAnimator.ofObject(new ArgbEvaluator(), Integer.valueOf(this.searchText.getCurrentTextColor()), 1946157055);
            valueAnimatorOfObject.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.master.-$$Lambda$MasterTopBar$uwG3fQjJ-3aMx_Qkt2fJz1YwcyY
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f$0.lambda$collapse$3$MasterTopBar(valueAnimator);
                }
            });
            ValueAnimator valueAnimatorOfObject2 = ValueAnimator.ofObject(new ArgbEvaluator(), Integer.valueOf(this.searchIcon.getTintColor()), 1291845631);
            valueAnimatorOfObject2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.master.-$$Lambda$MasterTopBar$qM75gTQX4jnOJZoBTfLsMdCRCq4
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f$0.lambda$collapse$4$MasterTopBar(valueAnimator);
                }
            });
            final int dimensionPixelSize = this.isStandalone ? 0 : getContext().getResources().getDimensionPixelSize(R.dimen.master_search_bar_margin_h);
            final int dimensionPixelSize2 = getContext().getResources().getDimensionPixelSize(R.dimen.master_search_bar_margin_right);
            ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, 100);
            final int marginStart = ViewUtils.getMarginStart(this.searchBarWithShadow.getLayoutParams());
            final int marginEnd = ViewUtils.getMarginEnd(this.searchBarWithShadow.getLayoutParams());
            valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.master.-$$Lambda$MasterTopBar$H5I9t4SsINnXEs3e8Lxp0ouAJHg
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f$0.lambda$collapse$5$MasterTopBar(dimensionPixelSize, marginStart, dimensionPixelSize2, marginEnd, valueAnimator);
                }
            });
            this.shadow.setVisibility(8);
            this.rightMenus.setVisibility(0);
            View view = this.rightMenus;
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) View.ALPHA, view.getAlpha(), 1.0f);
            ObjectAnimator objectAnimatorOfFloat2 = null;
            View view2 = this.lefeMenus;
            if (view2 != null) {
                view2.setVisibility(0);
                View view3 = this.lefeMenus;
                objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view3, (Property<View, Float>) View.ALPHA, view3.getAlpha(), 1.0f);
            }
            TintButton tintButton = this.searchIcon;
            ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(tintButton, (Property<TintButton, Float>) View.TRANSLATION_X, tintButton.getTranslationX(), 0.0f);
            objectAnimatorOfFloat3.setInterpolator(new DecelerateInterpolator());
            TextView textView = this.searchText;
            ObjectAnimator objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) View.TRANSLATION_X, textView.getTranslationX(), 0.0f);
            objectAnimatorOfFloat4.setInterpolator(new DecelerateInterpolator());
            View view4 = this.searchBarBg;
            ObjectAnimator objectAnimatorOfFloat5 = ObjectAnimator.ofFloat(view4, (Property<View, Float>) View.ALPHA, view4.getAlpha(), 0.1f);
            this.animatorSet.setDuration(300L);
            if (objectAnimatorOfFloat2 != null) {
                this.animatorSet.playTogether(valueAnimatorOfObject, valueAnimatorOfObject2, valueAnimatorOfInt, objectAnimatorOfFloat, objectAnimatorOfFloat2, objectAnimatorOfFloat3, objectAnimatorOfFloat4, objectAnimatorOfFloat5);
            } else {
                this.animatorSet.playTogether(valueAnimatorOfObject, valueAnimatorOfObject2, valueAnimatorOfInt, objectAnimatorOfFloat, objectAnimatorOfFloat3, objectAnimatorOfFloat4, objectAnimatorOfFloat5);
            }
            this.animatorSet.start();
            this.expanded = false;
        }
    }

    public /* synthetic */ void lambda$collapse$3$MasterTopBar(ValueAnimator valueAnimator) {
        this.searchText.setTextColor(((Integer) valueAnimator.getAnimatedValue()).intValue());
    }

    public /* synthetic */ void lambda$collapse$4$MasterTopBar(ValueAnimator valueAnimator) {
        this.searchIcon.setTintColor(((Integer) valueAnimator.getAnimatedValue()).intValue());
    }

    public /* synthetic */ void lambda$collapse$5$MasterTopBar(int i, int i2, int i3, int i4, ValueAnimator valueAnimator) {
        int iIntValue = (int) ((((i - i2) * ((Integer) valueAnimator.getAnimatedValue()).intValue()) / 100.0f) + i2);
        int iIntValue2 = (int) ((((i3 - i4) * ((Integer) valueAnimator.getAnimatedValue()).intValue()) / 100.0f) + i4);
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.searchBarWithShadow.getLayoutParams();
        marginLayoutParams.setMargins(iIntValue, 0, iIntValue2, 0);
        if (Build.VERSION.SDK_INT >= 17) {
            marginLayoutParams.setMarginStart(iIntValue);
            marginLayoutParams.setMarginEnd(iIntValue2);
        }
        this.searchBarWithShadow.setLayoutParams(marginLayoutParams);
    }
}
