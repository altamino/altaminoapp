package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;
import com.narvii.transition.TransitionLayout;
import com.narvii.widget.GradientView;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes8.dex */
public final class AminoTemplatePickerItemBinding implements ViewBinding {

    @NonNull
    public final TintButton chevron;

    @NonNull
    public final TransitionLayout container;

    @NonNull
    public final GradientView gradient;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static AminoTemplatePickerItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static AminoTemplatePickerItemBinding bind(@NonNull View view) {
        int i10 = R.id.chevron;
        TintButton tintButton = (TintButton) ViewBindings.a(view, i10);
        if (tintButton != null) {
            i10 = R.id.container;
            TransitionLayout transitionLayout = (TransitionLayout) ViewBindings.a(view, i10);
            if (transitionLayout != null) {
                i10 = R.id.gradient;
                GradientView gradientView = (GradientView) ViewBindings.a(view, i10);
                if (gradientView != null) {
                    return new AminoTemplatePickerItemBinding((FrameLayout) view, tintButton, transitionLayout, gradientView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static AminoTemplatePickerItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.amino_template_picker_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private AminoTemplatePickerItemBinding(@NonNull FrameLayout frameLayout, @NonNull TintButton tintButton, @NonNull TransitionLayout transitionLayout, @NonNull GradientView gradientView) {
        this.rootView = frameLayout;
        this.chevron = tintButton;
        this.container = transitionLayout;
        this.gradient = gradientView;
    }
}
