package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;
import com.narvii.widget.FontAwesomeView;

/* JADX INFO: loaded from: classes9.dex */
public final class ShareMediaBarBinding implements ViewBinding {

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final LinearLayout shareMediaBar1;

    @NonNull
    public final FontAwesomeView shareMediaEntry;

    @NonNull
    public static ShareMediaBarBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ShareMediaBarBinding bind(@NonNull View view) {
        int i10 = R.id.share_media_bar1;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, i10);
        if (linearLayout != null) {
            i10 = R.id.share_media_entry;
            FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, i10);
            if (fontAwesomeView != null) {
                return new ShareMediaBarBinding((LinearLayout) view, linearLayout, fontAwesomeView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ShareMediaBarBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.share_media_bar, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ShareMediaBarBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull FontAwesomeView fontAwesomeView) {
        this.rootView = linearLayout;
        this.shareMediaBar1 = linearLayout2;
        this.shareMediaEntry = fontAwesomeView;
    }
}
