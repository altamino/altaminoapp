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

/* JADX INFO: loaded from: classes11.dex */
public final class AudioOptionPanelBinding implements ViewBinding {

    @NonNull
    public final ImageView optionCancel;

    @NonNull
    public final ImageView optionDone;

    @NonNull
    public final TextView optionTitle;

    @NonNull
    private final View rootView;

    @NonNull
    public View getRoot() {
        return this.rootView;
    }

    @NonNull
    public static AudioOptionPanelBinding bind(@NonNull View view) {
        int i10 = R.id.option_cancel;
        ImageView imageView = (ImageView) ViewBindings.a(view, i10);
        if (imageView != null) {
            i10 = R.id.option_done;
            ImageView imageView2 = (ImageView) ViewBindings.a(view, i10);
            if (imageView2 != null) {
                i10 = R.id.option_title;
                TextView textView = (TextView) ViewBindings.a(view, i10);
                if (textView != null) {
                    return new AudioOptionPanelBinding(view, imageView, imageView2, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static AudioOptionPanelBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        if (viewGroup == null) {
            throw new NullPointerException("parent");
        }
        layoutInflater.inflate(R.layout.audio_option_panel, viewGroup);
        return bind(viewGroup);
    }

    private AudioOptionPanelBinding(@NonNull View view, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull TextView textView) {
        this.rootView = view;
        this.optionCancel = imageView;
        this.optionDone = imageView2;
        this.optionTitle = textView;
    }
}
