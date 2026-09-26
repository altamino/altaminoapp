package com.narvii.master.explorer;

import android.content.Intent;
import android.graphics.Color;
import android.graphics.Point;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.amino.master.R;
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
import com.narvii.util.statistics.StatisticsService;
import com.narvii.widget.Flipper;
import com.narvii.widget.HorizontalRecyclerView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NVListView;
import com.narvii.widget.PromotionalImageView;
import com.narvii.widget.TintButton;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
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

        private void setAutoScroll(boolean z6) {
            Flipper<CommunityCollection> flipper = this.flipper;
            if (flipper != null) {
                if (!z6 || !this.isVisibleInListView || !this.isFragmentVisible || !this.isFragmentResume) {
                    if (flipper.autoFilp) {
                        flipper.stopAutoFlip();
                    }
                } else {
                    if (flipper.autoFilp || this.list.size() <= 1) {
                        return;
                    }
                    this.flipper.startAutoFlip(3000);
                }
            }
        }

        @Override // com.narvii.widget.Flipper.FlipperAdapter
        public CommunityCollection getNextItem(CommunityCollection communityCollection) {
            int size = this.list.size();
            if (size <= 1) {
                return null;
            }
            for (int i10 = 0; i10 < size - 1; i10++) {
                if (this.list.get(i10).collectionId.equals(communityCollection.collectionId)) {
                    return this.list.get(i10 + 1);
                }
            }
            return this.list.get(0);
        }

        @Override // com.narvii.widget.Flipper.FlipperAdapter
        public CommunityCollection getPreviousItem(CommunityCollection communityCollection) {
            int size = this.list.size();
            if (size <= 1) {
                return null;
            }
            for (int i10 = 1; i10 < size; i10++) {
                if (this.list.get(i10).collectionId.equals(communityCollection.collectionId)) {
                    return this.list.get(i10 - 1);
                }
            }
            return this.list.get(size - 1);
        }

        @Override // com.narvii.widget.Flipper.FlipperAdapter
        public View getView(CommunityCollection communityCollection, View view) {
            if (view == null) {
                view = this.inflater.inflate(R.layout.incubator_featured_community_item, (ViewGroup) null);
            }
            MediaMap mediaMap = communityCollection.mediaMapping;
            if (mediaMap == null || mediaMap.coverImages == null) {
                ((NVImageView) view.findViewById(R.id.feature_bg)).setBackgroundColor(-7829368);
            } else {
                NVImageView nVImageView = (NVImageView) view.findViewById(R.id.feature_bg);
                final View viewFindViewById = view.findViewById(R.id.explore_loading);
                nVImageView.setOnImageChangedListener(new NVImageView.OnImageChangedListener() { // from class: com.narvii.master.explorer.CommunityPageAdapter.FeaturedFlipperAdapter.1
                    @Override // com.narvii.widget.NVImageView.OnImageChangedListener
                    public void onImageChanged(NVImageView nVImageView2, int i10, Media media) {
                        if (i10 != 4 || nVImageView2.getDrawable() == null) {
                            return;
                        }
                        viewFindViewById.setVisibility(8);
                    }
                });
                ((NVImageView) view.findViewById(R.id.feature_bg)).setImageUrl(mediaMap.coverImages.get(0).url);
            }
            PageUI pageUI = communityCollection.pageUI;
            if (pageUI == null || pageUI.displayMode != 3) {
                CommunityPageAdapter.this.tagCellForLog(view, null);
            } else {
                CommunityPageAdapter.this.tagCellForLog(view, communityCollection.community);
            }
            HashMap map = new HashMap();
            map.put("collectionId", communityCollection.id());
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
            ((StatisticsService) CommunityPageAdapter.this.getService("statistics")).event("Explore Communities - Featured Banner").userPropInc("Featured Banner Opened Total").param("Featured Content", communityCollection.label);
        }

        public void setFragmentResume(boolean z6) {
            this.isFragmentResume = z6;
            setAutoScroll(z6);
        }

        public void setFragmentVisible(boolean z6) {
            this.isFragmentVisible = z6;
            setAutoScroll(z6);
        }

        public void setVisibleInListView(boolean z6) {
            this.isVisibleInListView = z6;
            setAutoScroll(z6);
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

        private void init(CommunityCollection communityCollection) {
            this.communityCollection = communityCollection;
            this.label = communityCollection != null ? communityCollection.label : null;
            this.communityList = communityCollection != null ? communityCollection.communityListPreview : null;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            List<Community> list = this.communityList;
            if (list != null) {
                return list.size();
            }
            return 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public long getItemId(int i10) {
            return this.communityList.get(i10).id;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(GalleryViewHolder galleryViewHolder, int i10) {
            final Community community = this.communityList.get(i10);
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

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public GalleryViewHolder onCreateViewHolder(ViewGroup viewGroup, int i10) {
            return CommunityPageAdapter.this.new GalleryViewHolder(LayoutInflater.from(CommunityPageAdapter.this.getContext()).inflate(R.layout.incubator_community_item, viewGroup, false));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i10) {
            return super.getItemViewType(i10);
        }

        public void setCommunityCollection(CommunityCollection communityCollection) {
            init(communityCollection);
            notifyDataSetChanged();
        }
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

    public static void safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(NVContext p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public Class<CommunityCollection> dataType() {
        return CommunityCollection.class;
    }

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

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public Class<? extends CommunityCollectionGroupResponse> responseType() {
        return CommunityCollectionGroupResponse.class;
    }

    public void setLanguage(String str) {
        this.requestLanguage = str;
    }

    protected boolean shadowForFeature() {
        return false;
    }

    private int getBackgroundColor(CommunityCollection communityCollection) {
        PageUI pageUI;
        int i10;
        InlineUI inlineUI;
        int i11;
        if (communityCollection != null && (inlineUI = communityCollection.inlineUI) != null && (i11 = inlineUI.backgroundColor) != 0) {
            return i11;
        }
        CommunityCollection communityCollection2 = this.curCommunityCollection;
        if (communityCollection2 == null || (pageUI = communityCollection2.pageUI) == null || (i10 = pageUI.backgroundColor) == 0) {
            return 0;
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onCommunityCollectionClicked(CommunityCollection communityCollection) {
        PageUI pageUI = communityCollection.pageUI;
        if (pageUI == null) {
            return;
        }
        int i10 = pageUI.displayMode;
        if (i10 == 3) {
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
        if (i10 == 2) {
            communityList(communityCollection);
            return;
        }
        if (i10 == 1) {
            CommunityCollection communityCollection2 = this.curCommunityCollection;
            if (communityCollection2 == null || !Utils.isEqualsNotNull(communityCollection.collectionId, communityCollection2.collectionId)) {
                communityPage(communityCollection);
            }
        }
    }

    public boolean actionbarTextColorSeted() {
        PageUI pageUI;
        CommunityCollection communityCollection = this.curCommunityCollection;
        return (communityCollection == null || (pageUI = communityCollection.pageUI) == null || pageUI.textColor == 0) ? false : true;
    }

    void communityList(CommunityCollection communityCollection) {
        if (communityCollection == null) {
            return;
        }
        Intent intent = new Intent(getContext(), (Class<?>) CommunityListActivity.class);
        intent.putExtra("id", communityCollection.collectionId);
        intent.putExtra("title", communityCollection.label);
        intent.putExtra("categoryName", communityCollection.label);
        safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(this.context, intent);
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
        safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(this.context, intent);
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected ApiRequest createRequest(boolean z6) {
        String stringParam;
        String stringParam2;
        String str;
        NVContext nVContext = this.context;
        if (nVContext instanceof NVFragment) {
            stringParam = ((NVFragment) nVContext).getStringParam("slug");
            stringParam2 = ((NVFragment) this.context).getStringParam("id");
        } else {
            stringParam = null;
            stringParam2 = null;
        }
        if (!TextUtils.isEmpty(stringParam)) {
            str = "community-collection/view/" + stringParam + "/sections";
        } else if (TextUtils.isEmpty(stringParam2)) {
            str = "community-collection/view/explore/sections";
        } else {
            str = "community-collection/" + stringParam2 + "/sections";
        }
        ApiRequest.Builder builderPath = ApiRequest.builder().path(str);
        if (this.requestLanguage == null) {
            this.requestLanguage = LanguageHelper.getUserSelectedLanguageCode(this.context);
        }
        builderPath.param("language", this.requestLanguage);
        builderPath.tag(Boolean.valueOf(z6));
        return builderPath.build();
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected List<CommunityCollection> filterResponseList(List<CommunityCollection> list, int i10) {
        ArrayList arrayList = new ArrayList();
        ArrayList<CommunityCollection> arrayList2 = new ArrayList();
        arrayList.addAll(super.filterResponseList(list, i10));
        arrayList2.addAll(super.filterResponseList(list, i10));
        for (CommunityCollection communityCollection : arrayList2) {
            int i11 = communityCollection.inlineUI.displayMode;
            if (i11 != 1 && i11 != 3) {
                arrayList.remove(communityCollection);
            }
        }
        return arrayList;
    }

    protected int getActionBarBackground() {
        PageUI pageUI;
        int i10;
        CommunityCollection communityCollection = this.curCommunityCollection;
        return (communityCollection == null || (pageUI = communityCollection.pageUI) == null || (i10 = pageUI.backgroundColor) == 0) ? DEFAULT_ACTIONBAR_COLOR : i10;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected int getItemType(Object obj) {
        if (!(obj instanceof CommunityCollection)) {
            return -1;
        }
        int i10 = ((CommunityCollection) obj).inlineUI.displayMode;
        if (i10 == 3) {
            return 3;
        }
        if (i10 == 1) {
            return 1;
        }
        return i10 == 2 ? 2 : -1;
    }

    /* JADX WARN: Code duplicated, block: B:46:0x00ef  */
    @Override // com.narvii.list.NVPagedAdapter
    protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
        boolean z6;
        int actionBarOverlaySize;
        if (obj instanceof CommunityCollection) {
            CommunityCollection communityCollection = (CommunityCollection) obj;
            int itemType = getItemType(communityCollection);
            if (itemType == 3) {
                z6 = shadowForFeature() && Utils.isEquals(communityCollection, list().get(0));
                int i10 = z6 ? R.layout.incubator_featured_item_top : R.layout.incubator_featured_item;
                View viewCreateView = createView(i10, viewGroup, view, Integer.valueOf(i10));
                NVContext nVContext = this.context;
                if (nVContext instanceof NVFragment) {
                    Point screenSize = Utils.getScreenSize(((NVFragment) nVContext).getActivity());
                    int iDpToPx = (int) Utils.dpToPx(getContext(), 800.0f);
                    int iDpToPx2 = (int) Utils.dpToPx(getContext(), 230.0f);
                    viewCreateView.setMinimumWidth(iDpToPx);
                    viewCreateView.setMinimumHeight(iDpToPx2);
                    NVContext nVContext2 = this.context;
                    int statusBarOverlaySize = nVContext2 instanceof NVFragment ? ((NVFragment) nVContext2).getStatusBarOverlaySize() : 0;
                    int i11 = (int) (screenSize.x * 0.68f);
                    if (z6) {
                        i11 += statusBarOverlaySize;
                    }
                    viewCreateView.setLayoutParams(new AbsListView.LayoutParams(screenSize.x, i11));
                }
                Flipper flipper = (Flipper) viewCreateView.findViewById(R.id.flipper);
                if (shadowForFeature()) {
                    flipper.setIsallowInterceptTouchEvent(false);
                }
                ArrayList arrayList = new ArrayList();
                Iterator<CommunityCollection> it = communityCollection.childCommunityCollectionList.iterator();
                while (it.hasNext()) {
                    arrayList.add(it.next());
                }
                FeaturedFlipperAdapter featuredFlipperAdapter = new FeaturedFlipperAdapter(flipper, arrayList);
                this.featuredFlipperAdapter = featuredFlipperAdapter;
                featuredFlipperAdapter.item = communityCollection;
                flipper.setAdapter(featuredFlipperAdapter);
                if (arrayList.size() > 0) {
                    flipper.setCurrentItem((CommunityCollection) arrayList.get(0));
                }
                LogUtils.flipperShownInAdapter(viewCreateView, this);
                return viewCreateView;
            }
            if (itemType == 1) {
                if (shadowForFeature()) {
                    z6 = Utils.isEquals(communityCollection, list() != null ? list().get(0) : null);
                }
                View viewCreateView2 = createView(z6 ? R.layout.incubator_community_group_item_top : R.layout.incubator_community_group_item, viewGroup, view, Boolean.valueOf(z6));
                LinearLayout linearLayout = (LinearLayout) viewCreateView2.findViewById(R.id.see_all_button);
                if (linearLayout != null) {
                    linearLayout.setOnClickListener(this.subviewClickListener);
                }
                RecyclerView recyclerView = (RecyclerView) viewCreateView2.findViewById(R.id.gallery);
                LogUtils.recyclerShownInAdapter(viewCreateView2, recyclerView, this);
                if (recyclerView != null) {
                    if (recyclerView.getAdapter() == null) {
                        recyclerView.setAdapter(new GalleryRecycleViewAdapter(communityCollection));
                    } else {
                        ((GalleryRecycleViewAdapter) recyclerView.getAdapter()).setCommunityCollection(communityCollection);
                        recyclerView.scrollToPosition(0);
                    }
                    if (recyclerView.getLayoutManager() == null) {
                        recyclerView.setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
                    }
                }
                TextView textView = (TextView) viewCreateView2.findViewById(R.id.title);
                if (textView != null) {
                    textView.setText(communityCollection.label);
                    textView.setTextColor(getTextColor(communityCollection));
                }
                TextView textView2 = (TextView) viewCreateView2.findViewById(R.id.seeall_text);
                if (textView2 != null) {
                    textView2.setTextColor(getTextColor(communityCollection));
                }
                TintButton tintButton = (TintButton) viewCreateView2.findViewById(R.id.see_all_arrow);
                if (tintButton != null) {
                    tintButton.setTintColor(getTextColor(communityCollection));
                }
                View viewFindViewById = viewCreateView2.findViewById(R.id.community_group_layout);
                if (viewFindViewById != null) {
                    viewFindViewById.setBackgroundColor(getBackgroundColor(communityCollection));
                }
                View viewFindViewById2 = viewCreateView2.findViewById(R.id.cell_container);
                if (viewFindViewById2 != null) {
                    ViewGroup.LayoutParams layoutParams = viewFindViewById2.getLayoutParams();
                    NVContext nVContext3 = this.context;
                    if (nVContext3 instanceof NVFragment) {
                        NVFragment nVFragment = (NVFragment) nVContext3;
                        actionBarOverlaySize = nVFragment.getActionBarOverlaySize() + nVFragment.getStatusBarOverlaySize();
                    } else {
                        actionBarOverlaySize = 0;
                    }
                    if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                        if (!z6) {
                            actionBarOverlaySize = 0;
                        }
                        marginLayoutParams.topMargin = actionBarOverlaySize;
                    }
                    viewFindViewById2.setBackgroundColor(z6 ? getBackgroundColor(communityCollection) : 0);
                }
                viewCreateView2.setBackgroundColor(z6 ? 0 : getBackgroundColor(communityCollection));
                return viewCreateView2;
            }
        }
        return null;
    }

    protected int getSubBackGround(CommunityCollection communityCollection) {
        PageUI pageUI;
        int i10;
        return (communityCollection == null || (pageUI = communityCollection.pageUI) == null || (i10 = pageUI.backgroundColor) == 0) ? DEFAULT_SUB_BACK_COLOR : i10;
    }

    protected int getSubFrontColor(CommunityCollection communityCollection) {
        PageUI pageUI;
        int i10;
        if (communityCollection == null || (pageUI = communityCollection.pageUI) == null || (i10 = pageUI.textColor) == 0) {
            return -1;
        }
        return i10;
    }

    protected int getTextColor(CommunityCollection communityCollection) {
        PageUI pageUI;
        int i10;
        InlineUI inlineUI;
        int i11;
        if (communityCollection != null && (inlineUI = communityCollection.inlineUI) != null && (i11 = inlineUI.textColor) != 0) {
            return i11;
        }
        CommunityCollection communityCollection2 = this.curCommunityCollection;
        if (communityCollection2 == null || (pageUI = communityCollection2.pageUI) == null || (i10 = pageUI.textColor) == 0) {
            return -1;
        }
        return i10;
    }

    @Override // com.narvii.list.NVPagedAdapter, android.widget.Adapter
    public View getView(int i10, View view, ViewGroup viewGroup) {
        if (viewGroup != null && this.curCommunityCollection != null) {
            viewGroup.setBackground(new ColorDrawable(this.curCommunityCollection.pageUI.backgroundColor));
            if (viewGroup instanceof NVListView) {
                ((NVListView) viewGroup).setOverscrollStretchFooter(this.curCommunityCollection.pageUI.backgroundColor);
                NVContext nVContext = this.context;
                if (nVContext instanceof CommunityPageFragment) {
                    ((CommunityPageFragment) nVContext).setActionbarBg(getActionBarBackground());
                    ((CommunityPageFragment) this.context).setActionbarTextColor(getActionbarTextColor());
                }
            }
        }
        View view2 = super.getView(i10, view, viewGroup);
        Object item = getItem(i10);
        if (i10 == 0 && (item instanceof CommunityCollection) && getItemType(item) == 3) {
            view2.setTag(NVListView.OVERSCROLL_STRETCH_TAG, Boolean.TRUE);
        } else {
            view2.setTag(NVListView.OVERSCROLL_STRETCH_TAG, null);
        }
        return view2;
    }

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
        if (view2 == null || view2.getId() != R.id.see_all_button) {
            return super.onItemClick(listAdapter, i10, obj, view, view2);
        }
        if (!(getItem(i10) instanceof CommunityCollection)) {
            return true;
        }
        LogEvent.builder(this).extraParam("collectionId", ((CommunityCollection) getItem(i10)).id()).actClick().actSemantic(ActSemantic.listViewEnter).send();
        communityList((CommunityCollection) getItem(i10));
        ((StatisticsService) getService("statistics")).event("Explore Communities - Categories See All").userPropInc("Baseline Categories See All Opened Total").param("Category Type", ((CommunityCollection) getItem(i10)).label);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public void onPageResponse(ApiRequest apiRequest, CommunityCollectionGroupResponse communityCollectionGroupResponse, int i10) {
        super.onPageResponse(apiRequest, communityCollectionGroupResponse, i10);
        this.curCommunityCollection = communityCollectionGroupResponse.communityCollection;
        List<CommunityCollection> list = communityCollectionGroupResponse.communityCollectionSections;
        if (list != null && list.size() > 0 && apiRequest.tag().equals(Boolean.TRUE)) {
            this.startWithFeature = getItemType(communityCollectionGroupResponse.communityCollectionSections.get(0)) == 3;
        }
        this.pageBackGround = getActionBarBackground();
        notifyDataSetChanged();
    }

    public CommunityPageAdapter(NVContext nVContext) {
        super(nVContext);
        this.startWithFeature = true;
        this.pageBackGround = -1;
        this.context = nVContext;
    }

    public int getActionbarTextColor() {
        if (actionbarTextColorSeted()) {
            return this.curCommunityCollection.pageUI.textColor;
        }
        return -1;
    }

    @Override // com.narvii.list.NVPagedAdapter, android.widget.Adapter
    public Object getItem(int i10) {
        return super.getItem(i10);
    }

    @Override // com.narvii.list.NVPagedAdapter, android.widget.Adapter
    public long getItemId(int i10) {
        return super.getItemId(i10);
    }

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
    public void onAttach() {
        super.onAttach();
    }

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
    public void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        this.pageBackGround = Color.parseColor(bundle.getString("pageBackGround"));
        this.startWithFeature = bundle.getBoolean("startWithFeature");
    }

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
    public Bundle onSaveInstanceState() {
        Bundle bundleOnSaveInstanceState = super.onSaveInstanceState();
        bundleOnSaveInstanceState.putString("pageBackGround", String.format("#%08X", Integer.valueOf(this.pageBackGround)));
        bundleOnSaveInstanceState.putBoolean("startWithFeature", this.startWithFeature);
        return bundleOnSaveInstanceState;
    }

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
    public void refresh(int i10, Callback<Integer> callback) {
        super.refresh(i10, callback);
        this.startWithFeature = true;
    }

    @Override // com.narvii.list.NVPagedAdapter
    public void resetList() {
        super.resetList();
        this.startWithFeature = true;
    }

    public void resetRecylerViewAdapter(ViewGroup viewGroup) {
        View viewFindViewById = viewGroup.findViewById(R.id.gallery);
        if (viewFindViewById != null && (viewFindViewById instanceof HorizontalRecyclerView)) {
            HorizontalRecyclerView horizontalRecyclerView = (HorizontalRecyclerView) viewFindViewById;
            horizontalRecyclerView.setAdapter(null);
            horizontalRecyclerView.setLayoutManager(null);
        }
    }
}
