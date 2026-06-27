package com.narvii.topic.widgets;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.language.ContentLanguageService;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.Area;
import com.narvii.logging.LogEvent;
import com.narvii.logging.LogUtils;
import com.narvii.model.Blog;
import com.narvii.model.Community;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.BlogListResponse;
import com.narvii.model.api.Pagination;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.story.StoryApi;
import com.narvii.story.StoryHelper;
import com.narvii.story.StoryListFragment;
import com.narvii.story.widgets.StoryCardView;
import com.narvii.topic.model.StorySections;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* compiled from: StorySectionItemView.kt */
/* loaded from: classes3.dex */
public final class StorySectionItemView extends LinearLayout {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(StorySectionItemView.class), "tvCategoryTitle", "getTvCategoryTitle()Landroid/widget/TextView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(StorySectionItemView.class), "storyCard1", "getStoryCard1()Lcom/narvii/story/widgets/StoryCardView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(StorySectionItemView.class), "storyCard2", "getStoryCard2()Lcom/narvii/story/widgets/StoryCardView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(StorySectionItemView.class), "storyCard3", "getStoryCard3()Lcom/narvii/story/widgets/StoryCardView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(StorySectionItemView.class), "storyCard4", "getStoryCard4()Lcom/narvii/story/widgets/StoryCardView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(StorySectionItemView.class), "btnSeeAll", "getBtnSeeAll()Landroid/view/View;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(StorySectionItemView.class), "btnRefresh", "getBtnRefresh()Landroid/view/View;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(StorySectionItemView.class), "indicatorLoading", "getIndicatorLoading()Landroid/view/View;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(StorySectionItemView.class), "optionLayout", "getOptionLayout()Landroid/view/View;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(StorySectionItemView.class), "loadingAnimator", "getLoadingAnimator()Landroid/animation/ObjectAnimator;"))};
    private final String TAG;
    private HashMap _$_findViewCache;
    private String _nextPageToken;
    private Area adapter;
    private final Animator.AnimatorListener animationListener;
    private ApiRequest apiRequest;
    private ApiService apiService;
    private final Lazy btnRefresh$delegate;
    private final Lazy btnSeeAll$delegate;
    private Map<Integer, Community> communityInfoMapping;
    private int curWindowIndex;
    private final Lazy indicatorLoading$delegate;
    private ContentLanguageService languageService;
    private OptionClickListener listener;
    private final Lazy loadingAnimator$delegate;
    private NVContext nvContext;
    private final Lazy optionLayout$delegate;
    private final Lazy storyCard1$delegate;
    private final Lazy storyCard2$delegate;
    private final Lazy storyCard3$delegate;
    private final Lazy storyCard4$delegate;
    private ArrayList<Blog> storyList;
    private StorySections storySection;
    private int topicId;
    private final Lazy tvCategoryTitle$delegate;
    private Map<Integer, User> userInfoMapping;

    /* compiled from: StorySectionItemView.kt */
    public interface OptionClickListener {
        void onRefreshClicked(View view);

        void onSeeAllClicked(View view);
    }

    private final ObjectAnimator getLoadingAnimator() {
        Lazy lazy = this.loadingAnimator$delegate;
        KProperty kProperty = $$delegatedProperties[9];
        return (ObjectAnimator) lazy.getValue();
    }

    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View viewFindViewById = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    public final View getBtnRefresh() {
        Lazy lazy = this.btnRefresh$delegate;
        KProperty kProperty = $$delegatedProperties[6];
        return (View) lazy.getValue();
    }

    public final View getBtnSeeAll() {
        Lazy lazy = this.btnSeeAll$delegate;
        KProperty kProperty = $$delegatedProperties[5];
        return (View) lazy.getValue();
    }

    public final View getIndicatorLoading() {
        Lazy lazy = this.indicatorLoading$delegate;
        KProperty kProperty = $$delegatedProperties[7];
        return (View) lazy.getValue();
    }

    public final View getOptionLayout() {
        Lazy lazy = this.optionLayout$delegate;
        KProperty kProperty = $$delegatedProperties[8];
        return (View) lazy.getValue();
    }

    public final StoryCardView getStoryCard1() {
        Lazy lazy = this.storyCard1$delegate;
        KProperty kProperty = $$delegatedProperties[1];
        return (StoryCardView) lazy.getValue();
    }

    public final StoryCardView getStoryCard2() {
        Lazy lazy = this.storyCard2$delegate;
        KProperty kProperty = $$delegatedProperties[2];
        return (StoryCardView) lazy.getValue();
    }

    public final StoryCardView getStoryCard3() {
        Lazy lazy = this.storyCard3$delegate;
        KProperty kProperty = $$delegatedProperties[3];
        return (StoryCardView) lazy.getValue();
    }

    public final StoryCardView getStoryCard4() {
        Lazy lazy = this.storyCard4$delegate;
        KProperty kProperty = $$delegatedProperties[4];
        return (StoryCardView) lazy.getValue();
    }

    public final TextView getTvCategoryTitle() {
        Lazy lazy = this.tvCategoryTitle$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (TextView) lazy.getValue();
    }

    public final Area getAdapter() {
        return this.adapter;
    }

    public final void setAdapter(Area area) {
        this.adapter = area;
    }

    public final String getTAG() {
        return this.TAG;
    }

    public final OptionClickListener getListener() {
        return this.listener;
    }

    public final void setListener(OptionClickListener optionClickListener) {
        this.listener = optionClickListener;
    }

    public final StorySections getStorySection() {
        return this.storySection;
    }

    public final void setStorySection(StorySections storySections) {
        this.storySection = storySections;
    }

    public final int getCurWindowIndex() {
        return this.curWindowIndex;
    }

    public final void setCurWindowIndex(int i) {
        this.curWindowIndex = i;
    }

    public final NVContext getNvContext() {
        return this.nvContext;
    }

    public final void setNvContext(NVContext nVContext) {
        this.nvContext = nVContext;
    }

    public final ApiService getApiService() {
        return this.apiService;
    }

    public final void setApiService(ApiService apiService) {
        this.apiService = apiService;
    }

    public final ContentLanguageService getLanguageService() {
        return this.languageService;
    }

    public final void setLanguageService(ContentLanguageService contentLanguageService) {
        this.languageService = contentLanguageService;
    }

    public final ApiRequest getApiRequest() {
        return this.apiRequest;
    }

    public final void setApiRequest(ApiRequest apiRequest) {
        this.apiRequest = apiRequest;
    }

    public final String get_nextPageToken() {
        return this._nextPageToken;
    }

    public final void set_nextPageToken(String str) {
        this._nextPageToken = str;
    }

    public final int getTopicId() {
        return this.topicId;
    }

    public final void setTopicId(int i) {
        this.topicId = i;
    }

    public final ArrayList<Blog> getStoryList() {
        return this.storyList;
    }

    public final void setStoryList(ArrayList<Blog> arrayList) {
        Intrinsics.checkParameterIsNotNull(arrayList, "<set-?>");
        this.storyList = arrayList;
    }

    public final Map<Integer, Community> getCommunityInfoMapping() {
        return this.communityInfoMapping;
    }

    public final void setCommunityInfoMapping(Map<Integer, Community> map) {
        this.communityInfoMapping = map;
    }

    public final Map<Integer, User> getUserInfoMapping() {
        return this.userInfoMapping;
    }

    public final void setUserInfoMapping(Map<Integer, User> map) {
        this.userInfoMapping = map;
    }

    public StorySectionItemView(Context context) {
        super(context);
        String simpleName = StorySectionItemView.class.getSimpleName();
        Intrinsics.checkExpressionValueIsNotNull(simpleName, "StorySectionItemView::class.java.simpleName");
        this.TAG = simpleName;
        this.tvCategoryTitle$delegate = bind(R.id.title);
        this.storyCard1$delegate = bind(R.id.card_1);
        this.storyCard2$delegate = bind(R.id.card_2);
        this.storyCard3$delegate = bind(R.id.card_3);
        this.storyCard4$delegate = bind(R.id.card_4);
        this.btnSeeAll$delegate = bind(R.id.see_all_layout);
        this.btnRefresh$delegate = bind(R.id.refresh_layout);
        this.indicatorLoading$delegate = bind(R.id.change_page_loading);
        this.optionLayout$delegate = bind(R.id.option_layout);
        this.loadingAnimator$delegate = LazyKt__LazyJVMKt.lazy(new Function0<ObjectAnimator>() { // from class: com.narvii.topic.widgets.StorySectionItemView$loadingAnimator$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ObjectAnimator invoke() {
                return this.this$0.lazyInitLoadingAnimator();
            }
        });
        this.storyList = new ArrayList<>();
        this.communityInfoMapping = new HashMap();
        this.userInfoMapping = new HashMap();
        this.animationListener = new Animator.AnimatorListener() { // from class: com.narvii.topic.widgets.StorySectionItemView$animationListener$1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                StorySectionItemView storySectionItemView = this.this$0;
                storySectionItemView.setCurWindowIndex(storySectionItemView.getCurWindowIndex() + 1);
                this.this$0.updateStory();
            }
        };
    }

    public StorySectionItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        String simpleName = StorySectionItemView.class.getSimpleName();
        Intrinsics.checkExpressionValueIsNotNull(simpleName, "StorySectionItemView::class.java.simpleName");
        this.TAG = simpleName;
        this.tvCategoryTitle$delegate = bind(R.id.title);
        this.storyCard1$delegate = bind(R.id.card_1);
        this.storyCard2$delegate = bind(R.id.card_2);
        this.storyCard3$delegate = bind(R.id.card_3);
        this.storyCard4$delegate = bind(R.id.card_4);
        this.btnSeeAll$delegate = bind(R.id.see_all_layout);
        this.btnRefresh$delegate = bind(R.id.refresh_layout);
        this.indicatorLoading$delegate = bind(R.id.change_page_loading);
        this.optionLayout$delegate = bind(R.id.option_layout);
        this.loadingAnimator$delegate = LazyKt__LazyJVMKt.lazy(new Function0<ObjectAnimator>() { // from class: com.narvii.topic.widgets.StorySectionItemView$loadingAnimator$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ObjectAnimator invoke() {
                return this.this$0.lazyInitLoadingAnimator();
            }
        });
        this.storyList = new ArrayList<>();
        this.communityInfoMapping = new HashMap();
        this.userInfoMapping = new HashMap();
        this.animationListener = new Animator.AnimatorListener() { // from class: com.narvii.topic.widgets.StorySectionItemView$animationListener$1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                StorySectionItemView storySectionItemView = this.this$0;
                storySectionItemView.setCurWindowIndex(storySectionItemView.getCurWindowIndex() + 1);
                this.this$0.updateStory();
            }
        };
    }

    public StorySectionItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        String simpleName = StorySectionItemView.class.getSimpleName();
        Intrinsics.checkExpressionValueIsNotNull(simpleName, "StorySectionItemView::class.java.simpleName");
        this.TAG = simpleName;
        this.tvCategoryTitle$delegate = bind(R.id.title);
        this.storyCard1$delegate = bind(R.id.card_1);
        this.storyCard2$delegate = bind(R.id.card_2);
        this.storyCard3$delegate = bind(R.id.card_3);
        this.storyCard4$delegate = bind(R.id.card_4);
        this.btnSeeAll$delegate = bind(R.id.see_all_layout);
        this.btnRefresh$delegate = bind(R.id.refresh_layout);
        this.indicatorLoading$delegate = bind(R.id.change_page_loading);
        this.optionLayout$delegate = bind(R.id.option_layout);
        this.loadingAnimator$delegate = LazyKt__LazyJVMKt.lazy(new Function0<ObjectAnimator>() { // from class: com.narvii.topic.widgets.StorySectionItemView$loadingAnimator$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ObjectAnimator invoke() {
                return this.this$0.lazyInitLoadingAnimator();
            }
        });
        this.storyList = new ArrayList<>();
        this.communityInfoMapping = new HashMap();
        this.userInfoMapping = new HashMap();
        this.animationListener = new Animator.AnimatorListener() { // from class: com.narvii.topic.widgets.StorySectionItemView$animationListener$1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                StorySectionItemView storySectionItemView = this.this$0;
                storySectionItemView.setCurWindowIndex(storySectionItemView.getCurWindowIndex() + 1);
                this.this$0.updateStory();
            }
        };
    }

    public final <T extends View> Lazy<T> bind(final int i) {
        return LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, new Function0<T>() { // from class: com.narvii.topic.widgets.StorySectionItemView.bind.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Incorrect return type in method signature: ()TT; */
            @Override // kotlin.jvm.functions.Function0
            public final View invoke() {
                return StorySectionItemView.this.findViewById(i);
            }
        });
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getLoadingAnimator().cancel();
    }

    public final void setAttachInfo(Map<Integer, Community> map, Map<Integer, User> map2) {
        this.communityInfoMapping = map;
        this.userInfoMapping = map2;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        getBtnRefresh().setOnClickListener(new View.OnClickListener() { // from class: com.narvii.topic.widgets.StorySectionItemView.onFinishInflate.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Area adapter = StorySectionItemView.this.getAdapter();
                if (adapter != null && (adapter instanceof NVRecyclerViewBaseAdapter)) {
                    LogEvent.clickBuilder((NVContext) adapter, ActSemantic.refresh).area(StorySectionItemView.this.areaName()).send();
                }
                StorySectionItemView.this.onRefresh();
            }
        });
        getBtnSeeAll().setOnClickListener(new View.OnClickListener() { // from class: com.narvii.topic.widgets.StorySectionItemView.onFinishInflate.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View v) {
                Area adapter = StorySectionItemView.this.getAdapter();
                if (adapter != null && (adapter instanceof NVRecyclerViewBaseAdapter)) {
                    LogEvent.clickBuilder((NVContext) adapter, ActSemantic.listViewEnter).area(StorySectionItemView.this.areaName()).send();
                }
                OptionClickListener listener = StorySectionItemView.this.getListener();
                if (listener != null) {
                    Intrinsics.checkExpressionValueIsNotNull(v, "v");
                    listener.onSeeAllClicked(v);
                }
            }
        });
        getStoryCard1().setOnClickListener(new View.OnClickListener() { // from class: com.narvii.topic.widgets.StorySectionItemView.onFinishInflate.3
            @Override // android.view.View.OnClickListener
            public final void onClick(View v) {
                StorySectionItemView storySectionItemView = StorySectionItemView.this;
                Intrinsics.checkExpressionValueIsNotNull(v, "v");
                storySectionItemView.openStoryDetailPage(v);
            }
        });
        getStoryCard2().setOnClickListener(new View.OnClickListener() { // from class: com.narvii.topic.widgets.StorySectionItemView.onFinishInflate.4
            @Override // android.view.View.OnClickListener
            public final void onClick(View v) {
                StorySectionItemView storySectionItemView = StorySectionItemView.this;
                Intrinsics.checkExpressionValueIsNotNull(v, "v");
                storySectionItemView.openStoryDetailPage(v);
            }
        });
        getStoryCard3().setOnClickListener(new View.OnClickListener() { // from class: com.narvii.topic.widgets.StorySectionItemView.onFinishInflate.5
            @Override // android.view.View.OnClickListener
            public final void onClick(View v) {
                StorySectionItemView storySectionItemView = StorySectionItemView.this;
                Intrinsics.checkExpressionValueIsNotNull(v, "v");
                storySectionItemView.openStoryDetailPage(v);
            }
        });
        getStoryCard4().setOnClickListener(new View.OnClickListener() { // from class: com.narvii.topic.widgets.StorySectionItemView.onFinishInflate.6
            @Override // android.view.View.OnClickListener
            public final void onClick(View v) {
                StorySectionItemView storySectionItemView = StorySectionItemView.this;
                Intrinsics.checkExpressionValueIsNotNull(v, "v");
                storySectionItemView.openStoryDetailPage(v);
            }
        });
    }

    public final void showLoading(boolean z) {
        getLoadingAnimator().cancel();
        getLoadingAnimator().setRepeatCount(z ? 0 : -1);
        getLoadingAnimator().start();
    }

    public final void cancelLoading() {
        getLoadingAnimator().cancel();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ObjectAnimator lazyInitLoadingAnimator() {
        ObjectAnimator animator = ObjectAnimator.ofFloat(getIndicatorLoading(), "rotation", 360.0f);
        Intrinsics.checkExpressionValueIsNotNull(animator, "animator");
        animator.setDuration(1000L);
        return animator;
    }

    public final void openStoryDetailPage(View view) {
        Collection arrayList;
        List<Blog> list;
        Intrinsics.checkParameterIsNotNull(view, "view");
        StoryHelper storyHelper = new StoryHelper(this.nvContext);
        Object tag = view.getTag(R.id.story);
        if (!(tag instanceof Blog)) {
            tag = null;
        }
        Blog blog = (Blog) tag;
        if (blog != null) {
            StorySections storySections = this.storySection;
            if (storySections == null || (arrayList = storySections.blogList) == null) {
                arrayList = new ArrayList();
            }
            int iIndexOfId = Utils.indexOfId(arrayList, blog.id());
            if (iIndexOfId >= 0) {
                StorySections storySections2 = this.storySection;
                blog = (storySections2 == null || (list = storySections2.blogList) == null) ? null : list.get(iIndexOfId);
                if (blog == null) {
                    Intrinsics.throwNpe();
                    throw null;
                }
            }
            Area area = this.adapter;
            if (area != null && (area instanceof NVRecyclerViewBaseAdapter)) {
                ((NVRecyclerViewBaseAdapter) area).logClickEvent(blog, ActSemantic.checkDetail);
            }
            StoryListFragment.IntentBuilder intentBuilderInitFeedUser = new StoryListFragment.IntentBuilder(blog).source(StoryApi.TOPIC_PLAYER).initFeedCommunity(getCommunityInfo(blog.type == 9 ? blog.getPublishNdcId() : blog.ndcId)).initFeedUser(getUserInfo(blog.ndcId));
            StorySections storySections3 = this.storySection;
            storyHelper.openStoryDetailPageInAnotherActivity(view, intentBuilderInitFeedUser.pathSuffix(getApiSuffix(storySections3 != null ? storySections3.feedCategoryKey : null)).topicId(this.topicId).build());
        }
    }

    protected final Community getCommunityInfo(int i) {
        Map<Integer, Community> map = this.communityInfoMapping;
        if (map == null) {
            return null;
        }
        if (map != null) {
            return map.get(Integer.valueOf(i));
        }
        Intrinsics.throwNpe();
        throw null;
    }

    protected final User getUserInfo(int i) {
        Map<Integer, User> map = this.userInfoMapping;
        if (map == null) {
            return null;
        }
        if (map != null) {
            return map.get(Integer.valueOf(i));
        }
        Intrinsics.throwNpe();
        throw null;
    }

    public final void onRefresh() {
        if (this.storyList.size() > (this.curWindowIndex + 2) * 4 || this._nextPageToken == null) {
            showLoading(true);
            getLoadingAnimator().addListener(this.animationListener);
            return;
        }
        if (this.apiRequest != null) {
            return;
        }
        ObjectAnimator loadingAnimator = getLoadingAnimator();
        if (loadingAnimator != null) {
            loadingAnimator.removeListener(this.animationListener);
        }
        this.apiRequest = createApiRequest();
        showLoading(false);
        ApiService apiService = this.apiService;
        if (apiService != null) {
            apiService.exec(this.apiRequest, new ApiResponseListener<BlogListResponse>(BlogListResponse.class) { // from class: com.narvii.topic.widgets.StorySectionItemView.onRefresh.1
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, BlogListResponse blogListResponse) throws Exception {
                    String str;
                    List<Blog> listEmptyList;
                    Pagination pagination;
                    super.onFinish(apiRequest, (ApiRequest) blogListResponse);
                    StorySectionItemView storySectionItemView = StorySectionItemView.this;
                    if (blogListResponse == null || (pagination = blogListResponse.paging) == null || (str = pagination.nextPageToken) == null) {
                        str = null;
                    }
                    storySectionItemView.set_nextPageToken(str);
                    ArrayList<Blog> storyList = StorySectionItemView.this.getStoryList();
                    if (blogListResponse == null || (listEmptyList = blogListResponse.list()) == null) {
                        listEmptyList = CollectionsKt__CollectionsKt.emptyList();
                    }
                    storyList.addAll(listEmptyList);
                    StorySectionItemView storySectionItemView2 = StorySectionItemView.this;
                    storySectionItemView2.setCurWindowIndex(storySectionItemView2.getCurWindowIndex() + 1);
                    StorySectionItemView.this.updateStory();
                    StorySectionItemView.this.cancelLoading();
                    StorySectionItemView.this.setApiRequest(null);
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    super.onFail(apiRequest, i, list, str, apiResponse, th);
                    NVToast.makeText(StorySectionItemView.this.getContext(), str, 1).show();
                    StorySectionItemView.this.cancelLoading();
                    StorySectionItemView.this.setApiRequest(null);
                }
            });
        }
    }

    public final Animator.AnimatorListener getAnimationListener() {
        return this.animationListener;
    }

    public final void setSection(NVContext nvContext, int i, StorySections storySections) {
        List<Blog> listEmptyList;
        Pagination pagination;
        ApiService apiService;
        Intrinsics.checkParameterIsNotNull(nvContext, "nvContext");
        if (storySections == null) {
            return;
        }
        this.nvContext = nvContext;
        if (this.apiService == null) {
            this.apiService = (ApiService) nvContext.getService("api");
        }
        if (this.languageService == null) {
            this.languageService = (ContentLanguageService) nvContext.getService("content_language");
        }
        ApiRequest apiRequest = this.apiRequest;
        if (apiRequest != null && (apiService = this.apiService) != null) {
            apiService.abort(apiRequest);
        }
        this.storySection = storySections;
        this.storyList.clear();
        ArrayList<Blog> arrayList = this.storyList;
        StorySections storySections2 = this.storySection;
        if (storySections2 == null || (listEmptyList = storySections2.blogList) == null) {
            listEmptyList = CollectionsKt__CollectionsKt.emptyList();
        }
        arrayList.addAll(listEmptyList);
        StorySections storySections3 = this.storySection;
        this._nextPageToken = (storySections3 == null || (pagination = storySections3.paging) == null) ? null : pagination.nextPageToken;
        this.topicId = i;
        this.curWindowIndex = 0;
        TextView tvCategoryTitle = getTvCategoryTitle();
        StorySections storySections4 = this.storySection;
        tvCategoryTitle.setText(storySections4 != null ? storySections4.getSectionTitle(getContext()) : null);
        View optionLayout = getOptionLayout();
        ArrayList<Blog> arrayList2 = this.storyList;
        optionLayout.setVisibility((arrayList2 != null ? Integer.valueOf(arrayList2.size()) : null).intValue() < 4 ? 8 : 0);
        updateStory();
    }

    public final void updateStory() {
        ArrayList<Blog> arrayList = this.storyList;
        int size = arrayList.size();
        if (size == 0) {
            return;
        }
        String strAreaName = areaName();
        HashMap map = new HashMap();
        if (strAreaName != null) {
            map.put("areaName", strAreaName);
        }
        int i = this.curWindowIndex * 4;
        getOptionLayout().setVisibility(arrayList.size() >= 4 ? 0 : 8);
        Blog blog = arrayList.size() > 0 ? arrayList.get(i % size) : null;
        getStoryCard1().setStory(blog);
        getStoryCard1().setTag(R.id.story, blog);
        getStoryCard1().setVisibility(arrayList.size() > 0 ? 0 : 8);
        Blog blog2 = arrayList.size() > 1 ? arrayList.get((i + 1) % size) : null;
        getStoryCard2().setStory(blog2);
        getStoryCard2().setTag(R.id.story, blog2);
        getStoryCard2().setVisibility(arrayList.size() > 1 ? 0 : 8);
        Blog blog3 = arrayList.size() > 2 ? arrayList.get((i + 2) % size) : null;
        getStoryCard3().setStory(blog3);
        getStoryCard3().setTag(R.id.story, blog3);
        getStoryCard3().setVisibility(arrayList.size() > 2 ? 0 : 8);
        Blog blog4 = arrayList.size() > 3 ? arrayList.get((i + 3) % size) : null;
        getStoryCard4().setStory(blog4);
        getStoryCard4().setTag(R.id.story, blog4);
        getStoryCard4().setVisibility(arrayList.size() <= 3 ? 8 : 0);
        LogUtils.tagLocalMap(getStoryCard1(), map);
        LogUtils.tagLocalMap(getStoryCard2(), map);
        LogUtils.tagLocalMap(getStoryCard3(), map);
        LogUtils.tagLocalMap(getStoryCard4(), map);
        LogUtils.setShownInAdapter(getStoryCard1(), this.adapter);
        LogUtils.setShownInAdapter(getStoryCard2(), this.adapter);
        LogUtils.setShownInAdapter(getStoryCard3(), this.adapter);
        LogUtils.setShownInAdapter(getStoryCard4(), this.adapter);
        LogUtils.setAttachedObject(getStoryCard1(), blog);
        LogUtils.setAttachedObject(getStoryCard2(), blog2);
        LogUtils.setAttachedObject(getStoryCard3(), blog3);
        LogUtils.setAttachedObject(getStoryCard4(), blog4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String areaName() {
        String str;
        String str2;
        StorySections storySections = this.storySection;
        if (storySections == null || (str = storySections.feedCategoryKey) == null) {
            return null;
        }
        int iHashCode = str.hashCode();
        if (iHashCode != 324042425) {
            if (iHashCode != 1085612985 || !str.equals(StorySections.SECTION_KEY_RECOMMEND)) {
                return null;
            }
            str2 = "RecommendedStoryList";
        } else {
            if (!str.equals(StorySections.SECTION_KEY_POPULAR)) {
                return null;
            }
            str2 = "PopularStoryList";
        }
        return str2;
    }

    public final ApiRequest createApiRequest() {
        ApiRequest.Builder builder = ApiRequest.builder();
        ApiRequest.Builder builderGlobal = builder.global();
        StringBuilder sb = new StringBuilder();
        sb.append("topic/");
        sb.append(this.topicId);
        sb.append("/feed/story/");
        StorySections storySections = this.storySection;
        sb.append(getApiSuffix(storySections != null ? storySections.feedCategoryKey : null));
        builderGlobal.path(sb.toString());
        String str = this._nextPageToken;
        if (str != null) {
            builder.param("pageToken", str);
        }
        builder.param("pagingType", "t");
        builder.param("type", StoryApi.TOPIC_LIST);
        builder.param("v", StoryApi.STORY_VERSION);
        ContentLanguageService contentLanguageService = this.languageService;
        builder.param(IjkMediaMeta.IJKM_KEY_LANGUAGE, contentLanguageService != null ? contentLanguageService.getRequestPrefLanguageWithLocalAsDefault() : null);
        return builder.build();
    }

    public final String getApiSuffix(String str) {
        if (!StorySections.feedKeyApiMapper.containsKey(str)) {
            Log.e("has no mapped api suffix for ke " + str + " use latest instead");
            return StorySections.feedKeyApiMapper.get(StorySections.SECTION_KEY_LATEST);
        }
        return StorySections.feedKeyApiMapper.get(str);
    }
}
