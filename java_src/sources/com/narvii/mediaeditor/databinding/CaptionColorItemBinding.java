package com.narvii.mediaeditor.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.mediaeditor.R;
import com.narvii.video.attachment.caption.CaptionColorPickerView;

/* JADX INFO: loaded from: classes4.dex */
public final class CaptionColorItemBinding implements ViewBinding {

    @NonNull
    private final CaptionColorPickerView rootView;

    @NonNull
    public static CaptionColorItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public CaptionColorPickerView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static CaptionColorItemBinding bind(@NonNull View view) {
        if (view != null) {
            return new CaptionColorItemBinding((CaptionColorPickerView) view);
        }
        throw new NullPointerException("rootView");
    }

    @NonNull
    public static CaptionColorItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.caption_color_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private CaptionColorItemBinding(@NonNull CaptionColorPickerView captionColorPickerView) {
        this.rootView = captionColorPickerView;
    }
}
