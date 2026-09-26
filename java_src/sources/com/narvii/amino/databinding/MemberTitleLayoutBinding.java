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
import com.narvii.app.theme.view.NVThemeTextView;

/* JADX INFO: loaded from: classes10.dex */
public final class MemberTitleLayoutBinding implements ViewBinding {

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final NVThemeTextView title;

    @NonNull
    public static MemberTitleLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static MemberTitleLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.member_title_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private MemberTitleLayoutBinding(@NonNull LinearLayout linearLayout, @NonNull NVThemeTextView nVThemeTextView) {
        this.rootView = linearLayout;
        this.title = nVThemeTextView;
    }

    @NonNull
    public static MemberTitleLayoutBinding bind(@NonNull View view) {
        NVThemeTextView nVThemeTextView = (NVThemeTextView) ViewBindings.a(view, R.id.title);
        if (nVThemeTextView != null) {
            return new MemberTitleLayoutBinding((LinearLayout) view, nVThemeTextView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.title)));
    }
}
