package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.EmojioneView;

/* JADX INFO: loaded from: classes4.dex */
public final class ItemCountryCodePickerBinding implements ViewBinding {

    @NonNull
    public final EmojioneView emoji;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView text;

    @NonNull
    public static ItemCountryCodePickerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemCountryCodePickerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_country_code_picker, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemCountryCodePickerBinding(@NonNull LinearLayout linearLayout, @NonNull EmojioneView emojioneView, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.emoji = emojioneView;
        this.text = textView;
    }

    @NonNull
    public static ItemCountryCodePickerBinding bind(@NonNull View view) {
        int i10 = R.id.emoji;
        EmojioneView emojioneView = (EmojioneView) ViewBindings.a(view, R.id.emoji);
        if (emojioneView != null) {
            i10 = R.id.text;
            TextView textView = (TextView) ViewBindings.a(view, R.id.text);
            if (textView != null) {
                return new ItemCountryCodePickerBinding((LinearLayout) view, emojioneView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
