package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes8.dex */
public final class DebugInfoBinding implements ViewBinding {

    @NonNull
    public final ImageView image;

    @NonNull
    private final ScrollView rootView;

    @NonNull
    public final TextView text;

    @NonNull
    public static DebugInfoBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public ScrollView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DebugInfoBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.debug_info, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DebugInfoBinding(@NonNull ScrollView scrollView, @NonNull ImageView imageView, @NonNull TextView textView) {
        this.rootView = scrollView;
        this.image = imageView;
        this.text = textView;
    }

    @NonNull
    public static DebugInfoBinding bind(@NonNull View view) {
        int i10 = R.id.image;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.image);
        if (imageView != null) {
            i10 = R.id.text;
            TextView textView = (TextView) ViewBindings.a(view, R.id.text);
            if (textView != null) {
                return new DebugInfoBinding((ScrollView) view, imageView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
