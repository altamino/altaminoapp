package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes7.dex */
public final class MyChatListSearchViewBinding implements ViewBinding {

    @NonNull
    public final TintButton icSearch;

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public static MyChatListSearchViewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static MyChatListSearchViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.my_chat_list_search_view, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private MyChatListSearchViewBinding(@NonNull RelativeLayout relativeLayout, @NonNull TintButton tintButton) {
        this.rootView = relativeLayout;
        this.icSearch = tintButton;
    }

    @NonNull
    public static MyChatListSearchViewBinding bind(@NonNull View view) {
        TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.ic_search);
        if (tintButton != null) {
            return new MyChatListSearchViewBinding((RelativeLayout) view, tintButton);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.ic_search)));
    }
}
