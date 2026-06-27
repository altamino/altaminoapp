package com.narvii.livelayer.detailview;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import com.narvii.adapter.MarginAdapter;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.feed.FeedToolbarLayout;
import com.narvii.list.MergeAdapter;
import com.narvii.livelayer.LiveLayerMemberAdapter;
import com.narvii.livelayer.category.OnlineCategoryConfig;
import com.narvii.livelayer.category.PollOnlineCategoryConfig;
import com.narvii.livelayer.detailview.LiveLayerDetailBaseFragment;
import com.narvii.livelayer.detailview.LiveLayerDetailBasePostFragment;
import com.narvii.model.Blog;
import com.narvii.model.Feed;
import com.narvii.util.Utils;
import com.narvii.widget.PollLiveIndicator;

/* loaded from: classes3.dex */
public class LiveLayerDetailPollFragment extends LiveLayerDetailBasePostFragment {
    public LiveLayerDetailPollFragment() {
        this.source = "Live Layer (Polls)";
    }

    @Override // com.narvii.livelayer.detailview.LiveLayerDetailBaseFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        MergeAdapter mergeAdapterCreateDefaultAdapter = createDefaultAdapter();
        this.memberAdapter = new LiveLayerDetailBaseFragment.MemberListAdapterWithCapture(this);
        LiveLayerMemberAdapter liveLayerMemberAdapter = this.memberAdapter;
        liveLayerMemberAdapter.source = this.source;
        mergeAdapterCreateDefaultAdapter.addAdapter(liveLayerMemberAdapter);
        mergeAdapterCreateDefaultAdapter.addAdapter(new MarginAdapter(this, (int) Utils.dpToPx(getContext(), 10.0f)));
        PollListAdapter pollListAdapter = new PollListAdapter(this);
        this.mainListAdapter = pollListAdapter;
        mergeAdapterCreateDefaultAdapter.addAdapter(pollListAdapter);
        LiveLayerDetailBaseFragment.BaseListAdapter baseListAdapter = this.mainListAdapter;
        baseListAdapter.getClass();
        mergeAdapterCreateDefaultAdapter.addAdapter(new LiveLayerDetailBaseFragment.BaseListAdapter.RecommendAdapter(this));
        LiveLayerDetailBaseFragment.BaseListAdapter baseListAdapter2 = this.mainListAdapter;
        baseListAdapter2.getClass();
        LiveLayerDetailBaseFragment.BaseListAdapter.BaseRecommendedAdapter baseRecommendedAdapter = new LiveLayerDetailBaseFragment.BaseListAdapter.BaseRecommendedAdapter(this);
        this.recommendListAdapter = baseRecommendedAdapter;
        mergeAdapterCreateDefaultAdapter.addAdapter(baseRecommendedAdapter);
        LiveLayerDetailBaseFragment.EmptyAdapter emptyAdapter = new LiveLayerDetailBaseFragment.EmptyAdapter(this);
        emptyAdapter.setAdapter(this.mainListAdapter);
        emptyAdapter.addSubViewAdapter(this.recommendListAdapter);
        mergeAdapterCreateDefaultAdapter.addAdapter(emptyAdapter);
        return mergeAdapterCreateDefaultAdapter;
    }

    @Override // com.narvii.livelayer.detailview.LiveLayerDetailBaseFragment
    protected OnlineCategoryConfig getOnlineCategoryConfig() {
        return new PollOnlineCategoryConfig();
    }

    public class PollListAdapter extends LiveLayerDetailBasePostFragment.BasePostListAdapter {
        @Override // com.narvii.livelayer.detailview.LiveLayerDetailBaseFragment.BaseListAdapter
        protected int getLayoutId() {
            return R.layout.live_layer_detail_post_item;
        }

        @Override // com.narvii.livelayer.detailview.LiveLayerDetailBasePostFragment.BasePostListAdapter, com.narvii.list.NVAdapter, com.narvii.logging.Area
        public /* bridge */ /* synthetic */ String getAreaName() {
            return super.getAreaName();
        }

        @Override // com.narvii.livelayer.detailview.LiveLayerDetailBasePostFragment.BasePostListAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public /* bridge */ /* synthetic */ void onAttach() {
            super.onAttach();
        }

        @Override // com.narvii.livelayer.detailview.LiveLayerDetailBasePostFragment.BasePostListAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public /* bridge */ /* synthetic */ boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }

        @Override // com.narvii.livelayer.detailview.LiveLayerDetailBasePostFragment.BasePostListAdapter, com.narvii.livelayer.detailview.LiveLayerDetailBaseFragment.BaseListAdapter
        public /* bridge */ /* synthetic */ boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2, boolean z) {
            return super.onItemClick(listAdapter, i, obj, view, view2, z);
        }

        public PollListAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // com.narvii.livelayer.detailview.LiveLayerDetailBaseFragment.BaseListAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup, boolean z) {
            View itemView = super.getItemView(obj, view, viewGroup, z);
            if (obj instanceof Blog) {
                Feed titleAndImgFromFeed = setTitleAndImgFromFeed(obj, itemView);
                if (!z) {
                    ViewGroup viewGroup2 = (ViewGroup) itemView.findViewById(R.id.live_layer_additional_layout);
                    if (viewGroup2 != null) {
                        viewGroup2.removeAllViews();
                        final PollLiveIndicator pollLiveIndicator = new PollLiveIndicator(getContext());
                        viewGroup2.addView(pollLiveIndicator, new ViewGroup.LayoutParams((int) Utils.dpToPx(getContext(), 78.0f), (int) Utils.dpToPx(getContext(), 41.0f)));
                        Utils.postDelayed(new Runnable() { // from class: com.narvii.livelayer.detailview.LiveLayerDetailPollFragment.PollListAdapter.1
                            @Override // java.lang.Runnable
                            public void run() {
                                pollLiveIndicator.startAnimation();
                            }
                        }, (long) (Math.random() * 1000.0d));
                    }
                    FeedToolbarLayout feedToolbarLayout = (FeedToolbarLayout) itemView.findViewById(R.id.feed_toolbar);
                    if (feedToolbarLayout != null) {
                        feedToolbarLayout.setVisibility(8);
                    }
                    alignOnlineBar(itemView, R.id.live_layer_additional_layout);
                } else {
                    setFootToolbar(titleAndImgFromFeed, itemView);
                    alignOnlineBar(itemView, R.id.feed_toolbar);
                }
            }
            return itemView;
        }
    }
}
