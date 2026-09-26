package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes9.dex */
public final class ItemAssetLoadStateBinding implements ViewBinding {

    @NonNull
    public final TextView errorMsg;

    @NonNull
    public final SpinningView progressBar;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static ItemAssetLoadStateBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemAssetLoadStateBinding bind(@NonNull View view) {
        int i10 = R.id.error_msg;
        TextView textView = (TextView) ViewBindings.a(view, i10);
        if (textView != null) {
            i10 = R.id.progress_bar;
            SpinningView spinningView = (SpinningView) ViewBindings.a(view, i10);
            if (spinningView != null) {
                return new ItemAssetLoadStateBinding((LinearLayout) view, textView, spinningView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ItemAssetLoadStateBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_asset_load_state, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemAssetLoadStateBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull SpinningView spinningView) {
        this.rootView = linearLayout;
        this.errorMsg = textView;
        this.progressBar = spinningView;
    }
}
