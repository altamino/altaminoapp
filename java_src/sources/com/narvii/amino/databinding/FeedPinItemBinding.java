package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes4.dex */
public final class FeedPinItemBinding implements ViewBinding {

    @NonNull
    public final View divider;

    @NonNull
    public final ImageView pinIcon;

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public final TextView title;

    @NonNull
    public static FeedPinItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FeedPinItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.feed_pin_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FeedPinItemBinding(@NonNull RelativeLayout relativeLayout, @NonNull View view, @NonNull ImageView imageView, @NonNull TextView textView) {
        this.rootView = relativeLayout;
        this.divider = view;
        this.pinIcon = imageView;
        this.title = textView;
    }

    @NonNull
    public static FeedPinItemBinding bind(@NonNull View view) {
        int i10 = R.id.divider;
        View viewA = ViewBindings.a(view, R.id.divider);
        if (viewA != null) {
            i10 = R.id.pin_icon;
            ImageView imageView = (ImageView) ViewBindings.a(view, R.id.pin_icon);
            if (imageView != null) {
                i10 = R.id.title;
                TextView textView = (TextView) ViewBindings.a(view, R.id.title);
                if (textView != null) {
                    return new FeedPinItemBinding((RelativeLayout) view, viewA, imageView, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
