package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes9.dex */
public final class ItemChannelMessageImageBinding implements ViewBinding {

    @NonNull
    public final NVImageView image;

    @NonNull
    public final TextView nickname;

    @NonNull
    public final ImageView resend;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static ItemChannelMessageImageBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemChannelMessageImageBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_channel_message_image, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemChannelMessageImageBinding(@NonNull FrameLayout frameLayout, @NonNull NVImageView nVImageView, @NonNull TextView textView, @NonNull ImageView imageView) {
        this.rootView = frameLayout;
        this.image = nVImageView;
        this.nickname = textView;
        this.resend = imageView;
    }

    @NonNull
    public static ItemChannelMessageImageBinding bind(@NonNull View view) {
        int i10 = R.id.image;
        NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.image);
        if (nVImageView != null) {
            i10 = R.id.nickname;
            TextView textView = (TextView) ViewBindings.a(view, R.id.nickname);
            if (textView != null) {
                i10 = R.id.resend;
                ImageView imageView = (ImageView) ViewBindings.a(view, R.id.resend);
                if (imageView != null) {
                    return new ItemChannelMessageImageBinding((FrameLayout) view, nVImageView, textView, imageView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
