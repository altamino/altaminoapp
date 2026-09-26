package com.narvii.topic.adapter;

import ai.medialab.medialabads2.banners.MediaLabAdView;
import ai.medialab.medialabads2.data.AdSize;
import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.widget.FrameLayout;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.ad.MediaLabAdsUtilsKt;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.master.home.discover.DiscoverFragment;
import com.narvii.util.Log;
import com.narvii.widget.recycleview.viewholder.BaseViewHolder;
import com.narvii.widget.recycleview.viewholder.RecyclerViewAdriftAdapter;
import java.util.Iterator;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class MedRecAdAdapter extends RecyclerViewAdriftAdapter {
    private final long discoverScreenAdAppearance;

    public static final class MedRecAdViewHolder extends BaseViewHolder {

        @Nullable
        private MediaLabAdView mediaLabAdView;

        @Nullable
        public final MediaLabAdView getMediaLabAdView() {
            return this.mediaLabAdView;
        }

        public final void setMediaLabAdView(@Nullable MediaLabAdView mediaLabAdView) {
            this.mediaLabAdView = mediaLabAdView;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public MedRecAdViewHolder(@NotNull View itemView) {
            super(itemView);
            kotlin.jvm.internal.t.j(itemView, "itemView");
        }
    }

    private final AdSize getAdSize() {
        if (this.discoverScreenAdAppearance == 1) {
            return AdSize.MEDIUM_RECTANGLE;
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NotNull RecyclerView.ViewHolder holder, int i10) {
        AdSize adSize;
        kotlin.jvm.internal.t.j(holder, "holder");
        MedRecAdViewHolder medRecAdViewHolder = (MedRecAdViewHolder) holder;
        MediaLabAdView mediaLabAdView = medRecAdViewHolder.getMediaLabAdView();
        Context context = this.context.getContext();
        if ((context instanceof Activity ? (Activity) context : null) == null || mediaLabAdView == null || !mediaLabAdView.showPreloadedAd() || (adSize = getAdSize()) == null) {
            return;
        }
        View view = medRecAdViewHolder.itemView;
        FrameLayout frameLayout = view instanceof FrameLayout ? (FrameLayout) view : null;
        if (frameLayout != null) {
            Log.v("MedRecAdAdapter", "MediaLab MedRec - New ad view ready");
            int dimensionPixelSize = frameLayout.getResources().getDimensionPixelSize(R.dimen.ad_divider_padding) * 2;
            Context context2 = frameLayout.getContext();
            kotlin.jvm.internal.t.i(context2, "getContext(...)");
            frameLayout.setLayoutParams(new ViewGroup.MarginLayoutParams(-1, dimensionPixelSize + adSize.getHeightPx(context2)));
            ViewParent parent = mediaLabAdView.getParent();
            ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
            if (viewGroup != null) {
                viewGroup.removeView(mediaLabAdView);
            }
            frameLayout.addView(mediaLabAdView);
            medRecAdViewHolder.setMediaLabAdView(mediaLabAdView);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NotNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i10) {
        FragmentActivity fragmentActivityRequireActivity;
        Window window;
        View decorView;
        kotlin.jvm.internal.t.j(parent, "parent");
        AdSize adSize = getAdSize();
        if (adSize == null) {
            return new MedRecAdViewHolder(new FrameLayout(this.context.getContext()));
        }
        MedRecAdViewHolder medRecAdViewHolder = new MedRecAdViewHolder(new FrameLayout(this.context.getContext()));
        NVContext nVContext = this.context;
        Context context = nVContext != null ? nVContext.getContext() : null;
        kotlin.jvm.internal.t.h(context, "null cannot be cast to non-null type android.app.Activity");
        MediaLabAdView mediaLabAdView = new MediaLabAdView((Activity) context);
        MediaLabAdView.initialize$default(mediaLabAdView, "feed", adSize, false, false, null, 28, null);
        NVContext nVContext2 = this.context;
        DiscoverFragment discoverFragment = nVContext2 instanceof DiscoverFragment ? (DiscoverFragment) nVContext2 : null;
        View rootView = (discoverFragment == null || (fragmentActivityRequireActivity = discoverFragment.requireActivity()) == null || (window = fragmentActivityRequireActivity.getWindow()) == null || (decorView = window.getDecorView()) == null) ? null : decorView.getRootView();
        ViewGroup viewGroup = rootView instanceof ViewGroup ? (ViewGroup) rootView : null;
        if (viewGroup != null) {
            Iterator<T> it = MediaLabAdsUtilsKt.findFullObstructions(viewGroup).iterator();
            while (it.hasNext()) {
                mediaLabAdView.addFriendlyObstruction((View) it.next());
            }
        }
        medRecAdViewHolder.setMediaLabAdView(mediaLabAdView);
        return medRecAdViewHolder;
    }

    public MedRecAdAdapter(@Nullable NVContext nVContext, long j6) {
        super(nVContext);
        this.discoverScreenAdAppearance = j6;
    }
}
