package com.narvii.master.home.discover;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentOnBackListener;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVScrollablePagerAdapter;
import com.narvii.language.ContentLanguageService;
import com.narvii.language.LanguageChangeListener;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.master.MasterTabFragment;
import com.narvii.master.MasterTopBarAvailable;
import com.narvii.master.home.story.CommentSheetDisplayHost;
import com.narvii.master.search.GlobalSearchTabFragment;
import com.narvii.master.theme.MasterThemeExtensionKt;
import com.narvii.master.theme.MasterThemeFragment;
import com.narvii.nested.CoordinateTabFragment;
import com.narvii.nested.NVAppBarLayout;
import com.narvii.nested.tab.ScrollTabViewDelegate;
import com.narvii.nested.tab.UpdateTabViewDelegate;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.story.StoryListFragment;
import com.narvii.story.StoryListVisibleChangeListener;
import com.narvii.topic.picker.AggregationTopicFragment;
import com.narvii.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Triple;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlin.text.StringsKt__StringsJVMKt;

/* compiled from: DiscoverTabFragment.kt */
/* loaded from: classes3.dex */
public final class DiscoverTabFragment extends CoordinateTabFragment implements FragmentOnBackListener, NotificationListener, MasterTopBarAvailable, StoryListVisibleChangeListener, LanguageChangeListener {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(DiscoverTabFragment.class), "headerView", "getHeaderView()Landroid/view/View;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(DiscoverTabFragment.class), "headerGradientView", "getHeaderGradientView()Landroid/view/View;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(DiscoverTabFragment.class), "btnInterestPicker", "getBtnInterestPicker()Landroid/view/View;"))};
    private HashMap _$_findViewCache;
    public AccountService accountService;
    private boolean isBottomOverlay;
    private boolean isImmersiveHeader;
    public ContentLanguageService languageService;
    private boolean storyListShowing;
    private final Lazy headerView$delegate = bind(this, R.id.coordinate_top_content);
    private final Lazy headerGradientView$delegate = bind(this, R.id.gradient_top_content);
    private boolean showMasterTopBar = true;
    private final Lazy btnInterestPicker$delegate = bind(this, R.id.picker);
    private final DiscoverTabFragment$receiver$1 receiver = new BroadcastReceiver() { // from class: com.narvii.master.home.discover.DiscoverTabFragment$receiver$1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) throws Resources.NotFoundException {
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intrinsics.checkParameterIsNotNull(intent, "intent");
            if (Intrinsics.areEqual(AccountService.ACTION_ACCOUNT_CHANGED, intent.getAction())) {
                this.this$0.resetAdapter();
            }
        }
    };

    @Override // com.narvii.nested.CoordinateTabFragment, com.narvii.app.theme.NVThemeFragment
    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    @Override // com.narvii.nested.CoordinateTabFragment, com.narvii.app.theme.NVThemeFragment
    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View view2 = getView();
        if (view2 == null) {
            return null;
        }
        View viewFindViewById = view2.findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    public final View getBtnInterestPicker() {
        Lazy lazy = this.btnInterestPicker$delegate;
        KProperty kProperty = $$delegatedProperties[2];
        return (View) lazy.getValue();
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131755020;
    }

    public final View getHeaderGradientView() {
        Lazy lazy = this.headerGradientView$delegate;
        KProperty kProperty = $$delegatedProperties[1];
        return (View) lazy.getValue();
    }

    public final View getHeaderView() {
        Lazy lazy = this.headerView$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (View) lazy.getValue();
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "StoryDiscover";
    }

    @Override // com.narvii.app.NVFragment
    public boolean isGlobal() {
        return true;
    }

    @Override // com.narvii.nested.CoordinateTabFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
    }

    public final AccountService getAccountService() {
        AccountService accountService = this.accountService;
        if (accountService != null) {
            return accountService;
        }
        Intrinsics.throwUninitializedPropertyAccessException("accountService");
        throw null;
    }

    public final void setAccountService(AccountService accountService) {
        Intrinsics.checkParameterIsNotNull(accountService, "<set-?>");
        this.accountService = accountService;
    }

    public final ContentLanguageService getLanguageService() {
        ContentLanguageService contentLanguageService = this.languageService;
        if (contentLanguageService != null) {
            return contentLanguageService;
        }
        Intrinsics.throwUninitializedPropertyAccessException("languageService");
        throw null;
    }

    public final void setLanguageService(ContentLanguageService contentLanguageService) {
        Intrinsics.checkParameterIsNotNull(contentLanguageService, "<set-?>");
        this.languageService = contentLanguageService;
    }

    public final boolean getShowMasterTopBar() {
        return this.showMasterTopBar;
    }

    public final void setShowMasterTopBar(boolean z) {
        this.showMasterTopBar = z;
    }

    public final boolean getStoryListShowing() {
        return this.storyListShowing;
    }

    public final void setStoryListShowing(boolean z) {
        this.storyListShowing = z;
    }

    public final boolean isBottomOverlay() {
        return this.isBottomOverlay;
    }

    public final void setBottomOverlay(boolean z) {
        this.isBottomOverlay = z;
    }

    public final boolean isImmersiveHeader() {
        return this.isImmersiveHeader;
    }

    public final void setImmersiveHeader(boolean z) {
        this.isImmersiveHeader = z;
        updateHeaderView();
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Object service = getService("account");
        Intrinsics.checkExpressionValueIsNotNull(service, "getService<AccountService>(\"account\")");
        this.accountService = (AccountService) service;
        Object service2 = getService("content_language");
        Intrinsics.checkExpressionValueIsNotNull(service2, "getService<ContentLangua…vice>(\"content_language\")");
        this.languageService = (ContentLanguageService) service2;
        registerLocalReceiver(this.receiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
        if (bundle != null) {
            this.showMasterTopBar = bundle.getBoolean("showMasterTopBar");
            this.isBottomOverlay = bundle.getBoolean("isBottomOverlay");
        }
        Fragment fragmentFindFragmentById = getChildFragmentManager().findFragmentById(R.id.story_list_frame);
        if (fragmentFindFragmentById instanceof StoryListFragment) {
            ((StoryListFragment) fragmentFindFragmentById).addStoryVisibleChangeListener(this);
        }
        setHasOptionsMenu(true);
        setTitle(R.string.discover);
    }

    @Override // com.narvii.nested.CoordinateTabFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle outState) {
        Intrinsics.checkParameterIsNotNull(outState, "outState");
        super.onSaveInstanceState(outState);
        outState.putBoolean("showMasterTopBar", this.showMasterTopBar);
        outState.putBoolean("isBottomOverlay", this.isBottomOverlay);
    }

    @Override // com.narvii.nested.CoordinateTabFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        return inflater.inflate(R.layout.fragment_discover_tab, viewGroup, false);
    }

    @Override // com.narvii.nested.CoordinateTabFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        FragmentManager fragmentManager;
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        if (getActivity() instanceof NVActivity) {
            FragmentActivity activity = getActivity();
            if (activity == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.app.NVActivity");
            }
            getHeaderView().setMinimumHeight(((NVActivity) activity).getStatusBarOverlaySize() + getResources().getDimensionPixelSize(R.dimen.master_home_top_tab_height));
        }
        getBtnInterestPicker().setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.home.discover.DiscoverTabFragment.onViewCreated.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                LogEvent.clickBuilder(DiscoverTabFragment.this, ActSemantic.pageEnter).area("TopicPickerIcon").send();
                DiscoverTabFragment.this.startActivity(FragmentWrapperActivity.intent(AggregationTopicFragment.class));
            }
        });
        updateInterPicker();
        if (!isRootFragment() || (fragmentManager = getFragmentManager()) == null) {
            return;
        }
        MasterThemeFragment masterThemeFragmentAddMasterThemeFragment = MasterThemeExtensionKt.addMasterThemeFragment(fragmentManager);
        Bundle bundle2 = new Bundle();
        bundle2.putInt("overlayColor", Color.parseColor("#66000000"));
        masterThemeFragmentAddMasterThemeFragment.setArguments(bundle2);
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        MenuItem menuItemAdd;
        MenuItem icon;
        super.onCreateOptionsMenu(menu, menuInflater);
        if (menu == null || (menuItemAdd = menu.add(0, R.string.search, 0, R.string.search)) == null || (icon = menuItemAdd.setIcon(R.drawable.ic_explorer_search)) == null) {
            return;
        }
        icon.setShowAsAction(2);
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem != null && menuItem.getItemId() == R.string.search) {
            Intent intent = FragmentWrapperActivity.intent(GlobalSearchTabFragment.class);
            intent.putExtra("tab", "community");
            startActivity(intent);
            FragmentActivity activity = getActivity();
            if (activity == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            activity.overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.narvii.language.LanguageChangeListener
    public void onLanguageChanged(String str) {
        updateInterPicker();
    }

    public final void updateInterPicker() {
        ContentLanguageService contentLanguageService = this.languageService;
        if (contentLanguageService == null) {
            Intrinsics.throwUninitializedPropertyAccessException("languageService");
            throw null;
        }
        String requestPrefLanguageWithEnAsDefault = contentLanguageService.getRequestPrefLanguageWithEnAsDefault();
        Intrinsics.checkExpressionValueIsNotNull(requestPrefLanguageWithEnAsDefault, "languageService.getReque…LanguageWithEnAsDefault()");
        getBtnInterestPicker().setVisibility(StringsKt__StringsJVMKt.startsWith$default(requestPrefLanguageWithEnAsDefault, "en", false, 2, null) ? 0 : 4);
    }

    private final <T extends View> Lazy<T> bind(DiscoverTabFragment discoverTabFragment, final int i) {
        return LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, new Function0<T>() { // from class: com.narvii.master.home.discover.DiscoverTabFragment.bind.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Incorrect return type in method signature: ()TT; */
            @Override // kotlin.jvm.functions.Function0
            public final View invoke() {
                View view = DiscoverTabFragment.this.getView();
                View viewFindViewById = view != null ? view.findViewById(i) : null;
                if (viewFindViewById != null) {
                    return viewFindViewById;
                }
                throw new TypeCastException("null cannot be cast to non-null type T");
            }
        });
    }

    @Override // com.narvii.nested.CoordinateTabFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        unregisterLocalReceiver(this.receiver);
    }

    @Override // com.narvii.nested.CoordinateTabFragment
    protected NVScrollablePagerAdapter createAdapter() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new Triple(Integer.valueOf(R.string.for_you), DiscoverFragment.class, new Bundle()));
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(Integer.valueOf(((Number) ((Triple) it.next()).getFirst()).intValue()));
        }
        ArrayList arrayList3 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10));
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            arrayList3.add((Class) ((Triple) it2.next()).getSecond());
        }
        ArrayList arrayList4 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10));
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            arrayList4.add((Bundle) ((Triple) it3.next()).getThird());
        }
        return CoordinateTabFragment.getBaseAdapter$default(this, arrayList2, arrayList3, arrayList4, null, 8, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.narvii.nested.CoordinateTabFragment
    public void onSubFragmentCreated(Fragment f, int i) {
        Intrinsics.checkParameterIsNotNull(f, "f");
        super.onSubFragmentCreated(f, i);
        if ((f instanceof CommentSheetDisplayHost) && (getParentFragment() instanceof MasterTabFragment)) {
            CommentSheetDisplayHost commentSheetDisplayHost = (CommentSheetDisplayHost) f;
            Fragment parentFragment = getParentFragment();
            if (parentFragment == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.master.MasterTabFragment");
            }
            commentSheetDisplayHost.setBottomSheetLayout(((MasterTabFragment) parentFragment).bottomSheetLayout);
        }
    }

    @Override // com.narvii.nested.CoordinateTabFragment
    public View getTabView(int i, String str) {
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.tab_layout_item_base, (ViewGroup) null);
        View viewFindViewById = viewInflate.findViewById(R.id.tab_title);
        if (viewFindViewById == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.TextView");
        }
        ((TextView) viewFindViewById).setText(str);
        return viewInflate;
    }

    @Override // com.narvii.nested.CoordinateTabFragment
    public UpdateTabViewDelegate createUpdateTabViewDelegate() {
        return new ScrollTabViewDelegate();
    }

    @Override // com.narvii.nested.CoordinateTabFragment
    public void onAppBarLayoutOffsetChanged(NVAppBarLayout nVAppBarLayout, int i) {
        super.onAppBarLayoutOffsetChanged(nVAppBarLayout, i);
        if (nVAppBarLayout == null) {
            return;
        }
        nVAppBarLayout.setAlpha((((nVAppBarLayout.getHeight() - getHeaderView().getMinimumHeight()) + nVAppBarLayout.getTop()) * 1.0f) / (nVAppBarLayout.getHeight() - getHeaderView().getMinimumHeight()));
    }

    @Override // com.narvii.nested.CoordinateTabFragment, com.narvii.app.FragmentOnBackListener
    public boolean onBackPressed(NVActivity nVActivity) {
        FragmentManager childFragmentManager = getChildFragmentManager();
        Intrinsics.checkExpressionValueIsNotNull(childFragmentManager, "childFragmentManager");
        Fragment fragmentFindFragmentById = childFragmentManager.findFragmentById(R.id.story_list_frame);
        if (!(fragmentFindFragmentById instanceof StoryListFragment)) {
            return false;
        }
        ((StoryListFragment) fragmentFindFragmentById).onBackPressed(nVActivity);
        return true;
    }

    @Override // com.narvii.master.MasterTopBarAvailable
    public boolean isTopBarAvailable() {
        return this.showMasterTopBar;
    }

    @Override // com.narvii.nested.CoordinateTabFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void setUserVisibleHint(boolean z) {
        if (this.storyListShowing) {
            FragmentManager childFragmentManager = getChildFragmentManager();
            Intrinsics.checkExpressionValueIsNotNull(childFragmentManager, "childFragmentManager");
            Fragment fragmentFindFragmentById = childFragmentManager.findFragmentById(R.id.story_list_frame);
            if (fragmentFindFragmentById instanceof StoryListFragment) {
                ((StoryListFragment) fragmentFindFragmentById).setUserVisibleHint(z);
                return;
            }
            return;
        }
        super.setUserVisibleHint(z);
    }

    @Override // com.narvii.story.StoryListVisibleChangeListener
    public void onStoryListShown() throws Resources.NotFoundException {
        setUserVisibleHint(false);
        Log.i("setUserVisibleHint onStoryListShown ");
        updateMasterTopBar(false);
        this.storyListShowing = true;
        setEnableSwipeRefreshLayout(false);
    }

    @Override // com.narvii.story.StoryListVisibleChangeListener
    public void onStoryListDismissed() throws Resources.NotFoundException {
        this.storyListShowing = false;
        updateMasterTopBar(true);
        setUserVisibleHint(true);
        updateMasterBottomBar(false);
        setEnableSwipeRefreshLayout(true);
        FragmentManager childFragmentManager = getChildFragmentManager();
        Intrinsics.checkExpressionValueIsNotNull(childFragmentManager, "childFragmentManager");
        for (Fragment fragment : childFragmentManager.getFragments()) {
            if (fragment instanceof DiscoverFragment) {
                ((DiscoverFragment) fragment).cleanDataSourceInterceptor();
            }
        }
    }

    public void updateMasterBottomBar(boolean z) {
        this.isBottomOverlay = z;
        if (getParentFragment() instanceof MasterTabFragment) {
            Fragment parentFragment = getParentFragment();
            if (parentFragment == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.master.MasterTabFragment");
            }
            ((MasterTabFragment) parentFragment).setBottomTabOverlay(z);
        }
    }

    private final void updateMasterTopBar(boolean z) throws Resources.NotFoundException {
        this.showMasterTopBar = z;
        if (getParentFragment() instanceof MasterTabFragment) {
            Fragment parentFragment = getParentFragment();
            if (parentFragment == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.master.MasterTabFragment");
            }
            ((MasterTabFragment) parentFragment).updateTopbar();
        }
    }

    public final boolean storyListShowing() {
        return this.storyListShowing;
    }

    private final void updateHeaderView() {
        if (this.isImmersiveHeader) {
            getHeaderView().setVisibility(8);
            getHeaderGradientView().setVisibility(0);
        } else {
            getHeaderView().setVisibility(0);
            getHeaderGradientView().setVisibility(8);
        }
    }

    public final void updateImmersiveHeader(boolean z) {
        if (z) {
            getHeaderGradientView().setBackgroundResource(R.drawable.global_top_gradient_placeholder);
        } else {
            getHeaderGradientView().setBackground(new ColorDrawable((int) 4279438915L));
        }
    }

    public final int getImmersiveHeaderHeight() {
        return getHeaderGradientView().getHeight();
    }
}
