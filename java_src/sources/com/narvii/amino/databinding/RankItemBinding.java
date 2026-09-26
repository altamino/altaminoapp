package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes8.dex */
public final class RankItemBinding implements ViewBinding {

    @NonNull
    public final ImageView badge;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView subTitle;

    @NonNull
    public final TextView title;

    @NonNull
    public static RankItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static RankItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.rank_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private RankItemBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.badge = imageView;
        this.subTitle = textView;
        this.title = textView2;
    }

    @NonNull
    public static RankItemBinding bind(@NonNull View view) {
        int i10 = R.id.badge;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.badge);
        if (imageView != null) {
            i10 = R.id.subTitle;
            TextView textView = (TextView) ViewBindings.a(view, R.id.subTitle);
            if (textView != null) {
                i10 = R.id.title;
                TextView textView2 = (TextView) ViewBindings.a(view, R.id.title);
                if (textView2 != null) {
                    return new RankItemBinding((LinearLayout) view, imageView, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
