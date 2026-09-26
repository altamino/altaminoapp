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

/* JADX INFO: loaded from: classes10.dex */
public final class SharedFolderTabBinding implements ViewBinding {

    @NonNull
    public final TextView count;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView tabTitle;

    @NonNull
    public static SharedFolderTabBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static SharedFolderTabBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.shared_folder_tab, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private SharedFolderTabBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.count = textView;
        this.tabTitle = textView2;
    }

    @NonNull
    public static SharedFolderTabBinding bind(@NonNull View view) {
        int i10 = R.id.count;
        TextView textView = (TextView) ViewBindings.a(view, R.id.count);
        if (textView != null) {
            i10 = R.id.tab_title;
            TextView textView2 = (TextView) ViewBindings.a(view, R.id.tab_title);
            if (textView2 != null) {
                return new SharedFolderTabBinding((LinearLayout) view, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
