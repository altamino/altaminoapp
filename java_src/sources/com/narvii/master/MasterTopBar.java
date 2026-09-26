package com.narvii.master;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.compose.material.TextFieldImplKt;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.model.User;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.widget.TintButton;
import com.narvii.widget.UserAvatarLayout;
import com.narvii.widget.WalletBalanceView;

/* JADX INFO: loaded from: classes8.dex */
public class MasterTopBar extends ConstraintLayout {
    FrameLayout alertView;
    private AnimatorSet animatorSet;
    WalletBalanceView balanceView;
    View.OnClickListener contentLanguageListener;
    NVContext context;
    boolean expanded;
    UserAvatarLayout profileImage;
    private View rightMenus;
    View searchBar;
    View searchBarBg;
    FrameLayout searchBarWithShadow;
    TintButton searchIcon;
    TextView searchText;
    View shadow;
    TextView tvContentLanguage;
    View tvContentLanguageInfo;

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$collapse$5(int i10, int i11, int i12, int i13, ValueAnimator valueAnimator) {
        int iIntValue = (int) ((((i10 - i11) * ((Integer) valueAnimator.getAnimatedValue()).intValue()) / 100.0f) + i11);
        int iIntValue2 = (int) ((((i12 - i13) * ((Integer) valueAnimator.getAnimatedValue()).intValue()) / 100.0f) + i13);
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.searchBarWithShadow.getLayoutParams();
        marginLayoutParams.setMargins(iIntValue, 0, iIntValue2, 0);
        marginLayoutParams.setMarginStart(iIntValue);
        marginLayoutParams.setMarginEnd(iIntValue2);
        this.searchBarWithShadow.setLayoutParams(marginLayoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$collapse$3(ValueAnimator valueAnimator) {
        this.searchText.setTextColor(((Integer) valueAnimator.getAnimatedValue()).intValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$collapse$4(ValueAnimator valueAnimator) {
        this.searchIcon.setTintColor(((Integer) valueAnimator.getAnimatedValue()).intValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$expand$0(ValueAnimator valueAnimator) {
        this.searchText.setTextColor(((Integer) valueAnimator.getAnimatedValue()).intValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$expand$2(ValueAnimator valueAnimator) {
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
            valueAnimatorOfObject.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.master.v
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f2433a.lambda$collapse$3(valueAnimator);
                }
            });
            ValueAnimator valueAnimatorOfObject2 = ValueAnimator.ofObject(new ArgbEvaluator(), Integer.valueOf(this.searchIcon.getTintColor()), 1291845631);
            valueAnimatorOfObject2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.master.w
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f2434a.lambda$collapse$4(valueAnimator);
                }
            });
            final int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.master_search_bar_margin_h);
            final int dimensionPixelSize2 = getContext().getResources().getDimensionPixelSize(R.dimen.master_search_bar_margin_right);
            ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, 100);
            final int marginStart = ViewUtils.getMarginStart(this.searchBarWithShadow.getLayoutParams());
            final int marginEnd = ViewUtils.getMarginEnd(this.searchBarWithShadow.getLayoutParams());
            valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.master.x
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f2440a.lambda$collapse$5(dimensionPixelSize, marginStart, dimensionPixelSize2, marginEnd, valueAnimator);
                }
            });
            this.shadow.setVisibility(8);
            this.rightMenus.setVisibility(0);
            View view = this.rightMenus;
            Property property = View.ALPHA;
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) property, view.getAlpha(), 1.0f);
            TintButton tintButton = this.searchIcon;
            Property property2 = View.TRANSLATION_X;
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(tintButton, (Property<TintButton, Float>) property2, tintButton.getTranslationX(), 0.0f);
            objectAnimatorOfFloat2.setInterpolator(new DecelerateInterpolator());
            TextView textView = this.searchText;
            ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) property2, textView.getTranslationX(), 0.0f);
            objectAnimatorOfFloat3.setInterpolator(new DecelerateInterpolator());
            View view2 = this.searchBarBg;
            ObjectAnimator objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(view2, (Property<View, Float>) property, view2.getAlpha(), 0.1f);
            this.animatorSet.setDuration(300L);
            this.animatorSet.playTogether(valueAnimatorOfObject, valueAnimatorOfObject2, valueAnimatorOfInt, objectAnimatorOfFloat, objectAnimatorOfFloat2, objectAnimatorOfFloat3, objectAnimatorOfFloat4);
            this.animatorSet.start();
            this.expanded = false;
        }
    }

    public void expand() {
        if (this.expanded || getWidth() == 0) {
            return;
        }
        AnimatorSet animatorSet = this.animatorSet;
        if (animatorSet != null && animatorSet.isStarted()) {
            this.animatorSet.end();
        }
        this.animatorSet = new AnimatorSet();
        ValueAnimator valueAnimatorOfObject = ValueAnimator.ofObject(new ArgbEvaluator(), Integer.valueOf(this.searchText.getCurrentTextColor()), -11908534);
        valueAnimatorOfObject.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.master.y
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f2443a.lambda$expand$0(valueAnimator);
            }
        });
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, 100);
        final int marginStart = ViewUtils.getMarginStart(this.searchBarWithShadow.getLayoutParams());
        final int marginEnd = ViewUtils.getMarginEnd(this.searchBarWithShadow.getLayoutParams());
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.master.z
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f2444a.lambda$expand$1(marginStart, marginEnd, valueAnimator);
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
        Property property = View.TRANSLATION_X;
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(textView, (Property<TextView, Float>) property, textView.getTranslationX(), width);
        objectAnimatorOfFloat.setInterpolator(new OvershootInterpolator(1.2f));
        ValueAnimator valueAnimatorOfObject2 = ValueAnimator.ofObject(new ArgbEvaluator(), Integer.valueOf(this.searchIcon.getTintColor()), -11908534);
        valueAnimatorOfObject2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.master.a0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f2304a.lambda$expand$2(valueAnimator);
            }
        });
        int width2 = ((((getWidth() - (dimensionPixelSize * 2)) - this.searchIcon.getWidth()) - this.searchText.getWidth()) - dimensionPixelSize3) / 2;
        int i10 = Utils.isRtl() ? -1 : 1;
        TintButton tintButton = this.searchIcon;
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(tintButton, (Property<TintButton, Float>) property, tintButton.getTranslationX(), i10 * (width2 - dimensionPixelSize2));
        objectAnimatorOfFloat2.setInterpolator(new OvershootInterpolator(1.2f));
        View view = this.rightMenus;
        Property property2 = View.ALPHA;
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(view, (Property<View, Float>) property2, view.getAlpha(), 0.0f);
        objectAnimatorOfFloat3.addListener(new AnimatorListenerAdapter() { // from class: com.narvii.master.MasterTopBar.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                MasterTopBar.this.rightMenus.setVisibility(8);
            }
        });
        View view2 = this.rightMenus;
        ObjectAnimator objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(view2, (Property<View, Float>) property2, view2.getAlpha(), 0.0f);
        objectAnimatorOfFloat4.addListener(new AnimatorListenerAdapter() { // from class: com.narvii.master.MasterTopBar.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
            }
        });
        this.searchBarBg.setBackgroundResource(R.drawable.selector_white_18_corner_4);
        ObjectAnimator objectAnimatorOfFloat5 = ObjectAnimator.ofFloat(this.searchBarBg, (Property<View, Float>) property2, 0.4f, 1.0f);
        this.animatorSet.setDuration(400L);
        this.animatorSet.playTogether(valueAnimatorOfObject, valueAnimatorOfObject2, valueAnimatorOfInt, objectAnimatorOfFloat3, objectAnimatorOfFloat4, objectAnimatorOfFloat, objectAnimatorOfFloat2, objectAnimatorOfFloat5);
        this.animatorSet.start();
        this.expanded = true;
    }

    public void refreshBalance() {
        WalletBalanceView walletBalanceView = this.balanceView;
        if (walletBalanceView != null) {
            walletBalanceView.refresh();
        }
    }

    public void setContentLanguage(String str) {
        TextView textView = this.tvContentLanguage;
        if (textView != null) {
            textView.setText(str);
        }
    }

    public void setContentLanguageClickListener(View.OnClickListener onClickListener) {
        this.contentLanguageListener = onClickListener;
        View view = this.tvContentLanguageInfo;
        if (view != null) {
            view.setOnClickListener(onClickListener);
        }
    }

    public void setTopBarElementsVisibility(int i10, boolean z6) {
        if (z6) {
            setWalletVisible();
        }
        this.profileImage.setVisibility(i10);
        this.alertView.setVisibility(i10);
        this.searchBar.setVisibility(i10);
        this.searchBarBg.setVisibility(i10);
    }

    public void setUser(User user) {
        this.profileImage.setUser(user, false);
    }

    public void setWalletVisible() {
        this.rightMenus.setVisibility(0);
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) this.searchBarWithShadow.getLayoutParams();
        layoutParams.setMargins(0, 0, TextFieldImplKt.AnimationDuration, 0);
        this.searchBarWithShadow.setLayoutParams(layoutParams);
    }

    public MasterTopBar(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.expanded = false;
        View.inflate(context, R.layout.incubator_home_top_tab_layout, this);
        this.context = Utils.getNVContext(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$expand$1(int i10, int i11, ValueAnimator valueAnimator) {
        int iIntValue = i10 - ((int) ((((Integer) valueAnimator.getAnimatedValue()).intValue() * i10) / 100.0f));
        int iIntValue2 = i11 - ((int) ((((Integer) valueAnimator.getAnimatedValue()).intValue() * i11) / 100.0f));
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.searchBarWithShadow.getLayoutParams();
        marginLayoutParams.setMargins(iIntValue, 0, iIntValue2, 0);
        marginLayoutParams.setMarginStart(iIntValue);
        marginLayoutParams.setMarginEnd(iIntValue2);
        this.searchBarWithShadow.setLayoutParams(marginLayoutParams);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.searchBarWithShadow = (FrameLayout) findViewById(R.id.search_layout_with_shadow);
        this.searchBarBg = findViewById(R.id.search_layout_bg);
        this.searchBar = findViewById(R.id.search_layout);
        this.searchText = (TextView) findViewById(R.id.search_text);
        this.searchIcon = (TintButton) findViewById(R.id.ic_search);
        this.shadow = findViewById(R.id.shadow);
        this.rightMenus = findViewById(R.id.right_menus);
        this.alertView = (FrameLayout) findViewById(R.id.alert);
        this.tvContentLanguageInfo = findViewById(R.id.current_language_info_layout);
        this.balanceView = (WalletBalanceView) findViewById(R.id.wallet_balance_view);
        this.profileImage = (UserAvatarLayout) findViewById(R.id.me_icon);
        View view = this.tvContentLanguageInfo;
        if (view != null) {
            view.setOnClickListener(this.contentLanguageListener);
        }
        this.tvContentLanguage = (TextView) findViewById(R.id.current_content_language);
        WalletBalanceView walletBalanceView = this.balanceView;
        if (walletBalanceView != null) {
            walletBalanceView.refresh();
        }
    }
}
