package com.narvii.community;

import android.content.Intent;
import android.os.Bundle;
import android.os.SystemClock;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.content.ContextCompat;
import android.util.LruCache;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.community.MyCommunityListService;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVPagedAdapter;
import com.narvii.master.CommunityListResponse;
import com.narvii.master.home.discover.DiscoverTabFragment;
import com.narvii.model.Community;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.widget.CommunityIconView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NVListView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AggregationBaseFragment.kt */
/* loaded from: classes2.dex */
public abstract class AggregationBaseFragment extends NVFragment implements MyCommunityListService.MyCommunityListObserver {
    public static final Companion Companion = new Companion(null);
    private static final long REFRESH_COMMUNITY_LIST_DURATION;
    private static final long REMINDER_CHECK_DURATION;
    private HashMap _$_findViewCache;
    private CommunityListAdapter communityListAdapter;
    private final LruCache<Integer, NVFragment> fragments;
    public MyCommunityListService myCommunityService;
    private final HashMap<Integer, NVFragment> otherFragments;
    private int selectedNdcId = Integer.MIN_VALUE;

    @Override // com.narvii.app.theme.NVThemeFragment
    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    @Override // com.narvii.app.theme.NVThemeFragment
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

    public void addReminderRequest(boolean z, Community community, ReminderCheck reminderCheck) {
    }

    public abstract NVFragment createNewFragment(int i);

    public abstract int getBadgeCount(Community community);

    public abstract int getFallbackIndexWhenCurrentLeave(int i);

    public abstract Bundle getFragmentArguments(int i, Community community);

    public final int getLRUMaxSize() {
        return 10;
    }

    public abstract int getLeftNavTopLayoutId();

    @Override // com.narvii.community.MyCommunityListService.MyCommunityListObserver
    public void onSuggestListChanged(MyCommunityListService myCommunityListService, CommunityListResponse communityListResponse) {
    }

    public AggregationBaseFragment() {
        final int lRUMaxSize = getLRUMaxSize();
        this.fragments = new LruCache<Integer, NVFragment>(lRUMaxSize) { // from class: com.narvii.community.AggregationBaseFragment$fragments$1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.util.LruCache
            public void entryRemoved(boolean z, Integer num, NVFragment nVFragment, NVFragment nVFragment2) {
                super.entryRemoved(z, (boolean) num, nVFragment, nVFragment2);
                if (!z || num == null) {
                    return;
                }
                this.this$0.removeCommunityFragment(nVFragment);
            }
        };
        this.otherFragments = new HashMap<>();
    }

    /* compiled from: AggregationBaseFragment.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final long getREFRESH_COMMUNITY_LIST_DURATION() {
            return AggregationBaseFragment.REFRESH_COMMUNITY_LIST_DURATION;
        }

        public final long getREMINDER_CHECK_DURATION() {
            return AggregationBaseFragment.REMINDER_CHECK_DURATION;
        }
    }

    static {
        REFRESH_COMMUNITY_LIST_DURATION = NVApplication.DEBUG ? 60000 : 300000;
        REMINDER_CHECK_DURATION = NVApplication.DEBUG ? 60000 : 300000;
    }

    public final MyCommunityListService getMyCommunityService() {
        MyCommunityListService myCommunityListService = this.myCommunityService;
        if (myCommunityListService != null) {
            return myCommunityListService;
        }
        Intrinsics.throwUninitializedPropertyAccessException("myCommunityService");
        throw null;
    }

    public final void setMyCommunityService(MyCommunityListService myCommunityListService) {
        Intrinsics.checkParameterIsNotNull(myCommunityListService, "<set-?>");
        this.myCommunityService = myCommunityListService;
    }

    public CommunityListAdapter getCommunityListAdapter() {
        return this.communityListAdapter;
    }

    public void setCommunityListAdapter(CommunityListAdapter communityListAdapter) {
        this.communityListAdapter = communityListAdapter;
    }

    public final int getSelectedNdcId() {
        return this.selectedNdcId;
    }

    public final void setSelectedNdcId(int i) {
        this.selectedNdcId = i;
    }

    public final LruCache<Integer, NVFragment> getFragments() {
        return this.fragments;
    }

    public HashMap<Integer, NVFragment> getOtherFragments() {
        return this.otherFragments;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Object service = getService("myCommunityList");
        Intrinsics.checkExpressionValueIsNotNull(service, "getService(\"myCommunityList\")");
        this.myCommunityService = (MyCommunityListService) service;
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        return inflater.inflate(R.layout.fragment_aggrefation_base, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        setCommunityListAdapter(new CommunityListAdapter(this, this));
        NVListView community_list = (NVListView) _$_findCachedViewById(com.narvii.amino.R.id.community_list);
        Intrinsics.checkExpressionValueIsNotNull(community_list, "community_list");
        community_list.setAdapter((ListAdapter) getCommunityListAdapter());
        MyCommunityListService myCommunityListService = this.myCommunityService;
        if (myCommunityListService == null) {
            Intrinsics.throwUninitializedPropertyAccessException("myCommunityService");
            throw null;
        }
        myCommunityListService.addObserver(this);
        CommunityListAdapter communityListAdapter = getCommunityListAdapter();
        if (communityListAdapter != null) {
            communityListAdapter.onAttach();
        }
        if (getLeftNavTopLayoutId() != 0) {
            ((LinearLayout) _$_findCachedViewById(com.narvii.amino.R.id.left_nav_container)).addView(LayoutInflater.from(getContext()).inflate(getLeftNavTopLayoutId(), (ViewGroup) _$_findCachedViewById(com.narvii.amino.R.id.left_nav_container), false), 0);
        }
    }

    public void updateLeftNav() {
        CommunityListAdapter communityListAdapter = getCommunityListAdapter();
        if (communityListAdapter != null) {
            communityListAdapter.notifyDataSetChanged();
        }
    }

    @Override // com.narvii.community.MyCommunityListService.MyCommunityListObserver
    public void onListChanged(MyCommunityListService myCommunityListService, MyCommunityListResponse myCommunityListResponse, Integer num) {
        CommunityListAdapter communityListAdapter = getCommunityListAdapter();
        if (communityListAdapter != null) {
            communityListAdapter.notifyDataSetChanged();
        }
        removeUnusedFragment();
    }

    private final void removeUnusedFragment() {
        MyCommunityListService myCommunityListService = this.myCommunityService;
        if (myCommunityListService == null) {
            Intrinsics.throwUninitializedPropertyAccessException("myCommunityService");
            throw null;
        }
        if (myCommunityListService.list() != null) {
            ArrayList arrayList = new ArrayList();
            Map<Integer, NVFragment> mapSnapshot = this.fragments.snapshot();
            Intrinsics.checkExpressionValueIsNotNull(mapSnapshot, "fragments.snapshot()");
            for (Map.Entry<Integer, NVFragment> entry : mapSnapshot.entrySet()) {
                Integer key = entry.getKey();
                entry.getValue();
                if (key == null || key.intValue() != 0) {
                    MyCommunityListService myCommunityListService2 = this.myCommunityService;
                    if (myCommunityListService2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("myCommunityService");
                        throw null;
                    }
                    if (!Utils.containsId(myCommunityListService2.list(), String.valueOf(key.intValue()))) {
                        arrayList.add(key);
                    }
                }
            }
            FragmentTransaction fragmentTransactionBeginTransaction = getChildFragmentManager().beginTransaction();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                Integer num = (Integer) it.next();
                int i = this.selectedNdcId;
                if (num != null && num.intValue() == i) {
                    Utils.post(new Runnable() { // from class: com.narvii.community.AggregationBaseFragment.removeUnusedFragment.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            AggregationBaseFragment aggregationBaseFragment = AggregationBaseFragment.this;
                            aggregationBaseFragment.onItemSelected(aggregationBaseFragment.getFallbackIndexWhenCurrentLeave(aggregationBaseFragment.getSelectedNdcId()));
                        }
                    });
                } else {
                    NVFragment nVFragment = this.fragments.get(num);
                    if (nVFragment != null) {
                        fragmentTransactionBeginTransaction.remove(nVFragment);
                    }
                    this.fragments.remove(num);
                }
            }
            fragmentTransactionBeginTransaction.commitAllowingStateLoss();
        }
    }

    @Override // com.narvii.community.MyCommunityListService.MyCommunityListObserver
    public void onReminderChanged(MyCommunityListService myCommunityListService) {
        CommunityListAdapter communityListAdapter = getCommunityListAdapter();
        if (communityListAdapter != null) {
            communityListAdapter.notifyDataSetChanged();
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        MyCommunityListService myCommunityListService = this.myCommunityService;
        if (myCommunityListService == null) {
            Intrinsics.throwUninitializedPropertyAccessException("myCommunityService");
            throw null;
        }
        myCommunityListService.removeObserver(this);
        _$_clearFindViewByIdCache();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void removeCommunityFragment(NVFragment nVFragment) {
        FragmentTransaction fragmentTransactionBeginTransaction = getChildFragmentManager().beginTransaction();
        if (fragmentTransactionBeginTransaction == null || nVFragment == null) {
            return;
        }
        fragmentTransactionBeginTransaction.remove(nVFragment).commitAllowingStateLoss();
    }

    public final void onItemSelected(int i) {
        if (i <= 0) {
            onItemSelected(i, null);
            return;
        }
        MyCommunityListService myCommunityListService = this.myCommunityService;
        if (myCommunityListService == null) {
            Intrinsics.throwUninitializedPropertyAccessException("myCommunityService");
            throw null;
        }
        List<Community> list = myCommunityListService.list();
        int iIndexOfId = Utils.indexOfId(list, String.valueOf(i));
        if (iIndexOfId > -1) {
            Community community = list.get(iIndexOfId);
            Intrinsics.checkExpressionValueIsNotNull(community, "list[index]");
            onItemSelected(i, community);
            return;
        }
        onItemSelected(i, null);
    }

    public final void onItemSelected(int i, Community community) {
        NVFragment nVFragmentCreateNewFragment;
        if (this.selectedNdcId == i) {
            return;
        }
        if (i > 0 && community == null) {
            Log.e("no community");
        }
        this.selectedNdcId = i;
        updateLeftNav();
        FragmentTransaction fragmentTransactionBeginTransaction = getChildFragmentManager().beginTransaction();
        if (i > 0) {
            nVFragmentCreateNewFragment = this.fragments.get(Integer.valueOf(i));
        } else {
            nVFragmentCreateNewFragment = getOtherFragments().get(Integer.valueOf(i));
        }
        if (nVFragmentCreateNewFragment == null) {
            nVFragmentCreateNewFragment = createNewFragment(i);
            nVFragmentCreateNewFragment.setArguments(getFragmentArguments(i, community));
            fragmentTransactionBeginTransaction.add(R.id.content_frame, nVFragmentCreateNewFragment);
        }
        if (i > 0) {
            this.fragments.put(Integer.valueOf(i), nVFragmentCreateNewFragment);
        } else {
            getOtherFragments().put(Integer.valueOf(i), nVFragmentCreateNewFragment);
        }
        fragmentTransactionBeginTransaction.show(nVFragmentCreateNewFragment);
        nVFragmentCreateNewFragment.setUserVisibleHint(true);
        FragmentManager childFragmentManager = getChildFragmentManager();
        Intrinsics.checkExpressionValueIsNotNull(childFragmentManager, "childFragmentManager");
        for (Fragment ff : childFragmentManager.getFragments()) {
            if (!Intrinsics.areEqual(ff, nVFragmentCreateNewFragment)) {
                Intrinsics.checkExpressionValueIsNotNull(ff, "ff");
                if (!ff.isHidden()) {
                    fragmentTransactionBeginTransaction.hide(ff);
                    if (ff instanceof NVFragment) {
                        ((NVFragment) ff).setUserVisibleHint(false);
                    }
                }
            }
        }
        fragmentTransactionBeginTransaction.commitNowAllowingStateLoss();
    }

    protected final Community getSimpleCommunity(Community community) {
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

    /* compiled from: AggregationBaseFragment.kt */
    public final class CommunityListAdapter extends NVAdapter {
        final /* synthetic */ AggregationBaseFragment this$0;

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 4;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean hasStableIds() {
            return true;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CommunityListAdapter(AggregationBaseFragment aggregationBaseFragment, NVContext ctx) {
            super(ctx);
            Intrinsics.checkParameterIsNotNull(ctx, "ctx");
            this.this$0 = aggregationBaseFragment;
            setDarkTheme(true);
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

        @Override // com.narvii.list.NVAdapter
        public void onErrorRetry() {
            this.this$0.getMyCommunityService().retryRetry();
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            Object item = getItem(i);
            if (item instanceof Community) {
                View cell = createView(R.layout.drawer_my_community_item, viewGroup, view, "community");
                ImageView imageView = (ImageView) cell.findViewById(R.id.icon);
                if (imageView instanceof CommunityIconView) {
                    ((CommunityIconView) imageView).setCommunity((Community) item);
                } else if (imageView instanceof NVImageView) {
                    ((NVImageView) imageView).setImageUrl(((Community) item).icon);
                }
                Intrinsics.checkExpressionValueIsNotNull(cell, "cell");
                Community community = (Community) item;
                updateRemindersInCell(cell, community, true);
                View v = cell.findViewById(R.id.current_community_indicator);
                int color = 0;
                boolean z = this.this$0.getSelectedNdcId() == community.id;
                Intrinsics.checkExpressionValueIsNotNull(v, "v");
                v.setVisibility(z ? 0 : 8);
                if (z) {
                    NVContext context = this.context;
                    Intrinsics.checkExpressionValueIsNotNull(context, "context");
                    color = ContextCompat.getColor(context.getContext(), R.color.aggregation_content_bg_color);
                }
                cell.setBackgroundColor(color);
                cell.setOnClickListener(this.subviewClickListener);
                return cell;
            }
            if (item == NVPagedAdapter.LIST_END) {
                View v2 = createView(R.layout.drawer_my_community_join_item, viewGroup, view);
                v2.setOnClickListener(this.subviewClickListener);
                Intrinsics.checkExpressionValueIsNotNull(v2, "v");
                return v2;
            }
            if (item == NVPagedAdapter.LOADING) {
                View v3 = createView(R.layout.incubator_my_community_loading_item, viewGroup, view);
                this.this$0.getMyCommunityService().loadNextPage(true);
                Intrinsics.checkExpressionValueIsNotNull(v3, "v");
                return v3;
            }
            return createErrorItem(viewGroup, view, this.this$0.getMyCommunityService().errorMessage());
        }

        @Override // com.narvii.list.NVAdapter
        public View createErrorItem(ViewGroup viewGroup, View view, String str) {
            View v = super.createErrorItem(viewGroup, view, str);
            v.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.community.AggregationBaseFragment$CommunityListAdapter$createErrorItem$1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.this$0.onErrorRetry();
                }
            });
            Intrinsics.checkExpressionValueIsNotNull(v, "v");
            return v;
        }

        public final void updateRemindersInCell(View cell, Community community, boolean z) {
            Intrinsics.checkParameterIsNotNull(cell, "cell");
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
            this.this$0.addReminderRequest(z, community, community == null ? null : this.this$0.getMyCommunityService().getReminder(community.id));
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            Object obj;
            List<Community> list = this.this$0.getMyCommunityService().list();
            if (i < list.size()) {
                obj = list.get(i);
            } else if (this.this$0.getMyCommunityService().isEnd()) {
                obj = NVPagedAdapter.LIST_END;
            } else if (this.this$0.getMyCommunityService().errorMessage() == null) {
                obj = NVPagedAdapter.LOADING;
            } else {
                obj = NVPagedAdapter.ERROR;
            }
            Intrinsics.checkExpressionValueIsNotNull(obj, "if (position < list.size…apter.ERROR\n            }");
            return obj;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return getItem(i).hashCode();
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.this$0.getMyCommunityService().list().size() + 1;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i) {
            Object item = getItem(i);
            if (item instanceof Community) {
                return 0;
            }
            if (item == NVPagedAdapter.LIST_END) {
                return 1;
            }
            if (item == NVPagedAdapter.LOADING) {
                return 2;
            }
            return item == NVPagedAdapter.ERROR ? 3 : -1;
        }

        @Override // com.narvii.list.NVAdapter
        public boolean isListShown() {
            return this.this$0.getMyCommunityService().isEnd() || this.this$0.getMyCommunityService().list().size() > 0;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i) {
            if (getItem(i) == NVPagedAdapter.LOADING) {
                return false;
            }
            return super.isEnabled(i);
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            Object item = getItem(i);
            if (item instanceof Community) {
                Community community = (Community) item;
                this.this$0.onItemSelected(community.id, community);
            } else if (Intrinsics.areEqual(item, NVPagedAdapter.LIST_END)) {
                Intent intent = FragmentWrapperActivity.intent(DiscoverTabFragment.class);
                intent.putExtra("__communityId", 0);
                startActivity(intent);
                return true;
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }
    }
}
