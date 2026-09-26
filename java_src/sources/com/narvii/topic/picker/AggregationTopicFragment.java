package com.narvii.topic.picker;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.account.AccountService;
import com.narvii.amino.databinding.FragmentAggregationTopicBinding;
import com.narvii.amino.master.R;
import com.narvii.app.ComScoreSectionDispatcher;
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
import com.narvii.util.FragmentExtensionsKt;
import com.narvii.util.LruCache;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.AutoSizingTextView;
import com.narvii.widget.recycleview.viewholder.BaseViewHolder;
import com.safedk.android.utils.Logger;
import kotlin.jvm.internal.g0;
import kotlin.jvm.internal.q0;
import kotlin.jvm.internal.t;
import kotlin.properties.d;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public final class AggregationTopicFragment extends NVFragment implements LanguageChangeListener {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {q0.g(new g0(AggregationTopicFragment.class, "binding", "getBinding()Lcom/narvii/amino/databinding/FragmentAggregationTopicBinding;", 0))};

    @Nullable
    private BookmarkedTopicListFragment bookmarkFragment;
    public ContentLanguageService contentLanguageService;

    @Nullable
    private InterestAdapter interestAdapter;

    @Nullable
    private String selectedInterestId;
    private boolean showFirstTopicAsSelected;

    @NotNull
    private final LruCache<String, InterestSubTopicListFragment> topicFragments = new LruCache<>(10);

    @Nullable
    private final AccountService accountService = (AccountService) getService("account");

    @NotNull
    private final d binding$delegate = FragmentExtensionsKt.viewBinding(this, AggregationTopicFragment$binding$2.INSTANCE);

    public final class InterestAdapter extends PagingRecyclerViewAdapter<InterestData, MainInterestResponse> {
        private boolean selectFirstItem;

        public final class InterestDataSource extends PageDataSource<InterestData, MainInterestResponse> {
            @Override // com.narvii.paging.source.PageDataSource
            @NotNull
            protected Class<MainInterestResponse> responseType() {
                return MainInterestResponse.class;
            }

            public InterestDataSource(NVContext nVContext) {
                super(nVContext);
            }

            @Override // com.narvii.paging.source.PageDataSource
            @Nullable
            protected ApiRequest createRequest() {
                String requestPrefLanguageWithLocalAsDefault;
                ApiRequest.Builder builderPath = ApiRequest.builder().global().path("/persona/onboarding-interests");
                ContentLanguageService contentLanguageService = AggregationTopicFragment.this.getContentLanguageService();
                if (contentLanguageService != null) {
                    requestPrefLanguageWithLocalAsDefault = contentLanguageService.getRequestPrefLanguageWithLocalAsDefault();
                } else {
                    requestPrefLanguageWithLocalAsDefault = null;
                }
                return builderPath.param("language", requestPrefLanguageWithLocalAsDefault).build();
            }
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        protected boolean isDarkTheme() {
            return true;
        }

        public InterestAdapter(NVContext nVContext, boolean z6) {
            super(nVContext);
            this.selectFirstItem = z6;
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
        @NotNull
        public PageDataSource<InterestData, MainInterestResponse> createPageDataSource(@Nullable NVContext nVContext) {
            return new InterestDataSource(nVContext);
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
        protected void onBindItemViewHolder(@NotNull RecyclerView.ViewHolder holder, int i10) {
            t.j(holder, "holder");
            if (holder instanceof InterestViewHolder) {
                InterestData item = getItem(i10);
                if (!this.selectFirstItem || i10 != 0) {
                    ((InterestViewHolder) holder).bindInterest(item);
                } else {
                    ((InterestViewHolder) holder).selectFirstTopic(item);
                    this.selectFirstItem = false;
                }
            }
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
        @NotNull
        protected RecyclerView.ViewHolder onCreateItemViewHolder(@NotNull ViewGroup parent, int i10) {
            t.j(parent, "parent");
            View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_interest_simple_text, parent, false);
            AggregationTopicFragment aggregationTopicFragment = AggregationTopicFragment.this;
            t.g(viewInflate);
            return new InterestViewHolder(aggregationTopicFragment, viewInflate);
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        public boolean onItemClick(@Nullable NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter, int i10, @Nullable Object obj, @Nullable View view, @Nullable View view2) {
            if (!(obj instanceof InterestData)) {
                return super.onItemClick(nVRecyclerViewBaseAdapter, i10, obj, view, view2);
            }
            AggregationTopicFragment.this.onInterestSelected((InterestData) obj);
            return true;
        }
    }

    public final class InterestViewHolder extends BaseViewHolder {
        private final View indicator;
        private final TextView interestName;
        final /* synthetic */ AggregationTopicFragment this$0;

        public final View getIndicator() {
            return this.indicator;
        }

        public final TextView getInterestName() {
            return this.interestName;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public InterestViewHolder(@NotNull AggregationTopicFragment aggregationTopicFragment, View itemView) {
            super(itemView);
            t.j(itemView, "itemView");
            this.this$0 = aggregationTopicFragment;
            this.interestName = (TextView) itemView.findViewById(R.id.interest_name);
            this.indicator = itemView.findViewById(R.id.interest_indicator);
        }

        public final void bindInterest(@Nullable InterestData interestData) {
            TextView textView = this.interestName;
            if (textView != null) {
                textView.setText(interestData != null ? interestData.getDisplayName() : null);
            }
            boolean zX = kotlin.text.t.x(this.this$0.getSelectedInterestId(), interestData != null ? interestData.interestId : null, false, 2, null);
            TextView textView2 = this.interestName;
            if (textView2 != null) {
                textView2.setTypeface(null, zX ? 1 : 0);
            }
            int dimensionPixelSize = this.this$0.getContext().getResources().getDimensionPixelSize(zX ? R.dimen.interest_size_selected : R.dimen.interest_size_unselected);
            TextView textView3 = this.interestName;
            if (textView3 instanceof AutoSizingTextView) {
                ((AutoSizingTextView) textView3).setAutoSizeTextMaxSize(dimensionPixelSize);
            }
            View view = this.indicator;
            if (view != null) {
                view.setVisibility(zX ? 0 : 4);
            }
            int i10 = (interestData != null ? interestData.style : null) != null ? interestData.style.backgroundColor : -761942;
            View view2 = this.indicator;
            if (view2 != null) {
                view2.setBackgroundColor(i10);
            }
            this.itemView.setBackgroundColor(zX ? this.this$0.getContext().getResources().getColor(R.color.aggregation_topic_bg) : 0);
        }

        public final void selectFirstTopic(@Nullable InterestData interestData) {
            if (interestData == null) {
                return;
            }
            this.this$0.setSelectedInterestId(interestData.interestId);
            bindInterest(interestData);
            this.this$0.updateBookmarkSection();
            AggregationTopicFragment aggregationTopicFragment = this.this$0;
            this.this$0.showSelectedTopicFragment(aggregationTopicFragment.buildTopicFragment(aggregationTopicFragment.getTopicFragments().get(this.this$0.getSelectedInterestId()), this.this$0.getSelectedInterestId()));
        }
    }

    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Nullable
    public final AccountService getAccountService() {
        return this.accountService;
    }

    @Nullable
    public final BookmarkedTopicListFragment getBookmarkFragment() {
        return this.bookmarkFragment;
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131951629;
    }

    @Nullable
    public final InterestAdapter getInterestAdapter() {
        return this.interestAdapter;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @Nullable
    public String getPageName() {
        return "topics_picker";
    }

    @Nullable
    public final String getSelectedInterestId() {
        return this.selectedInterestId;
    }

    @NotNull
    public final LruCache<String, InterestSubTopicListFragment> getTopicFragments() {
        return this.topicFragments;
    }

    public final void onInterestSelected(@Nullable InterestData interestData) {
        Fragment fragment;
        BookmarkedTopicListFragment bookmarkedTopicListFragment;
        String str;
        if (interestData == null || (str = interestData.interestId) == null || !str.equals(this.selectedInterestId)) {
            this.selectedInterestId = interestData != null ? interestData.interestId : null;
            InterestAdapter interestAdapter = this.interestAdapter;
            if (interestAdapter != null) {
                interestAdapter.notifyDataSetChanged();
            }
            updateBookmarkSection();
            if (interestData == null) {
                bookmarkedTopicListFragment = this.bookmarkFragment;
                if (bookmarkedTopicListFragment == null) {
                    fragment = bookmarkedTopicListFragment;
                    BookmarkedTopicListFragment bookmarkedTopicListFragment2 = new BookmarkedTopicListFragment();
                    this.bookmarkFragment = bookmarkedTopicListFragment2;
                    fragment = bookmarkedTopicListFragment2;
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
            fragment = bookmarkedTopicListFragment;
            FragmentTransaction fragmentTransactionQ = getChildFragmentManager().q();
            t.i(fragmentTransactionQ, "beginTransaction(...)");
            if (!getChildFragmentManager().B0().contains(fragment)) {
                t.g(fragment);
                fragmentTransactionQ.b(R.id.topic_frame, fragment);
            }
            t.g(fragment);
            fragmentTransactionQ.E(fragment);
            fragment.setUserVisibleHint(true);
            for (Fragment fragment2 : getChildFragmentManager().B0()) {
                if (!t.e(fragment2, fragment) && !fragment2.isHidden()) {
                    fragmentTransactionQ.r(fragment2);
                    if (fragment2 instanceof NVFragment) {
                        ((NVFragment) fragment2).setUserVisibleHint(false);
                    }
                }
            }
            fragmentTransactionQ.m();
        }
    }

    public final void setBookmarkFragment(@Nullable BookmarkedTopicListFragment bookmarkedTopicListFragment) {
        this.bookmarkFragment = bookmarkedTopicListFragment;
    }

    public final void setContentLanguageService(@NotNull ContentLanguageService contentLanguageService) {
        t.j(contentLanguageService, "<set-?>");
        this.contentLanguageService = contentLanguageService;
    }

    public final void setInterestAdapter(@Nullable InterestAdapter interestAdapter) {
        this.interestAdapter = interestAdapter;
    }

    public final void setSelectedInterestId(@Nullable String str) {
        this.selectedInterestId = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final InterestSubTopicListFragment buildTopicFragment(InterestSubTopicListFragment interestSubTopicListFragment, String str) {
        if (interestSubTopicListFragment == null) {
            interestSubTopicListFragment = new InterestSubTopicListFragment();
        }
        Bundle bundle = new Bundle();
        bundle.putString(InterestSubTopicListFragment.KEY_INTEREST_ID, str);
        interestSubTopicListFragment.setArguments(bundle);
        return interestSubTopicListFragment;
    }

    private final FragmentAggregationTopicBinding getBinding() {
        return (FragmentAggregationTopicBinding) this.binding$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final boolean isUserLoggedIn() {
        AccountService accountService = this.accountService;
        if (accountService != null) {
            return accountService.hasAccount();
        }
        return false;
    }

    @NotNull
    public final ContentLanguageService getContentLanguageService() {
        ContentLanguageService contentLanguageService = this.contentLanguageService;
        if (contentLanguageService != null) {
            return contentLanguageService;
        }
        t.B("contentLanguageService");
        return null;
    }

    @Override // androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        t.j(inflater, "inflater");
        FrameLayout root = getBinding().getRoot();
        t.i(root, "getRoot(...)");
        return root;
    }

    @Override // com.narvii.language.LanguageChangeListener
    public void onLanguageChanged(@Nullable String str) {
        InterestAdapter interestAdapter = this.interestAdapter;
        if (interestAdapter != null) {
            interestAdapter.resetList();
        }
    }

    private final void hideBookMarksIfNotLoggedIn() {
        FragmentAggregationTopicBinding binding = getBinding();
        if (!isUserLoggedIn()) {
            binding.bookMarkContainer.setVisibility(8);
            return;
        }
        binding.bookMarkContainer.setVisibility(0);
        binding.bookMarkContainer.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.topic.picker.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AggregationTopicFragment.hideBookMarksIfNotLoggedIn$lambda$2$lambda$0(this.f2789a, view);
            }
        });
        getBinding().search.getRoot().setOnClickListener(new View.OnClickListener() { // from class: com.narvii.topic.picker.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AggregationTopicFragment.hideBookMarksIfNotLoggedIn$lambda$2$lambda$1(this.f2790a, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void hideBookMarksIfNotLoggedIn$lambda$2$lambda$0(AggregationTopicFragment this$0, View view) {
        t.j(this$0, "this$0");
        this$0.onInterestSelected(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void hideBookMarksIfNotLoggedIn$lambda$2$lambda$1(AggregationTopicFragment this$0, View view) {
        t.j(this$0, "this$0");
        LogEvent.clickBuilder(this$0, ActSemantic.pageEnter).area("Search").send();
        Intent intent = FragmentWrapperActivity.intent(GlobalSearchBaseFragment.class);
        intent.putExtra("section_type", 3);
        intent.putExtra("showKeyboard", true);
        safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this$0, intent);
    }

    private final void showBookMarksOrFirstTopic() {
        if (isUserLoggedIn()) {
            this.showFirstTopicAsSelected = false;
            this.bookmarkFragment = new BookmarkedTopicListFragment();
            FragmentTransaction fragmentTransactionQ = getChildFragmentManager().q();
            BookmarkedTopicListFragment bookmarkedTopicListFragment = this.bookmarkFragment;
            t.g(bookmarkedTopicListFragment);
            fragmentTransactionQ.u(R.id.topic_frame, bookmarkedTopicListFragment).m();
            return;
        }
        this.showFirstTopicAsSelected = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showSelectedTopicFragment(InterestSubTopicListFragment interestSubTopicListFragment) {
        FragmentTransaction fragmentTransactionQ = getChildFragmentManager().q();
        t.i(fragmentTransactionQ, "beginTransaction(...)");
        if (!getChildFragmentManager().B0().contains(interestSubTopicListFragment)) {
            fragmentTransactionQ.b(R.id.topic_frame, interestSubTopicListFragment);
        }
        fragmentTransactionQ.E(interestSubTopicListFragment);
        interestSubTopicListFragment.setUserVisibleHint(true);
        for (Fragment fragment : getChildFragmentManager().B0()) {
            if (!t.e(fragment, interestSubTopicListFragment) && !fragment.isHidden()) {
                fragmentTransactionQ.r(fragment);
                if (fragment instanceof NVFragment) {
                    ((NVFragment) fragment).setUserVisibleHint(false);
                }
            }
        }
        fragmentTransactionQ.m();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateBookmarkSection() {
        int color;
        FrameLayout frameLayout = getBinding().bookMarkContainer;
        int i10 = 0;
        if (this.selectedInterestId == null) {
            color = getContext().getResources().getColor(R.color.aggregation_topic_bg);
        } else {
            color = 0;
        }
        frameLayout.setBackgroundColor(color);
        View view = getBinding().interestIndicator;
        if (this.selectedInterestId != null) {
            i10 = 4;
        }
        view.setVisibility(i10);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        ComScoreSectionDispatcher.INSTANCE.sectionChangeToNone();
        setTitle(R.string.topic_s);
        Object service = getService("content_language");
        t.i(service, "getService(...)");
        setContentLanguageService((ContentLanguageService) service);
        getContentLanguageService().registerLanguageChangeListener(this);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        getContentLanguageService().unRegisterLanguageChangeListener(this);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        t.j(view, "view");
        super.onViewCreated(view, bundle);
        hideBookMarksIfNotLoggedIn();
        showBookMarksOrFirstTopic();
        updateBookmarkSection();
        FragmentManager fragmentManager = getFragmentManager();
        if (fragmentManager != null) {
            MasterThemeExtensionKt.addMasterThemeFragment(fragmentManager);
        }
        this.interestAdapter = new InterestAdapter(this, this.showFirstTopicAsSelected);
        getBinding().interestMainList.setAdapter(this.interestAdapter);
        InterestAdapter interestAdapter = this.interestAdapter;
        if (interestAdapter != null) {
            interestAdapter.onAttach();
        }
        getBinding().interestMainList.setLayoutManager(new LinearLayoutManager(getContext(), 1, false));
    }
}
