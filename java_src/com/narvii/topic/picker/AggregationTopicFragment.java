package com.narvii.topic.picker;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.language.ContentLanguageService;
import com.narvii.language.LanguageChangeListener;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.master.search.GlobalSearchBaseFragment;
import com.narvii.master.theme.MasterThemeExtensionKt;
import com.narvii.model.InterestData;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.paging.adapter.PagingRecyclerViewAdapter;
import com.narvii.paging.source.PageDataSource;
import com.narvii.suggest.interest.MainInterestResponse;
import com.narvii.topic.BookmarkedTopicListFragment;
import com.narvii.util.LruCache;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.AutoSizingTextView;
import com.narvii.widget.recycleview.NVRecyclerView;
import com.narvii.widget.recycleview.viewholder.BaseViewHolder;
import java.util.HashMap;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* compiled from: AggregationTopicFragment.kt */
/* loaded from: classes3.dex */
public final class AggregationTopicFragment extends NVFragment implements LanguageChangeListener {
    private HashMap _$_findViewCache;
    private BookmarkedTopicListFragment bookmarkFragment;
    public ContentLanguageService contentLanguageService;
    private InterestAdapter interestAdapter;
    private String selectedInterestId;
    private final LruCache<String, InterestSubTopicListFragment> topicFragments = new LruCache<>(10);

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

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131755020;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "TopicsPicker";
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    public final String getSelectedInterestId() {
        return this.selectedInterestId;
    }

    public final void setSelectedInterestId(String str) {
        this.selectedInterestId = str;
    }

    public final InterestAdapter getInterestAdapter() {
        return this.interestAdapter;
    }

    public final void setInterestAdapter(InterestAdapter interestAdapter) {
        this.interestAdapter = interestAdapter;
    }

    public final LruCache<String, InterestSubTopicListFragment> getTopicFragments() {
        return this.topicFragments;
    }

    public final BookmarkedTopicListFragment getBookmarkFragment() {
        return this.bookmarkFragment;
    }

    public final void setBookmarkFragment(BookmarkedTopicListFragment bookmarkedTopicListFragment) {
        this.bookmarkFragment = bookmarkedTopicListFragment;
    }

    public final ContentLanguageService getContentLanguageService() {
        ContentLanguageService contentLanguageService = this.contentLanguageService;
        if (contentLanguageService != null) {
            return contentLanguageService;
        }
        Intrinsics.throwUninitializedPropertyAccessException("contentLanguageService");
        throw null;
    }

    public final void setContentLanguageService(ContentLanguageService contentLanguageService) {
        Intrinsics.checkParameterIsNotNull(contentLanguageService, "<set-?>");
        this.contentLanguageService = contentLanguageService;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.topic_s);
        Object service = getService("content_language");
        Intrinsics.checkExpressionValueIsNotNull(service, "getService(\"content_language\")");
        this.contentLanguageService = (ContentLanguageService) service;
        ContentLanguageService contentLanguageService = this.contentLanguageService;
        if (contentLanguageService != null) {
            contentLanguageService.registerLanguageChangeListener(this);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("contentLanguageService");
            throw null;
        }
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        return inflater.inflate(R.layout.fragment_aggregation_topic, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        ((FrameLayout) view.findViewById(com.narvii.amino.R.id.book_mark_container)).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.topic.picker.AggregationTopicFragment.onViewCreated.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) throws Resources.NotFoundException {
                AggregationTopicFragment.this.onInterestSelected(null);
            }
        });
        view.findViewById(com.narvii.amino.R.id.search).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.topic.picker.AggregationTopicFragment.onViewCreated.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                LogEvent.clickBuilder(AggregationTopicFragment.this, ActSemantic.pageEnter).area("Search").send();
                Intent intent = FragmentWrapperActivity.intent(GlobalSearchBaseFragment.class);
                intent.putExtra("section_type", 4);
                intent.putExtra("showKeyboard", true);
                AggregationTopicFragment.this.startActivity(intent);
            }
        });
        this.bookmarkFragment = new BookmarkedTopicListFragment();
        FragmentTransaction fragmentTransactionBeginTransaction = getChildFragmentManager().beginTransaction();
        BookmarkedTopicListFragment bookmarkedTopicListFragment = this.bookmarkFragment;
        if (bookmarkedTopicListFragment == null) {
            Intrinsics.throwNpe();
            throw null;
        }
        fragmentTransactionBeginTransaction.replace(R.id.topic_frame, bookmarkedTopicListFragment).commitNowAllowingStateLoss();
        updateBookmarkSection();
        FragmentManager fragmentManager = getFragmentManager();
        if (fragmentManager != null) {
            MasterThemeExtensionKt.addMasterThemeFragment(fragmentManager);
        }
        this.interestAdapter = new InterestAdapter(this);
        NVRecyclerView nVRecyclerView = (NVRecyclerView) view.findViewById(com.narvii.amino.R.id.interest_main_list);
        Intrinsics.checkExpressionValueIsNotNull(nVRecyclerView, "view.interest_main_list");
        nVRecyclerView.setAdapter(this.interestAdapter);
        InterestAdapter interestAdapter = this.interestAdapter;
        if (interestAdapter != null) {
            interestAdapter.onAttach();
        }
        NVRecyclerView nVRecyclerView2 = (NVRecyclerView) view.findViewById(com.narvii.amino.R.id.interest_main_list);
        Intrinsics.checkExpressionValueIsNotNull(nVRecyclerView2, "view.interest_main_list");
        nVRecyclerView2.setLayoutManager(new LinearLayoutManager(getContext(), 1, false));
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        ContentLanguageService contentLanguageService = this.contentLanguageService;
        if (contentLanguageService != null) {
            contentLanguageService.unRegisterLanguageChangeListener(this);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("contentLanguageService");
            throw null;
        }
    }

    @Override // com.narvii.language.LanguageChangeListener
    public void onLanguageChanged(String str) {
        InterestAdapter interestAdapter = this.interestAdapter;
        if (interestAdapter != null) {
            interestAdapter.resetList();
        }
    }

    /* compiled from: AggregationTopicFragment.kt */
    public final class InterestAdapter extends PagingRecyclerViewAdapter<InterestData, MainInterestResponse> {
        @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        protected boolean isDarkTheme() {
            return true;
        }

        public InterestAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
        protected RecyclerView.ViewHolder onCreateItemViewHolder(ViewGroup parent, int i) {
            Intrinsics.checkParameterIsNotNull(parent, "parent");
            View cell = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_interest_simple_text, parent, false);
            AggregationTopicFragment aggregationTopicFragment = AggregationTopicFragment.this;
            Intrinsics.checkExpressionValueIsNotNull(cell, "cell");
            return new InterestViewHolder(aggregationTopicFragment, cell);
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
        protected void onBindItemViewHolder(RecyclerView.ViewHolder holder, int i) throws Resources.NotFoundException, IllegalArgumentException {
            Intrinsics.checkParameterIsNotNull(holder, "holder");
            if (holder instanceof InterestViewHolder) {
                ((InterestViewHolder) holder).bindInterest(getItem(i));
            }
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
        public PageDataSource<InterestData, MainInterestResponse> createPageDataSource(NVContext nVContext) {
            return new InterestDataSource(nVContext);
        }

        /* compiled from: AggregationTopicFragment.kt */
        public final class InterestDataSource extends PageDataSource<InterestData, MainInterestResponse> {
            public InterestDataSource(NVContext nVContext) {
                super(nVContext);
            }

            @Override // com.narvii.paging.source.PageDataSource
            protected ApiRequest createRequest() {
                ApiRequest.Builder builderPath = ApiRequest.builder().global().path("/persona/onboarding-interests");
                ContentLanguageService contentLanguageService = AggregationTopicFragment.this.getContentLanguageService();
                return builderPath.param(IjkMediaMeta.IJKM_KEY_LANGUAGE, contentLanguageService != null ? contentLanguageService.getRequestPrefLanguageWithLocalAsDefault() : null).build();
            }

            @Override // com.narvii.paging.source.PageDataSource
            protected Class<MainInterestResponse> responseType() {
                return MainInterestResponse.class;
            }
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        public boolean onItemClick(NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter, int i, Object obj, View view, View view2) throws Resources.NotFoundException {
            if (obj instanceof InterestData) {
                AggregationTopicFragment.this.onInterestSelected((InterestData) obj);
                return true;
            }
            return super.onItemClick(nVRecyclerViewBaseAdapter, i, obj, view, view2);
        }
    }

    /* compiled from: AggregationTopicFragment.kt */
    public final class InterestViewHolder extends BaseViewHolder {
        private final View indicator;
        private final TextView interestName;
        final /* synthetic */ AggregationTopicFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public InterestViewHolder(AggregationTopicFragment aggregationTopicFragment, View itemView) {
            super(itemView);
            Intrinsics.checkParameterIsNotNull(itemView, "itemView");
            this.this$0 = aggregationTopicFragment;
            this.interestName = (TextView) itemView.findViewById(R.id.interest_name);
            this.indicator = itemView.findViewById(R.id.interest_indicator);
        }

        public final TextView getInterestName() {
            return this.interestName;
        }

        public final View getIndicator() {
            return this.indicator;
        }

        public final void bindInterest(InterestData interestData) throws Resources.NotFoundException, IllegalArgumentException {
            TextView textView = this.interestName;
            if (textView != null) {
                textView.setText(interestData != null ? interestData.getDisplayName() : null);
            }
            int color = 0;
            boolean zEquals$default = StringsKt__StringsJVMKt.equals$default(this.this$0.getSelectedInterestId(), interestData != null ? interestData.interestId : null, false, 2, null);
            TextView textView2 = this.interestName;
            if (textView2 != null) {
                textView2.setTypeface(null, zEquals$default ? 1 : 0);
            }
            Context context = this.this$0.getContext();
            Intrinsics.checkExpressionValueIsNotNull(context, "context");
            int dimensionPixelSize = context.getResources().getDimensionPixelSize(zEquals$default ? R.dimen.interest_size_selected : R.dimen.interest_size_unselected);
            TextView textView3 = this.interestName;
            if (textView3 instanceof AutoSizingTextView) {
                if (textView3 == null) {
                    throw new TypeCastException("null cannot be cast to non-null type com.narvii.widget.AutoSizingTextView");
                }
                ((AutoSizingTextView) textView3).setAutoSizeTextMaxSize(dimensionPixelSize);
            }
            View view = this.indicator;
            if (view != null) {
                view.setVisibility(zEquals$default ? 0 : 4);
            }
            int i = (interestData != null ? interestData.style : null) != null ? interestData.style.backgroundColor : (int) 4294205354L;
            View view2 = this.indicator;
            if (view2 != null) {
                view2.setBackgroundColor(i);
            }
            View view3 = this.itemView;
            if (view3 != null) {
                if (zEquals$default) {
                    Context context2 = this.this$0.getContext();
                    Intrinsics.checkExpressionValueIsNotNull(context2, "context");
                    color = context2.getResources().getColor(R.color.aggregation_topic_bg);
                }
                view3.setBackgroundColor(color);
            }
        }
    }

    public final void updateBookmarkSection() throws Resources.NotFoundException {
        View viewFindViewById;
        FrameLayout frameLayout;
        int color;
        View view = getView();
        if (view != null && (frameLayout = (FrameLayout) view.findViewById(com.narvii.amino.R.id.book_mark_container)) != null) {
            if (this.selectedInterestId == null) {
                Context context = getContext();
                Intrinsics.checkExpressionValueIsNotNull(context, "context");
                color = context.getResources().getColor(R.color.aggregation_topic_bg);
            } else {
                color = 0;
            }
            frameLayout.setBackgroundColor(color);
        }
        View view2 = getView();
        if (view2 == null || (viewFindViewById = view2.findViewById(com.narvii.amino.R.id.interest_indicator)) == null) {
            return;
        }
        viewFindViewById.setVisibility(this.selectedInterestId != null ? 4 : 0);
    }

    public final void onInterestSelected(InterestData interestData) throws Resources.NotFoundException {
        Fragment fragment;
        String str;
        if (interestData == null || (str = interestData.interestId) == null || !str.equals(this.selectedInterestId)) {
            this.selectedInterestId = interestData != null ? interestData.interestId : null;
            InterestAdapter interestAdapter = this.interestAdapter;
            if (interestAdapter != null) {
                interestAdapter.notifyDataSetChanged();
            }
            updateBookmarkSection();
            if (interestData == null) {
                fragment = this.bookmarkFragment;
                if (fragment == null) {
                    this.bookmarkFragment = new BookmarkedTopicListFragment();
                    fragment = this.bookmarkFragment;
                }
            } else {
                InterestSubTopicListFragment interestSubTopicListFragment = this.topicFragments.get(interestData.interestId);
                if (interestSubTopicListFragment == null) {
                    interestSubTopicListFragment = new InterestSubTopicListFragment();
                    this.topicFragments.put(interestData.interestId, interestSubTopicListFragment);
                }
                Bundle bundle = new Bundle();
                bundle.putString(InterestSubTopicListFragment.KEY_INTEREST_ID, interestData.interestId);
                interestSubTopicListFragment.setArguments(bundle);
                fragment = interestSubTopicListFragment;
            }
            FragmentTransaction fragmentTransactionBeginTransaction = getChildFragmentManager().beginTransaction();
            FragmentManager childFragmentManager = getChildFragmentManager();
            Intrinsics.checkExpressionValueIsNotNull(childFragmentManager, "childFragmentManager");
            if (!childFragmentManager.getFragments().contains(fragment)) {
                if (fragment == null) {
                    Intrinsics.throwNpe();
                    throw null;
                }
                fragmentTransactionBeginTransaction.add(R.id.topic_frame, fragment);
            }
            if (fragment != null) {
                fragmentTransactionBeginTransaction.show(fragment);
                if (fragment instanceof NVFragment) {
                    fragment.setUserVisibleHint(true);
                }
                FragmentManager childFragmentManager2 = getChildFragmentManager();
                Intrinsics.checkExpressionValueIsNotNull(childFragmentManager2, "childFragmentManager");
                for (Fragment ff : childFragmentManager2.getFragments()) {
                    if (!Intrinsics.areEqual(ff, fragment)) {
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
                return;
            }
            Intrinsics.throwNpe();
            throw null;
        }
    }
}
