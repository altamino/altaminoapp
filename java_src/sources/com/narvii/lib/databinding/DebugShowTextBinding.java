package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes10.dex */
public final class DebugShowTextBinding implements ViewBinding {

    @NonNull
    private final ScrollView rootView;

    @NonNull
    public final TextView text;

    @NonNull
    public static DebugShowTextBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public ScrollView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DebugShowTextBinding bind(@NonNull View view) {
        int i10 = R.id.text;
        TextView textView = (TextView) ViewBindings.a(view, i10);
        if (textView != null) {
            return new DebugShowTextBinding((ScrollView) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static DebugShowTextBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.debug_show_text, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DebugShowTextBinding(@NonNull ScrollView scrollView, @NonNull TextView textView) {
        this.rootView = scrollView;
        this.text = textView;
    }
}
