package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.AutoSizingTextView;
import com.narvii.widget.ThumbImageView;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes9.dex */
public final class IncubatorHomeTopTabLayoutBinding implements ViewBinding {

    @NonNull
    public final FrameLayout alert;

    @NonNull
    public final View alertBadge;

    @NonNull
    public final TextView currentContentLanguage;

    @NonNull
    public final LinearLayout currentLanguageInfoLayout;

    @NonNull
    public final TintButton icSearch;

    @NonNull
    public final ConstraintLayout masterTopTabContainer;

    @NonNull
    public final UserAvatarLayoutMiniNobadgeNoavatarBinding meIcon;

    @NonNull
    public final LinearLayout rightMenus;

    @NonNull
    private final ConstraintLayout rootView;

    @NonNull
    public final LinearLayout searchLayout;

    @NonNull
    public final View searchLayoutBg;

    @NonNull
    public final FrameLayout searchLayoutWithShadow;

    @NonNull
    public final AutoSizingTextView searchText;

    @NonNull
    public final ThumbImageView shadow;

    @NonNull
    public static IncubatorHomeTopTabLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static IncubatorHomeTopTabLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.alert;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.alert);
        if (frameLayout != null) {
            i10 = R.id.alert_badge;
            View viewA = ViewBindings.a(view, R.id.alert_badge);
            if (viewA != null) {
                i10 = R.id.current_content_language;
                TextView textView = (TextView) ViewBindings.a(view, R.id.current_content_language);
                if (textView != null) {
                    i10 = R.id.current_language_info_layout;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.current_language_info_layout);
                    if (linearLayout != null) {
                        i10 = R.id.ic_search;
                        TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.ic_search);
                        if (tintButton != null) {
                            ConstraintLayout constraintLayout = (ConstraintLayout) view;
                            i10 = R.id.me_icon;
                            View viewA2 = ViewBindings.a(view, R.id.me_icon);
                            if (viewA2 != null) {
                                UserAvatarLayoutMiniNobadgeNoavatarBinding userAvatarLayoutMiniNobadgeNoavatarBindingBind = UserAvatarLayoutMiniNobadgeNoavatarBinding.bind(viewA2);
                                i10 = R.id.right_menus;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.right_menus);
                                if (linearLayout2 != null) {
                                    i10 = R.id.search_layout;
                                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.a(view, R.id.search_layout);
                                    if (linearLayout3 != null) {
                                        i10 = R.id.search_layout_bg;
                                        View viewA3 = ViewBindings.a(view, R.id.search_layout_bg);
                                        if (viewA3 != null) {
                                            i10 = R.id.search_layout_with_shadow;
                                            FrameLayout frameLayout2 = (FrameLayout) ViewBindings.a(view, R.id.search_layout_with_shadow);
                                            if (frameLayout2 != null) {
                                                i10 = R.id.search_text;
                                                AutoSizingTextView autoSizingTextView = (AutoSizingTextView) ViewBindings.a(view, R.id.search_text);
                                                if (autoSizingTextView != null) {
                                                    i10 = R.id.shadow;
                                                    ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.shadow);
                                                    if (thumbImageView != null) {
                                                        return new IncubatorHomeTopTabLayoutBinding(constraintLayout, frameLayout, viewA, textView, linearLayout, tintButton, constraintLayout, userAvatarLayoutMiniNobadgeNoavatarBindingBind, linearLayout2, linearLayout3, viewA3, frameLayout2, autoSizingTextView, thumbImageView);
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
    public static IncubatorHomeTopTabLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.incubator_home_top_tab_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private IncubatorHomeTopTabLayoutBinding(@NonNull ConstraintLayout constraintLayout, @NonNull FrameLayout frameLayout, @NonNull View view, @NonNull TextView textView, @NonNull LinearLayout linearLayout, @NonNull TintButton tintButton, @NonNull ConstraintLayout constraintLayout2, @NonNull UserAvatarLayoutMiniNobadgeNoavatarBinding userAvatarLayoutMiniNobadgeNoavatarBinding, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull View view2, @NonNull FrameLayout frameLayout2, @NonNull AutoSizingTextView autoSizingTextView, @NonNull ThumbImageView thumbImageView) {
        this.rootView = constraintLayout;
        this.alert = frameLayout;
        this.alertBadge = view;
        this.currentContentLanguage = textView;
        this.currentLanguageInfoLayout = linearLayout;
        this.icSearch = tintButton;
        this.masterTopTabContainer = constraintLayout2;
        this.meIcon = userAvatarLayoutMiniNobadgeNoavatarBinding;
        this.rightMenus = linearLayout2;
        this.searchLayout = linearLayout3;
        this.searchLayoutBg = view2;
        this.searchLayoutWithShadow = frameLayout2;
        this.searchText = autoSizingTextView;
        this.shadow = thumbImageView;
    }
}
