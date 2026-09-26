package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;
import com.narvii.post.entry.PostEntryView;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes8.dex */
public final class PostEntryBinding implements ViewBinding {

    @NonNull
    public final Button postEntryBtn;

    @NonNull
    public final ThumbImageView postEntryBtn2;

    @NonNull
    public final FrameLayout postEntryFrame;

    @NonNull
    public final ImageView postEntryIcon;

    @NonNull
    private final PostEntryView rootView;

    @NonNull
    public final View themeBg;

    @NonNull
    public static PostEntryBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public PostEntryView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static PostEntryBinding bind(@NonNull View view) {
        View viewA;
        int i10 = R.id.post_entry_btn;
        Button button = (Button) ViewBindings.a(view, i10);
        if (button != null) {
            i10 = R.id.post_entry_btn2;
            ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, i10);
            if (thumbImageView != null) {
                i10 = R.id.post_entry_frame;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, i10);
                if (frameLayout != null) {
                    i10 = R.id.post_entry_icon;
                    ImageView imageView = (ImageView) ViewBindings.a(view, i10);
                    if (imageView != null && (viewA = ViewBindings.a(view, (i10 = R.id.theme_bg))) != null) {
                        return new PostEntryBinding((PostEntryView) view, button, thumbImageView, frameLayout, imageView, viewA);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static PostEntryBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.post_entry, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private PostEntryBinding(@NonNull PostEntryView postEntryView, @NonNull Button button, @NonNull ThumbImageView thumbImageView, @NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull View view) {
        this.rootView = postEntryView;
        this.postEntryBtn = button;
        this.postEntryBtn2 = thumbImageView;
        this.postEntryFrame = frameLayout;
        this.postEntryIcon = imageView;
        this.themeBg = view;
    }
}
