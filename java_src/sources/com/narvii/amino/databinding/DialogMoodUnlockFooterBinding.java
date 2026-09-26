package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.FontAwesomeView;

/* JADX INFO: loaded from: classes9.dex */
public final class DialogMoodUnlockFooterBinding implements ViewBinding {

    @NonNull
    public final FontAwesomeView close;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static DialogMoodUnlockFooterBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DialogMoodUnlockFooterBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_mood_unlock_footer, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DialogMoodUnlockFooterBinding(@NonNull LinearLayout linearLayout, @NonNull FontAwesomeView fontAwesomeView) {
        this.rootView = linearLayout;
        this.close = fontAwesomeView;
    }

    @NonNull
    public static DialogMoodUnlockFooterBinding bind(@NonNull View view) {
        FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.close);
        if (fontAwesomeView != null) {
            return new DialogMoodUnlockFooterBinding((LinearLayout) view, fontAwesomeView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.close)));
    }
}
