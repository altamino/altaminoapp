package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes2.dex */
public final class TopicCardCoverBinding implements ViewBinding {

    @NonNull
    public final NVImageView img;

    @NonNull
    private final View rootView;

    @NonNull
    public final NVImageView subscribeTag;

    @NonNull
    public View getRoot() {
        return this.rootView;
    }

    @NonNull
    public static TopicCardCoverBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        if (viewGroup == null) {
            throw new NullPointerException("parent");
        }
        layoutInflater.inflate(R.layout.topic_card_cover, viewGroup);
        return bind(viewGroup);
    }

    private TopicCardCoverBinding(@NonNull View view, @NonNull NVImageView nVImageView, @NonNull NVImageView nVImageView2) {
        this.rootView = view;
        this.img = nVImageView;
        this.subscribeTag = nVImageView2;
    }

    @NonNull
    public static TopicCardCoverBinding bind(@NonNull View view) {
        int i10 = R.id.img;
        NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.img);
        if (nVImageView != null) {
            i10 = R.id.subscribe_tag;
            NVImageView nVImageView2 = (NVImageView) ViewBindings.a(view, R.id.subscribe_tag);
            if (nVImageView2 != null) {
                return new TopicCardCoverBinding(view, nVImageView, nVImageView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
