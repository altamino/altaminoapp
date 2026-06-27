package com.narvii.topic.adapter;

import android.content.Intent;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.language.ContentLanguageService;
import com.narvii.logging.LogEvent;
import com.narvii.logging.LogUtils;
import com.narvii.logging.ObjectInfo;
import com.narvii.model.Blog;
import com.narvii.model.Community;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.paging.NVRecyclerViewFragment;
import com.narvii.paging.adapter.NVRecyclerViewAdapter;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.paging.source.DataSource;
import com.narvii.paging.source.PageRequestCallback;
import com.narvii.paging.storage.PageStorage;
import com.narvii.story.StoryApi;
import com.narvii.topic.TopicSubCategoryStoryListFragmentKt;
import com.narvii.topic.TopicSubSectionStoryListFragment;
import com.narvii.topic.TopicTabFragmentKt;
import com.narvii.topic.adapter.StorySectionAdapter;
import com.narvii.topic.model.StorySectionListResponse;
import com.narvii.topic.model.StorySections;
import com.narvii.topic.widgets.StorySectionItemView;
import com.narvii.util.Callback;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$IntRef;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* compiled from: StorySectionAdapter.kt */
/* loaded from: classes3.dex */
public final class StorySectionAdapter extends NVRecyclerViewAdapter<StorySections> implements NotificationListener {
    private Map<Integer, Community> communityInfoMapping;
    public MyDataSource innerDataSource;
    private boolean requestFinished;
    private List<? extends StorySections> sectionList;
    private final int topicId;
    private Map<Integer, User> userInfoMapping;

    public StorySectionAdapter(NVContext nVContext, int i) {
        super(nVContext);
        this.topicId = i;
        this.communityInfoMapping = new HashMap();
        this.userInfoMapping = new HashMap();
        this.sectionList = new ArrayList();
    }

    public final int getTopicId() {
        return this.topicId;
    }

    public final MyDataSource getInnerDataSource() {
        MyDataSource myDataSource = this.innerDataSource;
        if (myDataSource != null) {
            return myDataSource;
        }
        Intrinsics.throwUninitializedPropertyAccessException("innerDataSource");
        throw null;
    }

    public final void setInnerDataSource(MyDataSource myDataSource) {
        Intrinsics.checkParameterIsNotNull(myDataSource, "<set-?>");
        this.innerDataSource = myDataSource;
    }

    public final Map<Integer, Community> getCommunityInfoMapping() {
        return this.communityInfoMapping;
    }

    public final void setCommunityInfoMapping(Map<Integer, Community> map) {
        Intrinsics.checkParameterIsNotNull(map, "<set-?>");
        this.communityInfoMapping = map;
    }

    public final Map<Integer, User> getUserInfoMapping$Amino_bundle() {
        return this.userInfoMapping;
    }

    public final void setUserInfoMapping$Amino_bundle(Map<Integer, User> map) {
        Intrinsics.checkParameterIsNotNull(map, "<set-?>");
        this.userInfoMapping = map;
    }

    public final List<StorySections> getSectionList() {
        return this.sectionList;
    }

    public final void setSectionList(List<? extends StorySections> list) {
        Intrinsics.checkParameterIsNotNull(list, "<set-?>");
        this.sectionList = list;
    }

    public final boolean getRequestFinished() {
        return this.requestFinished;
    }

    public final void setRequestFinished(boolean z) {
        this.requestFinished = z;
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void onAttach() {
        super.onAttach();
        MyDataSource myDataSource = this.innerDataSource;
        if (myDataSource == null) {
            Intrinsics.throwUninitializedPropertyAccessException("innerDataSource");
            throw null;
        }
        MyDataSource.sendRequest$default(myDataSource, null, false, 2, null);
        addImpressionCollector(new StorySectionImpressionCollector(Blog.class) { // from class: com.narvii.topic.adapter.StorySectionAdapter.onAttach.1
            @Override // com.narvii.logging.Impression.ImpressionCollector
            public void completeImpressionLogBuilder(LogEvent.Builder builder, ObjectInfo<Blog> objectInfo) {
                Intrinsics.checkParameterIsNotNull(builder, "builder");
                super.completeImpressionLogBuilder(builder, objectInfo);
                if ((objectInfo != null ? objectInfo.localHashMap : null) == null || objectInfo.localHashMap.get("areaName") == null) {
                    return;
                }
                builder.area(String.valueOf(objectInfo.localHashMap.get("areaName")));
            }
        });
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int i) {
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        View cell = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_story_category, parent, false);
        LogUtils.setShownInAdapter(cell, this);
        if (cell instanceof StorySectionItemView) {
            ((StorySectionItemView) cell).setAdapter(this);
        }
        View viewFindViewById = cell.findViewById(R.id.story_section_layout);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "cell.findViewById(R.id.story_section_layout)");
        ((StorySectionItemView) viewFindViewById).setAttachInfo(this.communityInfoMapping, this.userInfoMapping);
        Intrinsics.checkExpressionValueIsNotNull(cell, "cell");
        return new StorySectionViewHolder(this, cell);
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewAdapter, com.narvii.paging.source.DataSourceChangeListener
    public void onPageLoadStatusChanged() {
        super.onPageLoadStatusChanged();
        notifyDataSetChanged();
        this.dataSetEventDispatcher.dispatch(new Callback<NVRecyclerViewBaseAdapter.DataSetChangeListener>() { // from class: com.narvii.topic.adapter.StorySectionAdapter.onPageLoadStatusChanged.1
            @Override // com.narvii.util.Callback
            public final void call(NVRecyclerViewBaseAdapter.DataSetChangeListener dataSetChangeListener) {
                dataSetChangeListener.onDataSetChanged();
            }
        });
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewAdapter, com.narvii.paging.source.DataSourceChangeListener
    public void onPageListChanged(PageStorage<?> pageStorage) {
        super.onPageListChanged(pageStorage);
        notifyDataSetChanged();
        this.dataSetEventDispatcher.dispatch(new Callback<NVRecyclerViewBaseAdapter.DataSetChangeListener>() { // from class: com.narvii.topic.adapter.StorySectionAdapter.onPageListChanged.1
            @Override // com.narvii.util.Callback
            public final void call(NVRecyclerViewBaseAdapter.DataSetChangeListener dataSetChangeListener) {
                dataSetChangeListener.onDataSetChanged();
            }
        });
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewAdapter
    public DataSource<StorySections> createDataSource(NVContext nVContext) {
        this.innerDataSource = new MyDataSource(nVContext);
        MyDataSource myDataSource = this.innerDataSource;
        if (myDataSource != null) {
            return myDataSource;
        }
        Intrinsics.throwUninitializedPropertyAccessException("innerDataSource");
        throw null;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
        Intrinsics.checkParameterIsNotNull(holder, "holder");
        if (holder instanceof StorySectionViewHolder) {
            ((StorySectionViewHolder) holder).bindSection(getItem(i));
        }
    }

    /* compiled from: StorySectionAdapter.kt */
    public final class StorySectionViewHolder extends RecyclerView.ViewHolder {
        private StorySectionItemView sectionItemView;
        private StorySections storySections;
        final /* synthetic */ StorySectionAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public StorySectionViewHolder(StorySectionAdapter storySectionAdapter, View itemView) {
            super(itemView);
            Intrinsics.checkParameterIsNotNull(itemView, "itemView");
            this.this$0 = storySectionAdapter;
            StorySectionItemView.OptionClickListener optionClickListener = new StorySectionItemView.OptionClickListener() { // from class: com.narvii.topic.adapter.StorySectionAdapter$StorySectionViewHolder$listener$1
                @Override // com.narvii.topic.widgets.StorySectionItemView.OptionClickListener
                public void onRefreshClicked(View view) {
                    Intrinsics.checkParameterIsNotNull(view, "view");
                }

                @Override // com.narvii.topic.widgets.StorySectionItemView.OptionClickListener
                public void onSeeAllClicked(View view) {
                    Intrinsics.checkParameterIsNotNull(view, "view");
                    Intent intent = FragmentWrapperActivity.intent(TopicSubSectionStoryListFragment.class);
                    StorySections storySections = this.this$0.getStorySections();
                    intent.putExtra(TopicSubCategoryStoryListFragmentKt.KEY_SECTION_KEY, storySections != null ? storySections.feedCategoryKey : null);
                    intent.putExtra(TopicTabFragmentKt.KEY_TOPIC_ID, this.this$0.this$0.getTopicId());
                    view.getContext().startActivity(intent);
                }
            };
            this.sectionItemView = (StorySectionItemView) itemView.findViewById(R.id.story_section_layout);
            StorySectionItemView storySectionItemView = this.sectionItemView;
            if (storySectionItemView != null) {
                storySectionItemView.setListener(optionClickListener);
            }
        }

        public final StorySections getStorySections() {
            return this.storySections;
        }

        public final void setStorySections(StorySections storySections) {
            this.storySections = storySections;
        }

        public final StorySectionItemView getSectionItemView() {
            return this.sectionItemView;
        }

        public final void setSectionItemView(StorySectionItemView storySectionItemView) {
            this.sectionItemView = storySectionItemView;
        }

        public final void bindSection(StorySections storySections) {
            this.storySections = storySections;
            StorySectionItemView storySectionItemView = this.sectionItemView;
            if (storySectionItemView != null) {
                NVContext context = ((NVRecyclerViewBaseAdapter) this.this$0).context;
                Intrinsics.checkExpressionValueIsNotNull(context, "context");
                storySectionItemView.setSection(context, this.this$0.getTopicId(), storySections);
            }
        }
    }

    /* compiled from: StorySectionAdapter.kt */
    public final class MyDataSource extends DataSource<StorySections> {
        public MyDataSource(NVContext nVContext) {
            super(nVContext);
        }

        public static /* synthetic */ void sendRequest$default(MyDataSource myDataSource, PageRequestCallback pageRequestCallback, boolean z, int i, Object obj) {
            if ((i & 2) != 0) {
                z = false;
            }
            myDataSource.sendRequest(pageRequestCallback, z);
        }

        public final void sendRequest(final PageRequestCallback pageRequestCallback, boolean z) {
            if (!z) {
                pageLoadBegin();
                NVContext context = getContext();
                if (context instanceof NVRecyclerViewFragment) {
                    ((NVRecyclerViewFragment) context).updateViews();
                }
            }
            NVContext context2 = getContext();
            ContentLanguageService contentLanguageService = context2 != null ? (ContentLanguageService) context2.getService("content_language") : null;
            ApiRequest apiRequestBuild = ApiRequest.builder().path("topic/" + StorySectionAdapter.this.getTopicId() + "/feed/story/explore").global().param(IjkMediaMeta.IJKM_KEY_LANGUAGE, contentLanguageService != null ? contentLanguageService.getRequestPrefLanguageWithLocalAsDefault() : null).param("v", StoryApi.STORY_VERSION).param("type", StoryApi.TOPIC_LIST).build();
            NVContext context3 = getContext();
            ApiService apiService = context3 != null ? (ApiService) context3.getService("api") : null;
            if (apiService != null) {
                final Class<StorySectionListResponse> cls = StorySectionListResponse.class;
                apiService.exec(apiRequestBuild, new ApiResponseListener<StorySectionListResponse>(cls) { // from class: com.narvii.topic.adapter.StorySectionAdapter$MyDataSource$sendRequest$1
                    @Override // com.narvii.util.http.ApiResponseListener
                    public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                        super.onFail(apiRequest, i, list, str, apiResponse, th);
                        this.this$0.pageLoadFailed(str);
                        StorySectionAdapter.this.setRequestFinished(true);
                        PageRequestCallback pageRequestCallback2 = pageRequestCallback;
                        if (pageRequestCallback2 != null) {
                            pageRequestCallback2.onPageRequestFinished(0);
                        }
                        StorySectionAdapter.this.notifyDataSetChanged();
                    }

                    @Override // com.narvii.util.http.ApiResponseListener
                    public void onFinish(ApiRequest apiRequest, StorySectionListResponse storySectionListResponse) throws Exception {
                        List<? extends StorySections> arrayList;
                        List<StorySections> list;
                        List<StorySections> list2;
                        List<Blog> list3;
                        List<StorySections> list4;
                        List<StorySections> list5;
                        super.onFinish(apiRequest, (ApiRequest) storySectionListResponse);
                        StorySections storySections = null;
                        if ((storySectionListResponse != null ? storySectionListResponse.communityInfoMapping : null) != null) {
                            Map<Integer, Community> communityInfoMapping = StorySectionAdapter.this.getCommunityInfoMapping();
                            Map<Integer, Community> map = storySectionListResponse.communityInfoMapping;
                            Intrinsics.checkExpressionValueIsNotNull(map, "resp.communityInfoMapping");
                            communityInfoMapping.putAll(map);
                        }
                        if ((storySectionListResponse != null ? storySectionListResponse.userProfileMapping : null) != null) {
                            Map<Integer, User> userInfoMapping$Amino_bundle = StorySectionAdapter.this.getUserInfoMapping$Amino_bundle();
                            Map<Integer, User> map2 = storySectionListResponse.userProfileMapping;
                            Intrinsics.checkExpressionValueIsNotNull(map2, "resp.userProfileMapping");
                            userInfoMapping$Amino_bundle.putAll(map2);
                        }
                        StorySectionAdapter storySectionAdapter = StorySectionAdapter.this;
                        if (storySectionListResponse == null || (arrayList = storySectionListResponse.sectionList) == null) {
                            arrayList = new ArrayList<>();
                        }
                        storySectionAdapter.setSectionList(arrayList);
                        ArrayList arrayList2 = new ArrayList();
                        for (StorySections storySections2 : StorySectionAdapter.this.getSectionList()) {
                            List<Blog> list6 = storySections2.blogList;
                            if (list6 != null) {
                                Intrinsics.checkExpressionValueIsNotNull(list6, "s.blogList");
                                if (true ^ list6.isEmpty()) {
                                    arrayList2.add(storySections2);
                                }
                            }
                        }
                        PageStorage<StorySections> pageStorage = this.this$0.getPageStorage();
                        if (pageStorage != null) {
                            pageStorage.clear();
                        }
                        StorySectionAdapter.MyDataSource myDataSource = this.this$0;
                        myDataSource.appendData(arrayList2, myDataSource);
                        int size = 0;
                        if (((storySectionListResponse == null || (list5 = storySectionListResponse.sectionList) == null) ? 0 : list5.size()) > 0) {
                            if (storySectionListResponse != null && (list4 = storySectionListResponse.sectionList) != null) {
                                storySections = list4.get(0);
                            }
                            if (((storySections == null || (list3 = storySections.blogList) == null) ? 0 : list3.size()) == 0) {
                                if (storySectionListResponse != null && (list2 = storySectionListResponse.sectionList) != null) {
                                    size = list2.size();
                                }
                                if (size > 1 && storySectionListResponse != null && (list = storySectionListResponse.sectionList) != null) {
                                    list.get(1);
                                }
                            }
                        }
                        StorySectionAdapter.this.setRequestFinished(true);
                        this.this$0.pageLoadFinished();
                        this.this$0.notifyPageSourceChange();
                        PageRequestCallback pageRequestCallback2 = pageRequestCallback;
                        if (pageRequestCallback2 != null) {
                            pageRequestCallback2.onPageRequestFinished(1);
                        }
                    }
                });
            }
        }

        @Override // com.narvii.paging.source.DataSource
        public void refresh(int i, PageRequestCallback pageRequestCallback) {
            sendRequest(pageRequestCallback, true);
        }

        @Override // com.narvii.paging.source.DataSource
        public void onErrorRetry() {
            sendRequest$default(this, null, false, 2, null);
        }
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
        if (!"update".equals(notification != null ? notification.action : null)) {
            if (!"edit".equals(notification != null ? notification.action : null)) {
                return;
            }
        }
        if ((notification != null ? notification.obj : null) instanceof Blog) {
            Object obj = notification.obj;
            if (obj == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.model.Blog");
            }
            if (((Blog) obj).type == 9) {
                final Ref$IntRef ref$IntRef = new Ref$IntRef();
                ref$IntRef.element = -1;
                int size = this.sectionList.size();
                for (int i = 0; i < size; i++) {
                    int iIndexOfId = Utils.indexOfId(this.sectionList.get(i).blogList, notification.id);
                    if (iIndexOfId >= 0) {
                        List<Blog> list = this.sectionList.get(i).blogList;
                        Object obj2 = notification.obj;
                        if (obj2 == null) {
                            throw new TypeCastException("null cannot be cast to non-null type com.narvii.model.Blog");
                        }
                        list.set(iIndexOfId, (Blog) obj2);
                        ref$IntRef.element = i;
                    }
                }
                if (ref$IntRef.element != -1) {
                    Utils.post(new Runnable() { // from class: com.narvii.topic.adapter.StorySectionAdapter.onNotification.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            StorySectionAdapter.this.notifyItemChanged(ref$IntRef.element);
                        }
                    });
                }
            }
        }
    }
}
