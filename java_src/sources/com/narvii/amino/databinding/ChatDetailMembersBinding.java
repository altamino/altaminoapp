package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes11.dex */
public final class ChatDetailMembersBinding implements ViewBinding {

    @NonNull
    public final GridLayout grid;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static ChatDetailMembersBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ChatDetailMembersBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.chat_detail_members, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ChatDetailMembersBinding(@NonNull LinearLayout linearLayout, @NonNull GridLayout gridLayout) {
        this.rootView = linearLayout;
        this.grid = gridLayout;
    }

    @NonNull
    public static ChatDetailMembersBinding bind(@NonNull View view) {
        GridLayout gridLayout = (GridLayout) ViewBindings.a(view, R.id.grid);
        if (gridLayout != null) {
            return new ChatDetailMembersBinding((LinearLayout) view, gridLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.grid)));
    }
}
