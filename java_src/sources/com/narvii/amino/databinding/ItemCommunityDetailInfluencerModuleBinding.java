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
import com.narvii.widget.InfluencerRecyclerView;

/* JADX INFO: loaded from: classes10.dex */
public final class ItemCommunityDetailInfluencerModuleBinding implements ViewBinding {

    @NonNull
    public final InfluencerRecyclerView influencerRecycler;

    @NonNull
    public final TextView liveLayerRecommendLineText;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static ItemCommunityDetailInfluencerModuleBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemCommunityDetailInfluencerModuleBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_community_detail_influencer_module, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemCommunityDetailInfluencerModuleBinding(@NonNull LinearLayout linearLayout, @NonNull InfluencerRecyclerView influencerRecyclerView, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.influencerRecycler = influencerRecyclerView;
        this.liveLayerRecommendLineText = textView;
    }

    @NonNull
    public static ItemCommunityDetailInfluencerModuleBinding bind(@NonNull View view) {
        int i10 = R.id.influencer_recycler;
        InfluencerRecyclerView influencerRecyclerView = (InfluencerRecyclerView) ViewBindings.a(view, R.id.influencer_recycler);
        if (influencerRecyclerView != null) {
            i10 = R.id.live_layer_recommend_line_text;
            TextView textView = (TextView) ViewBindings.a(view, R.id.live_layer_recommend_line_text);
            if (textView != null) {
                return new ItemCommunityDetailInfluencerModuleBinding((LinearLayout) view, influencerRecyclerView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
