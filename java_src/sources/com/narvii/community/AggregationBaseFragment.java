package com.narvii.community;

import android.content.Intent;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.LruCache;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentTransaction;
import androidx.viewbinding.ViewBinding;
import com.narvii.amino.databinding.AlertsLeftNavTopBinding;
import com.narvii.amino.databinding.FragmentAggrefationBaseBinding;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVPagedAdapter;
import com.narvii.master.CommunityListResponse;
import com.narvii.master.home.discover.DiscoverTabFragment;
import com.narvii.master.search.SearchPrefsHelper;
import com.narvii.model.Community;
import com.narvii.util.FragmentExtensionsKt;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.widget.CommunityIconView;
import com.narvii.widget.NVImageView;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.g0;
import kotlin.jvm.internal.q0;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public abstract class AggregationBaseFragment extends NVFragment implements MyCommunityListService.MyCommunityListObserver {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {q0.g(new g0(AggregationBaseFragment.class, "binding", "getBinding()Lcom/narvii/amino/databinding/FragmentAggrefationBaseBinding;", 0))};

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final long REFRESH_COMMUNITY_LIST_DURATION;
    private static final long REMINDER_CHECK_DURATION;

    @Nullable
    private CommunityListAdapter communityListAdapter;

    @NotNull
    private final LruCache<Integer, NVFragment> fragments;

    @Nullable
    private ViewBinding leftBinding;
    public MyCommunityListService myCommunityService;

    @NotNull
    private final HashMap<Integer, NVFragment> otherFragments;

    @NotNull
    private final kotlin.properties.d binding$delegate = FragmentExtensionsKt.viewBinding(this, AggregationBaseFragment$binding$2.INSTANCE);
    private int selectedNdcId = Integer.MIN_VALUE;

    public final class CommunityListAdapter extends NVAdapter {
        final /* synthetic */ AggregationBaseFragment this$0;

        public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 4;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean hasStableIds() {
            return true;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CommunityListAdapter(@NotNull AggregationBaseFragment aggregationBaseFragment, NVContext ctx) {
            super(ctx);
            kotlin.jvm.internal.t.j(ctx, "ctx");
            this.this$0 = aggregationBaseFragment;
            setDarkTheme(true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void createErrorItem$lambda$0(CommunityListAdapter this$0, View view) {
            kotlin.jvm.internal.t.j(this$0, "this$0");
            this$0.onErrorRetry();
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.this$0.getMyCommunityService().list().size() + 1;
        }

        @Override // android.widget.Adapter
        @NotNull
        public Object getItem(int i10) {
            Object obj;
            List<Community> list = this.this$0.getMyCommunityService().list();
            if (i10 < list.size()) {
                obj = list.get(i10);
            } else if (this.this$0.getMyCommunityService().isEnd()) {
                obj = NVPagedAdapter.LIST_END;
            } else {
                obj = this.this$0.getMyCommunityService().errorMessage() == null ? NVPagedAdapter.LOADING : NVPagedAdapter.ERROR;
            }
            kotlin.jvm.internal.t.g(obj);
            return obj;
        }

        @Override // com.narvii.list.NVAdapter
        public boolean isListShown() {
            return this.this$0.getMyCommunityService().isEnd() || this.this$0.getMyCommunityService().list().size() > 0;
        }

        @Override // com.narvii.list.NVAdapter
        public void onErrorRetry() {
            this.this$0.getMyCommunityService().retryRetry();
        }

        public final void updateRemindersInCell(@NotNull View cell, @Nullable Community community, boolean z6) {
            kotlin.jvm.internal.t.j(cell, "cell");
            int badgeCount = this.this$0.getBadgeCount(community);
            boolean zIsEquals = Utils.isEquals(cell.getTag(), community);
            View viewFindViewById = cell.findViewById(R.id.notification_count);
            if (viewFindViewById != null) {
                if (viewFindViewById instanceof TextView) {
                    ((TextView) viewFindViewById).setText(badgeCount > 9 ? "9+" : String.valueOf(badgeCount));
                }
                if (!zIsEquals) {
                    viewFindViewById.clearAnimation();
                }
                if (badgeCount > 0) {
                    if (zIsEquals && viewFindViewById.getVisibility() != 0) {
                        viewFindViewById.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.fade_in));
                    }
                    viewFindViewById.setVisibility(0);
                } else {
                    if (zIsEquals && viewFindViewById.getVisibility() == 0) {
                        viewFindViewById.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.fade_out_fast));
                    }
                    viewFindViewById.setVisibility(8);
                }
            }
            this.this$0.addReminderRequest(z6, community, community == null ? null : this.this$0.getMyCommunityService().getReminder(community.id));
        }

        @Override // com.narvii.list.NVAdapter
        @NotNull
        public View createErrorItem(@Nullable ViewGroup viewGroup, @Nullable View view, @Nullable String str) {
            View viewCreateErrorItem = super.createErrorItem(viewGroup, view, str);
            viewCreateErrorItem.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.community.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    AggregationBaseFragment.CommunityListAdapter.createErrorItem$lambda$0(this.f2224a, view2);
                }
            });
            kotlin.jvm.internal.t.g(viewCreateErrorItem);
            return viewCreateErrorItem;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return getItem(i10).hashCode();
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i10) {
            Object item = getItem(i10);
            if (item instanceof Community) {
                return 0;
            }
            if (item == NVPagedAdapter.LIST_END) {
                return 1;
            }
            if (item == NVPagedAdapter.LOADING) {
                return 2;
            }
            if (item == NVPagedAdapter.ERROR) {
                return 3;
            }
            return -1;
        }

        @Override // android.widget.Adapter
        @NotNull
        public View getView(int i10, @Nullable View view, @Nullable ViewGroup viewGroup) {
            int i11;
            Object item = getItem(i10);
            boolean z6 = true;
            if (item instanceof Community) {
                View viewCreateView = createView(R.layout.drawer_my_community_item, viewGroup, view, SearchPrefsHelper.PREFS_KEY_COMMUNITY);
                ImageView imageView = (ImageView) viewCreateView.findViewById(R.id.icon);
                if (imageView instanceof CommunityIconView) {
                    ((CommunityIconView) imageView).setCommunity((Community) item);
                } else if (imageView instanceof NVImageView) {
                    ((NVImageView) imageView).setImageUrl(((Community) item).icon);
                }
                kotlin.jvm.internal.t.g(viewCreateView);
                Community community = (Community) item;
                updateRemindersInCell(viewCreateView, community, true);
                View viewFindViewById = viewCreateView.findViewById(R.id.current_community_indicator);
                int color = 0;
                if (this.this$0.getSelectedNdcId() != community.id) {
                    z6 = false;
                }
                if (z6) {
                    i11 = 0;
                } else {
                    i11 = 8;
                }
                viewFindViewById.setVisibility(i11);
                if (z6) {
                    color = ContextCompat.getColor(this.context.getContext(), R.color.aggregation_content_bg_color);
                }
                viewCreateView.setBackgroundColor(color);
                viewCreateView.setOnClickListener(this.subviewClickListener);
                return viewCreateView;
            }
            if (item == NVPagedAdapter.LIST_END) {
                View viewCreateView2 = createView(R.layout.drawer_my_community_join_item, viewGroup, view);
                viewCreateView2.setOnClickListener(this.subviewClickListener);
                kotlin.jvm.internal.t.g(viewCreateView2);
                return viewCreateView2;
            }
            if (item == NVPagedAdapter.LOADING) {
                View viewCreateView3 = createView(R.layout.incubator_my_community_loading_item, viewGroup, view);
                this.this$0.getMyCommunityService().loadNextPage(true);
                kotlin.jvm.internal.t.g(viewCreateView3);
                return viewCreateView3;
            }
            return createErrorItem(viewGroup, view, this.this$0.getMyCommunityService().errorMessage());
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i10) {
            if (getItem(i10) == NVPagedAdapter.LOADING) {
                return false;
            }
            return super.isEnabled(i10);
        }

        @Override // com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
            if (!isListShown()) {
                this.this$0.getMyCommunityService().loadNextPage(true);
            } else if (this.this$0.getMyCommunityService().getCommunityRequestTime() < SystemClock.elapsedRealtime() - AggregationBaseFragment.Companion.getREFRESH_COMMUNITY_LIST_DURATION()) {
                this.this$0.getMyCommunityService().refresh(256, null);
            }
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(@Nullable ListAdapter listAdapter, int i10, @Nullable Object obj, @Nullable View view, @Nullable View view2) {
            Object item = getItem(i10);
            if (item instanceof Community) {
                Community community = (Community) item;
                this.this$0.onItemSelected(community.id, community);
            } else if (kotlin.jvm.internal.t.e(item, NVPagedAdapter.LIST_END)) {
                Intent intent = FragmentWrapperActivity.intent(DiscoverTabFragment.class);
                intent.putExtra("__communityId", 0);
                safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
                return true;
            }
            return super.onItemClick(listAdapter, i10, obj, view, view2);
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }

        public final long getREFRESH_COMMUNITY_LIST_DURATION() {
            return AggregationBaseFragment.REFRESH_COMMUNITY_LIST_DURATION;
        }

        public final long getREMINDER_CHECK_DURATION() {
            return AggregationBaseFragment.REMINDER_CHECK_DURATION;
        }
    }

    static {
        boolean z6 = NVApplication.DEBUG;
        REFRESH_COMMUNITY_LIST_DURATION = z6 ? 60000 : 300000;
        REMINDER_CHECK_DURATION = z6 ? 60000 : 300000;
    }

    public void addReminderRequest(boolean z6, @Nullable Community community, @Nullable ReminderCheck reminderCheck) {
    }

    @NotNull
    public abstract NVFragment createNewFragment(int i10);

    public abstract int getBadgeCount(@Nullable Community community);

    @Nullable
    public CommunityListAdapter getCommunityListAdapter() {
        return this.communityListAdapter;
    }

    public abstract int getFallbackIndexWhenCurrentLeave(int i10);

    @Nullable
    public abstract Bundle getFragmentArguments(int i10, @Nullable Community community);

    @NotNull
    public final LruCache<Integer, NVFragment> getFragments() {
        return this.fragments;
    }

    public final int getLRUMaxSize() {
        return 10;
    }

    public abstract void getLeftBinding(@NotNull ViewBinding viewBinding);

    public abstract int getLeftNavTopLayoutId();

    @NotNull
    public HashMap<Integer, NVFragment> getOtherFragments() {
        return this.otherFragments;
    }

    public final int getSelectedNdcId() {
        return this.selectedNdcId;
    }

    public final void onItemSelected(int i10) {
        if (i10 <= 0) {
            onItemSelected(i10, null);
            return;
        }
        List<Community> list = getMyCommunityService().list();
        int iIndexOfId = Utils.indexOfId(list, String.valueOf(i10));
        if (iIndexOfId <= -1) {
            onItemSelected(i10, null);
            return;
        }
        Community community = list.get(iIndexOfId);
        kotlin.jvm.internal.t.i(community, "get(...)");
        onItemSelected(i10, community);
    }

    @Override // com.narvii.community.MyCommunityListService.MyCommunityListObserver
    public void onSuggestListChanged(@Nullable MyCommunityListService myCommunityListService, @Nullable CommunityListResponse communityListResponse) {
    }

    public void setCommunityListAdapter(@Nullable CommunityListAdapter communityListAdapter) {
        this.communityListAdapter = communityListAdapter;
    }

    public final void setMyCommunityService(@NotNull MyCommunityListService myCommunityListService) {
        kotlin.jvm.internal.t.j(myCommunityListService, "<set-?>");
        this.myCommunityService = myCommunityListService;
    }

    public final void setSelectedNdcId(int i10) {
        this.selectedNdcId = i10;
    }

    private final FragmentAggrefationBaseBinding getBinding() {
        return (FragmentAggrefationBaseBinding) this.binding$delegate.getValue(this, $$delegatedProperties[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void removeUnusedFragment$lambda$1(AggregationBaseFragment this$0) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        this$0.onItemSelected(this$0.getFallbackIndexWhenCurrentLeave(this$0.selectedNdcId));
    }

    @NotNull
    public final MyCommunityListService getMyCommunityService() {
        MyCommunityListService myCommunityListService = this.myCommunityService;
        if (myCommunityListService != null) {
            return myCommunityListService;
        }
        kotlin.jvm.internal.t.B("myCommunityService");
        return null;
    }

    @Nullable
    protected final Community getSimpleCommunity(@Nullable Community community) {
        if (community == null) {
            return null;
        }
        Community community2 = new Community();
        community2.id = community.id;
        community2.icon = community.icon;
        community2.name = community.name;
        community2.endpoint = community.endpoint;
        return community2;
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        kotlin.jvm.internal.t.j(inflater, "inflater");
        return getBinding().getRoot();
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        kotlin.jvm.internal.t.j(view, "view");
        super.onViewCreated(view, bundle);
        int leftNavTopLayoutId = getLeftNavTopLayoutId();
        setCommunityListAdapter(new CommunityListAdapter(this, this));
        getBinding().communityList.setAdapter((ListAdapter) getCommunityListAdapter());
        getMyCommunityService().addObserver(this);
        CommunityListAdapter communityListAdapter = getCommunityListAdapter();
        if (communityListAdapter != null) {
            communityListAdapter.onAttach();
        }
        if (leftNavTopLayoutId != 0) {
            View viewInflate = LayoutInflater.from(getContext()).inflate(leftNavTopLayoutId, (ViewGroup) getBinding().leftNavContainer, false);
            if (leftNavTopLayoutId == R.layout.alerts_left_nav_top) {
                AlertsLeftNavTopBinding alertsLeftNavTopBindingInflate = AlertsLeftNavTopBinding.inflate(LayoutInflater.from(getContext()), getBinding().leftNavContainer, false);
                this.leftBinding = alertsLeftNavTopBindingInflate;
                if (alertsLeftNavTopBindingInflate != null) {
                    getLeftBinding(alertsLeftNavTopBindingInflate);
                }
            }
            getBinding().leftNavContainer.addView(viewInflate, 0);
        }
    }

    public AggregationBaseFragment() {
        final int lRUMaxSize = getLRUMaxSize();
        this.fragments = new LruCache<Integer, NVFragment>(lRUMaxSize) { // from class: com.narvii.community.AggregationBaseFragment$fragments$1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.util.LruCache
            public void entryRemoved(boolean z6, @Nullable Integer num, @Nullable NVFragment nVFragment, @Nullable NVFragment nVFragment2) {
                super.entryRemoved(z6, num, nVFragment, nVFragment2);
                if (!z6 || num == null) {
                    return;
                }
                this.this$0.removeCommunityFragment(nVFragment);
            }
        };
        this.otherFragments = new HashMap<>();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void removeCommunityFragment(NVFragment nVFragment) {
        FragmentTransaction fragmentTransactionQ = getChildFragmentManager().q();
        kotlin.jvm.internal.t.i(fragmentTransactionQ, "beginTransaction(...)");
        if (nVFragment != null) {
            fragmentTransactionQ.t(nVFragment).k();
        }
    }

    private final void removeUnusedFragment() {
        if (getMyCommunityService().list() != null) {
            ArrayList<Integer> arrayList = new ArrayList();
            Map<Integer, NVFragment> mapSnapshot = this.fragments.snapshot();
            kotlin.jvm.internal.t.i(mapSnapshot, "snapshot(...)");
            for (Map.Entry<Integer, NVFragment> entry : mapSnapshot.entrySet()) {
                Integer key = entry.getKey();
                entry.getValue();
                if (key == null || key.intValue() != 0) {
                    if (!Utils.containsId(getMyCommunityService().list(), String.valueOf(key))) {
                        arrayList.add(key);
                    }
                }
            }
            FragmentTransaction fragmentTransactionQ = getChildFragmentManager().q();
            kotlin.jvm.internal.t.i(fragmentTransactionQ, "beginTransaction(...)");
            for (Integer num : arrayList) {
                int i10 = this.selectedNdcId;
                if (num != null && num.intValue() == i10) {
                    Utils.post(new Runnable() { // from class: com.narvii.community.a
                        @Override // java.lang.Runnable
                        public final void run() {
                            AggregationBaseFragment.removeUnusedFragment$lambda$1(this.f2222a);
                        }
                    });
                } else {
                    NVFragment nVFragment = this.fragments.get(num);
                    if (nVFragment != null) {
                        fragmentTransactionQ.t(nVFragment);
                    }
                    this.fragments.remove(num);
                }
            }
            fragmentTransactionQ.k();
        }
    }

    @NotNull
    public final FragmentAggrefationBaseBinding getBaseBinding() {
        FragmentAggrefationBaseBinding binding = getBinding();
        kotlin.jvm.internal.t.i(binding, "<get-binding>(...)");
        return binding;
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        Object service = getService("myCommunityList");
        kotlin.jvm.internal.t.i(service, "getService(...)");
        setMyCommunityService((MyCommunityListService) service);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        getMyCommunityService().removeObserver(this);
    }

    @Override // com.narvii.community.MyCommunityListService.MyCommunityListObserver
    public void onListChanged(@Nullable MyCommunityListService myCommunityListService, @Nullable MyCommunityListResponse myCommunityListResponse, @Nullable Integer num) {
        CommunityListAdapter communityListAdapter = getCommunityListAdapter();
        if (communityListAdapter != null) {
            communityListAdapter.notifyDataSetChanged();
        }
        removeUnusedFragment();
    }

    @Override // com.narvii.community.MyCommunityListService.MyCommunityListObserver
    public void onReminderChanged(@Nullable MyCommunityListService myCommunityListService) {
        CommunityListAdapter communityListAdapter = getCommunityListAdapter();
        if (communityListAdapter != null) {
            communityListAdapter.notifyDataSetChanged();
        }
    }

    @CallSuper
    public void updateLeftNav() {
        CommunityListAdapter communityListAdapter = getCommunityListAdapter();
        if (communityListAdapter != null) {
            communityListAdapter.notifyDataSetChanged();
        }
    }

    public final void onItemSelected(int i10, @Nullable Community community) {
        NVFragment nVFragmentCreateNewFragment;
        if (this.selectedNdcId == i10) {
            return;
        }
        if (i10 > 0 && community == null) {
            Log.e("no community");
        }
        this.selectedNdcId = i10;
        updateLeftNav();
        FragmentTransaction fragmentTransactionQ = getChildFragmentManager().q();
        kotlin.jvm.internal.t.i(fragmentTransactionQ, "beginTransaction(...)");
        if (i10 > 0) {
            nVFragmentCreateNewFragment = this.fragments.get(Integer.valueOf(i10));
        } else {
            nVFragmentCreateNewFragment = getOtherFragments().get(Integer.valueOf(i10));
        }
        if (nVFragmentCreateNewFragment == null) {
            nVFragmentCreateNewFragment = createNewFragment(i10);
            nVFragmentCreateNewFragment.setArguments(getFragmentArguments(i10, community));
            fragmentTransactionQ.b(R.id.content_frame, nVFragmentCreateNewFragment);
        }
        if (i10 > 0) {
            this.fragments.put(Integer.valueOf(i10), nVFragmentCreateNewFragment);
        } else {
            getOtherFragments().put(Integer.valueOf(i10), nVFragmentCreateNewFragment);
        }
        fragmentTransactionQ.E(nVFragmentCreateNewFragment);
        nVFragmentCreateNewFragment.setUserVisibleHint(true);
        for (Fragment fragment : getChildFragmentManager().B0()) {
            if (!kotlin.jvm.internal.t.e(fragment, nVFragmentCreateNewFragment) && !fragment.isHidden()) {
                fragmentTransactionQ.r(fragment);
                if (fragment instanceof NVFragment) {
                    ((NVFragment) fragment).setUserVisibleHint(false);
                }
            }
        }
        fragmentTransactionQ.m();
    }
}
