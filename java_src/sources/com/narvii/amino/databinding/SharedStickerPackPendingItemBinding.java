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
import com.narvii.widget.FontAwesomeView;

/* JADX INFO: loaded from: classes2.dex */
public final class SharedStickerPackPendingItemBinding implements ViewBinding {

    @NonNull
    public final FontAwesomeView chevronRight;

    @NonNull
    public final LinearLayout pendingContainer;

    @NonNull
    public final TextView pendingCount;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static SharedStickerPackPendingItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static SharedStickerPackPendingItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.shared_sticker_pack_pending_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private SharedStickerPackPendingItemBinding(@NonNull LinearLayout linearLayout, @NonNull FontAwesomeView fontAwesomeView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.chevronRight = fontAwesomeView;
        this.pendingContainer = linearLayout2;
        this.pendingCount = textView;
    }

    @NonNull
    public static SharedStickerPackPendingItemBinding bind(@NonNull View view) {
        int i10 = R.id.chevron_right;
        FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.chevron_right);
        if (fontAwesomeView != null) {
            LinearLayout linearLayout = (LinearLayout) view;
            TextView textView = (TextView) ViewBindings.a(view, R.id.pending_count);
            if (textView != null) {
                return new SharedStickerPackPendingItemBinding(linearLayout, fontAwesomeView, linearLayout, textView);
            }
            i10 = R.id.pending_count;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
