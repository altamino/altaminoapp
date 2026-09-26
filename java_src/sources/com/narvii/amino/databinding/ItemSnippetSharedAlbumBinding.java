package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.sharedfolder.SharedAlbumView;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes6.dex */
public final class ItemSnippetSharedAlbumBinding implements ViewBinding {

    @NonNull
    public final ThumbImageView cover;

    @NonNull
    public final View gradient;

    @NonNull
    public final ImageView locked;

    @NonNull
    public final TextView photoCount;

    @NonNull
    private final View rootView;

    @NonNull
    public final SharedAlbumView sharedAlbumView;

    @NonNull
    public final TextView title;

    @NonNull
    public final TextView voteCount;

    @NonNull
    public final ImageView voteIcon;

    @NonNull
    public View getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemSnippetSharedAlbumBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        if (viewGroup == null) {
            throw new NullPointerException("parent");
        }
        layoutInflater.inflate(R.layout.item_snippet_shared_album, viewGroup);
        return bind(viewGroup);
    }

    private ItemSnippetSharedAlbumBinding(@NonNull View view, @NonNull ThumbImageView thumbImageView, @NonNull View view2, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull SharedAlbumView sharedAlbumView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull ImageView imageView2) {
        this.rootView = view;
        this.cover = thumbImageView;
        this.gradient = view2;
        this.locked = imageView;
        this.photoCount = textView;
        this.sharedAlbumView = sharedAlbumView;
        this.title = textView2;
        this.voteCount = textView3;
        this.voteIcon = imageView2;
    }

    @NonNull
    public static ItemSnippetSharedAlbumBinding bind(@NonNull View view) {
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
                        i10 = R.id.shared_album_view;
                        SharedAlbumView sharedAlbumView = (SharedAlbumView) ViewBindings.a(view, R.id.shared_album_view);
                        if (sharedAlbumView != null) {
                            i10 = R.id.title;
                            TextView textView2 = (TextView) ViewBindings.a(view, R.id.title);
                            if (textView2 != null) {
                                i10 = R.id.vote_count;
                                TextView textView3 = (TextView) ViewBindings.a(view, R.id.vote_count);
                                if (textView3 != null) {
                                    i10 = R.id.vote_icon;
                                    ImageView imageView2 = (ImageView) ViewBindings.a(view, R.id.vote_icon);
                                    if (imageView2 != null) {
                                        return new ItemSnippetSharedAlbumBinding(view, thumbImageView, viewA, imageView, textView, sharedAlbumView, textView2, textView3, imageView2);
                                    }
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
