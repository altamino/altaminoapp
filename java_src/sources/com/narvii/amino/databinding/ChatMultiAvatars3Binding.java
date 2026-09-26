package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes2.dex */
public final class ChatMultiAvatars3Binding implements ViewBinding {

    @NonNull
    public final ThumbImageView image1;

    @NonNull
    public final ThumbImageView image2;

    @NonNull
    public final ThumbImageView image3;

    @NonNull
    private final View rootView;

    @NonNull
    public final View stub2;

    @NonNull
    public View getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ChatMultiAvatars3Binding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        if (viewGroup == null) {
            throw new NullPointerException("parent");
        }
        layoutInflater.inflate(R.layout.chat_multi_avatars_3, viewGroup);
        return bind(viewGroup);
    }

    private ChatMultiAvatars3Binding(@NonNull View view, @NonNull ThumbImageView thumbImageView, @NonNull ThumbImageView thumbImageView2, @NonNull ThumbImageView thumbImageView3, @NonNull View view2) {
        this.rootView = view;
        this.image1 = thumbImageView;
        this.image2 = thumbImageView2;
        this.image3 = thumbImageView3;
        this.stub2 = view2;
    }

    @NonNull
    public static ChatMultiAvatars3Binding bind(@NonNull View view) {
        int i10 = R.id.image1;
        ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.image1);
        if (thumbImageView != null) {
            i10 = R.id.image2;
            ThumbImageView thumbImageView2 = (ThumbImageView) ViewBindings.a(view, R.id.image2);
            if (thumbImageView2 != null) {
                i10 = R.id.image3;
                ThumbImageView thumbImageView3 = (ThumbImageView) ViewBindings.a(view, R.id.image3);
                if (thumbImageView3 != null) {
                    i10 = R.id.stub2;
                    View viewA = ViewBindings.a(view, R.id.stub2);
                    if (viewA != null) {
                        return new ChatMultiAvatars3Binding(view, thumbImageView, thumbImageView2, thumbImageView3, viewA);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
