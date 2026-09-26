package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes11.dex */
public final class DetailActionItemBinding implements ViewBinding {

    @NonNull
    public final LinearLayout addDecContainer;

    @NonNull
    public final TintButton icPlus;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView text;

    @NonNull
    public static DetailActionItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DetailActionItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.detail_action_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DetailActionItemBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TintButton tintButton, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.addDecContainer = linearLayout2;
        this.icPlus = tintButton;
        this.text = textView;
    }

    @NonNull
    public static DetailActionItemBinding bind(@NonNull View view) {
        int i10 = R.id.add_dec_container;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.add_dec_container);
        if (linearLayout != null) {
            i10 = R.id.ic_plus;
            TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.ic_plus);
            if (tintButton != null) {
                i10 = R.id.text;
                TextView textView = (TextView) ViewBindings.a(view, R.id.text);
                if (textView != null) {
                    return new DetailActionItemBinding((LinearLayout) view, linearLayout, tintButton, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
