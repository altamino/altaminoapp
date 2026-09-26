package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.AlphaHeaderOverlayLayout;

/* JADX INFO: loaded from: classes10.dex */
public final class InterestPickerLayoutSingleMainInterestBinding implements ViewBinding {

    @NonNull
    public final TextView actionbarTitle;

    @NonNull
    public final FrameLayout masterBackground;

    @NonNull
    public final AlphaHeaderOverlayLayout overlay;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static InterestPickerLayoutSingleMainInterestBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static InterestPickerLayoutSingleMainInterestBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.interest_picker_layout_single_main_interest, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private InterestPickerLayoutSingleMainInterestBinding(@NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull FrameLayout frameLayout2, @NonNull AlphaHeaderOverlayLayout alphaHeaderOverlayLayout) {
        this.rootView = frameLayout;
        this.actionbarTitle = textView;
        this.masterBackground = frameLayout2;
        this.overlay = alphaHeaderOverlayLayout;
    }

    @NonNull
    public static InterestPickerLayoutSingleMainInterestBinding bind(@NonNull View view) {
        int i10 = R.id.actionbar_title;
        TextView textView = (TextView) ViewBindings.a(view, R.id.actionbar_title);
        if (textView != null) {
            i10 = R.id.master_background;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.master_background);
            if (frameLayout != null) {
                i10 = R.id.overlay;
                AlphaHeaderOverlayLayout alphaHeaderOverlayLayout = (AlphaHeaderOverlayLayout) ViewBindings.a(view, R.id.overlay);
                if (alphaHeaderOverlayLayout != null) {
                    return new InterestPickerLayoutSingleMainInterestBinding((FrameLayout) view, textView, frameLayout, alphaHeaderOverlayLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
