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

/* JADX INFO: loaded from: classes6.dex */
public final class GridItemCardPinBinding implements ViewBinding {

    @NonNull
    public final LinearLayout gridItemVote;

    @NonNull
    public final View pinIcon;

    @NonNull
    public final TextView pinText;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static GridItemCardPinBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static GridItemCardPinBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.grid_item_card_pin, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private GridItemCardPinBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull View view, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.gridItemVote = linearLayout2;
        this.pinIcon = view;
        this.pinText = textView;
    }

    @NonNull
    public static GridItemCardPinBinding bind(@NonNull View view) {
        int i10 = R.id.grid_item_vote;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.grid_item_vote);
        if (linearLayout != null) {
            i10 = R.id.pin_icon;
            View viewA = ViewBindings.a(view, R.id.pin_icon);
            if (viewA != null) {
                i10 = R.id.pin_text;
                TextView textView = (TextView) ViewBindings.a(view, R.id.pin_text);
                if (textView != null) {
                    return new GridItemCardPinBinding((LinearLayout) view, linearLayout, viewA, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
