package com.narvii.topic;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Matrix;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVActivity;
import com.narvii.app.NVFragment;
import com.narvii.app.NVScrollablePagerAdapter;
import com.narvii.language.ContentLanguageService;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.Impression.ImpressionUtils;
import com.narvii.logging.Impression.StandaloneRecyclerImpressionCollector;
import com.narvii.logging.LogEvent;
import com.narvii.logging.ObjectInfo;
import com.narvii.logging.ObjectType;
import com.narvii.model.Blog;
import com.narvii.model.Media;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.story.StoryTopic;
import com.narvii.model.story.StoryTopicMetaResponse;
import com.narvii.model.story.StoryTopicTab;
import com.narvii.nested.CoordinateTabFragment;
import com.narvii.nested.NVAppBarLayout;
import com.narvii.nested.behavior.DynamicHeightSpringBehavior;
import com.narvii.nested.tab.ScrollTabViewDelegate;
import com.narvii.nested.tab.UpdateTabViewDelegate;
import com.narvii.paging.state.PageStatusView;
import com.narvii.post.entry.PostEntryDialog;
import com.narvii.post.entry.PostEntryView;
import com.narvii.share.ShareDialog;
import com.narvii.story.widgets.StoryTopicView;
import com.narvii.topic.adapter.SubTopicAdapter;
import com.narvii.topic.model.TopicTabHelper;
import com.narvii.topic.widgets.TopicBookmarkView;
import com.narvii.topic.widgets.TopicSubscribeView;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.text.TextUtils;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NVPagerTabLayout;
import com.narvii.widget.recycleview.NVRecyclerView;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* compiled from: TopicTabFragment.kt */
/* loaded from: classes3.dex */
public final class TopicTabFragment extends CoordinateTabFragment implements StoryTopicView.OnPreClickListener {
    private HashMap _$_findViewCache;
    private View bodyContent;
    private String errorMessage;
    private StandaloneRecyclerImpressionCollector<StoryTopic> ipc;
    private boolean isRequestSent;
    public ContentLanguageService languageService;
    private PageStatusView pageStatusView;
    private int status;
    private SubTopicAdapter subTopicAdapter;
    private NVRecyclerView subTopicRecycleView;
    private StoryTopic topic;
    private NVImageView topicBackground;
    private TopicSubscribeView topicBookmarkView;
    private int topicId;
    private View topicOnlineContainer;
    private TextView topicOnlineCount;
    private TextView topicTitle;
    private TextView topicTitleTop;
    private ArrayList<StoryTopicTab> tabList = new ArrayList<>();
    private final NumberFormat numFmt = NumberFormat.getInstance(Locale.getDefault());

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

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131755020;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "TopicView";
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

    public TopicTabFragment() {
        final Class<StoryTopic> cls = StoryTopic.class;
        this.ipc = new StandaloneRecyclerImpressionCollector<StoryTopic>(cls) { // from class: com.narvii.topic.TopicTabFragment$ipc$1
            @Override // com.narvii.logging.Impression.ImpressionCollector
            public void completeImpressionLogBuilder(LogEvent.Builder builder, ObjectInfo<StoryTopic> objectInfo) {
                Intrinsics.checkParameterIsNotNull(builder, "builder");
                super.completeImpressionLogBuilder(builder, objectInfo);
                builder.area("SubTopic");
            }
        };
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

    public final StoryTopic getTopic() {
        return this.topic;
    }

    public final void setTopic(StoryTopic storyTopic) {
        this.topic = storyTopic;
    }

    public final int getTopicId() {
        return this.topicId;
    }

    public final void setTopicId(int i) {
        this.topicId = i;
    }

    public final NVRecyclerView getSubTopicRecycleView() {
        return this.subTopicRecycleView;
    }

    public final void setSubTopicRecycleView(NVRecyclerView nVRecyclerView) {
        this.subTopicRecycleView = nVRecyclerView;
    }

    public final SubTopicAdapter getSubTopicAdapter() {
        return this.subTopicAdapter;
    }

    public final void setSubTopicAdapter(SubTopicAdapter subTopicAdapter) {
        this.subTopicAdapter = subTopicAdapter;
    }

    public final PageStatusView getPageStatusView() {
        return this.pageStatusView;
    }

    public final void setPageStatusView(PageStatusView pageStatusView) {
        this.pageStatusView = pageStatusView;
    }

    public final View getBodyContent() {
        return this.bodyContent;
    }

    public final void setBodyContent(View view) {
        this.bodyContent = view;
    }

    public final boolean isRequestSent() {
        return this.isRequestSent;
    }

    public final void setRequestSent(boolean z) {
        this.isRequestSent = z;
    }

    public final String getErrorMessage() {
        return this.errorMessage;
    }

    public final void setErrorMessage(String str) {
        this.errorMessage = str;
    }

    public final int getStatus() {
        return this.status;
    }

    public final void setStatus(int i) {
        this.status = i;
    }

    public final ArrayList<StoryTopicTab> getTabList() {
        return this.tabList;
    }

    public final void setTabList(ArrayList<StoryTopicTab> arrayList) {
        Intrinsics.checkParameterIsNotNull(arrayList, "<set-?>");
        this.tabList = arrayList;
    }

    public final NVImageView getTopicBackground() {
        return this.topicBackground;
    }

    public final void setTopicBackground(NVImageView nVImageView) {
        this.topicBackground = nVImageView;
    }

    public final TextView getTopicTitle() {
        return this.topicTitle;
    }

    public final void setTopicTitle(TextView textView) {
        this.topicTitle = textView;
    }

    public final TextView getTopicTitleTop() {
        return this.topicTitleTop;
    }

    public final void setTopicTitleTop(TextView textView) {
        this.topicTitleTop = textView;
    }

    public final View getTopicOnlineContainer() {
        return this.topicOnlineContainer;
    }

    public final void setTopicOnlineContainer(View view) {
        this.topicOnlineContainer = view;
    }

    public final TextView getTopicOnlineCount() {
        return this.topicOnlineCount;
    }

    public final void setTopicOnlineCount(TextView textView) {
        this.topicOnlineCount = textView;
    }

    public final TopicSubscribeView getTopicBookmarkView() {
        return this.topicBookmarkView;
    }

    public final void setTopicBookmarkView(TopicSubscribeView topicSubscribeView) {
        this.topicBookmarkView = topicSubscribeView;
    }

    public final NumberFormat getNumFmt() {
        return this.numFmt;
    }

    public final StandaloneRecyclerImpressionCollector<StoryTopic> getIpc() {
        return this.ipc;
    }

    public final void setIpc(StandaloneRecyclerImpressionCollector<StoryTopic> standaloneRecyclerImpressionCollector) {
        Intrinsics.checkParameterIsNotNull(standaloneRecyclerImpressionCollector, "<set-?>");
        this.ipc = standaloneRecyclerImpressionCollector;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.topic = (StoryTopic) JacksonUtils.readAs(getStringParam("topic"), StoryTopic.class);
        StoryTopic storyTopic = this.topic;
        this.topicId = storyTopic != null ? storyTopic.topicId : getIntParam(TopicTabFragmentKt.KEY_TOPIC_ID);
        if (bundle != null) {
            this.topic = (StoryTopic) JacksonUtils.readAs(bundle.getString("topic"), StoryTopic.class);
            StoryTopic storyTopic2 = this.topic;
            this.topicId = storyTopic2 != null ? storyTopic2.topicId : bundle.getInt(TopicTabFragmentKt.KEY_TOPIC_ID);
            this.isRequestSent = bundle.getBoolean("isRequestSent");
            this.errorMessage = bundle.getString("errorMessage");
        }
        setTitle((CharSequence) null);
        Object service = getService("content_language");
        Intrinsics.checkExpressionValueIsNotNull(service, "getService(\"content_language\")");
        this.languageService = (ContentLanguageService) service;
        this.subTopicAdapter = new SubTopicAdapter(this, this.topicId);
        SubTopicAdapter subTopicAdapter = this.subTopicAdapter;
        if (subTopicAdapter != null) {
            subTopicAdapter.setTopicPreClickListener(this);
        }
        setHasOptionsMenu(true);
    }

    @Override // com.narvii.nested.CoordinateTabFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle outState) {
        Intrinsics.checkParameterIsNotNull(outState, "outState");
        super.onSaveInstanceState(outState);
        outState.putString("topic", JacksonUtils.writeAsString(this.topic));
        outState.putInt(TopicTabFragmentKt.KEY_TOPIC_ID, this.topicId);
        outState.putBoolean("isRequestSent", this.isRequestSent);
        outState.putString("errorMessage", this.errorMessage);
    }

    @Override // com.narvii.nested.CoordinateTabFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        return inflater.inflate(R.layout.fragment_topic_tab, viewGroup, false);
    }

    @Override // com.narvii.nested.CoordinateTabFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        this.subTopicRecycleView = (NVRecyclerView) view.findViewById(R.id.recycle_layout);
        NVRecyclerView nVRecyclerView = this.subTopicRecycleView;
        if (nVRecyclerView != null) {
            nVRecyclerView.setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
        }
        NVRecyclerView nVRecyclerView2 = this.subTopicRecycleView;
        if (nVRecyclerView2 != null) {
            nVRecyclerView2.setAdapter(this.subTopicAdapter);
        }
        this.ipc.setListView(this.subTopicRecycleView);
        NVRecyclerView nVRecyclerView3 = this.subTopicRecycleView;
        if (nVRecyclerView3 != null) {
            nVRecyclerView3.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.narvii.topic.TopicTabFragment.onViewCreated.1
                @Override // android.support.v7.widget.RecyclerView.OnScrollListener
                public void onScrollStateChanged(RecyclerView recyclerView, int i) {
                    super.onScrollStateChanged(recyclerView, i);
                    if (i == 0) {
                        TopicTabFragment.this.logSubTopicImpression();
                    }
                }
            });
        }
        this.pageStatusView = (PageStatusView) view.findViewById(R.id.page_status);
        PageStatusView pageStatusView = this.pageStatusView;
        if (pageStatusView != null) {
            pageStatusView.setDarkTheme(true);
        }
        PageStatusView pageStatusView2 = this.pageStatusView;
        if (pageStatusView2 != null) {
            pageStatusView2.setEmptyView(R.layout.layout_topic_empty);
        }
        PageStatusView pageStatusView3 = this.pageStatusView;
        if (pageStatusView3 != null) {
            pageStatusView3.setErrorRetryListener(new View.OnClickListener() { // from class: com.narvii.topic.TopicTabFragment.onViewCreated.2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    TopicTabFragment.this.sendTopicMetadataRequest();
                }
            });
        }
        PageStatusView pageStatusView4 = this.pageStatusView;
        if (pageStatusView4 != null) {
            pageStatusView4.setEmptyRetryListener(new View.OnClickListener() { // from class: com.narvii.topic.TopicTabFragment.onViewCreated.3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    TopicTabFragment.this.sendTopicMetadataRequest();
                }
            });
        }
        PageStatusView pageStatusView5 = this.pageStatusView;
        if (pageStatusView5 != null) {
            pageStatusView5.setDarkThemeColor((int) 4292334547L);
        }
        sendTopicMetadataRequest();
        this.bodyContent = view.findViewById(R.id.body_content);
        view.setBackgroundColor((int) 4279438915L);
        if (getActivity() instanceof NVActivity) {
            FragmentActivity activity = getActivity();
            if (activity == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.app.NVActivity");
            }
            int statusBarOverlaySize = ((NVActivity) activity).getStatusBarOverlaySize();
            FragmentActivity activity2 = getActivity();
            if (activity2 == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.app.NVActivity");
            }
            int actionBarOverlaySize = ((NVActivity) activity2).getActionBarOverlaySize();
            View viewFindViewById = view.findViewById(R.id.coordinate_top_content);
            Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "view.findViewById<View>(…d.coordinate_top_content)");
            viewFindViewById.setMinimumHeight(statusBarOverlaySize + actionBarOverlaySize);
        }
        this.topicBackground = (NVImageView) view.findViewById(R.id.topic_background);
        NVImageView nVImageView = this.topicBackground;
        if (nVImageView != null) {
            nVImageView.setOnImageChangedListener(new NVImageView.OnImageChangedListener() { // from class: com.narvii.topic.TopicTabFragment.onViewCreated.4
                @Override // com.narvii.widget.NVImageView.OnImageChangedListener
                public final void onImageChanged(final NVImageView nVImageView2, int i, Media media) {
                    if (i == 4) {
                        Utils.post(new Runnable() { // from class: com.narvii.topic.TopicTabFragment.onViewCreated.4.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                NVImageView view2 = nVImageView2;
                                Intrinsics.checkExpressionValueIsNotNull(view2, "view");
                                NVImageView view3 = nVImageView2;
                                Intrinsics.checkExpressionValueIsNotNull(view3, "view");
                                Intrinsics.checkExpressionValueIsNotNull(view3.getDrawable(), "view.drawable");
                                float measuredWidth = (view2.getMeasuredWidth() * 1.0f) / r2.getIntrinsicWidth();
                                Matrix matrix = new Matrix();
                                matrix.setScale(measuredWidth, measuredWidth);
                                NVImageView view4 = nVImageView2;
                                Intrinsics.checkExpressionValueIsNotNull(view4, "view");
                                view4.setImageMatrix(matrix);
                            }
                        });
                    }
                }
            });
        }
        this.topicTitle = (TextView) view.findViewById(R.id.topic_title);
        this.topicTitleTop = (TextView) view.findViewById(R.id.topic_title_top);
        this.topicOnlineContainer = view.findViewById(R.id.online_member_container);
        this.topicOnlineCount = (TextView) view.findViewById(R.id.online_member_count);
        this.topicBookmarkView = (TopicSubscribeView) view.findViewById(R.id.topic_bookmark);
        updateHeaderViews();
        View view2 = this.topicOnlineContainer;
        if (view2 != null) {
            view2.setVisibility(8);
        }
        TopicSubscribeView topicSubscribeView = this.topicBookmarkView;
        if (topicSubscribeView != null) {
            topicSubscribeView.setVisibility(8);
        }
        TopicSubscribeView topicSubscribeView2 = this.topicBookmarkView;
        if (topicSubscribeView2 != null) {
            topicSubscribeView2.setTopicBookmarkListener(new TopicBookmarkView.TopicBookmarkListener() { // from class: com.narvii.topic.TopicTabFragment.onViewCreated.5
                @Override // com.narvii.topic.widgets.TopicBookmarkView.TopicBookmarkListener
                public void onBookmark(boolean z) {
                    LogEvent.clickBuilder(TopicTabFragment.this, z ? ActSemantic.bookmark : ActSemantic.unbookmark).area("BookmarkIcon").objectId(TopicTabFragment.this.getTopicId()).objectType(ObjectType.topic).objectIfNotNull(TopicTabFragment.this.getTopic()).send();
                }
            });
        }
        updateTabView(0);
        final Bundle bundle2 = new Bundle();
        bundle2.putString(Blog.KEY_DEFAULT_STORY_TOPIC, JacksonUtils.writeAsString(this.topic));
        bundle2.putInt(PostEntryDialog.KEY_ENTRY, 12);
        PostEntryView postEntryView = (PostEntryView) view.findViewById(R.id.post_entry_view);
        postEntryView.setButtonColor((int) 4285350891L);
        postEntryView.setOnPostButtonClickListener(new View.OnClickListener() { // from class: com.narvii.topic.TopicTabFragment.onViewCreated.6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view3) {
                LogEvent.clickBuilder(TopicTabFragment.this, ActSemantic.pageEnter).area("ComposeButton").send();
                Object service = TopicTabFragment.this.getService("postEntry");
                if (service == null) {
                    throw new TypeCastException("null cannot be cast to non-null type com.narvii.post.entry.PostEntryDialog");
                }
                ((PostEntryDialog) service).addTmpExtraData(bundle2);
            }
        });
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        Intrinsics.checkParameterIsNotNull(menu, "menu");
        super.onCreateOptionsMenu(menu, menuInflater);
        menu.add(0, R.string.share, 0, R.string.share).setIcon(R.drawable.ic_share).setShowAsAction(2);
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem item) {
        Intrinsics.checkParameterIsNotNull(item, "item");
        if (item.getItemId() == R.string.share && this.topic != null) {
            LogEvent.clickBuilder(this, ActSemantic.share).area("ShareIcon").objectId(this.topicId).objectType(ObjectType.topic).objectIfNotNull(this.topic).send();
            ShareDialog.getShareDialogFromTopic(this, this.topic).show();
            return true;
        }
        return super.onOptionsItemSelected(item);
    }

    @Override // com.narvii.nested.CoordinateTabFragment
    protected int defaultTabIndex() {
        if (!TextUtils.isEmpty(getStringParam(TopicTabFragmentKt.KEY_TOPIC_DEFAULT_TAB))) {
            ArrayList<StoryTopicTab> arrayList = this.tabList;
            Object obj = null;
            if (arrayList != null) {
                Iterator<T> it = arrayList.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    Object next = it.next();
                    if (getStringParam(TopicTabFragmentKt.KEY_TOPIC_DEFAULT_TAB).equals(((StoryTopicTab) next).tabKey)) {
                        obj = next;
                        break;
                    }
                }
                obj = (StoryTopicTab) obj;
            }
            return CollectionsKt___CollectionsKt.indexOf((List<? extends Object>) ((List) this.tabList), (Object) obj);
        }
        return super.defaultTabIndex();
    }

    public final void sendTopicMetadataRequest() {
        this.status = 1;
        updateViews();
        ApiRequest.Builder builderPath = ApiRequest.builder().global().path("top").path("topic/" + this.topicId + "/metadata");
        ContentLanguageService contentLanguageService = this.languageService;
        if (contentLanguageService == null) {
            Intrinsics.throwUninitializedPropertyAccessException("languageService");
            throw null;
        }
        ((ApiService) getService("api")).exec(builderPath.param(IjkMediaMeta.IJKM_KEY_LANGUAGE, contentLanguageService.getRequestPrefLanguageWithLocalAsDefault()).build(), new C11021(StoryTopicMetaResponse.class));
    }

    /* compiled from: TopicTabFragment.kt */
    /* renamed from: com.narvii.topic.TopicTabFragment$sendTopicMetadataRequest$1, reason: invalid class name and case insensitive filesystem */
    public static final class C11021 extends ApiResponseListener<StoryTopicMetaResponse> {
        C11021(Class cls) {
            super(cls);
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFinish(ApiRequest apiRequest, StoryTopicMetaResponse storyTopicMetaResponse) throws Exception {
            List<StoryTopicTab> list;
            super.onFinish(apiRequest, (ApiRequest) storyTopicMetaResponse);
            TopicTabFragment.this.setTopic(storyTopicMetaResponse != null ? storyTopicMetaResponse.topic : null);
            if ((storyTopicMetaResponse != null ? storyTopicMetaResponse.topic : null) != null) {
                TopicTabFragment.this.setTopicId(storyTopicMetaResponse.topic.topicId);
            }
            TopicTabFragment.this.getTabList().clear();
            StoryTopic topic = TopicTabFragment.this.getTopic();
            if (topic != null && (list = topic.tabList) != null) {
                Iterator<StoryTopicTab> it = list.iterator();
                while (it.hasNext()) {
                    StoryTopicTab next = it.next();
                    if (TopicTabHelper.containsTab(next != null ? next.tabKey : null)) {
                        TopicTabFragment.this.getTabList().add(next);
                    }
                }
            }
            TopicSubscribeView topicBookmarkView = TopicTabFragment.this.getTopicBookmarkView();
            int i = 0;
            if (topicBookmarkView != null) {
                topicBookmarkView.setVisibility(0);
            }
            TopicTabFragment.this.updateHeaderViews();
            if (TopicTabFragment.this.getTabList().isEmpty()) {
                TopicTabFragment.this.setStatus(3);
            } else {
                TopicTabFragment.this.setStatus(0);
            }
            SubTopicAdapter subTopicAdapter = TopicTabFragment.this.getSubTopicAdapter();
            if (subTopicAdapter != null) {
                subTopicAdapter.setStoryTopic(TopicTabFragment.this.getTopic());
            }
            Utils.post(new Runnable() { // from class: com.narvii.topic.TopicTabFragment$sendTopicMetadataRequest$1$onFinish$2
                @Override // java.lang.Runnable
                public final void run() {
                    TopicTabFragment.this.logSubTopicImpression();
                }
            });
            TopicTabFragment.this.updateViews();
            for (StoryTopicTab storyTopicTab : TopicTabFragment.this.getTabList()) {
                StoryTopic topic2 = TopicTabFragment.this.getTopic();
                if (android.text.TextUtils.equals(topic2 != null ? topic2.landingTab : null, storyTopicTab.tabKey)) {
                    TopicTabFragment.this.resetAdapter(i);
                    return;
                }
                i++;
            }
            TopicTabFragment.this.resetAdapter();
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
            super.onFail(apiRequest, i, list, str, apiResponse, th);
            TopicTabFragment.this.setStatus(2);
            TopicTabFragment.this.setErrorMessage(str);
            TopicTabFragment.this.updateViews();
        }
    }

    @Override // com.narvii.nested.CoordinateTabFragment
    protected NVScrollablePagerAdapter createAdapter() {
        if (this.tabList.isEmpty()) {
            return CoordinateTabFragment.getBaseAdapter$default(this, new ArrayList(), CollectionsKt__CollectionsKt.arrayListOf(NVFragment.class), new ArrayList(), null, 8, null);
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        Iterator<StoryTopicTab> it = this.tabList.iterator();
        while (it.hasNext()) {
            StoryTopicTab next = it.next();
            arrayList.add(TopicTabHelper.getMappedTitle(next.tabKey));
            arrayList2.add(next.title);
            Class<? extends NVFragment> mappedClzz = TopicTabHelper.getMappedClzz(next.tabKey);
            if (mappedClzz == null) {
                throw new TypeCastException("null cannot be cast to non-null type java.lang.Class<out com.narvii.app.NVFragment>");
            }
            arrayList4.add(mappedClzz);
            Bundle bundle = new Bundle();
            bundle.putInt(TopicTabFragmentKt.KEY_TOPIC_ID, this.topicId);
            bundle.putString("topic", JacksonUtils.writeAsString(this.topic));
            arrayList3.add(bundle);
        }
        return getBaseAdapter(arrayList, arrayList4, arrayList3, arrayList2);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void updateViews() {
        /*
            r4 = this;
            r4.updateTabLayout()
            com.narvii.widget.recycleview.NVRecyclerView r0 = r4.subTopicRecycleView
            r1 = 8
            r2 = 0
            if (r0 == 0) goto L25
            int r3 = r4.status
            if (r3 != 0) goto L20
            com.narvii.model.story.StoryTopic r3 = r4.topic
            if (r3 == 0) goto L1b
            java.util.List<com.narvii.model.story.StoryTopic> r3 = r3.subTopicList
            if (r3 == 0) goto L1b
            int r3 = r3.size()
            goto L1c
        L1b:
            r3 = 0
        L1c:
            if (r3 <= 0) goto L20
            r3 = 0
            goto L22
        L20:
            r3 = 8
        L22:
            r0.setVisibility(r3)
        L25:
            com.narvii.paging.state.PageStatusView r0 = r4.pageStatusView
            if (r0 == 0) goto L2e
            int r3 = r4.status
            r0.updateStatus(r3)
        L2e:
            com.narvii.paging.state.PageStatusView r0 = r4.pageStatusView
            if (r0 == 0) goto L37
            java.lang.String r3 = r4.errorMessage
            r0.setErrorMessage(r3)
        L37:
            com.narvii.paging.state.PageStatusView r0 = r4.pageStatusView
            if (r0 == 0) goto L46
            int r3 = r4.status
            if (r3 == 0) goto L41
            r3 = 0
            goto L43
        L41:
            r3 = 8
        L43:
            r0.setVisibility(r3)
        L46:
            android.view.View r0 = r4.bodyContent
            if (r0 == 0) goto L52
            int r3 = r4.status
            if (r3 != 0) goto L4f
            r1 = 0
        L4f:
            r0.setVisibility(r1)
        L52:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.topic.TopicTabFragment.updateViews():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateHeaderViews() {
        StoryTopic.Style style;
        TopicSubscribeView topicSubscribeView;
        String str;
        String str2;
        TextView textView = this.topicTitle;
        String str3 = "";
        if (textView != null) {
            StoryTopic storyTopic = this.topic;
            if (storyTopic == null || (str2 = storyTopic.name) == null) {
                str2 = "";
            }
            textView.setText(str2);
        }
        TextView textView2 = this.topicTitleTop;
        if (textView2 != null) {
            StoryTopic storyTopic2 = this.topic;
            if (storyTopic2 != null && (str = storyTopic2.name) != null) {
                str3 = str;
            }
            textView2.setText(str3);
        }
        TopicSubscribeView topicSubscribeView2 = this.topicBookmarkView;
        if (topicSubscribeView2 != null) {
            topicSubscribeView2.setTopic(this.topic);
        }
        StoryTopic storyTopic3 = this.topic;
        if (storyTopic3 != null && (topicSubscribeView = this.topicBookmarkView) != null) {
            topicSubscribeView.setTopic(storyTopic3);
        }
        NVImageView nVImageView = this.topicBackground;
        if (nVImageView != null) {
            StoryTopic storyTopic4 = this.topic;
            nVImageView.setImageUrl((storyTopic4 == null || (style = storyTopic4.style) == null) ? null : style.backgroundImage);
        }
    }

    private final void updateTabLayout() {
        boolean z = this.tabList.size() > 1;
        NVPagerTabLayout tabLayout = getTabLayout();
        if (tabLayout != null) {
            tabLayout.setVisibility(z ? 0 : 8);
        }
    }

    @Override // com.narvii.nested.CoordinateTabFragment
    public View getTabView(int i, String str) {
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.tab_layout_global_profile, (ViewGroup) null);
        View viewFindViewById = viewInflate.findViewById(R.id.tab_title);
        if (viewFindViewById == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.TextView");
        }
        ((TextView) viewFindViewById).setText(str);
        return viewInflate;
    }

    @Override // com.narvii.app.NVFragment
    protected void completePageViewEvent(LogEvent.Builder builder, boolean z) {
        Intrinsics.checkParameterIsNotNull(builder, "builder");
        super.completePageViewEvent(builder, z);
        StoryTopic storyTopic = this.topic;
        if (storyTopic != null) {
            builder.object(storyTopic);
        } else {
            builder.objectId(this.topicId).objectType(ObjectType.topic);
        }
    }

    @Override // com.narvii.nested.CoordinateTabFragment
    public void onAppBarLayoutOffsetChanged(NVAppBarLayout nVAppBarLayout, int i) {
        super.onAppBarLayoutOffsetChanged(nVAppBarLayout, i);
        if (nVAppBarLayout == null) {
            return;
        }
        nVAppBarLayout.setAlpha((((nVAppBarLayout.getHeight() - nVAppBarLayout.getMinimumHeight()) + nVAppBarLayout.getTop()) * 1.0f) / (nVAppBarLayout.getHeight() - nVAppBarLayout.getMinimumHeight()));
    }

    @Override // com.narvii.nested.CoordinateTabFragment
    public UpdateTabViewDelegate createUpdateTabViewDelegate() {
        return new ScrollTabViewDelegate();
    }

    public final void logSubTopicImpression() {
        ImpressionUtils.logStandaloneRecyclerImpression(this.subTopicRecycleView, this.ipc, this);
    }

    public final void clearSubTopicImpression() {
        ImpressionUtils.clearImpression(this.ipc, this);
    }

    @Override // com.narvii.app.NVFragment
    public void onActiveChanged(boolean z) {
        super.onActiveChanged(z);
        if (z) {
            logSubTopicImpression();
        } else {
            clearSubTopicImpression();
        }
    }

    @Override // com.narvii.story.widgets.StoryTopicView.OnPreClickListener
    public void onPreClick(StoryTopicView storyTopicView, StoryTopic storyTopic) {
        LogEvent.Builder builderArea = LogEvent.clickBuilder(this, ActSemantic.checkDetail).object(storyTopic).area("SubTopic");
        ObjectInfo impressionObjectInfo = this.ipc.getImpressionObjectInfo(storyTopic);
        if (impressionObjectInfo != null) {
            builderArea.objectInfo(impressionObjectInfo);
        }
        builderArea.send();
    }

    @Override // com.narvii.nested.CoordinateTabFragment, com.narvii.nested.NVAppBarLayout.CollapseStatusChangeListener
    public void onCollapseStatusChanged(boolean z) {
        super.onCollapseStatusChanged(z);
        if (z) {
            clearSubTopicImpression();
        } else {
            logSubTopicImpression();
        }
    }

    /* compiled from: TopicTabFragment.kt */
    public static final class Behavior extends DynamicHeightSpringBehavior {
        @Override // com.narvii.nested.behavior.DynamicHeightSpringBehavior
        public int dynamicChildId() {
            return R.id.dynamic_header;
        }

        public Behavior() {
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Behavior(Context context, AttributeSet attrs) {
            super(context, attrs);
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intrinsics.checkParameterIsNotNull(attrs, "attrs");
        }
    }
}
