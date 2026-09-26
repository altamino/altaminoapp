package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes10.dex */
public final class FragmentSearchMyChatsBinding implements ViewBinding {

    @NonNull
    public final MyChatSearchBarBinding chatSearchBar;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static FragmentSearchMyChatsBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentSearchMyChatsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_search_my_chats, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentSearchMyChatsBinding(@NonNull LinearLayout linearLayout, @NonNull MyChatSearchBarBinding myChatSearchBarBinding) {
        this.rootView = linearLayout;
        this.chatSearchBar = myChatSearchBarBinding;
    }

    @NonNull
    public static FragmentSearchMyChatsBinding bind(@NonNull View view) {
        View viewA = ViewBindings.a(view, R.id.chat_search_bar);
        if (viewA != null) {
            return new FragmentSearchMyChatsBinding((LinearLayout) view, MyChatSearchBarBinding.bind(viewA));
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.chat_search_bar)));
    }
}
