package com.narvii.livelayer.detailview;

import android.content.Intent;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import android.widget.ViewSwitcher;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.narvii.adapter.MarginAdapter;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.catalog.CatalogFragment;
import com.narvii.catalog.CatalogWrapperActivity;
import com.narvii.list.MergeAdapter;
import com.narvii.livelayer.LiveLayerMemberAdapter;
import com.narvii.livelayer.category.BrowsingCategoryConfig;
import com.narvii.livelayer.category.OnlineCategoryConfig;
import com.narvii.livelayer.detailview.LiveLayerDetailBaseFragment;
import com.narvii.model.api.ListResponse;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.modulization.page.PageItem;
import com.narvii.modulization.page.PageManager;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.NVImageSwitcher;
import com.narvii.widget.NVImageView;

/* loaded from: classes3.dex */
public class LiveLayerDetailBrowsingFragment extends LiveLayerDetailBasePostFragment {
    public LiveLayerDetailBrowsingFragment() {
        this.source = "Live Layer (Browsing)";
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
        BrowsingListAdapter browsingListAdapter = new BrowsingListAdapter(this);
        this.mainListAdapter = browsingListAdapter;
        mergeAdapterCreateDefaultAdapter.addAdapter(browsingListAdapter);
        LiveLayerDetailBaseFragment.EmptyAdapter emptyAdapter = new LiveLayerDetailBaseFragment.EmptyAdapter(this);
        emptyAdapter.setAdapter(this.mainListAdapter);
        mergeAdapterCreateDefaultAdapter.addAdapter(emptyAdapter);
        return mergeAdapterCreateDefaultAdapter;
    }

    @Override // com.narvii.livelayer.detailview.LiveLayerDetailBaseFragment
    protected OnlineCategoryConfig getOnlineCategoryConfig() {
        return new BrowsingCategoryConfig();
    }

    public class BrowsingListAdapter extends LiveLayerDetailBaseFragment.BaseListAdapter<OnlineBrowsingPage, ListResponse<? extends OnlineBrowsingPage>> {
        private ViewSwitcher.ViewFactory imageSwitchFactory;

        @Override // com.narvii.livelayer.detailview.LiveLayerDetailBaseFragment.BaseListAdapter
        protected int getLayoutId() {
            return R.layout.live_layer_detail_browsing_item;
        }

        public BrowsingListAdapter(NVContext nVContext) {
            super(nVContext);
            this.imageSwitchFactory = new ViewSwitcher.ViewFactory() { // from class: com.narvii.livelayer.detailview.LiveLayerDetailBrowsingFragment.BrowsingListAdapter.1
                @Override // android.widget.ViewSwitcher.ViewFactory
                public View makeView() {
                    View viewInflate = LayoutInflater.from(BrowsingListAdapter.this.getContext()).inflate(R.layout.live_layer_browsing_bg, (ViewGroup) null, false);
                    viewInflate.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                    NVImageView nVImageView = (NVImageView) viewInflate.findViewById(R.id.image);
                    nVImageView.setLoadingDrawable(ContextCompat.getDrawable(BrowsingListAdapter.this.getContext(), R.color.live_layer_list_image_placeholder_loading));
                    nVImageView.setDefaultDrawable(ContextCompat.getDrawable(BrowsingListAdapter.this.getContext(), R.color.live_layer_list_image_placeholder_default));
                    nVImageView.setErrorDrawable(ContextCompat.getDrawable(BrowsingListAdapter.this.getContext(), R.color.live_layer_list_image_placeholder_default));
                    return viewInflate;
                }
            };
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<OnlineBrowsingPage> dataType() {
            return OnlineBrowsingPage.class;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<? extends ListResponse<? extends OnlineBrowsingPage>> responseType() {
            return OnlineBrowsingPageListResponse.class;
        }

        @Override // com.narvii.livelayer.detailview.LiveLayerDetailBaseFragment.BaseListAdapter, com.narvii.list.NVPagedAdapter
        protected void onPageResponse(ApiRequest apiRequest, ListResponse<? extends OnlineBrowsingPage> listResponse, int i) {
            super.onPageResponse(apiRequest, listResponse, i);
            this._isEnd = true;
            notifyDataSetChanged();
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (obj instanceof OnlineBrowsingPage) {
                OnlineBrowsingPage onlineBrowsingPage = (OnlineBrowsingPage) obj;
                try {
                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(onlineBrowsingPage.url));
                    if (PageManager.PAGE_CATALOG_URI.equals(onlineBrowsingPage.url)) {
                        CommunityConfigHelper communityConfigHelper = new CommunityConfigHelper(this);
                        intent.setClassName(NVApplication.instance().getPackageName(), CatalogWrapperActivity.class.getName());
                        intent.putExtra("isAllEntry", !communityConfigHelper.isCatalogCutaionEnable());
                        intent.putExtra("fragment", CatalogFragment.class.getName());
                    }
                    intent.putExtra("Source", LiveLayerDetailBrowsingFragment.this.source);
                    startActivity(intent);
                    return true;
                } catch (Exception e) {
                    Log.w("fail to open page " + obj, e);
                    NVToast.makeText(getContext(), R.string.home_failover_message, 0).show();
                }
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }

        @Override // com.narvii.livelayer.detailview.LiveLayerDetailBaseFragment.BaseListAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup, boolean z) {
            View itemView = super.getItemView(obj, view, viewGroup, z);
            if (obj instanceof OnlineBrowsingPage) {
                OnlineBrowsingPage onlineBrowsingPage = (OnlineBrowsingPage) obj;
                NVImageSwitcher nVImageSwitcher = (NVImageSwitcher) itemView.findViewById(R.id.image_switcher);
                nVImageSwitcher.removeAllViews();
                nVImageSwitcher.setFactory(this.imageSwitchFactory);
                nVImageSwitcher.startSwitch(onlineBrowsingPage.mediaList, 50L, DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS);
                PageItem pageItemByUrl = PageManager.getPageItemByUrl(onlineBrowsingPage.url);
                TextView textView = (TextView) itemView.findViewById(R.id.title);
                if (textView != null) {
                    textView.setText(pageItemByUrl.getName(getContext()));
                }
                ImageView imageView = (ImageView) itemView.findViewById(R.id.browsing_label);
                GradientDrawable gradientDrawable = new GradientDrawable();
                float fDpToPx = Utils.dpToPx(getContext(), 15.0f);
                if (Utils.isRtl()) {
                    gradientDrawable.setCornerRadii(new float[]{fDpToPx, fDpToPx, 0.0f, 0.0f, 0.0f, 0.0f, fDpToPx, fDpToPx});
                    imageView.setScaleType(ImageView.ScaleType.FIT_START);
                } else {
                    gradientDrawable.setCornerRadii(new float[]{0.0f, 0.0f, fDpToPx, fDpToPx, fDpToPx, fDpToPx, 0.0f, 0.0f});
                    imageView.setScaleType(ImageView.ScaleType.FIT_END);
                }
                imageView.setImageResource(pageItemByUrl.iconDrawableId);
                gradientDrawable.setColor(pageItemByUrl.getIconColor(getContext()));
                imageView.setBackgroundDrawable(gradientDrawable);
            }
            return itemView;
        }
    }
}
