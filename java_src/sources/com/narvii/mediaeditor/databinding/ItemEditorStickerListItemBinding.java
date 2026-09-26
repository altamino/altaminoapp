package com.narvii.mediaeditor.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.mediaeditor.R;
import com.narvii.video.widget.EditorStickerInstallFrameView;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes10.dex */
public final class ItemEditorStickerListItemBinding implements ViewBinding {

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final EditorStickerInstallFrameView stickerInstallFrame;

    @NonNull
    public final NVImageView thumbnail;

    @NonNull
    public static ItemEditorStickerListItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemEditorStickerListItemBinding bind(@NonNull View view) {
        int i10 = R.id.sticker_install_frame;
        EditorStickerInstallFrameView editorStickerInstallFrameView = (EditorStickerInstallFrameView) ViewBindings.a(view, i10);
        if (editorStickerInstallFrameView != null) {
            i10 = R.id.thumbnail;
            NVImageView nVImageView = (NVImageView) ViewBindings.a(view, i10);
            if (nVImageView != null) {
                return new ItemEditorStickerListItemBinding((FrameLayout) view, editorStickerInstallFrameView, nVImageView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ItemEditorStickerListItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_editor_sticker_list_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemEditorStickerListItemBinding(@NonNull FrameLayout frameLayout, @NonNull EditorStickerInstallFrameView editorStickerInstallFrameView, @NonNull NVImageView nVImageView) {
        this.rootView = frameLayout;
        this.stickerInstallFrame = editorStickerInstallFrameView;
        this.thumbnail = nVImageView;
    }
}
