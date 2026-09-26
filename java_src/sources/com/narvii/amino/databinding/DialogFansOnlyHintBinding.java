package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes5.dex */
public final class DialogFansOnlyHintBinding implements ViewBinding {

    @NonNull
    public final TextView becomeFans;

    @NonNull
    public final ImageView close;

    @NonNull
    public final LinearLayout dialogContent;

    @NonNull
    public final TextView hint;

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public static DialogFansOnlyHintBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DialogFansOnlyHintBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_fans_only_hint, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DialogFansOnlyHintBinding(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout, @NonNull TextView textView2) {
        this.rootView = relativeLayout;
        this.becomeFans = textView;
        this.close = imageView;
        this.dialogContent = linearLayout;
        this.hint = textView2;
    }

    @NonNull
    public static DialogFansOnlyHintBinding bind(@NonNull View view) {
        int i10 = R.id.become_fans;
        TextView textView = (TextView) ViewBindings.a(view, R.id.become_fans);
        if (textView != null) {
            i10 = R.id.close;
            ImageView imageView = (ImageView) ViewBindings.a(view, R.id.close);
            if (imageView != null) {
                i10 = R.id.dialog_content;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.dialog_content);
                if (linearLayout != null) {
                    i10 = R.id.hint;
                    TextView textView2 = (TextView) ViewBindings.a(view, R.id.hint);
                    if (textView2 != null) {
                        return new DialogFansOnlyHintBinding((RelativeLayout) view, textView, imageView, linearLayout, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
