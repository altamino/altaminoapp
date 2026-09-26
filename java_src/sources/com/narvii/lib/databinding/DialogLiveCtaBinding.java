package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes10.dex */
public final class DialogLiveCtaBinding implements ViewBinding {

    @NonNull
    public final ImageView close;

    @NonNull
    public final Button confirm;

    @NonNull
    public final ImageView ctaIcon;

    @NonNull
    public final TextView description;

    @NonNull
    public final ConstraintLayout popup;

    @NonNull
    private final ConstraintLayout rootView;

    @NonNull
    public final TextView title;

    @NonNull
    public static DialogLiveCtaBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DialogLiveCtaBinding bind(@NonNull View view) {
        int i10 = R.id.close;
        ImageView imageView = (ImageView) ViewBindings.a(view, i10);
        if (imageView != null) {
            i10 = R.id.confirm;
            Button button = (Button) ViewBindings.a(view, i10);
            if (button != null) {
                i10 = R.id.cta_icon;
                ImageView imageView2 = (ImageView) ViewBindings.a(view, i10);
                if (imageView2 != null) {
                    i10 = R.id.description;
                    TextView textView = (TextView) ViewBindings.a(view, i10);
                    if (textView != null) {
                        i10 = R.id.popup;
                        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.a(view, i10);
                        if (constraintLayout != null) {
                            i10 = R.id.title;
                            TextView textView2 = (TextView) ViewBindings.a(view, i10);
                            if (textView2 != null) {
                                return new DialogLiveCtaBinding((ConstraintLayout) view, imageView, button, imageView2, textView, constraintLayout, textView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static DialogLiveCtaBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_live_cta, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DialogLiveCtaBinding(@NonNull ConstraintLayout constraintLayout, @NonNull ImageView imageView, @NonNull Button button, @NonNull ImageView imageView2, @NonNull TextView textView, @NonNull ConstraintLayout constraintLayout2, @NonNull TextView textView2) {
        this.rootView = constraintLayout;
        this.close = imageView;
        this.confirm = button;
        this.ctaIcon = imageView2;
        this.description = textView;
        this.popup = constraintLayout2;
        this.title = textView2;
    }
}
