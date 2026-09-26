package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.video.widget.EditorStickerInstallFrameView;

/* JADX INFO: loaded from: classes10.dex */
public final class EditorMoodPickerItemBinding implements ViewBinding {

    @NonNull
    public final ImageView icon;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final EditorStickerInstallFrameView stickerInstallFrame;

    @NonNull
    public final View stub1;

    @NonNull
    public static EditorMoodPickerItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static EditorMoodPickerItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.editor_mood_picker_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private EditorMoodPickerItemBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull EditorStickerInstallFrameView editorStickerInstallFrameView, @NonNull View view) {
        this.rootView = frameLayout;
        this.icon = imageView;
        this.stickerInstallFrame = editorStickerInstallFrameView;
        this.stub1 = view;
    }

    @NonNull
    public static EditorMoodPickerItemBinding bind(@NonNull View view) {
        int i10 = R.id.icon;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.icon);
        if (imageView != null) {
            i10 = R.id.sticker_install_frame;
            EditorStickerInstallFrameView editorStickerInstallFrameView = (EditorStickerInstallFrameView) ViewBindings.a(view, R.id.sticker_install_frame);
            if (editorStickerInstallFrameView != null) {
                i10 = R.id.stub1;
                View viewA = ViewBindings.a(view, R.id.stub1);
                if (viewA != null) {
                    return new EditorMoodPickerItemBinding((FrameLayout) view, imageView, editorStickerInstallFrameView, viewA);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
