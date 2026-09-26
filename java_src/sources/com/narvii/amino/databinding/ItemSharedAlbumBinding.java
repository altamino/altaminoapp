package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.sharedfolder.SharedAlbumView;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes3.dex */
public final class ItemSharedAlbumBinding implements ViewBinding {

    @NonNull
    public final ThumbImageView cover;

    @NonNull
    public final View gradient;

    @NonNull
    public final ImageView locked;

    @NonNull
    public final TextView photoCount;

    @NonNull
    private final SharedAlbumView rootView;

    @NonNull
    public final TextView title;

    @NonNull
    public final TextView voteCount;

    @NonNull
    public final ImageView voteIcon;

    @NonNull
    public static ItemSharedAlbumBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public SharedAlbumView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemSharedAlbumBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_shared_album, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemSharedAlbumBinding(@NonNull SharedAlbumView sharedAlbumView, @NonNull ThumbImageView thumbImageView, @NonNull View view, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull ImageView imageView2) {
        this.rootView = sharedAlbumView;
        this.cover = thumbImageView;
        this.gradient = view;
        this.locked = imageView;
        this.photoCount = textView;
        this.title = textView2;
        this.voteCount = textView3;
        this.voteIcon = imageView2;
    }

    @NonNull
    public static ItemSharedAlbumBinding bind(@NonNull View view) {
        int i10 = R.id.cover;
        ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.cover);
        if (thumbImageView != null) {
            i10 = R.id.gradient;
            View viewA = ViewBindings.a(view, R.id.gradient);
            if (viewA != null) {
                i10 = R.id.locked;
                ImageView imageView = (ImageView) ViewBindings.a(view, R.id.locked);
                if (imageView != null) {
                    i10 = R.id.photo_count;
                    TextView textView = (TextView) ViewBindings.a(view, R.id.photo_count);
                    if (textView != null) {
                        i10 = R.id.title;
                        TextView textView2 = (TextView) ViewBindings.a(view, R.id.title);
                        if (textView2 != null) {
                            i10 = R.id.vote_count;
                            TextView textView3 = (TextView) ViewBindings.a(view, R.id.vote_count);
                            if (textView3 != null) {
                                i10 = R.id.vote_icon;
                                ImageView imageView2 = (ImageView) ViewBindings.a(view, R.id.vote_icon);
                                if (imageView2 != null) {
                                    return new ItemSharedAlbumBinding((SharedAlbumView) view, thumbImageView, viewA, imageView, textView, textView2, textView3, imageView2);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
