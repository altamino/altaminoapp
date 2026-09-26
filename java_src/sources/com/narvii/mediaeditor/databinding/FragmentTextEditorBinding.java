package com.narvii.mediaeditor.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.mediaeditor.R;
import com.narvii.video.attachment.caption.CaptionColorRecyclerView;
import com.narvii.widget.StatusBarPlaceHolder;

/* JADX INFO: loaded from: classes10.dex */
public final class FragmentTextEditorBinding implements ViewBinding {

    @NonNull
    public final ImageView bg;

    @NonNull
    public final CaptionColorRecyclerView colorPicker;

    @NonNull
    public final EditText editText;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final StatusBarPlaceHolder statusBarPlaceholder;

    @NonNull
    public static FragmentTextEditorBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentTextEditorBinding bind(@NonNull View view) {
        int i10 = R.id.bg;
        ImageView imageView = (ImageView) ViewBindings.a(view, i10);
        if (imageView != null) {
            i10 = R.id.color_picker;
            CaptionColorRecyclerView captionColorRecyclerView = (CaptionColorRecyclerView) ViewBindings.a(view, i10);
            if (captionColorRecyclerView != null) {
                i10 = R.id.edit_text;
                EditText editText = (EditText) ViewBindings.a(view, i10);
                if (editText != null) {
                    i10 = R.id.status_bar_placeholder;
                    StatusBarPlaceHolder statusBarPlaceHolder = (StatusBarPlaceHolder) ViewBindings.a(view, i10);
                    if (statusBarPlaceHolder != null) {
                        return new FragmentTextEditorBinding((FrameLayout) view, imageView, captionColorRecyclerView, editText, statusBarPlaceHolder);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static FragmentTextEditorBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_text_editor, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentTextEditorBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull CaptionColorRecyclerView captionColorRecyclerView, @NonNull EditText editText, @NonNull StatusBarPlaceHolder statusBarPlaceHolder) {
        this.rootView = frameLayout;
        this.bg = imageView;
        this.colorPicker = captionColorRecyclerView;
        this.editText = editText;
        this.statusBarPlaceholder = statusBarPlaceHolder;
    }
}
