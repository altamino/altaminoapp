package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.FlexSizeImageView;
import com.narvii.widget.ShareMediaBar;

/* JADX INFO: loaded from: classes10.dex */
public final class DetailMediaItemBinding implements ViewBinding {

    @NonNull
    public final FlexSizeImageView image;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final ShareMediaBar shareMediaBar;

    @NonNull
    public final TextView text;

    @NonNull
    public static DetailMediaItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DetailMediaItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.detail_media_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DetailMediaItemBinding(@NonNull FrameLayout frameLayout, @NonNull FlexSizeImageView flexSizeImageView, @NonNull ShareMediaBar shareMediaBar, @NonNull TextView textView) {
        this.rootView = frameLayout;
        this.image = flexSizeImageView;
        this.shareMediaBar = shareMediaBar;
        this.text = textView;
    }

    @NonNull
    public static DetailMediaItemBinding bind(@NonNull View view) {
        int i10 = R.id.image;
        FlexSizeImageView flexSizeImageView = (FlexSizeImageView) ViewBindings.a(view, R.id.image);
        if (flexSizeImageView != null) {
            i10 = R.id.share_media_bar;
            ShareMediaBar shareMediaBar = (ShareMediaBar) ViewBindings.a(view, R.id.share_media_bar);
            if (shareMediaBar != null) {
                i10 = R.id.text;
                TextView textView = (TextView) ViewBindings.a(view, R.id.text);
                if (textView != null) {
                    return new DetailMediaItemBinding((FrameLayout) view, flexSizeImageView, shareMediaBar, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
