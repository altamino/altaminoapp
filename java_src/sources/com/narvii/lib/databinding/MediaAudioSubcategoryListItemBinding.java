package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;
import com.narvii.widget.PressedFrameLayout;
import com.narvii.widget.RadiusLayout;

/* JADX INFO: loaded from: classes7.dex */
public final class MediaAudioSubcategoryListItemBinding implements ViewBinding {

    @NonNull
    private final PressedFrameLayout rootView;

    @NonNull
    public final RadiusLayout subcategoryBackgroundSelected;

    @NonNull
    public final RadiusLayout subcategoryBackgroundUnselected;

    @NonNull
    public final TextView subcategoryName;

    @NonNull
    public static MediaAudioSubcategoryListItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public PressedFrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static MediaAudioSubcategoryListItemBinding bind(@NonNull View view) {
        int i10 = R.id.subcategory_background_selected;
        RadiusLayout radiusLayout = (RadiusLayout) ViewBindings.a(view, i10);
        if (radiusLayout != null) {
            i10 = R.id.subcategory_background_unselected;
            RadiusLayout radiusLayout2 = (RadiusLayout) ViewBindings.a(view, i10);
            if (radiusLayout2 != null) {
                i10 = R.id.subcategory_name;
                TextView textView = (TextView) ViewBindings.a(view, i10);
                if (textView != null) {
                    return new MediaAudioSubcategoryListItemBinding((PressedFrameLayout) view, radiusLayout, radiusLayout2, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static MediaAudioSubcategoryListItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.media_audio_subcategory_list_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private MediaAudioSubcategoryListItemBinding(@NonNull PressedFrameLayout pressedFrameLayout, @NonNull RadiusLayout radiusLayout, @NonNull RadiusLayout radiusLayout2, @NonNull TextView textView) {
        this.rootView = pressedFrameLayout;
        this.subcategoryBackgroundSelected = radiusLayout;
        this.subcategoryBackgroundUnselected = radiusLayout2;
        this.subcategoryName = textView;
    }
}
