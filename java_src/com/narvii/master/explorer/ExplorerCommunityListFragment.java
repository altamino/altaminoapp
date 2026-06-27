package com.narvii.master.explorer;

import android.content.Intent;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.incubator.LanguageChooseDialog;
import com.narvii.language.ContentLanguageService;
import com.narvii.language.LanguageChangeListener;
import com.narvii.language.LanguageSpec;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVPagedAdapter;
import com.narvii.logging.Impression.ImpressionCollector;
import com.narvii.logging.Impression.RecyclerInListViewImpressionCollector;
import com.narvii.logging.LogEvent;
import com.narvii.logging.ObjectInfo;
import com.narvii.master.CommunityHelper;
import com.narvii.master.MasterAppearanceChangedListener;
import com.narvii.master.MasterShareTabHelper;
import com.narvii.master.MasterTabFragment;
import com.narvii.master.MasterTopBarAvailable;
import com.narvii.master.MasterTopOffsetAdapter;
import com.narvii.master.explorer.CommunityPageAdapter;
import com.narvii.master.search.GlobalSearchTabFragment;
import com.narvii.master.theme.MasterThemeExtensionKt;
import com.narvii.master.theme.MasterThemeFragment;
import com.narvii.model.Community;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.PreferencesHelper;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.widget.NVListView;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes3.dex */
public class ExplorerCommunityListFragment extends CommunityPageFragment implements View.OnClickListener, MasterAppearanceChangedListener, LanguageChangeListener, MasterTopBarAvailable, MasterTopOffsetAdapter {
    private View btnBack;
    private View btnSearch;
    private CommunityPageAdapter communityPageAdapter;
    private String curLanguageCode;
    private ContentLanguageService languageService;
    private MasterShareTabHelper masterShareTabHelper;
    PreferencesHelper sharedPreferencesHelper;
    private View topBar;

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "Explore";
    }

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return true;
    }

    @Override // com.narvii.master.explorer.CommunityPageFragment, com.narvii.app.NVFragment
    public boolean isGlobal() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    @Override // com.narvii.master.MasterTopBarAvailable
    public boolean isTopBarAvailable() {
        return true;
    }

    @Override // com.narvii.master.explorer.CommunityPageFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        HashMap<Integer, Integer> mapAs;
        super.onCreate(bundle);
        this.sharedPreferencesHelper = new PreferencesHelper(this);
        this.languageService = (ContentLanguageService) getService("content_language");
        this.languageService.registerLanguageChangeListener(this);
        if (bundle != null) {
            this.curLanguageCode = bundle.getString("languageCode");
        }
        this.masterShareTabHelper = new MasterShareTabHelper(this);
        if (bundle == null || (mapAs = JacksonUtils.readMapAs(bundle.getString("itemHeightArray"), Integer.class, Integer.class)) == null) {
            return;
        }
        this.masterShareTabHelper.setItemHeightArray(mapAs);
    }

    @Override // com.narvii.master.explorer.CommunityPageFragment, com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.incubator_community_explorer, viewGroup, false);
    }

    @Override // com.narvii.master.explorer.CommunityPageFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.topBar = view.findViewById(R.id.top_bar);
        this.topBar.setVisibility(getParentFragment() == null ? 0 : 8);
        this.btnBack = view.findViewById(R.id.back);
        this.btnBack.setOnClickListener(this);
        this.btnSearch = view.findViewById(R.id.search);
        this.btnSearch.setOnClickListener(this);
        if (Build.VERSION.SDK_INT >= 21) {
            getListView().setNestedScrollingEnabled(true);
        }
        this.masterShareTabHelper.attachToList((NVListView) getListView());
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment
    public void onActiveChanged(boolean z) {
        super.onActiveChanged(z);
    }

    @Override // com.narvii.list.NVListFragment
    protected int externalOffset() {
        return getStatusBarOverlaySize() + getContext().getResources().getDimensionPixelSize(R.dimen.master_home_top_tab_height);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
        if (getParentFragment() instanceof MasterTabFragment) {
            ((MasterTabFragment) getParentFragment()).addMasterThemeChangedListener(this);
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onResume() {
        CommunityPageAdapter.FeaturedFlipperAdapter featuredFlipperAdapter;
        super.onResume();
        CommunityPageAdapter communityPageAdapter = this.communityPageAdapter;
        if (communityPageAdapter == null || (featuredFlipperAdapter = communityPageAdapter.featuredFlipperAdapter) == null) {
            return;
        }
        featuredFlipperAdapter.setFragmentResume(true);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onPause() {
        CommunityPageAdapter.FeaturedFlipperAdapter featuredFlipperAdapter;
        super.onPause();
        CommunityPageAdapter communityPageAdapter = this.communityPageAdapter;
        if (communityPageAdapter == null || (featuredFlipperAdapter = communityPageAdapter.featuredFlipperAdapter) == null) {
            return;
        }
        featuredFlipperAdapter.setFragmentResume(false);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onStop() {
        if (getParentFragment() instanceof MasterTabFragment) {
            ((MasterTabFragment) getParentFragment()).removeMasterThemeChangeListener(this);
        }
        super.onStop();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.languageService.unRegisterLanguageChangeListener(this);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void setUserVisibleHint(boolean z) {
        CommunityPageAdapter.FeaturedFlipperAdapter featuredFlipperAdapter;
        super.setUserVisibleHint(z);
        CommunityPageAdapter communityPageAdapter = this.communityPageAdapter;
        if (communityPageAdapter == null || (featuredFlipperAdapter = communityPageAdapter.featuredFlipperAdapter) == null) {
            return;
        }
        featuredFlipperAdapter.setFragmentVisible(z);
    }

    @Override // com.narvii.master.explorer.CommunityPageFragment, com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        FragmentManager fragmentManager;
        this.emptyView = setEmptyView(R.layout.explorer_empty_layout);
        super.onListViewCreated(listView, bundle);
        if (!isRootFragment() || (fragmentManager = getFragmentManager()) == null) {
            return;
        }
        MasterThemeFragment masterThemeFragmentAddMasterThemeFragment = MasterThemeExtensionKt.addMasterThemeFragment(fragmentManager);
        Bundle bundle2 = new Bundle();
        bundle2.putInt("overlayColor", Color.parseColor("#66000000"));
        masterThemeFragmentAddMasterThemeFragment.setArguments(bundle2);
    }

    @Override // com.narvii.master.explorer.CommunityPageFragment
    protected void onListScroll(AbsListView absListView, int i, int i2, int i3) {
        CommunityPageAdapter.FeaturedFlipperAdapter featuredFlipperAdapter;
        CommunityPageAdapter communityPageAdapter = this.communityPageAdapter;
        if (communityPageAdapter == null || (featuredFlipperAdapter = communityPageAdapter.featuredFlipperAdapter) == null) {
            return;
        }
        featuredFlipperAdapter.setVisibleInListView(i == 0);
    }

    @Override // com.narvii.master.explorer.CommunityPageFragment, com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        this.communityPageAdapter = new MyAdapter();
        FitTopAdapter fitTopAdapter = new FitTopAdapter();
        BottomAdapter bottomAdapter = new BottomAdapter();
        mergeAdapter.addAdapter(fitTopAdapter);
        mergeAdapter.addAdapter(this.communityPageAdapter, true);
        mergeAdapter.addAdapter(bottomAdapter);
        return mergeAdapter;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.back) {
            finish();
        } else {
            if (id != R.id.search) {
                return;
            }
            Intent intent = FragmentWrapperActivity.intent(GlobalSearchTabFragment.class);
            intent.putExtra("tab", "community");
            startActivity(intent);
            getActivity().overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
        }
    }

    private void hideLanguageInfoLayout() {
        this.sharedPreferencesHelper.setCurExplorerLanguageShowed();
    }

    @Override // com.narvii.master.MasterAppearanceChangedListener
    public void onMasterAppearanceChanged(int i) {
        if (!isAdded() || getActivity() == null) {
        }
    }

    @Override // com.narvii.language.LanguageChangeListener
    public void onLanguageChanged(String str) {
        if (!isAdded() || getActivity() == null) {
            return;
        }
        changeLanguage(str);
    }

    @Override // com.narvii.master.MasterTopOffsetAdapter
    public int topOffsetHeight() {
        return getStatusBarOverlaySize() + getContext().getResources().getDimensionPixelSize(R.dimen.master_home_top_tab_height);
    }

    @Override // com.narvii.master.MasterTopOffsetAdapter
    public void resetOffset() {
        MasterShareTabHelper masterShareTabHelper;
        if (!isAdded() || (masterShareTabHelper = this.masterShareTabHelper) == null) {
            return;
        }
        masterShareTabHelper.resetOffsetViewTranslation();
    }

    private class FitTopAdapter extends NVAdapter {
        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return this;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        public FitTopAdapter() {
            super(ExplorerCommunityListFragment.this);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return (ExplorerCommunityListFragment.this.communityPageAdapter == null || !ExplorerCommunityListFragment.this.communityPageAdapter.startWithFeature) ? 1 : 0;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.community_page_fit_top, viewGroup, view);
            viewCreateView.setBackgroundColor(ExplorerCommunityListFragment.this.communityPageAdapter != null ? ExplorerCommunityListFragment.this.communityPageAdapter.pageBackGround : 0);
            return viewCreateView;
        }
    }

    private class BottomAdapter extends NVAdapter {
        @Override // android.widget.Adapter
        public int getCount() {
            return 1;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return this;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        public BottomAdapter() {
            super(ExplorerCommunityListFragment.this);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.community_page_fit_bottom, viewGroup, view);
            viewCreateView.setBackgroundColor(ExplorerCommunityListFragment.this.communityPageAdapter != null ? ExplorerCommunityListFragment.this.communityPageAdapter.pageBackGround : 0);
            return viewCreateView;
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("languageCode", this.curLanguageCode);
        MasterShareTabHelper masterShareTabHelper = this.masterShareTabHelper;
        if (masterShareTabHelper != null) {
            bundle.putString("itemHeightArray", JacksonUtils.safeWriteAsString(masterShareTabHelper.getItemHeightArray()));
        }
    }

    class MyAdapter extends CommunityPageAdapter {
        ImpressionCollector bannerIpc;
        ImpressionCollector ipc;

        @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "AminoList";
        }

        @Override // com.narvii.master.explorer.CommunityPageAdapter
        protected boolean shadowForFeature() {
            return true;
        }

        public MyAdapter() {
            super(ExplorerCommunityListFragment.this);
            this.ipc = new RecyclerInListViewImpressionCollector<Community>(Community.class, R.id.gallery) { // from class: com.narvii.master.explorer.ExplorerCommunityListFragment.MyAdapter.1
                @Override // com.narvii.logging.Impression.ImpressionCollector
                public void completeImpressionLogBuilder(LogEvent.Builder builder, ObjectInfo<Community> objectInfo) {
                    super.completeImpressionLogBuilder(builder, objectInfo);
                }

                /* JADX WARN: Removed duplicated region for block: B:8:0x0019  */
                @Override // com.narvii.logging.Impression.ImpressionCollector
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                protected java.lang.String getObjectKey(com.narvii.logging.ObjectInfo<com.narvii.model.Community> r4) {
                    /*
                        r3 = this;
                        if (r4 == 0) goto L19
                        java.util.HashMap r0 = r4.getExtraInfo()
                        if (r0 == 0) goto L19
                        java.util.HashMap r0 = r4.getExtraInfo()
                        java.lang.String r1 = "collectionId"
                        java.lang.Object r0 = r0.get(r1)
                        boolean r1 = r0 instanceof java.lang.String
                        if (r1 == 0) goto L19
                        java.lang.String r0 = (java.lang.String) r0
                        goto L1a
                    L19:
                        r0 = 0
                    L1a:
                        java.lang.StringBuilder r1 = new java.lang.StringBuilder
                        r1.<init>()
                        T extends com.narvii.model.NVObject r4 = r4.object
                        com.narvii.model.Community r4 = (com.narvii.model.Community) r4
                        int r4 = r4.id
                        r1.append(r4)
                        if (r0 == 0) goto L3c
                        java.lang.StringBuilder r4 = new java.lang.StringBuilder
                        r4.<init>()
                        java.lang.String r2 = "_"
                        r4.append(r2)
                        r4.append(r0)
                        java.lang.String r4 = r4.toString()
                        goto L3e
                    L3c:
                        java.lang.String r4 = ""
                    L3e:
                        r1.append(r4)
                        java.lang.String r4 = r1.toString()
                        return r4
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.narvii.master.explorer.ExplorerCommunityListFragment.MyAdapter.AnonymousClass1.getObjectKey(com.narvii.logging.ObjectInfo):java.lang.String");
                }
            };
            this.bannerIpc = new ViewFlipperImpressionCollector<Community>(Community.class) { // from class: com.narvii.master.explorer.ExplorerCommunityListFragment.MyAdapter.2
                @Override // com.narvii.master.explorer.ViewFlipperImpressionCollector
                protected int getFlipperId() {
                    return R.id.flipper;
                }

                @Override // com.narvii.logging.Impression.ImpressionCollector
                public void completeImpressionLogBuilder(LogEvent.Builder builder, ObjectInfo<Community> objectInfo) {
                    super.completeImpressionLogBuilder(builder, objectInfo);
                    builder.area("Banner");
                }

                /* JADX WARN: Removed duplicated region for block: B:8:0x0019  */
                @Override // com.narvii.logging.Impression.ImpressionCollector
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                protected java.lang.String getObjectKey(com.narvii.logging.ObjectInfo<com.narvii.model.Community> r4) {
                    /*
                        r3 = this;
                        if (r4 == 0) goto L19
                        java.util.HashMap r0 = r4.getExtraInfo()
                        if (r0 == 0) goto L19
                        java.util.HashMap r0 = r4.getExtraInfo()
                        java.lang.String r1 = "collectionId"
                        java.lang.Object r0 = r0.get(r1)
                        boolean r1 = r0 instanceof java.lang.String
                        if (r1 == 0) goto L19
                        java.lang.String r0 = (java.lang.String) r0
                        goto L1a
                    L19:
                        r0 = 0
                    L1a:
                        java.lang.StringBuilder r1 = new java.lang.StringBuilder
                        r1.<init>()
                        T extends com.narvii.model.NVObject r4 = r4.object
                        com.narvii.model.Community r4 = (com.narvii.model.Community) r4
                        int r4 = r4.id
                        r1.append(r4)
                        if (r0 == 0) goto L3c
                        java.lang.StringBuilder r4 = new java.lang.StringBuilder
                        r4.<init>()
                        java.lang.String r2 = "_"
                        r4.append(r2)
                        r4.append(r0)
                        java.lang.String r4 = r4.toString()
                        goto L3e
                    L3c:
                        java.lang.String r4 = ""
                    L3e:
                        r1.append(r4)
                        java.lang.String r4 = r1.toString()
                        return r4
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.narvii.master.explorer.ExplorerCommunityListFragment.MyAdapter.AnonymousClass2.getObjectKey(com.narvii.logging.ObjectInfo):java.lang.String");
                }
            };
            addImpressionCollector(this.ipc);
            addImpressionCollector(this.bannerIpc, false);
        }

        @Override // com.narvii.master.explorer.CommunityPageAdapter
        public ImpressionCollector getBannerIpc() {
            return this.bannerIpc;
        }

        @Override // com.narvii.master.explorer.CommunityPageAdapter
        public ImpressionCollector getAminoListIpc() {
            return this.ipc;
        }

        @Override // com.narvii.master.explorer.CommunityPageAdapter
        protected int getActionBarBackground() {
            PageUI pageUI;
            int i;
            CommunityCollection communityCollection = this.curCommunityCollection;
            if (communityCollection == null || (pageUI = communityCollection.pageUI) == null || (i = pageUI.backgroundColor) == 0) {
                return 0;
            }
            return i;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.master.explorer.CommunityPageAdapter, com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, CommunityCollectionGroupResponse communityCollectionGroupResponse, int i) {
            super.onPageResponse(apiRequest, communityCollectionGroupResponse, i);
            if (apiRequest.tag().equals(true)) {
                ExplorerCommunityListFragment.this.curLanguageCode = communityCollectionGroupResponse.language;
                ExplorerCommunityListFragment explorerCommunityListFragment = ExplorerCommunityListFragment.this;
                explorerCommunityListFragment.updateEmptyView(explorerCommunityListFragment.curLanguageCode);
                ExplorerCommunityListFragment.this.languageService.saveSuggestLanguage(communityCollectionGroupResponse.language);
            }
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i) {
            if (getItem(i) == NVPagedAdapter.LIST_END) {
                return false;
            }
            return super.isEnabled(i);
        }

        @Override // com.narvii.master.explorer.CommunityPageAdapter
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
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showLanguageChooseDialog() {
        hideLanguageInfoLayout();
        final ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.show();
        ((ApiService) getService("api")).exec(new ApiRequest.Builder().path("community-collection/supported-languages").global().param(TtmlNode.START, 0).param("size", 100).build(), new ApiResponseListener<SupportLanguageResponse>(SupportLanguageResponse.class) { // from class: com.narvii.master.explorer.ExplorerCommunityListFragment.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, SupportLanguageResponse supportLanguageResponse) throws Exception {
                super.onFinish(apiRequest, (ApiRequest) supportLanguageResponse);
                if (progressDialog.isShowing()) {
                    progressDialog.dismiss();
                }
                ExplorerCommunityListFragment explorerCommunityListFragment = ExplorerCommunityListFragment.this;
                final LanguageChooseDialog languageChooseDialog = new LanguageChooseDialog(explorerCommunityListFragment, supportLanguageResponse.supportedLanguages, explorerCommunityListFragment.curLanguageCode);
                languageChooseDialog.setOnItemClickListener(new LanguageChooseDialog.ItemClickListener() { // from class: com.narvii.master.explorer.ExplorerCommunityListFragment.1.1
                    @Override // com.narvii.incubator.LanguageChooseDialog.ItemClickListener
                    public void onItemClick(LanguageSpec languageSpec) {
                        if (languageChooseDialog.isShowing()) {
                            languageChooseDialog.dismiss();
                        }
                        if (Utils.isEqualsNotNull(ExplorerCommunityListFragment.this.languageService.languageUserSelected(), languageSpec.code)) {
                            return;
                        }
                        ExplorerCommunityListFragment.this.sharedPreferencesHelper.explorerLanguageChanged(true);
                        ExplorerCommunityListFragment.this.languageService.saveLanguageCode(languageSpec.code);
                    }
                });
                languageChooseDialog.show();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str, apiResponse, th);
                NVToast.makeText(ExplorerCommunityListFragment.this.getContext(), str, 1).show();
                if (progressDialog.isShowing()) {
                    progressDialog.dismiss();
                }
            }
        });
    }

    private void changeLanguage(String str) {
        if (Utils.isEqualsNotNull(str, this.curLanguageCode)) {
            return;
        }
        this.curLanguageCode = str;
        CommunityPageAdapter communityPageAdapter = this.communityPageAdapter;
        if (communityPageAdapter != null) {
            communityPageAdapter.setLanguage(str);
            this.communityPageAdapter.resetList();
        }
        if (getListView() != null && getListView().getChildCount() > 0) {
            for (int i = 0; i < getListView().getChildCount(); i++) {
                if (getListView().getChildAt(i) instanceof LinearLayout) {
                    this.communityPageAdapter.resetRecylerViewAdapter((LinearLayout) getListView().getChildAt(i));
                }
            }
        }
        updateEmptyView(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateEmptyView(String str) {
        View view;
        if (str == null || (view = this.emptyView) == null) {
            return;
        }
        TextView textView = (TextView) view.findViewById(R.id.language_info);
        if (textView != null) {
            textView.setText(new CommunityHelper(this).getFirstLetterCapLanguage(str));
        }
        if (this.emptyView.findViewById(R.id.language_info_container) != null) {
            this.emptyView.findViewById(R.id.language_info_container).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.explorer.ExplorerCommunityListFragment.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    ExplorerCommunityListFragment.this.showLanguageChooseDialog();
                }
            });
        }
    }

    private int getLanguageTextColor() {
        CommunityPageAdapter communityPageAdapter = this.communityPageAdapter;
        if (communityPageAdapter == null || communityPageAdapter.isEmpty() || !this.communityPageAdapter.actionbarTextColorSeted()) {
            return -1;
        }
        return this.communityPageAdapter.getActionbarTextColor();
    }
}
