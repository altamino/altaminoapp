package com.narvii.master.home.discover;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.IdRes;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.ComScoreSectionDispatcher;
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
import com.narvii.master.search.SearchPrefsHelper;
import com.narvii.master.theme.MasterThemeExtensionKt;
import com.narvii.master.theme.MasterThemeFragment;
import com.narvii.nested.CoordinateTabFragment;
import com.narvii.nested.NVAppBarLayout;
import com.narvii.nested.tab.ScrollTabViewDelegate;
import com.narvii.nested.tab.UpdateTabViewDelegate;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.topic.picker.AggregationTopicFragment;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.collections.w;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.m;
import w7.o;
import w7.q;
import w7.z;

/* JADX INFO: loaded from: classes.dex */
public final class DiscoverTabFragment extends CoordinateTabFragment implements NotificationListener, MasterTopBarAvailable, LanguageChangeListener {
    public AccountService accountService;
    private boolean isBottomOverlay;
    private boolean isImmersiveHeader;
    public ContentLanguageService languageService;
    private boolean storyListShowing;

    @NotNull
    private final m headerView$delegate = bind(this, R.id.coordinate_top_content);

    @NotNull
    private final m headerGradientView$delegate = bind(this, R.id.gradient_top_content);
    private boolean showMasterTopBar = true;

    @NotNull
    private final m btnInterestPicker$delegate = bind(this, R.id.picker);

    @NotNull
    private final DiscoverTabFragment$receiver$1 receiver = new BroadcastReceiver() { // from class: com.narvii.master.home.discover.DiscoverTabFragment$receiver$1
        @Override // android.content.BroadcastReceiver
        public void onReceive(@NotNull Context context, @NotNull Intent intent) {
            t.j(context, "context");
            t.j(intent, "intent");
            if (this.this$0.isAdded() && t.e(AccountService.ACTION_ACCOUNT_CHANGED, intent.getAction())) {
                this.this$0.resetAdapter();
            }
        }
    };

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: com.narvii.master.home.discover.DiscoverTabFragment$bind$1, reason: invalid class name */
    static final class AnonymousClass1<T> extends v implements e8.a<T> {
        final /* synthetic */ int $res;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(int i10) {
            super(0);
            this.$res = i10;
        }

        /* JADX WARN: Incorrect return type in method signature: ()TT; */
        @Override // e8.a
        @NotNull
        public final View invoke() {
            View view = DiscoverTabFragment.this.getView();
            View viewFindViewById = view != null ? view.findViewById(this.$res) : null;
            t.h(viewFindViewById, "null cannot be cast to non-null type T of com.narvii.master.home.discover.DiscoverTabFragment.bind");
            return viewFindViewById;
        }
    }

    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131951629;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @Nullable
    public String getPageName() {
        return "story_discover";
    }

    public final boolean getShowMasterTopBar() {
        return this.showMasterTopBar;
    }

    public final boolean getStoryListShowing() {
        return this.storyListShowing;
    }

    public final boolean isBottomOverlay() {
        return this.isBottomOverlay;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isGlobal() {
        return true;
    }

    public final boolean isImmersiveHeader() {
        return this.isImmersiveHeader;
    }

    @Override // com.narvii.master.MasterTopBarAvailable
    public boolean isTopBarAvailable() {
        return this.showMasterTopBar;
    }

    @Override // com.narvii.nested.CoordinateTabFragment, com.narvii.app.FragmentOnBackListener
    public boolean onBackPressed(@Nullable NVActivity nVActivity) {
        return false;
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(@Nullable Notification notification) {
    }

    public final void setAccountService(@NotNull AccountService accountService) {
        t.j(accountService, "<set-?>");
        this.accountService = accountService;
    }

    public final void setBottomOverlay(boolean z6) {
        this.isBottomOverlay = z6;
    }

    public final void setLanguageService(@NotNull ContentLanguageService contentLanguageService) {
        t.j(contentLanguageService, "<set-?>");
        this.languageService = contentLanguageService;
    }

    public final void setShowMasterTopBar(boolean z6) {
        this.showMasterTopBar = z6;
    }

    public final void setStoryListShowing(boolean z6) {
        this.storyListShowing = z6;
    }

    public final boolean storyListShowing() {
        return this.storyListShowing;
    }

    private final <T extends View> m<T> bind(DiscoverTabFragment discoverTabFragment, @IdRes int i10) {
        return o.b(q.NONE, discoverTabFragment.new AnonymousClass1(i10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$0(DiscoverTabFragment this$0, View view) {
        t.j(this$0, "this$0");
        LogEvent.clickBuilder(this$0, ActSemantic.pageEnter).area("TopicPickerIcon").send();
        safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this$0, FragmentWrapperActivity.intent(AggregationTopicFragment.class));
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

    private final void updateMasterTopBar(boolean z6) {
        this.showMasterTopBar = z6;
        if (getParentFragment() instanceof MasterTabFragment) {
            Fragment parentFragment = getParentFragment();
            t.h(parentFragment, "null cannot be cast to non-null type com.narvii.master.MasterTabFragment");
            ((MasterTabFragment) parentFragment).updateTopbar();
        }
    }

    @Override // com.narvii.nested.CoordinateTabFragment
    @NotNull
    protected NVScrollablePagerAdapter createAdapter() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new z(Integer.valueOf(R.string.for_you), DiscoverFragment.class, new Bundle()));
        ArrayList arrayList2 = new ArrayList(w.x(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(Integer.valueOf(((Number) ((z) it.next()).d()).intValue()));
        }
        ArrayList arrayList3 = new ArrayList(w.x(arrayList, 10));
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            arrayList3.add((Class) ((z) it2.next()).e());
        }
        ArrayList arrayList4 = new ArrayList(w.x(arrayList, 10));
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            arrayList4.add((Bundle) ((z) it3.next()).f());
        }
        return CoordinateTabFragment.getBaseAdapter$default(this, arrayList2, arrayList3, arrayList4, null, 8, null);
    }

    @Override // com.narvii.nested.CoordinateTabFragment
    @Nullable
    public UpdateTabViewDelegate createUpdateTabViewDelegate() {
        return new ScrollTabViewDelegate();
    }

    @NotNull
    public final AccountService getAccountService() {
        AccountService accountService = this.accountService;
        if (accountService != null) {
            return accountService;
        }
        t.B("accountService");
        return null;
    }

    @NotNull
    public final View getBtnInterestPicker() {
        return (View) this.btnInterestPicker$delegate.getValue();
    }

    @NotNull
    public final View getHeaderGradientView() {
        return (View) this.headerGradientView$delegate.getValue();
    }

    @NotNull
    public final View getHeaderView() {
        return (View) this.headerView$delegate.getValue();
    }

    @NotNull
    public final ContentLanguageService getLanguageService() {
        ContentLanguageService contentLanguageService = this.languageService;
        if (contentLanguageService != null) {
            return contentLanguageService;
        }
        t.B("languageService");
        return null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(@NotNull Menu menu, @NotNull MenuInflater inflater) {
        MenuItem icon;
        t.j(menu, "menu");
        t.j(inflater, "inflater");
        super.onCreateOptionsMenu(menu, inflater);
        MenuItem menuItemAdd = menu.add(0, R.string.search, 0, R.string.search);
        if (menuItemAdd == null || (icon = menuItemAdd.setIcon(R.drawable.ic_explorer_search)) == null) {
            return;
        }
        icon.setShowAsAction(2);
    }

    @Override // com.narvii.nested.CoordinateTabFragment, androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        t.j(inflater, "inflater");
        return inflater.inflate(R.layout.fragment_discover_tab, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(@NotNull MenuItem item) {
        t.j(item, "item");
        if (item.getItemId() == R.string.search) {
            Intent intent = FragmentWrapperActivity.intent(GlobalSearchTabFragment.class);
            intent.putExtra("tab", SearchPrefsHelper.PREFS_KEY_COMMUNITY);
            safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent);
            requireActivity().overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
        }
        return super.onOptionsItemSelected(item);
    }

    @Override // com.narvii.nested.CoordinateTabFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(@NotNull Bundle outState) {
        t.j(outState, "outState");
        super.onSaveInstanceState(outState);
        outState.putBoolean("showMasterTopBar", this.showMasterTopBar);
        outState.putBoolean("isBottomOverlay", this.isBottomOverlay);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.narvii.nested.CoordinateTabFragment
    public void onSubFragmentCreated(@NotNull Fragment f, int i10) {
        t.j(f, "f");
        super.onSubFragmentCreated(f, i10);
        if ((f instanceof CommentSheetDisplayHost) && (getParentFragment() instanceof MasterTabFragment)) {
            Fragment parentFragment = getParentFragment();
            t.h(parentFragment, "null cannot be cast to non-null type com.narvii.master.MasterTabFragment");
            ((CommentSheetDisplayHost) f).setBottomSheetLayout(((MasterTabFragment) parentFragment).bottomSheetLayout);
        }
    }

    @Override // com.narvii.nested.CoordinateTabFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        FragmentManager fragmentManager;
        t.j(view, "view");
        super.onViewCreated(view, bundle);
        if (getActivity() instanceof NVActivity) {
            FragmentActivity activity = getActivity();
            t.h(activity, "null cannot be cast to non-null type com.narvii.app.NVActivity");
            getHeaderView().setMinimumHeight(((NVActivity) activity).getStatusBarOverlaySize() + getResources().getDimensionPixelSize(R.dimen.master_home_top_tab_height));
        }
        getBtnInterestPicker().setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.home.discover.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                DiscoverTabFragment.onViewCreated$lambda$0(this.f2309a, view2);
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

    public final void setImmersiveHeader(boolean z6) {
        this.isImmersiveHeader = z6;
        updateHeaderView();
    }

    @Override // com.narvii.nested.CoordinateTabFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z6) {
        if (!this.storyListShowing) {
            super.setUserVisibleHint(z6);
            return;
        }
        FragmentManager childFragmentManager = getChildFragmentManager();
        t.i(childFragmentManager, "getChildFragmentManager(...)");
        childFragmentManager.l0(R.id.story_list_frame);
    }

    public final void updateImmersiveHeader(boolean z6) {
        if (z6) {
            getHeaderGradientView().setBackgroundResource(R.drawable.global_top_gradient_placeholder);
        } else {
            getHeaderGradientView().setBackground(new ColorDrawable(-15528381));
        }
    }

    public void updateMasterBottomBar(boolean z6) {
        this.isBottomOverlay = z6;
        if (getParentFragment() instanceof MasterTabFragment) {
            Fragment parentFragment = getParentFragment();
            t.h(parentFragment, "null cannot be cast to non-null type com.narvii.master.MasterTabFragment");
            ((MasterTabFragment) parentFragment).setBottomTabOverlay(z6);
        }
    }

    public final int getImmersiveHeaderHeight() {
        return getHeaderGradientView().getHeight();
    }

    @Override // com.narvii.nested.CoordinateTabFragment
    @Nullable
    public View getTabView(int i10, @Nullable String str) {
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.tab_layout_item_base, (ViewGroup) null);
        View viewFindViewById = viewInflate.findViewById(R.id.tab_title);
        t.h(viewFindViewById, "null cannot be cast to non-null type android.widget.TextView");
        ((TextView) viewFindViewById).setText(str);
        return viewInflate;
    }

    @Override // com.narvii.nested.CoordinateTabFragment
    public void onAppBarLayoutOffsetChanged(@Nullable NVAppBarLayout nVAppBarLayout, int i10) {
        super.onAppBarLayoutOffsetChanged(nVAppBarLayout, i10);
        if (nVAppBarLayout == null) {
            return;
        }
        nVAppBarLayout.setAlpha((((nVAppBarLayout.getHeight() - getHeaderView().getMinimumHeight()) + nVAppBarLayout.getTop()) * 1.0f) / (nVAppBarLayout.getHeight() - getHeaderView().getMinimumHeight()));
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        ComScoreSectionDispatcher.INSTANCE.sectionChangeToExplore();
        Object service = getService("account");
        t.i(service, "getService(...)");
        setAccountService((AccountService) service);
        Object service2 = getService("content_language");
        t.i(service2, "getService(...)");
        setLanguageService((ContentLanguageService) service2);
        registerLocalReceiver(this.receiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
        if (bundle != null) {
            this.showMasterTopBar = bundle.getBoolean("showMasterTopBar");
            this.isBottomOverlay = bundle.getBoolean("isBottomOverlay");
        }
        setHasOptionsMenu(true);
        setTitle(R.string.discover);
    }

    @Override // com.narvii.nested.CoordinateTabFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        unregisterLocalReceiver(this.receiver);
    }

    @Override // com.narvii.language.LanguageChangeListener
    public void onLanguageChanged(@Nullable String str) {
        updateInterPicker();
    }

    public final void setStoreBadged() {
        MasterTabFragment masterTabFragment;
        Fragment parentFragment = getParentFragment();
        if (parentFragment != null) {
            if (parentFragment instanceof MasterTabFragment) {
                masterTabFragment = (MasterTabFragment) parentFragment;
            } else {
                masterTabFragment = null;
            }
            if (masterTabFragment != null) {
                masterTabFragment.setStoreBadged();
            }
        }
    }

    public final void setTopBarElementsVisibility(int i10, boolean z6) {
        if (getParentFragment() instanceof MasterTabFragment) {
            Fragment parentFragment = getParentFragment();
            t.h(parentFragment, "null cannot be cast to non-null type com.narvii.master.MasterTabFragment");
            ((MasterTabFragment) parentFragment).setTopBarElementsVisibility(i10, z6);
        }
    }

    public final void updateInterPicker() {
        String requestPrefLanguageWithEnAsDefault = getLanguageService().getRequestPrefLanguageWithEnAsDefault();
        t.i(requestPrefLanguageWithEnAsDefault, "getRequestPrefLanguageWithEnAsDefault(...)");
        int i10 = 0;
        boolean zK = kotlin.text.t.K(requestPrefLanguageWithEnAsDefault, "en", false, 2, null);
        View btnInterestPicker = getBtnInterestPicker();
        if (!zK) {
            i10 = 4;
        }
        btnInterestPicker.setVisibility(i10);
    }
}
