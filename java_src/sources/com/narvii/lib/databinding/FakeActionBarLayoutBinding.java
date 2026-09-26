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
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes9.dex */
public final class FakeActionBarLayoutBinding implements ViewBinding {

    @NonNull
    public final TintButton actionbarBack;

    @NonNull
    public final TintButton actionbarRight;

    @NonNull
    public final TextView actionbarTitle;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static FakeActionBarLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FakeActionBarLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.actionbar_back;
        TintButton tintButton = (TintButton) ViewBindings.a(view, i10);
        if (tintButton != null) {
            i10 = R.id.actionbar_right;
            TintButton tintButton2 = (TintButton) ViewBindings.a(view, i10);
            if (tintButton2 != null) {
                i10 = R.id.actionbar_title;
                TextView textView = (TextView) ViewBindings.a(view, i10);
                if (textView != null) {
                    return new FakeActionBarLayoutBinding((FrameLayout) view, tintButton, tintButton2, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static FakeActionBarLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fake_action_bar_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FakeActionBarLayoutBinding(@NonNull FrameLayout frameLayout, @NonNull TintButton tintButton, @NonNull TintButton tintButton2, @NonNull TextView textView) {
        this.rootView = frameLayout;
        this.actionbarBack = tintButton;
        this.actionbarRight = tintButton2;
        this.actionbarTitle = textView;
    }
}
