package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;
import com.narvii.util.actionbar.ActionBarLayout;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes11.dex */
public final class ActionbarLayoutNoShadowBinding implements ViewBinding {

    @NonNull
    public final ActionBarLayout actionbar;

    @NonNull
    public final TintButton actionbarBack;

    @NonNull
    public final FrameLayout actionbarLeft;

    @NonNull
    public final TextView actionbarTitle;

    @NonNull
    private final ActionBarLayout rootView;

    @NonNull
    public static ActionbarLayoutNoShadowBinding bind(@NonNull View view) {
        ActionBarLayout actionBarLayout = (ActionBarLayout) view;
        int i10 = R.id.actionbar_back;
        TintButton tintButton = (TintButton) ViewBindings.a(view, i10);
        if (tintButton != null) {
            i10 = R.id.actionbar_left;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, i10);
            if (frameLayout != null) {
                i10 = R.id.actionbar_title;
                TextView textView = (TextView) ViewBindings.a(view, i10);
                if (textView != null) {
                    return new ActionbarLayoutNoShadowBinding(actionBarLayout, actionBarLayout, tintButton, frameLayout, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ActionbarLayoutNoShadowBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public ActionBarLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ActionbarLayoutNoShadowBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.actionbar_layout_no_shadow, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ActionbarLayoutNoShadowBinding(@NonNull ActionBarLayout actionBarLayout, @NonNull ActionBarLayout actionBarLayout2, @NonNull TintButton tintButton, @NonNull FrameLayout frameLayout, @NonNull TextView textView) {
        this.rootView = actionBarLayout;
        this.actionbar = actionBarLayout2;
        this.actionbarBack = tintButton;
        this.actionbarLeft = frameLayout;
        this.actionbarTitle = textView;
    }
}
