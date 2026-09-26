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

/* JADX INFO: loaded from: classes10.dex */
public final class ItemEntryBinding implements ViewBinding {

    @NonNull
    public final TextView badge;

    @NonNull
    public final TintButton chevronRight;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView text;

    @NonNull
    public static ItemEntryBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemEntryBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_entry, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemEntryBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TintButton tintButton, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.badge = textView;
        this.chevronRight = tintButton;
        this.text = textView2;
    }

    @NonNull
    public static ItemEntryBinding bind(@NonNull View view) {
        int i10 = R.id.badge;
        TextView textView = (TextView) ViewBindings.a(view, R.id.badge);
        if (textView != null) {
            i10 = R.id.chevron_right;
            TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.chevron_right);
            if (tintButton != null) {
                i10 = R.id.text;
                TextView textView2 = (TextView) ViewBindings.a(view, R.id.text);
                if (textView2 != null) {
                    return new ItemEntryBinding((LinearLayout) view, textView, tintButton, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
