package com.narvii.master.explorer;

import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Bundle;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.list.NVListFragment;
import com.narvii.list.NVPagedAdapter;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.Impression.ImpressionCollector;
import com.narvii.logging.LogEvent;
import com.narvii.logging.LogUtils;
import com.narvii.logging.ObjectInfo;
import com.narvii.master.CommunityHelper;
import com.narvii.model.Community;
import com.narvii.model.Media;
import com.narvii.util.Callback;
import com.narvii.util.LanguageHelper;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.logging.LoggingOrigin;
import com.narvii.widget.Flipper;
import com.narvii.widget.HorizontalRecyclerView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NVListView;
import com.narvii.widget.PromotionalImageView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* loaded from: classes3.dex */
public abstract class CommunityPageAdapter extends NVPagedAdapter<CommunityCollection, CommunityCollectionGroupResponse> {
    public static final int DEFAULT_ACTIONBAR_COLOR = -11119017;
    public static final int DEFAULT_ACTIONBAR_TEXT_COLOR = -1;
    public static final int DEFAULT_SUB_BACK_COLOR = -16506574;
    public static final int DEFAULT_TBACKGROUD_COLOR = 0;
    public static final int DEFAULT_TEXT_COLOR = -1;
    NVContext context;
    CommunityCollection curCommunityCollection;
    public FeaturedFlipperAdapter featuredFlipperAdapter;
    public int pageBackGround;
    protected String requestLanguage;
    public boolean startWithFeature;

    protected ImpressionCollector getAminoListIpc() {
        return null;
    }

    protected ImpressionCollector getBannerIpc() {
        return null;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected int getItemTypeCount() {
        return 4;
    }

    protected boolean shadowForFeature() {
        return false;
    }

    public CommunityPageAdapter(NVContext nVContext) {
        super(nVContext);
        this.startWithFeature = true;
        this.pageBackGround = -1;
        this.context = nVContext;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public Class<CommunityCollection> dataType() {
        return CommunityCollection.class;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public Class<? extends CommunityCollectionGroupResponse> responseType() {
        return CommunityCollectionGroupResponse.class;
    }

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
    public Bundle onSaveInstanceState() {
        Bundle bundleOnSaveInstanceState = super.onSaveInstanceState();
        bundleOnSaveInstanceState.putString("pageBackGround", String.format("#%08X", Integer.valueOf(this.pageBackGround)));
        bundleOnSaveInstanceState.putBoolean("startWithFeature", this.startWithFeature);
        return bundleOnSaveInstanceState;
    }

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
    public void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        this.pageBackGround = Color.parseColor(bundle.getString("pageBackGround"));
        this.startWithFeature = bundle.getBoolean("startWithFeature");
    }

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
    public void onAttach() {
        super.onAttach();
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected ApiRequest createRequest(boolean z) {
        String stringParam;
        String str;
        NVContext nVContext = this.context;
        String stringParam2 = null;
        if (nVContext instanceof NVFragment) {
            stringParam2 = ((NVFragment) nVContext).getStringParam("slug");
            stringParam = ((NVFragment) this.context).getStringParam("id");
        } else {
            stringParam = null;
        }
        if (!TextUtils.isEmpty(stringParam2)) {
            str = "community-collection/view/" + stringParam2 + "/sections";
        } else if (TextUtils.isEmpty(stringParam)) {
            str = "community-collection/view/explore/sections";
        } else {
            str = "community-collection/" + stringParam + "/sections";
        }
        ApiRequest.Builder builderPath = ApiRequest.builder().path(str);
        if (this.requestLanguage == null) {
            this.requestLanguage = LanguageHelper.getUserSelectedLanguageCode(this.context);
        }
        builderPath.param(IjkMediaMeta.IJKM_KEY_LANGUAGE, this.requestLanguage);
        builderPath.tag(Boolean.valueOf(z));
        return builderPath.build();
    }

    public void setLanguage(String str) {
        this.requestLanguage = str;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected int getItemType(Object obj) {
        if (!(obj instanceof CommunityCollection)) {
            return -1;
        }
        int i = ((CommunityCollection) obj).inlineUI.displayMode;
        if (i == 3) {
            return 3;
        }
        if (i == 1) {
            return 1;
        }
        return i == 2 ? 2 : -1;
    }

    @Override // com.narvii.list.NVPagedAdapter
    public void resetList() {
        super.resetList();
        this.startWithFeature = true;
    }

    @Override // com.narvii.list.NVPagedAdapter, android.widget.Adapter
    public Object getItem(int i) {
        return super.getItem(i);
    }

    @Override // com.narvii.list.NVPagedAdapter, android.widget.Adapter
    public long getItemId(int i) {
        return super.getItemId(i);
    }

    @Override // com.narvii.list.NVPagedAdapter, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        CommunityCollection communityCollection;
        if (viewGroup != null && (communityCollection = this.curCommunityCollection) != null) {
            if (Build.VERSION.SDK_INT >= 16) {
                viewGroup.setBackground(new ColorDrawable(communityCollection.pageUI.backgroundColor));
            } else {
                viewGroup.setBackgroundDrawable(new ColorDrawable(communityCollection.pageUI.backgroundColor));
            }
            if (viewGroup instanceof NVListView) {
                ((NVListView) viewGroup).setOverscrollStretchFooter(this.curCommunityCollection.pageUI.backgroundColor);
                NVContext nVContext = this.context;
                if (nVContext instanceof CommunityPageFragment) {
                    ((CommunityPageFragment) nVContext).setActionbarBg(getActionBarBackground());
                    ((CommunityPageFragment) this.context).setActionbarTextColor(getActionbarTextColor());
                }
            }
        }
        View view2 = super.getView(i, view, viewGroup);
        Object item = getItem(i);
        if (i == 0 && (item instanceof CommunityCollection) && getItemType(item) == 3) {
            view2.setTag(NVListView.OVERSCROLL_STRETCH_TAG, true);
        } else {
            view2.setTag(NVListView.OVERSCROLL_STRETCH_TAG, null);
        }
        return view2;
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x00f2  */
    @Override // com.narvii.list.NVPagedAdapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected android.view.View getItemView(java.lang.Object r6, android.view.View r7, android.view.ViewGroup r8) {
        /*
            Method dump skipped, instructions count: 476
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.master.explorer.CommunityPageAdapter.getItemView(java.lang.Object, android.view.View, android.view.ViewGroup):android.view.View");
    }

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
    public void refresh(int i, Callback<Integer> callback) {
        super.refresh(i, callback);
        this.startWithFeature = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public void onPageResponse(ApiRequest apiRequest, CommunityCollectionGroupResponse communityCollectionGroupResponse, int i) {
        super.onPageResponse(apiRequest, (ApiRequest) communityCollectionGroupResponse, i);
        this.curCommunityCollection = communityCollectionGroupResponse.communityCollection;
        List<CommunityCollection> list = communityCollectionGroupResponse.communityCollectionSections;
        if (list != null && list.size() > 0 && apiRequest.tag().equals(true)) {
            this.startWithFeature = getItemType(communityCollectionGroupResponse.communityCollectionSections.get(0)) == 3;
        }
        this.pageBackGround = getActionBarBackground();
        notifyDataSetChanged();
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected List<CommunityCollection> filterResponseList(List<CommunityCollection> list, int i) {
        ArrayList arrayList = new ArrayList();
        ArrayList<CommunityCollection> arrayList2 = new ArrayList();
        arrayList.addAll(super.filterResponseList(list, i));
        arrayList2.addAll(super.filterResponseList(list, i));
        for (CommunityCollection communityCollection : arrayList2) {
            int i2 = communityCollection.inlineUI.displayMode;
            if (i2 != 1 && i2 != 3) {
                arrayList.remove(communityCollection);
            }
        }
        return arrayList;
    }

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
        if (view2 != null && view2.getId() == R.id.see_all_button) {
            if (!(getItem(i) instanceof CommunityCollection)) {
                return true;
            }
            LogEvent.builder(this).extraParam("collectionId", ((CommunityCollection) getItem(i)).id()).actClick().actSemantic(ActSemantic.listViewEnter).send();
            communityList((CommunityCollection) getItem(i));
            return true;
        }
        return super.onItemClick(listAdapter, i, obj, view, view2);
    }

    class FeaturedFlipperAdapter implements Flipper.FlipperAdapter<CommunityCollection> {
        Flipper<CommunityCollection> flipper;
        LayoutInflater inflater;
        CommunityCollection item;
        List<CommunityCollection> list;
        private boolean isFragmentVisible = true;
        private boolean isVisibleInListView = true;
        private boolean isFragmentResume = true;

        @Override // com.narvii.widget.Flipper.FlipperAdapter
        public void onMoving(CommunityCollection communityCollection, CommunityCollection communityCollection2) {
        }

        @Override // com.narvii.widget.Flipper.FlipperAdapter
        public void recycleView(View view) {
        }

        FeaturedFlipperAdapter(Flipper<CommunityCollection> flipper, List<CommunityCollection> list) {
            this.inflater = LayoutInflater.from(CommunityPageAdapter.this.getContext());
            this.flipper = flipper;
            this.list = list;
            if (list.size() > 1) {
                this.flipper.startAutoFlip(3000);
            }
        }

        public void setFragmentVisible(boolean z) {
            this.isFragmentVisible = z;
            setAutoScroll(z);
        }

        public void setFragmentResume(boolean z) {
            this.isFragmentResume = z;
            setAutoScroll(z);
        }

        public void setVisibleInListView(boolean z) {
            this.isVisibleInListView = z;
            setAutoScroll(z);
        }

        private void setAutoScroll(boolean z) {
            Flipper<CommunityCollection> flipper = this.flipper;
            if (flipper != null) {
                if (z && this.isVisibleInListView && this.isFragmentVisible && this.isFragmentResume) {
                    if (flipper.autoFilp || this.list.size() <= 1) {
                        return;
                    }
                    this.flipper.startAutoFlip(3000);
                    return;
                }
                Flipper<CommunityCollection> flipper2 = this.flipper;
                if (flipper2.autoFilp) {
                    flipper2.stopAutoFlip();
                }
            }
        }

        @Override // com.narvii.widget.Flipper.FlipperAdapter
        public CommunityCollection getPreviousItem(CommunityCollection communityCollection) {
            int size = this.list.size();
            if (size <= 1) {
                return null;
            }
            for (int i = 1; i < size; i++) {
                if (this.list.get(i).collectionId.equals(communityCollection.collectionId)) {
                    return this.list.get(i - 1);
                }
            }
            return this.list.get(size - 1);
        }

        @Override // com.narvii.widget.Flipper.FlipperAdapter
        public CommunityCollection getNextItem(CommunityCollection communityCollection) {
            int size = this.list.size();
            if (size <= 1) {
                return null;
            }
            for (int i = 0; i < size - 1; i++) {
                if (this.list.get(i).collectionId.equals(communityCollection.collectionId)) {
                    return this.list.get(i + 1);
                }
            }
            return this.list.get(0);
        }

        @Override // com.narvii.widget.Flipper.FlipperAdapter
        public View getView(CommunityCollection communityCollection, View view) {
            if (view == null) {
                view = this.inflater.inflate(R.layout.incubator_featured_community_item, (ViewGroup) null);
            }
            MediaMap mediaMap = communityCollection.mediaMapping;
            if (mediaMap != null && mediaMap.coverImages != null) {
                NVImageView nVImageView = (NVImageView) view.findViewById(R.id.feature_bg);
                final View viewFindViewById = view.findViewById(R.id.explore_loading);
                nVImageView.setOnImageChangedListener(new NVImageView.OnImageChangedListener() { // from class: com.narvii.master.explorer.CommunityPageAdapter.FeaturedFlipperAdapter.1
                    @Override // com.narvii.widget.NVImageView.OnImageChangedListener
                    public void onImageChanged(NVImageView nVImageView2, int i, Media media) {
                        if (i != 4 || nVImageView2.getDrawable() == null) {
                            return;
                        }
                        viewFindViewById.setVisibility(8);
                    }
                });
                ((NVImageView) view.findViewById(R.id.feature_bg)).setImageUrl(mediaMap.coverImages.get(0).url);
            } else {
                ((NVImageView) view.findViewById(R.id.feature_bg)).setBackgroundColor(-7829368);
            }
            PageUI pageUI = communityCollection.pageUI;
            if (pageUI == null || pageUI.displayMode != 3) {
                CommunityPageAdapter.this.tagCellForLog(view, null);
            } else {
                CommunityPageAdapter.this.tagCellForLog(view, communityCollection.community);
            }
            HashMap map = new HashMap();
            if (communityCollection != null) {
                map.put("collectionId", communityCollection.id());
            }
            CommunityPageAdapter.this.tagExtraMap(view, map);
            return view;
        }

        @Override // com.narvii.widget.Flipper.FlipperAdapter
        public void onMoved(CommunityCollection communityCollection, CommunityCollection communityCollection2) {
            if (CommunityPageAdapter.this.getParentContext() instanceof NVListFragment) {
                ((NVListFragment) CommunityPageAdapter.this.getParentContext()).logImpressionQuit();
                ((NVListFragment) CommunityPageAdapter.this.getParentContext()).logImpression();
            }
        }

        @Override // com.narvii.widget.Flipper.FlipperAdapter
        public void onTap(CommunityCollection communityCollection) {
            CommunityPageAdapter.this.onCommunityCollectionClicked(communityCollection);
        }
    }

    class GalleryRecycleViewAdapter extends RecyclerView.Adapter<GalleryViewHolder> {
        CommunityCollection communityCollection;
        List<Community> communityList;
        String label;

        GalleryRecycleViewAdapter(CommunityCollection communityCollection) {
            init(communityCollection);
            setHasStableIds(true);
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public long getItemId(int i) {
            return this.communityList.get(i).id;
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            return super.getItemViewType(i);
        }

        public void setCommunityCollection(CommunityCollection communityCollection) {
            init(communityCollection);
            notifyDataSetChanged();
        }

        private void init(CommunityCollection communityCollection) {
            this.communityCollection = communityCollection;
            this.label = communityCollection != null ? communityCollection.label : null;
            this.communityList = communityCollection != null ? communityCollection.communityListPreview : null;
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public GalleryViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            return CommunityPageAdapter.this.new GalleryViewHolder(LayoutInflater.from(CommunityPageAdapter.this.getContext()).inflate(R.layout.incubator_community_item, viewGroup, false));
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public void onBindViewHolder(GalleryViewHolder galleryViewHolder, int i) {
            final Community community = this.communityList.get(i);
            if (community == null) {
                return;
            }
            View view = galleryViewHolder.itemView;
            if (view != null) {
                LogUtils.setAttachedObject(view, community);
                HashMap map = new HashMap();
                map.put("collectionId", this.communityCollection.id());
                CommunityPageAdapter.this.tagExtraMap(galleryViewHolder.itemView, map);
            }
            PromotionalImageView promotionalImageView = galleryViewHolder.launchImageView;
            if (promotionalImageView != null) {
                promotionalImageView.setCommunity(community);
            }
            TextView textView = galleryViewHolder.nameTextView;
            if (textView != null) {
                textView.setText(community.name);
                galleryViewHolder.nameTextView.setTextColor(CommunityPageAdapter.this.getTextColor(this.communityCollection));
            }
            NVImageView nVImageView = galleryViewHolder.iconImageView;
            if (nVImageView != null) {
                nVImageView.setImageUrl(community.icon);
                galleryViewHolder.iconImageView.setStrokeColor(community.themeColor());
            }
            galleryViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.explorer.CommunityPageAdapter.GalleryRecycleViewAdapter.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    LogEvent.builder(CommunityPageAdapter.this).objectInfo(CommunityPageAdapter.this.getAminoListIpc() != null ? CommunityPageAdapter.this.getAminoListIpc().getImpressionObjectInfo(community) : null).actClick().actSemantic(ActSemantic.checkDetail).send();
                    new CommunityHelper(CommunityPageAdapter.this).source("explore-category").eventOrigin(LoggingOrigin.Explore).communityDetail(community);
                }
            });
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            List<Community> list = this.communityList;
            if (list != null) {
                return list.size();
            }
            return 0;
        }
    }

    public void resetRecylerViewAdapter(ViewGroup viewGroup) {
        View viewFindViewById = viewGroup.findViewById(R.id.gallery);
        if (viewFindViewById == null || !(viewFindViewById instanceof HorizontalRecyclerView)) {
            return;
        }
        HorizontalRecyclerView horizontalRecyclerView = (HorizontalRecyclerView) viewFindViewById;
        horizontalRecyclerView.setAdapter(null);
        horizontalRecyclerView.setLayoutManager(null);
    }

    class GalleryViewHolder extends RecyclerView.ViewHolder {
        NVImageView iconImageView;
        PromotionalImageView launchImageView;
        TextView nameTextView;

        public GalleryViewHolder(View view) {
            super(view);
            this.launchImageView = (PromotionalImageView) view.findViewById(R.id.image);
            this.nameTextView = (TextView) view.findViewById(R.id.text);
            this.iconImageView = (NVImageView) view.findViewById(R.id.icon);
        }
    }

    void communityList(CommunityCollection communityCollection) {
        if (communityCollection == null) {
            return;
        }
        Intent intent = new Intent(getContext(), (Class<?>) CommunityListActivity.class);
        intent.putExtra("id", communityCollection.collectionId);
        intent.putExtra("title", communityCollection.label);
        intent.putExtra("categoryName", communityCollection.label);
        this.context.startActivity(intent);
    }

    void communityPage(CommunityCollection communityCollection) {
        if (communityCollection == null) {
            return;
        }
        Intent intent = FragmentWrapperActivity.intent(CommunityPageFragment.class);
        intent.putExtra("id", communityCollection.collectionId);
        intent.putExtra("title", communityCollection.label);
        intent.putExtra("pageBackground", String.format("#%06X", Integer.valueOf(getSubBackGround(communityCollection))));
        intent.putExtra("frontColor", String.format("#%06X", Integer.valueOf(getSubFrontColor(communityCollection))));
        this.context.startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onCommunityCollectionClicked(CommunityCollection communityCollection) {
        PageUI pageUI = communityCollection.pageUI;
        if (pageUI == null) {
            return;
        }
        int i = pageUI.displayMode;
        if (i == 3) {
            LogEvent.Builder builderClickBuilder = LogEvent.clickBuilder(this, ActSemantic.checkDetail);
            if (getBannerIpc() != null) {
                ObjectInfo impressionObjectInfo = getBannerIpc().getImpressionObjectInfo(communityCollection.community);
                builderClickBuilder.objectInfo(impressionObjectInfo);
                getBannerIpc().completeImpressionLogBuilder(builderClickBuilder, impressionObjectInfo);
            }
            builderClickBuilder.send();
            new CommunityHelper(this).source("explored-featured").eventOrigin(LoggingOrigin.Explore).communityDetail(communityCollection.community);
            return;
        }
        if (i == 2) {
            communityList(communityCollection);
            return;
        }
        if (i == 1) {
            CommunityCollection communityCollection2 = this.curCommunityCollection;
            if (communityCollection2 == null || !Utils.isEqualsNotNull(communityCollection.collectionId, communityCollection2.collectionId)) {
                communityPage(communityCollection);
            }
        }
    }

    protected int getTextColor(CommunityCollection communityCollection) {
        PageUI pageUI;
        int i;
        InlineUI inlineUI;
        int i2;
        if (communityCollection != null && (inlineUI = communityCollection.inlineUI) != null && (i2 = inlineUI.textColor) != 0) {
            return i2;
        }
        CommunityCollection communityCollection2 = this.curCommunityCollection;
        if (communityCollection2 == null || (pageUI = communityCollection2.pageUI) == null || (i = pageUI.textColor) == 0) {
            return -1;
        }
        return i;
    }

    private int getBackgroundColor(CommunityCollection communityCollection) {
        PageUI pageUI;
        int i;
        InlineUI inlineUI;
        int i2;
        if (communityCollection != null && (inlineUI = communityCollection.inlineUI) != null && (i2 = inlineUI.backgroundColor) != 0) {
            return i2;
        }
        CommunityCollection communityCollection2 = this.curCommunityCollection;
        if (communityCollection2 == null || (pageUI = communityCollection2.pageUI) == null || (i = pageUI.backgroundColor) == 0) {
            return 0;
        }
        return i;
    }

    protected int getActionBarBackground() {
        PageUI pageUI;
        int i;
        CommunityCollection communityCollection = this.curCommunityCollection;
        return (communityCollection == null || (pageUI = communityCollection.pageUI) == null || (i = pageUI.backgroundColor) == 0) ? DEFAULT_ACTIONBAR_COLOR : i;
    }

    protected int getSubBackGround(CommunityCollection communityCollection) {
        PageUI pageUI;
        int i;
        return (communityCollection == null || (pageUI = communityCollection.pageUI) == null || (i = pageUI.backgroundColor) == 0) ? DEFAULT_SUB_BACK_COLOR : i;
    }

    protected int getSubFrontColor(CommunityCollection communityCollection) {
        PageUI pageUI;
        int i;
        if (communityCollection == null || (pageUI = communityCollection.pageUI) == null || (i = pageUI.textColor) == 0) {
            return -1;
        }
        return i;
    }

    public boolean actionbarTextColorSeted() {
        PageUI pageUI;
        CommunityCollection communityCollection = this.curCommunityCollection;
        return (communityCollection == null || (pageUI = communityCollection.pageUI) == null || pageUI.textColor == 0) ? false : true;
    }

    public int getActionbarTextColor() {
        if (actionbarTextColorSeted()) {
            return this.curCommunityCollection.pageUI.textColor;
        }
        return -1;
    }
}
