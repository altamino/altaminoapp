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
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes10.dex */
public final class ItemSectionMyChatTitleBinding implements ViewBinding {

    @NonNull
    public final TintButton icon;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TintButton setting;

    @NonNull
    public final TextView title;

    @NonNull
    public static ItemSectionMyChatTitleBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemSectionMyChatTitleBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_section_my_chat_title, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemSectionMyChatTitleBinding(@NonNull LinearLayout linearLayout, @NonNull TintButton tintButton, @NonNull TintButton tintButton2, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.icon = tintButton;
        this.setting = tintButton2;
        this.title = textView;
    }

    @NonNull
    public static ItemSectionMyChatTitleBinding bind(@NonNull View view) {
        int i10 = R.id.icon;
        TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.icon);
        if (tintButton != null) {
            i10 = R.id.setting;
            TintButton tintButton2 = (TintButton) ViewBindings.a(view, R.id.setting);
            if (tintButton2 != null) {
                i10 = R.id.title;
                TextView textView = (TextView) ViewBindings.a(view, R.id.title);
                if (textView != null) {
                    return new ItemSectionMyChatTitleBinding((LinearLayout) view, tintButton, tintButton2, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
