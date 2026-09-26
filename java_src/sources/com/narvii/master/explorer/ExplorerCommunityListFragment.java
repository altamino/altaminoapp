package com.narvii.master.explorer;

import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.narvii.amino.master.R;
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
import com.narvii.master.search.GlobalSearchTabFragment;
import com.narvii.master.search.SearchPrefsHelper;
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
import com.narvii.util.statistics.StatisticsService;
import com.narvii.widget.NVListView;
import com.safedk.android.utils.Logger;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class ExplorerCommunityListFragment extends CommunityPageFragment implements View.OnClickListener, MasterAppearanceChangedListener, LanguageChangeListener, MasterTopBarAvailable, MasterTopOffsetAdapter {
    private View btnBack;
    private View btnSearch;
    private CommunityPageAdapter communityPageAdapter;
    private String curLanguageCode;
    private ContentLanguageService languageService;
    private MasterShareTabHelper masterShareTabHelper;
    PreferencesHelper sharedPreferencesHelper;
    private View topBar;

    private class BottomAdapter extends NVAdapter {
        @Override // android.widget.Adapter
        public int getCount() {
            return 1;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            return this;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return 0L;
        }

        public BottomAdapter() {
            super(ExplorerCommunityListFragment.this);
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            int i11;
            View viewCreateView = createView(R.layout.community_page_fit_bottom, viewGroup, view);
            if (ExplorerCommunityListFragment.this.communityPageAdapter != null) {
                i11 = ExplorerCommunityListFragment.this.communityPageAdapter.pageBackGround;
            } else {
                i11 = 0;
            }
            viewCreateView.setBackgroundColor(i11);
            return viewCreateView;
        }
    }

    private class FitTopAdapter extends NVAdapter {
        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            return this;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
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
        public View getView(int i10, View view, ViewGroup viewGroup) {
            int i11;
            View viewCreateView = createView(R.layout.community_page_fit_top, viewGroup, view);
            if (ExplorerCommunityListFragment.this.communityPageAdapter != null) {
                i11 = ExplorerCommunityListFragment.this.communityPageAdapter.pageBackGround;
            } else {
                i11 = 0;
            }
            viewCreateView.setBackgroundColor(i11);
            return viewCreateView;
        }
    }

    class MyAdapter extends CommunityPageAdapter {
        ImpressionCollector bannerIpc;
        ImpressionCollector ipc;

        @Override // com.narvii.master.explorer.CommunityPageAdapter
        public ImpressionCollector getAminoListIpc() {
            return this.ipc;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "AminoList";
        }

        @Override // com.narvii.master.explorer.CommunityPageAdapter
        public ImpressionCollector getBannerIpc() {
            return this.bannerIpc;
        }

        @Override // com.narvii.master.explorer.CommunityPageAdapter
        protected boolean shadowForFeature() {
            return true;
        }

        public MyAdapter() {
            super(ExplorerCommunityListFragment.this);
            Class<Community> cls = Community.class;
            this.ipc = new RecyclerInListViewImpressionCollector<Community>(cls, R.id.gallery) { // from class: com.narvii.master.explorer.ExplorerCommunityListFragment.MyAdapter.1
                /* JADX WARN: Code duplicated, block: B:8:0x0019  */
                @Override // com.narvii.logging.Impression.ImpressionCollector
                protected String getObjectKey(ObjectInfo<Community> objectInfo) {
                    String str;
                    String str2;
                    if (objectInfo == null || objectInfo.getExtraInfo() == null) {
                        str = null;
                    } else {
                        Object obj = objectInfo.getExtraInfo().get("collectionId");
                        if (obj instanceof String) {
                            str = (String) obj;
                        } else {
                            str = null;
                        }
                    }
                    StringBuilder sb = new StringBuilder();
                    sb.append(((Community) objectInfo.object).id);
                    if (str != null) {
                        str2 = "_" + str;
                    } else {
                        str2 = "";
                    }
                    sb.append(str2);
                    return sb.toString();
                }

                @Override // com.narvii.logging.Impression.ImpressionCollector
                public void completeImpressionLogBuilder(LogEvent.Builder builder, ObjectInfo<Community> objectInfo) {
                    super.completeImpressionLogBuilder(builder, objectInfo);
                }
            };
            this.bannerIpc = new ViewFlipperImpressionCollector<Community>(cls) { // from class: com.narvii.master.explorer.ExplorerCommunityListFragment.MyAdapter.2
                @Override // com.narvii.master.explorer.ViewFlipperImpressionCollector
                protected int getFlipperId() {
                    return R.id.flipper;
                }

                /* JADX WARN: Code duplicated, block: B:8:0x0019  */
                @Override // com.narvii.logging.Impression.ImpressionCollector
                protected String getObjectKey(ObjectInfo<Community> objectInfo) {
                    String str;
                    String str2;
                    if (objectInfo == null || objectInfo.getExtraInfo() == null) {
                        str = null;
                    } else {
                        Object obj = objectInfo.getExtraInfo().get("collectionId");
                        if (obj instanceof String) {
                            str = (String) obj;
                        } else {
                            str = null;
                        }
                    }
                    StringBuilder sb = new StringBuilder();
                    sb.append(((Community) objectInfo.object).id);
                    if (str != null) {
                        str2 = "_" + str;
                    } else {
                        str2 = "";
                    }
                    sb.append(str2);
                    return sb.toString();
                }

                @Override // com.narvii.logging.Impression.ImpressionCollector
                public void completeImpressionLogBuilder(LogEvent.Builder builder, ObjectInfo<Community> objectInfo) {
                    super.completeImpressionLogBuilder(builder, objectInfo);
                    builder.area("Banner");
                }
            };
            addImpressionCollector(this.ipc);
            addImpressionCollector(this.bannerIpc, false);
        }

        @Override // com.narvii.master.explorer.CommunityPageAdapter
        protected int getActionBarBackground() {
            PageUI pageUI;
            int i10;
            CommunityCollection communityCollection = this.curCommunityCollection;
            if (communityCollection == null || (pageUI = communityCollection.pageUI) == null || (i10 = pageUI.backgroundColor) == 0) {
                return 0;
            }
            return i10;
        }

        @Override // com.narvii.master.explorer.CommunityPageAdapter
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

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.master.explorer.CommunityPageAdapter, com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, CommunityCollectionGroupResponse communityCollectionGroupResponse, int i10) {
            super.onPageResponse(apiRequest, communityCollectionGroupResponse, i10);
            if (apiRequest.tag().equals(Boolean.TRUE)) {
                ExplorerCommunityListFragment.this.curLanguageCode = communityCollectionGroupResponse.language;
                ExplorerCommunityListFragment explorerCommunityListFragment = ExplorerCommunityListFragment.this;
                explorerCommunityListFragment.updateEmptyView(explorerCommunityListFragment.curLanguageCode);
                ExplorerCommunityListFragment.this.languageService.saveSuggestLanguage(communityCollectionGroupResponse.language);
            }
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i10) {
            if (getItem(i10) == NVPagedAdapter.LIST_END) {
                return false;
            }
            return super.isEnabled(i10);
        }
    }

    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "explore_communities_list";
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
            for (int i10 = 0; i10 < getListView().getChildCount(); i10++) {
                if (getListView().getChildAt(i10) instanceof LinearLayout) {
                    this.communityPageAdapter.resetRecylerViewAdapter((LinearLayout) getListView().getChildAt(i10));
                }
            }
        }
        updateEmptyView(str);
    }

    private int getLanguageTextColor() {
        CommunityPageAdapter communityPageAdapter = this.communityPageAdapter;
        if (communityPageAdapter == null || communityPageAdapter.isEmpty() || !this.communityPageAdapter.actionbarTextColorSeted()) {
            return -1;
        }
        return this.communityPageAdapter.getActionbarTextColor();
    }

    private void hideLanguageInfoLayout() {
        this.sharedPreferencesHelper.setCurExplorerLanguageShowed();
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

    @Override // com.narvii.master.explorer.CommunityPageFragment
    protected void onListScroll(AbsListView absListView, int i10, int i11, int i12) {
        CommunityPageAdapter.FeaturedFlipperAdapter featuredFlipperAdapter;
        CommunityPageAdapter communityPageAdapter = this.communityPageAdapter;
        if (communityPageAdapter == null || (featuredFlipperAdapter = communityPageAdapter.featuredFlipperAdapter) == null) {
            return;
        }
        featuredFlipperAdapter.setVisibleInListView(i10 == 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showLanguageChooseDialog() {
        hideLanguageInfoLayout();
        final ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.show();
        ((ApiService) getService("api")).exec(new ApiRequest.Builder().path("community-collection/supported-languages").global().param("start", 0).param("size", 100).build(), new ApiResponseListener<SupportLanguageResponse>(SupportLanguageResponse.class) { // from class: com.narvii.master.explorer.ExplorerCommunityListFragment.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, SupportLanguageResponse supportLanguageResponse) throws Exception {
                super.onFinish(apiRequest, supportLanguageResponse);
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
                        ((StatisticsService) ExplorerCommunityListFragment.this.getService("statistics")).event("Explore Page Language Switched").param("Lang", languageSpec.code).userPropInc("Explore Page Language Switched Total");
                    }
                });
                languageChooseDialog.show();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i10, list, str, apiResponse, th);
                NVToast.makeText(ExplorerCommunityListFragment.this.getContext(), str, 1).show();
                if (progressDialog.isShowing()) {
                    progressDialog.dismiss();
                }
            }
        });
    }

    @Override // com.narvii.list.NVListFragment
    protected int externalOffset() {
        return getStatusBarOverlaySize() + getContext().getResources().getDimensionPixelSize(R.dimen.master_home_top_tab_height);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment
    public void onActiveChanged(boolean z6) {
        super.onActiveChanged(z6);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id != R.id.back) {
            if (id == R.id.search) {
                Intent intent = FragmentWrapperActivity.intent(GlobalSearchTabFragment.class);
                intent.putExtra("tab", SearchPrefsHelper.PREFS_KEY_COMMUNITY);
                safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent);
                getActivity().overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
                return;
            }
            return;
        }
        finish();
    }

    @Override // com.narvii.master.explorer.CommunityPageFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        HashMap<Integer, Integer> mapAs;
        super.onCreate(bundle);
        this.sharedPreferencesHelper = new PreferencesHelper(this);
        ContentLanguageService contentLanguageService = (ContentLanguageService) getService("content_language");
        this.languageService = contentLanguageService;
        contentLanguageService.registerLanguageChangeListener(this);
        if (bundle != null) {
            this.curLanguageCode = bundle.getString("languageCode");
        }
        this.masterShareTabHelper = new MasterShareTabHelper(this);
        if (bundle != null && (mapAs = JacksonUtils.readMapAs(bundle.getString("itemHeightArray"), Integer.class, Integer.class)) != null) {
            this.masterShareTabHelper.setItemHeightArray(mapAs);
        }
    }

    @Override // com.narvii.master.explorer.CommunityPageFragment, com.narvii.list.NVListFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.incubator_community_explorer, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.languageService.unRegisterLanguageChangeListener(this);
    }

    @Override // com.narvii.language.LanguageChangeListener
    public void onLanguageChanged(String str) {
        if (isAdded() && getActivity() != null) {
            changeLanguage(str);
        }
    }

    @Override // com.narvii.master.explorer.CommunityPageFragment, com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        FragmentManager fragmentManager;
        this.emptyView = setEmptyView(R.layout.explorer_empty_layout);
        super.onListViewCreated(listView, bundle);
        if (isRootFragment() && (fragmentManager = getFragmentManager()) != null) {
            MasterThemeFragment masterThemeFragmentAddMasterThemeFragment = MasterThemeExtensionKt.addMasterThemeFragment(fragmentManager);
            Bundle bundle2 = new Bundle();
            bundle2.putInt("overlayColor", Color.parseColor("#66000000"));
            masterThemeFragmentAddMasterThemeFragment.setArguments(bundle2);
        }
    }

    @Override // com.narvii.master.MasterAppearanceChangedListener
    public void onMasterAppearanceChanged(int i10) {
        if (isAdded()) {
            getActivity();
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onPause() {
        CommunityPageAdapter.FeaturedFlipperAdapter featuredFlipperAdapter;
        super.onPause();
        CommunityPageAdapter communityPageAdapter = this.communityPageAdapter;
        if (communityPageAdapter != null && (featuredFlipperAdapter = communityPageAdapter.featuredFlipperAdapter) != null) {
            featuredFlipperAdapter.setFragmentResume(false);
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onResume() {
        CommunityPageAdapter.FeaturedFlipperAdapter featuredFlipperAdapter;
        super.onResume();
        CommunityPageAdapter communityPageAdapter = this.communityPageAdapter;
        if (communityPageAdapter != null && (featuredFlipperAdapter = communityPageAdapter.featuredFlipperAdapter) != null) {
            featuredFlipperAdapter.setFragmentResume(true);
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("languageCode", this.curLanguageCode);
        MasterShareTabHelper masterShareTabHelper = this.masterShareTabHelper;
        if (masterShareTabHelper != null) {
            bundle.putString("itemHeightArray", JacksonUtils.safeWriteAsString(masterShareTabHelper.getItemHeightArray()));
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        if (getParentFragment() instanceof MasterTabFragment) {
            ((MasterTabFragment) getParentFragment()).addMasterThemeChangedListener(this);
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onStop() {
        if (getParentFragment() instanceof MasterTabFragment) {
            ((MasterTabFragment) getParentFragment()).removeMasterThemeChangeListener(this);
        }
        super.onStop();
    }

    @Override // com.narvii.master.explorer.CommunityPageFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        int i10;
        super.onViewCreated(view, bundle);
        View viewFindViewById = view.findViewById(R.id.top_bar);
        this.topBar = viewFindViewById;
        if (getParentFragment() == null) {
            i10 = 0;
        } else {
            i10 = 8;
        }
        viewFindViewById.setVisibility(i10);
        View viewFindViewById2 = view.findViewById(R.id.back);
        this.btnBack = viewFindViewById2;
        viewFindViewById2.setOnClickListener(this);
        View viewFindViewById3 = view.findViewById(R.id.search);
        this.btnSearch = viewFindViewById3;
        viewFindViewById3.setOnClickListener(this);
        getListView().setNestedScrollingEnabled(true);
        this.masterShareTabHelper.attachToList((NVListView) getListView());
    }

    @Override // com.narvii.master.MasterTopOffsetAdapter
    public void resetOffset() {
        MasterShareTabHelper masterShareTabHelper;
        if (isAdded() && (masterShareTabHelper = this.masterShareTabHelper) != null) {
            masterShareTabHelper.resetOffsetViewTranslation();
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z6) {
        CommunityPageAdapter.FeaturedFlipperAdapter featuredFlipperAdapter;
        super.setUserVisibleHint(z6);
        CommunityPageAdapter communityPageAdapter = this.communityPageAdapter;
        if (communityPageAdapter != null && (featuredFlipperAdapter = communityPageAdapter.featuredFlipperAdapter) != null) {
            featuredFlipperAdapter.setFragmentVisible(z6);
        }
    }

    @Override // com.narvii.master.MasterTopOffsetAdapter
    public int topOffsetHeight() {
        return getStatusBarOverlaySize() + getContext().getResources().getDimensionPixelSize(R.dimen.master_home_top_tab_height);
    }
}
