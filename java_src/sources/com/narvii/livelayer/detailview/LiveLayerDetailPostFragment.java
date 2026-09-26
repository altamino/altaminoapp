package com.narvii.livelayer.detailview;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import com.narvii.adapter.MarginAdapter;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.list.MergeAdapter;
import com.narvii.livelayer.category.OnlineCategoryConfig;
import com.narvii.livelayer.category.PostCategoryConfig;
import com.narvii.util.Utils;
import com.narvii.util.statistics.StatisticsService;
import java.util.Objects;

/* JADX INFO: loaded from: classes7.dex */
public class LiveLayerDetailPostFragment extends LiveLayerDetailBasePostFragment {

    public class PostListAdapter extends LiveLayerDetailBasePostFragment.BasePostListAdapter {
        @Override // com.narvii.livelayer.detailview.LiveLayerDetailBaseFragment.BaseListAdapter
        protected int getLayoutId() {
            return R.layout.live_layer_detail_post_item;
        }

        @Override // com.narvii.livelayer.detailview.LiveLayerDetailBasePostFragment.BasePostListAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public /* bridge */ /* synthetic */ boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            return super.onItemClick(listAdapter, i10, obj, view, view2);
        }

        public PostListAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // com.narvii.livelayer.detailview.LiveLayerDetailBasePostFragment.BasePostListAdapter, com.narvii.livelayer.detailview.LiveLayerDetailBaseFragment.BaseListAdapter
        public /* bridge */ /* synthetic */ boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2, boolean z6) {
            return super.onItemClick(listAdapter, i10, obj, view, view2, z6);
        }

        @Override // com.narvii.livelayer.detailview.LiveLayerDetailBasePostFragment.BasePostListAdapter, com.narvii.list.NVAdapter, com.narvii.logging.Area
        public /* bridge */ /* synthetic */ String getAreaName() {
            return super.getAreaName();
        }

        @Override // com.narvii.livelayer.detailview.LiveLayerDetailBaseFragment.BaseListAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup, boolean z6) {
            View itemView = super.getItemView(obj, view, viewGroup, z6);
            setFootToolbar(setTitleAndImgFromFeed(obj, itemView), itemView);
            alignOnlineBar(itemView, R.id.feed_toolbar);
            return itemView;
        }

        @Override // com.narvii.livelayer.detailview.LiveLayerDetailBasePostFragment.BasePostListAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public /* bridge */ /* synthetic */ void onAttach() {
            super.onAttach();
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "live_layer_reading_posts";
    }

    @Override // com.narvii.livelayer.detailview.LiveLayerDetailBaseFragment
    protected OnlineCategoryConfig getOnlineCategoryConfig() {
        return new PostCategoryConfig();
    }

    public LiveLayerDetailPostFragment() {
        this.source = "Live Layer (Browse Posts)";
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        MergeAdapter mergeAdapterCreateDefaultAdapter = createDefaultAdapter();
        LiveLayerDetailBaseFragment.MemberListAdapterWithCapture memberListAdapterWithCapture = new LiveLayerDetailBaseFragment.MemberListAdapterWithCapture(this);
        this.memberAdapter = memberListAdapterWithCapture;
        memberListAdapterWithCapture.source = this.source;
        mergeAdapterCreateDefaultAdapter.addAdapter(memberListAdapterWithCapture);
        mergeAdapterCreateDefaultAdapter.addAdapter(new MarginAdapter(this, (int) Utils.dpToPx(getContext(), 10.0f)));
        PostListAdapter postListAdapter = new PostListAdapter(this);
        this.mainListAdapter = postListAdapter;
        mergeAdapterCreateDefaultAdapter.addAdapter(postListAdapter);
        LiveLayerDetailBaseFragment.BaseListAdapter baseListAdapter = this.mainListAdapter;
        Objects.requireNonNull(baseListAdapter);
        mergeAdapterCreateDefaultAdapter.addAdapter(new LiveLayerDetailBaseFragment.BaseListAdapter.RecommendAdapter(this));
        LiveLayerDetailBaseFragment.BaseListAdapter baseListAdapter2 = this.mainListAdapter;
        Objects.requireNonNull(baseListAdapter2);
        LiveLayerDetailBaseFragment.BaseListAdapter.BaseRecommendedAdapter baseRecommendedAdapter = new LiveLayerDetailBaseFragment.BaseListAdapter.BaseRecommendedAdapter(this);
        this.recommendListAdapter = baseRecommendedAdapter;
        mergeAdapterCreateDefaultAdapter.addAdapter(baseRecommendedAdapter);
        LiveLayerDetailBaseFragment.EmptyAdapter emptyAdapter = new LiveLayerDetailBaseFragment.EmptyAdapter(this);
        emptyAdapter.setAdapter(this.mainListAdapter);
        emptyAdapter.addSubViewAdapter(this.recommendListAdapter);
        mergeAdapterCreateDefaultAdapter.addAdapter(emptyAdapter);
        return mergeAdapterCreateDefaultAdapter;
    }

    @Override // com.narvii.livelayer.detailview.LiveLayerDetailBaseFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            ((StatisticsService) getService("statistics")).event("Live Layer - Reading Posts").userPropInc("Live Layer Reading Posts Page");
        }
    }
}
