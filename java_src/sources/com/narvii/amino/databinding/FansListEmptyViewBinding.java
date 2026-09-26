package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.FontAwesomeView;

/* JADX INFO: loaded from: classes7.dex */
public final class FansListEmptyViewBinding implements ViewBinding {

    @NonNull
    public final FontAwesomeView emptyRetry;

    @NonNull
    public final TextView emptyText;

    @NonNull
    public final LinearLayout main;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static FansListEmptyViewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FansListEmptyViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fans_list_empty_view, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FansListEmptyViewBinding(@NonNull FrameLayout frameLayout, @NonNull FontAwesomeView fontAwesomeView, @NonNull TextView textView, @NonNull LinearLayout linearLayout) {
        this.rootView = frameLayout;
        this.emptyRetry = fontAwesomeView;
        this.emptyText = textView;
        this.main = linearLayout;
    }

    @NonNull
    public static FansListEmptyViewBinding bind(@NonNull View view) {
        int i10 = R.id.empty_retry;
        FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.empty_retry);
        if (fontAwesomeView != null) {
            i10 = R.id.empty_text;
            TextView textView = (TextView) ViewBindings.a(view, R.id.empty_text);
            if (textView != null) {
                i10 = R.id.main;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.main);
                if (linearLayout != null) {
                    return new FansListEmptyViewBinding((FrameLayout) view, fontAwesomeView, textView, linearLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
