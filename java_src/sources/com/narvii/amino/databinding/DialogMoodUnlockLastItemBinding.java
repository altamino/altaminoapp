package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes10.dex */
public final class DialogMoodUnlockLastItemBinding implements ViewBinding {

    @NonNull
    public final ImageView check;

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public final TextView status;

    @NonNull
    public final TextView text;

    @NonNull
    public static DialogMoodUnlockLastItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DialogMoodUnlockLastItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_mood_unlock_last_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DialogMoodUnlockLastItemBinding(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = relativeLayout;
        this.check = imageView;
        this.status = textView;
        this.text = textView2;
    }

    @NonNull
    public static DialogMoodUnlockLastItemBinding bind(@NonNull View view) {
        int i10 = R.id.check;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.check);
        if (imageView != null) {
            i10 = R.id.status;
            TextView textView = (TextView) ViewBindings.a(view, R.id.status);
            if (textView != null) {
                i10 = R.id.text;
                TextView textView2 = (TextView) ViewBindings.a(view, R.id.text);
                if (textView2 != null) {
                    return new DialogMoodUnlockLastItemBinding((RelativeLayout) view, imageView, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
