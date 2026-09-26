package com.narvii.mediaeditor.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.mediaeditor.R;

/* JADX INFO: loaded from: classes6.dex */
public final class ComponentOptionPanelBinding implements ViewBinding {

    @NonNull
    public final ImageView optionAddMusic;

    @NonNull
    public final ImageView optionCancel;

    @NonNull
    public final ImageView optionDone;

    @NonNull
    public final TextView optionHintText;

    @NonNull
    private final View rootView;

    @NonNull
    public View getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ComponentOptionPanelBinding bind(@NonNull View view) {
        int i10 = R.id.option_add_music;
        ImageView imageView = (ImageView) ViewBindings.a(view, i10);
        if (imageView != null) {
            i10 = R.id.option_cancel;
            ImageView imageView2 = (ImageView) ViewBindings.a(view, i10);
            if (imageView2 != null) {
                i10 = R.id.option_done;
                ImageView imageView3 = (ImageView) ViewBindings.a(view, i10);
                if (imageView3 != null) {
                    i10 = R.id.option_hint_text;
                    TextView textView = (TextView) ViewBindings.a(view, i10);
                    if (textView != null) {
                        return new ComponentOptionPanelBinding(view, imageView, imageView2, imageView3, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ComponentOptionPanelBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        if (viewGroup == null) {
            throw new NullPointerException("parent");
        }
        layoutInflater.inflate(R.layout.component_option_panel, viewGroup);
        return bind(viewGroup);
    }

    private ComponentOptionPanelBinding(@NonNull View view, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull TextView textView) {
        this.rootView = view;
        this.optionAddMusic = imageView;
        this.optionCancel = imageView2;
        this.optionDone = imageView3;
        this.optionHintText = textView;
    }
}
