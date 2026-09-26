package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.sharedfolder.SharedAlbumTagView;

/* JADX INFO: loaded from: classes10.dex */
public final class ItemPhotoJoinedAlbumBinding implements ViewBinding {

    @NonNull
    public final SharedAlbumTagView album;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static ItemPhotoJoinedAlbumBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemPhotoJoinedAlbumBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_photo_joined_album, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemPhotoJoinedAlbumBinding(@NonNull FrameLayout frameLayout, @NonNull SharedAlbumTagView sharedAlbumTagView) {
        this.rootView = frameLayout;
        this.album = sharedAlbumTagView;
    }

    @NonNull
    public static ItemPhotoJoinedAlbumBinding bind(@NonNull View view) {
        SharedAlbumTagView sharedAlbumTagView = (SharedAlbumTagView) ViewBindings.a(view, R.id.album);
        if (sharedAlbumTagView != null) {
            return new ItemPhotoJoinedAlbumBinding((FrameLayout) view, sharedAlbumTagView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.album)));
    }
}
