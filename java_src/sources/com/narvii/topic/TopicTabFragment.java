package com.narvii.topic;

import android.content.Context;
import android.graphics.Matrix;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import com.narvii.amino.master.R;
import com.narvii.app.ComScoreSectionDispatcher;
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
import com.narvii.topic.model.TopicTabHelper;
import com.narvii.topic.widgets.TopicBookmarkView;
import com.narvii.topic.widgets.TopicSubscribeView;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NVPagerTabLayout;
import com.narvii.widget.recycleview.NVRecyclerView;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.collections.d0;
import kotlin.collections.v;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class TopicTabFragment extends CoordinateTabFragment {

    @Nullable
    private View bodyContent;

    @Nullable
    private String errorMessage;

    @NotNull
    private StandaloneRecyclerImpressionCollector<StoryTopic> ipc;
    private boolean isRequestSent;
    public ContentLanguageService languageService;

    @Nullable
    private PageStatusView pageStatusView;
    private int status;

    @Nullable
    private NVRecyclerView subTopicRecycleView;

    @Nullable
    private StoryTopic topic;

    @Nullable
    private NVImageView topicBackground;

    @Nullable
    private TopicSubscribeView topicBookmarkView;
    private int topicId;

    @Nullable
    private View topicOnlineContainer;

    @Nullable
    private TextView topicOnlineCount;

    @Nullable
    private TextView topicTitle;

    @Nullable
    private TextView topicTitleTop;

    @NotNull
    private ArrayList<StoryTopicTab> tabList = new ArrayList<>();
    private final NumberFormat numFmt = NumberFormat.getInstance(Locale.getDefault());

    public static final class Behavior extends DynamicHeightSpringBehavior {
        public Behavior() {
        }

        @Override // com.narvii.nested.behavior.DynamicHeightSpringBehavior
        public int dynamicChildId() {
            return R.id.dynamic_header;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Behavior(@NotNull Context context, @NotNull AttributeSet attrs) {
            super(context, attrs);
            t.j(context, "context");
            t.j(attrs, "attrs");
        }
    }

    /* JADX INFO: renamed from: com.narvii.topic.TopicTabFragment$sendTopicMetadataRequest$1, reason: invalid class name */
    public static final class AnonymousClass1 extends ApiResponseListener<StoryTopicMetaResponse> {
        AnonymousClass1(Class<StoryTopicMetaResponse> cls) {
            super(cls);
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFinish(@Nullable ApiRequest apiRequest, @Nullable StoryTopicMetaResponse storyTopicMetaResponse) throws Exception {
            List<StoryTopicTab> list;
            super.onFinish(apiRequest, storyTopicMetaResponse);
            TopicTabFragment.this.setTopic(storyTopicMetaResponse != null ? storyTopicMetaResponse.topic : null);
            if ((storyTopicMetaResponse != null ? storyTopicMetaResponse.topic : null) != null) {
                TopicTabFragment.this.setTopicId(storyTopicMetaResponse.topic.topicId);
            }
            TopicTabFragment.this.getTabList().clear();
            StoryTopic topic = TopicTabFragment.this.getTopic();
            if (topic != null && (list = topic.tabList) != null) {
                TopicTabFragment topicTabFragment = TopicTabFragment.this;
                Iterator<StoryTopicTab> it = list.iterator();
                while (it.hasNext()) {
                    StoryTopicTab next = it.next();
                    if (TopicTabHelper.containsTab(next != null ? next.tabKey : null)) {
                        topicTabFragment.getTabList().add(next);
                    }
                }
            }
            TopicSubscribeView topicBookmarkView = TopicTabFragment.this.getTopicBookmarkView();
            int i10 = 0;
            if (topicBookmarkView != null) {
                topicBookmarkView.setVisibility(0);
            }
            TopicTabFragment.this.updateHeaderViews();
            if (TopicTabFragment.this.getTabList().isEmpty()) {
                TopicTabFragment.this.setStatus(3);
            } else {
                TopicTabFragment.this.setStatus(0);
            }
            final TopicTabFragment topicTabFragment2 = TopicTabFragment.this;
            Utils.post(new Runnable() { // from class: com.narvii.topic.k
                @Override // java.lang.Runnable
                public final void run() {
                    TopicTabFragment.AnonymousClass1.onFinish$lambda$1(topicTabFragment2);
                }
            });
            TopicTabFragment.this.updateViews();
            for (StoryTopicTab storyTopicTab : TopicTabFragment.this.getTabList()) {
                int i11 = i10 + 1;
                StoryTopic topic2 = TopicTabFragment.this.getTopic();
                if (TextUtils.equals(topic2 != null ? topic2.landingTab : null, storyTopicTab.tabKey)) {
                    TopicTabFragment.this.resetAdapter(i10);
                    return;
                }
                i10 = i11;
            }
            TopicTabFragment.this.resetAdapter();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onFinish$lambda$1(TopicTabFragment this$0) {
            t.j(this$0, "this$0");
            this$0.logSubTopicImpression();
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFail(@Nullable ApiRequest apiRequest, int i10, @Nullable List<NameValuePair> list, @Nullable String str, @Nullable ApiResponse apiResponse, @Nullable Throwable th) {
            super.onFail(apiRequest, i10, list, str, apiResponse, th);
            TopicTabFragment.this.setStatus(2);
            TopicTabFragment.this.setErrorMessage(str);
            TopicTabFragment.this.updateViews();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$3(final NVImageView nVImageView, int i10, Media media) {
        if (i10 == 4) {
            Utils.post(new Runnable() { // from class: com.narvii.topic.f
                @Override // java.lang.Runnable
                public final void run() {
                    TopicTabFragment.onViewCreated$lambda$3$lambda$2(nVImageView);
                }
            });
        }
    }

    @Nullable
    public final View getBodyContent() {
        return this.bodyContent;
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131951629;
    }

    @Nullable
    public final String getErrorMessage() {
        return this.errorMessage;
    }

    @NotNull
    public final StandaloneRecyclerImpressionCollector<StoryTopic> getIpc() {
        return this.ipc;
    }

    public final NumberFormat getNumFmt() {
        return this.numFmt;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @NotNull
    public String getPageName() {
        return "topic_detail";
    }

    @Nullable
    public final PageStatusView getPageStatusView() {
        return this.pageStatusView;
    }

    public final int getStatus() {
        return this.status;
    }

    @Nullable
    public final NVRecyclerView getSubTopicRecycleView() {
        return this.subTopicRecycleView;
    }

    @NotNull
    public final ArrayList<StoryTopicTab> getTabList() {
        return this.tabList;
    }

    @Nullable
    public final StoryTopic getTopic() {
        return this.topic;
    }

    @Nullable
    public final NVImageView getTopicBackground() {
        return this.topicBackground;
    }

    @Nullable
    public final TopicSubscribeView getTopicBookmarkView() {
        return this.topicBookmarkView;
    }

    public final int getTopicId() {
        return this.topicId;
    }

    @Nullable
    public final View getTopicOnlineContainer() {
        return this.topicOnlineContainer;
    }

    @Nullable
    public final TextView getTopicOnlineCount() {
        return this.topicOnlineCount;
    }

    @Nullable
    public final TextView getTopicTitle() {
        return this.topicTitle;
    }

    @Nullable
    public final TextView getTopicTitleTop() {
        return this.topicTitleTop;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isGlobal() {
        return true;
    }

    public final boolean isRequestSent() {
        return this.isRequestSent;
    }

    public final void sendTopicMetadataRequest() {
        this.status = 1;
        updateViews();
        ((ApiService) getService("api")).exec(ApiRequest.builder().global().path("top").path("topic/" + this.topicId + "/metadata").param("language", getLanguageService().getRequestPrefLanguageWithLocalAsDefault()).build(), new AnonymousClass1(StoryTopicMetaResponse.class));
    }

    public final void setBodyContent(@Nullable View view) {
        this.bodyContent = view;
    }

    public final void setErrorMessage(@Nullable String str) {
        this.errorMessage = str;
    }

    public final void setIpc(@NotNull StandaloneRecyclerImpressionCollector<StoryTopic> standaloneRecyclerImpressionCollector) {
        t.j(standaloneRecyclerImpressionCollector, "<set-?>");
        this.ipc = standaloneRecyclerImpressionCollector;
    }

    public final void setLanguageService(@NotNull ContentLanguageService contentLanguageService) {
        t.j(contentLanguageService, "<set-?>");
        this.languageService = contentLanguageService;
    }

    public final void setPageStatusView(@Nullable PageStatusView pageStatusView) {
        this.pageStatusView = pageStatusView;
    }

    public final void setRequestSent(boolean z6) {
        this.isRequestSent = z6;
    }

    public final void setStatus(int i10) {
        this.status = i10;
    }

    public final void setSubTopicRecycleView(@Nullable NVRecyclerView nVRecyclerView) {
        this.subTopicRecycleView = nVRecyclerView;
    }

    public final void setTabList(@NotNull ArrayList<StoryTopicTab> arrayList) {
        t.j(arrayList, "<set-?>");
        this.tabList = arrayList;
    }

    public final void setTopic(@Nullable StoryTopic storyTopic) {
        this.topic = storyTopic;
    }

    public final void setTopicBackground(@Nullable NVImageView nVImageView) {
        this.topicBackground = nVImageView;
    }

    public final void setTopicBookmarkView(@Nullable TopicSubscribeView topicSubscribeView) {
        this.topicBookmarkView = topicSubscribeView;
    }

    public final void setTopicId(int i10) {
        this.topicId = i10;
    }

    public final void setTopicOnlineContainer(@Nullable View view) {
        this.topicOnlineContainer = view;
    }

    public final void setTopicOnlineCount(@Nullable TextView textView) {
        this.topicOnlineCount = textView;
    }

    public final void setTopicTitle(@Nullable TextView textView) {
        this.topicTitle = textView;
    }

    public final void setTopicTitleTop(@Nullable TextView textView) {
        this.topicTitleTop = textView;
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
        boolean z6 = this.tabList.size() > 1;
        NVPagerTabLayout tabLayout = getTabLayout();
        if (tabLayout == null) {
            return;
        }
        tabLayout.setVisibility(z6 ? 0 : 8);
    }

    public final void clearSubTopicImpression() {
        ImpressionUtils.clearImpression(this.ipc, this);
    }

    @Override // com.narvii.app.NVFragment
    protected void completePageViewEvent(@NotNull LogEvent.Builder builder, boolean z6) {
        t.j(builder, "builder");
        super.completePageViewEvent(builder, z6);
        StoryTopic storyTopic = this.topic;
        if (storyTopic != null) {
            builder.object(storyTopic);
        } else {
            builder.objectId(this.topicId).objectType(ObjectType.topic);
        }
    }

    @Override // com.narvii.nested.CoordinateTabFragment
    @NotNull
    protected NVScrollablePagerAdapter createAdapter() {
        if (this.tabList.isEmpty()) {
            return CoordinateTabFragment.getBaseAdapter$default(this, new ArrayList(), v.g(NVFragment.class), new ArrayList(), null, 8, null);
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        for (StoryTopicTab storyTopicTab : this.tabList) {
            arrayList.add(TopicTabHelper.getMappedTitle(storyTopicTab.tabKey));
            arrayList2.add(storyTopicTab.title);
            Class<? extends NVFragment> mappedClzz = TopicTabHelper.getMappedClzz(storyTopicTab.tabKey);
            t.h(mappedClzz, "null cannot be cast to non-null type java.lang.Class<out com.narvii.app.NVFragment>");
            arrayList4.add(mappedClzz);
            Bundle bundle = new Bundle();
            bundle.putInt(TopicTabFragmentKt.KEY_TOPIC_ID, this.topicId);
            bundle.putString("topic", JacksonUtils.writeAsString(this.topic));
            arrayList3.add(bundle);
        }
        return getBaseAdapter(arrayList, arrayList4, arrayList3, arrayList2);
    }

    @Override // com.narvii.nested.CoordinateTabFragment
    @Nullable
    public UpdateTabViewDelegate createUpdateTabViewDelegate() {
        return new ScrollTabViewDelegate();
    }

    @Override // com.narvii.nested.CoordinateTabFragment
    protected int defaultTabIndex() {
        if (com.narvii.util.text.TextUtils.isEmpty(getStringParam(TopicTabFragmentKt.KEY_TOPIC_DEFAULT_TAB))) {
            return super.defaultTabIndex();
        }
        for (Object obj : this.tabList) {
            if (t.e(getStringParam(TopicTabFragmentKt.KEY_TOPIC_DEFAULT_TAB), ((StoryTopicTab) obj).tabKey)) {
                return d0.o0(this.tabList, (StoryTopicTab) obj);
            }
        }
        obj = null;
        return d0.o0(this.tabList, (StoryTopicTab) obj);
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

    public final void logSubTopicImpression() {
        ImpressionUtils.logStandaloneRecyclerImpression(this.subTopicRecycleView, this.ipc, this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(@NotNull Menu menu, @NotNull MenuInflater inflater) {
        t.j(menu, "menu");
        t.j(inflater, "inflater");
        super.onCreateOptionsMenu(menu, inflater);
        menu.add(0, R.string.share, 0, R.string.share).setIcon(R.drawable.ic_share).setShowAsAction(2);
    }

    @Override // com.narvii.nested.CoordinateTabFragment, androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        t.j(inflater, "inflater");
        return inflater.inflate(R.layout.fragment_topic_tab, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(@NotNull MenuItem item) {
        t.j(item, "item");
        if (item.getItemId() != R.string.share || this.topic == null) {
            return super.onOptionsItemSelected(item);
        }
        LogEvent.clickBuilder(this, ActSemantic.share).area("ShareIcon").objectId(this.topicId).objectType(ObjectType.topic).objectIfNotNull(this.topic).send();
        ShareDialog.getShareDialogFromTopic(this, this.topic).show();
        return true;
    }

    @Override // com.narvii.nested.CoordinateTabFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(@NotNull Bundle outState) {
        t.j(outState, "outState");
        super.onSaveInstanceState(outState);
        outState.putString("topic", JacksonUtils.writeAsString(this.topic));
        outState.putInt(TopicTabFragmentKt.KEY_TOPIC_ID, this.topicId);
        outState.putBoolean("isRequestSent", this.isRequestSent);
        outState.putString("errorMessage", this.errorMessage);
    }

    public TopicTabFragment() {
        final Class<StoryTopic> cls = StoryTopic.class;
        this.ipc = new StandaloneRecyclerImpressionCollector<StoryTopic>(cls) { // from class: com.narvii.topic.TopicTabFragment$ipc$1
            @Override // com.narvii.logging.Impression.ImpressionCollector
            public void completeImpressionLogBuilder(@NotNull LogEvent.Builder builder, @Nullable ObjectInfo<StoryTopic> objectInfo) {
                t.j(builder, "builder");
                super.completeImpressionLogBuilder(builder, objectInfo);
                builder.area("SubTopic");
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$0(TopicTabFragment this$0, View view) {
        t.j(this$0, "this$0");
        this$0.sendTopicMetadataRequest();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$1(TopicTabFragment this$0, View view) {
        t.j(this$0, "this$0");
        this$0.sendTopicMetadataRequest();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$3$lambda$2(NVImageView nVImageView) {
        float measuredWidth = (nVImageView.getMeasuredWidth() * 1.0f) / nVImageView.getDrawable().getIntrinsicWidth();
        Matrix matrix = new Matrix();
        matrix.setScale(measuredWidth, measuredWidth);
        nVImageView.setImageMatrix(matrix);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$4(TopicTabFragment this$0, Bundle extraData, View view) {
        t.j(this$0, "this$0");
        t.j(extraData, "$extraData");
        LogEvent.clickBuilder(this$0, ActSemantic.pageEnter).area("ComposeButton").send();
        Object service = this$0.getService("postEntry");
        t.h(service, "null cannot be cast to non-null type com.narvii.post.entry.PostEntryDialog");
        ((PostEntryDialog) service).addTmpExtraData(extraData);
    }

    @Override // com.narvii.nested.CoordinateTabFragment
    @Nullable
    public View getTabView(int i10, @Nullable String str) {
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.tab_layout_global_profile, (ViewGroup) null);
        View viewFindViewById = viewInflate.findViewById(R.id.tab_title);
        t.h(viewFindViewById, "null cannot be cast to non-null type android.widget.TextView");
        ((TextView) viewFindViewById).setText(str);
        return viewInflate;
    }

    @Override // com.narvii.app.NVFragment
    public void onActiveChanged(boolean z6) {
        super.onActiveChanged(z6);
        if (z6) {
            logSubTopicImpression();
        } else {
            clearSubTopicImpression();
        }
    }

    @Override // com.narvii.nested.CoordinateTabFragment
    public void onAppBarLayoutOffsetChanged(@Nullable NVAppBarLayout nVAppBarLayout, int i10) {
        super.onAppBarLayoutOffsetChanged(nVAppBarLayout, i10);
        if (nVAppBarLayout == null) {
            return;
        }
        nVAppBarLayout.setAlpha((((nVAppBarLayout.getHeight() - nVAppBarLayout.getMinimumHeight()) + nVAppBarLayout.getTop()) * 1.0f) / (nVAppBarLayout.getHeight() - nVAppBarLayout.getMinimumHeight()));
    }

    @Override // com.narvii.nested.CoordinateTabFragment, com.narvii.nested.NVAppBarLayout.CollapseStatusChangeListener
    public void onCollapseStatusChanged(boolean z6) {
        super.onCollapseStatusChanged(z6);
        if (z6) {
            clearSubTopicImpression();
        } else {
            logSubTopicImpression();
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        int intParam;
        int i10;
        super.onCreate(bundle);
        ComScoreSectionDispatcher.INSTANCE.sectionChangeToNone();
        StoryTopic storyTopic = (StoryTopic) JacksonUtils.readAs(getStringParam("topic"), StoryTopic.class);
        this.topic = storyTopic;
        if (storyTopic != null) {
            intParam = storyTopic.topicId;
        } else {
            intParam = getIntParam(TopicTabFragmentKt.KEY_TOPIC_ID);
        }
        this.topicId = intParam;
        if (bundle != null) {
            StoryTopic storyTopic2 = (StoryTopic) JacksonUtils.readAs(bundle.getString("topic"), StoryTopic.class);
            this.topic = storyTopic2;
            if (storyTopic2 != null) {
                i10 = storyTopic2.topicId;
            } else {
                i10 = bundle.getInt(TopicTabFragmentKt.KEY_TOPIC_ID);
            }
            this.topicId = i10;
            this.isRequestSent = bundle.getBoolean("isRequestSent");
            this.errorMessage = bundle.getString("errorMessage");
        }
        setTitle((CharSequence) null);
        Object service = getService("content_language");
        t.i(service, "getService(...)");
        setLanguageService((ContentLanguageService) service);
        setHasOptionsMenu(true);
    }

    @Override // com.narvii.nested.CoordinateTabFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        t.j(view, "view");
        super.onViewCreated(view, bundle);
        PageStatusView pageStatusView = (PageStatusView) view.findViewById(R.id.page_status);
        this.pageStatusView = pageStatusView;
        if (pageStatusView != null) {
            pageStatusView.setDarkTheme(true);
        }
        PageStatusView pageStatusView2 = this.pageStatusView;
        if (pageStatusView2 != null) {
            pageStatusView2.setEmptyView(R.layout.layout_topic_empty);
        }
        PageStatusView pageStatusView3 = this.pageStatusView;
        if (pageStatusView3 != null) {
            pageStatusView3.setErrorRetryListener(new View.OnClickListener() { // from class: com.narvii.topic.g
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    TopicTabFragment.onViewCreated$lambda$0(this.f2784a, view2);
                }
            });
        }
        PageStatusView pageStatusView4 = this.pageStatusView;
        if (pageStatusView4 != null) {
            pageStatusView4.setEmptyRetryListener(new View.OnClickListener() { // from class: com.narvii.topic.h
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    TopicTabFragment.onViewCreated$lambda$1(this.f2785a, view2);
                }
            });
        }
        PageStatusView pageStatusView5 = this.pageStatusView;
        if (pageStatusView5 != null) {
            pageStatusView5.setDarkThemeColor(-2632749);
        }
        sendTopicMetadataRequest();
        this.bodyContent = view.findViewById(R.id.body_content);
        view.setBackgroundColor(-15528381);
        if (getActivity() instanceof NVActivity) {
            FragmentActivity activity = getActivity();
            t.h(activity, "null cannot be cast to non-null type com.narvii.app.NVActivity");
            int statusBarOverlaySize = ((NVActivity) activity).getStatusBarOverlaySize();
            FragmentActivity activity2 = getActivity();
            t.h(activity2, "null cannot be cast to non-null type com.narvii.app.NVActivity");
            view.findViewById(R.id.coordinate_top_content).setMinimumHeight(statusBarOverlaySize + ((NVActivity) activity2).getActionBarOverlaySize());
        }
        NVImageView nVImageView = (NVImageView) view.findViewById(R.id.topic_background);
        this.topicBackground = nVImageView;
        if (nVImageView != null) {
            nVImageView.setOnImageChangedListener(new NVImageView.OnImageChangedListener() { // from class: com.narvii.topic.i
                @Override // com.narvii.widget.NVImageView.OnImageChangedListener
                public final void onImageChanged(NVImageView nVImageView2, int i10, Media media) {
                    TopicTabFragment.onViewCreated$lambda$3(nVImageView2, i10, media);
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
            topicSubscribeView2.setTopicBookmarkListener(new TopicBookmarkView.TopicBookmarkListener() { // from class: com.narvii.topic.TopicTabFragment.onViewCreated.4
                @Override // com.narvii.topic.widgets.TopicBookmarkView.TopicBookmarkListener
                public void onBookmark(boolean z6) {
                    LogEvent.clickBuilder(TopicTabFragment.this, z6 ? ActSemantic.bookmark : ActSemantic.unbookmark).area("BookmarkIcon").objectId(TopicTabFragment.this.getTopicId()).objectType(ObjectType.topic).objectIfNotNull(TopicTabFragment.this.getTopic()).send();
                }
            });
        }
        updateTabView(0);
        final Bundle bundle2 = new Bundle();
        bundle2.putString(Blog.KEY_DEFAULT_STORY_TOPIC, JacksonUtils.writeAsString(this.topic));
        bundle2.putInt(PostEntryDialog.KEY_ENTRY, 12);
        PostEntryView postEntryView = (PostEntryView) view.findViewById(R.id.post_entry_view);
        postEntryView.setButtonColor(-9616405);
        postEntryView.setOnPostButtonClickListener(new View.OnClickListener() { // from class: com.narvii.topic.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view3) {
                TopicTabFragment.onViewCreated$lambda$4(this.f2786a, bundle2, view3);
            }
        });
    }

    public final void updateViews() {
        int i10;
        int i11;
        StoryTopic storyTopic;
        List<StoryTopic> list;
        updateTabLayout();
        NVRecyclerView nVRecyclerView = this.subTopicRecycleView;
        int i12 = 8;
        if (nVRecyclerView != null) {
            if (this.status == 0 && (storyTopic = this.topic) != null && (list = storyTopic.subTopicList) != null && list.size() > 0) {
                i11 = 0;
            } else {
                i11 = 8;
            }
            nVRecyclerView.setVisibility(i11);
        }
        PageStatusView pageStatusView = this.pageStatusView;
        if (pageStatusView != null) {
            pageStatusView.updateStatus(this.status);
        }
        PageStatusView pageStatusView2 = this.pageStatusView;
        if (pageStatusView2 != null) {
            pageStatusView2.setErrorMessage(this.errorMessage);
        }
        PageStatusView pageStatusView3 = this.pageStatusView;
        if (pageStatusView3 != null) {
            if (this.status != 0) {
                i10 = 0;
            } else {
                i10 = 8;
            }
            pageStatusView3.setVisibility(i10);
        }
        View view = this.bodyContent;
        if (view != null) {
            if (this.status == 0) {
                i12 = 0;
            }
            view.setVisibility(i12);
        }
    }
}
