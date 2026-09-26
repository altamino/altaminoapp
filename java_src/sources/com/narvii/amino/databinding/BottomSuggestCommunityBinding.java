package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.FontAwesomeView;

/* JADX INFO: loaded from: classes7.dex */
public final class BottomSuggestCommunityBinding implements ViewBinding {

    @NonNull
    public final ImageView hideButton;

    @NonNull
    public final FontAwesomeView icSearch;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final LinearLayout searchBtnLayout;

    @NonNull
    public final RecyclerView suggestCommunitiesListLayout;

    @NonNull
    public static BottomSuggestCommunityBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static BottomSuggestCommunityBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.bottom_suggest_community, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private BottomSuggestCommunityBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull FontAwesomeView fontAwesomeView, @NonNull LinearLayout linearLayout, @NonNull RecyclerView recyclerView) {
        this.rootView = frameLayout;
        this.hideButton = imageView;
        this.icSearch = fontAwesomeView;
        this.searchBtnLayout = linearLayout;
        this.suggestCommunitiesListLayout = recyclerView;
    }

    @NonNull
    public static BottomSuggestCommunityBinding bind(@NonNull View view) {
        int i10 = R.id.hide_button;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.hide_button);
        if (imageView != null) {
            i10 = R.id.ic_search;
            FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.ic_search);
            if (fontAwesomeView != null) {
                i10 = R.id.search_btn_layout;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.search_btn_layout);
                if (linearLayout != null) {
                    i10 = R.id.suggest_communities_list_layout;
                    RecyclerView recyclerView = (RecyclerView) ViewBindings.a(view, R.id.suggest_communities_list_layout);
                    if (recyclerView != null) {
                        return new BottomSuggestCommunityBinding((FrameLayout) view, imageView, fontAwesomeView, linearLayout, recyclerView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
