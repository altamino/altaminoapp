package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.checkin.lottery.LotteryBackgroundView;
import com.narvii.widget.AutoSizingTextView;
import com.narvii.widget.FlipLayout;
import com.narvii.widget.GradientView;
import com.narvii.widget.PopButton;
import com.narvii.widget.PressedFrameLayout;

/* JADX INFO: loaded from: classes.dex */
public final class DialogLotteryBinding implements ViewBinding {

    @NonNull
    public final TextView addedCoins;

    @NonNull
    public final FlexLayout adsCard;

    @NonNull
    public final LinearLayout adsEnableLayout;

    @NonNull
    public final TextView adsEnableNo;

    @NonNull
    public final FrameLayout adsEnableYes;

    @NonNull
    public final LinearLayout adsEnabledLayout;

    @NonNull
    public final TextView adsEnabledTv;

    @NonNull
    public final GradientView adsGradient;

    @NonNull
    public final ImageView awardLight;

    @NonNull
    public final AutoSizingTextView balance;

    @NonNull
    public final View bg;

    @NonNull
    public final FlexLayout card1;

    @NonNull
    public final FlexLayout card2;

    @NonNull
    public final FlexLayout card3;

    @NonNull
    public final FrameLayout cardContent;

    @NonNull
    public final LinearLayout cardLayout;

    @NonNull
    public final PopButton close;

    @NonNull
    public final PressedFrameLayout coinsBar;

    @NonNull
    public final ScrollView content;

    @NonNull
    public final TextView desc;

    @NonNull
    public final FlipLayout flipLayout;

    @NonNull
    public final TextView getFreeIcons;

    @NonNull
    public final LotteryBackgroundView lotteryBackground;

    @NonNull
    public final FlexLayout mainContent;

    @NonNull
    public final FlexLayout mainLayout;

    @NonNull
    public final FrameLayout promptLayout;

    @NonNull
    public final LinearLayout resultBottom;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public final LinearLayout tapToOpen;

    @NonNull
    public final TextView title;

    @NonNull
    public final FlexLayout videoCard;

    @NonNull
    public final GradientView videoGradient;

    private DialogLotteryBinding(@NonNull FlexLayout flexLayout, @NonNull TextView textView, @NonNull FlexLayout flexLayout2, @NonNull LinearLayout linearLayout, @NonNull TextView textView2, @NonNull FrameLayout frameLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView3, @NonNull GradientView gradientView, @NonNull ImageView imageView, @NonNull AutoSizingTextView autoSizingTextView, @NonNull View view, @NonNull FlexLayout flexLayout3, @NonNull FlexLayout flexLayout4, @NonNull FlexLayout flexLayout5, @NonNull FrameLayout frameLayout2, @NonNull LinearLayout linearLayout3, @NonNull PopButton popButton, @NonNull PressedFrameLayout pressedFrameLayout, @NonNull ScrollView scrollView, @NonNull TextView textView4, @NonNull FlipLayout flipLayout, @NonNull TextView textView5, @NonNull LotteryBackgroundView lotteryBackgroundView, @NonNull FlexLayout flexLayout6, @NonNull FlexLayout flexLayout7, @NonNull FrameLayout frameLayout3, @NonNull LinearLayout linearLayout4, @NonNull LinearLayout linearLayout5, @NonNull TextView textView6, @NonNull FlexLayout flexLayout8, @NonNull GradientView gradientView2) {
        this.rootView = flexLayout;
        this.addedCoins = textView;
        this.adsCard = flexLayout2;
        this.adsEnableLayout = linearLayout;
        this.adsEnableNo = textView2;
        this.adsEnableYes = frameLayout;
        this.adsEnabledLayout = linearLayout2;
        this.adsEnabledTv = textView3;
        this.adsGradient = gradientView;
        this.awardLight = imageView;
        this.balance = autoSizingTextView;
        this.bg = view;
        this.card1 = flexLayout3;
        this.card2 = flexLayout4;
        this.card3 = flexLayout5;
        this.cardContent = frameLayout2;
        this.cardLayout = linearLayout3;
        this.close = popButton;
        this.coinsBar = pressedFrameLayout;
        this.content = scrollView;
        this.desc = textView4;
        this.flipLayout = flipLayout;
        this.getFreeIcons = textView5;
        this.lotteryBackground = lotteryBackgroundView;
        this.mainContent = flexLayout6;
        this.mainLayout = flexLayout7;
        this.promptLayout = frameLayout3;
        this.resultBottom = linearLayout4;
        this.tapToOpen = linearLayout5;
        this.title = textView6;
        this.videoCard = flexLayout8;
        this.videoGradient = gradientView2;
    }

    @NonNull
    public static DialogLotteryBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DialogLotteryBinding bind(@NonNull View view) {
        int i10 = R.id.added_coins;
        TextView textView = (TextView) ViewBindings.a(view, R.id.added_coins);
        if (textView != null) {
            i10 = R.id.ads_card;
            FlexLayout flexLayout = (FlexLayout) ViewBindings.a(view, R.id.ads_card);
            if (flexLayout != null) {
                i10 = R.id.ads_enable_layout;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.ads_enable_layout);
                if (linearLayout != null) {
                    i10 = R.id.ads_enable_no;
                    TextView textView2 = (TextView) ViewBindings.a(view, R.id.ads_enable_no);
                    if (textView2 != null) {
                        i10 = R.id.ads_enable_yes;
                        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.ads_enable_yes);
                        if (frameLayout != null) {
                            i10 = R.id.ads_enabled_layout;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.ads_enabled_layout);
                            if (linearLayout2 != null) {
                                i10 = R.id.ads_enabled_tv;
                                TextView textView3 = (TextView) ViewBindings.a(view, R.id.ads_enabled_tv);
                                if (textView3 != null) {
                                    i10 = R.id.ads_gradient;
                                    GradientView gradientView = (GradientView) ViewBindings.a(view, R.id.ads_gradient);
                                    if (gradientView != null) {
                                        i10 = R.id.award_light;
                                        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.award_light);
                                        if (imageView != null) {
                                            i10 = R.id.balance;
                                            AutoSizingTextView autoSizingTextView = (AutoSizingTextView) ViewBindings.a(view, R.id.balance);
                                            if (autoSizingTextView != null) {
                                                i10 = R.id.bg;
                                                View viewA = ViewBindings.a(view, R.id.bg);
                                                if (viewA != null) {
                                                    i10 = R.id.card1;
                                                    FlexLayout flexLayout2 = (FlexLayout) ViewBindings.a(view, R.id.card1);
                                                    if (flexLayout2 != null) {
                                                        i10 = R.id.card2;
                                                        FlexLayout flexLayout3 = (FlexLayout) ViewBindings.a(view, R.id.card2);
                                                        if (flexLayout3 != null) {
                                                            i10 = R.id.card3;
                                                            FlexLayout flexLayout4 = (FlexLayout) ViewBindings.a(view, R.id.card3);
                                                            if (flexLayout4 != null) {
                                                                i10 = R.id.card_content;
                                                                FrameLayout frameLayout2 = (FrameLayout) ViewBindings.a(view, R.id.card_content);
                                                                if (frameLayout2 != null) {
                                                                    i10 = R.id.card_layout;
                                                                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.a(view, R.id.card_layout);
                                                                    if (linearLayout3 != null) {
                                                                        i10 = R.id.close;
                                                                        PopButton popButton = (PopButton) ViewBindings.a(view, R.id.close);
                                                                        if (popButton != null) {
                                                                            i10 = R.id.coins_bar;
                                                                            PressedFrameLayout pressedFrameLayout = (PressedFrameLayout) ViewBindings.a(view, R.id.coins_bar);
                                                                            if (pressedFrameLayout != null) {
                                                                                i10 = R.id.content;
                                                                                ScrollView scrollView = (ScrollView) ViewBindings.a(view, R.id.content);
                                                                                if (scrollView != null) {
                                                                                    i10 = R.id.desc;
                                                                                    TextView textView4 = (TextView) ViewBindings.a(view, R.id.desc);
                                                                                    if (textView4 != null) {
                                                                                        i10 = R.id.flip_layout;
                                                                                        FlipLayout flipLayout = (FlipLayout) ViewBindings.a(view, R.id.flip_layout);
                                                                                        if (flipLayout != null) {
                                                                                            i10 = R.id.get_free_icons;
                                                                                            TextView textView5 = (TextView) ViewBindings.a(view, R.id.get_free_icons);
                                                                                            if (textView5 != null) {
                                                                                                i10 = R.id.lottery_background;
                                                                                                LotteryBackgroundView lotteryBackgroundView = (LotteryBackgroundView) ViewBindings.a(view, R.id.lottery_background);
                                                                                                if (lotteryBackgroundView != null) {
                                                                                                    i10 = R.id.main_content;
                                                                                                    FlexLayout flexLayout5 = (FlexLayout) ViewBindings.a(view, R.id.main_content);
                                                                                                    if (flexLayout5 != null) {
                                                                                                        i10 = R.id.main_layout;
                                                                                                        FlexLayout flexLayout6 = (FlexLayout) ViewBindings.a(view, R.id.main_layout);
                                                                                                        if (flexLayout6 != null) {
                                                                                                            i10 = R.id.prompt_layout;
                                                                                                            FrameLayout frameLayout3 = (FrameLayout) ViewBindings.a(view, R.id.prompt_layout);
                                                                                                            if (frameLayout3 != null) {
                                                                                                                i10 = R.id.result_bottom;
                                                                                                                LinearLayout linearLayout4 = (LinearLayout) ViewBindings.a(view, R.id.result_bottom);
                                                                                                                if (linearLayout4 != null) {
                                                                                                                    i10 = R.id.tap_to_open;
                                                                                                                    LinearLayout linearLayout5 = (LinearLayout) ViewBindings.a(view, R.id.tap_to_open);
                                                                                                                    if (linearLayout5 != null) {
                                                                                                                        i10 = R.id.title;
                                                                                                                        TextView textView6 = (TextView) ViewBindings.a(view, R.id.title);
                                                                                                                        if (textView6 != null) {
                                                                                                                            i10 = R.id.video_card;
                                                                                                                            FlexLayout flexLayout7 = (FlexLayout) ViewBindings.a(view, R.id.video_card);
                                                                                                                            if (flexLayout7 != null) {
                                                                                                                                i10 = R.id.video_gradient;
                                                                                                                                GradientView gradientView2 = (GradientView) ViewBindings.a(view, R.id.video_gradient);
                                                                                                                                if (gradientView2 != null) {
                                                                                                                                    return new DialogLotteryBinding((FlexLayout) view, textView, flexLayout, linearLayout, textView2, frameLayout, linearLayout2, textView3, gradientView, imageView, autoSizingTextView, viewA, flexLayout2, flexLayout3, flexLayout4, frameLayout2, linearLayout3, popButton, pressedFrameLayout, scrollView, textView4, flipLayout, textView5, lotteryBackgroundView, flexLayout5, flexLayout6, frameLayout3, linearLayout4, linearLayout5, textView6, flexLayout7, gradientView2);
                                                                                                                                }
                                                                                                                            }
                                                                                                                        }
                                                                                                                    }
                                                                                                                }
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static DialogLotteryBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_lottery, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
