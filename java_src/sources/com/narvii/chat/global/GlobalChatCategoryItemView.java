package com.narvii.chat.global;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.IdRes;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.chat.hangout.HangoutItem;
import com.narvii.chat.thread.OnlineUserInfoInfo;
import com.narvii.community.search.MasterThemeHelper;
import com.narvii.config.ConfigService;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.list.NVAdapter;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.logging.LogUtils;
import com.narvii.model.ChatThread;
import com.narvii.model.Community;
import com.narvii.model.PlayList;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.FilterHelper;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.NameValuePair;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.m;
import w7.o;
import w7.q;

/* JADX INFO: loaded from: classes5.dex */
public final class GlobalChatCategoryItemView extends LinearLayout implements View.OnClickListener {

    @Nullable
    private Activity activity;

    @NotNull
    private final GlobalChatCategoryItemView$categoryThreadLoadCallback$1 categoryThreadLoadCallback;

    @NotNull
    private final m categoryTitle$delegate;

    @NotNull
    private final GlobalChatHelper chatLaunchHelper;

    @NotNull
    private final HashMap<String, Community> communityMap;

    @NotNull
    private final ConfigService configService;

    @Nullable
    private GlobalThreadListWrapper.GlobalThreadCategory curCategory;
    private int curStartIndexForThread;

    @NotNull
    private final FilterHelper filterHelper;

    @NotNull
    private final HashMap<String, PlayList> playlistMap;

    @NotNull
    private final GlobalChatCategoryPresenter presenter;

    @NotNull
    private final m showAllView$delegate;

    @Nullable
    private NVAdapter shownInAdapter;

    @NotNull
    private final ArrayList<ChatThread> threadList;

    @NotNull
    private final m thread_1$delegate;

    @NotNull
    private final m thread_2$delegate;

    @NotNull
    private final m thread_3$delegate;

    @NotNull
    private final m thread_4$delegate;

    @NotNull
    private final HashMap<String, OnlineUserInfoInfo> userInfoMap;

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: com.narvii.chat.global.GlobalChatCategoryItemView$bind$1, reason: invalid class name */
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
            View viewFindViewById = GlobalChatCategoryItemView.this.findViewById(this.$res);
            t.h(viewFindViewById, "null cannot be cast to non-null type T of com.narvii.chat.global.GlobalChatCategoryItemView.bind");
            return viewFindViewById;
        }
    }

    /* JADX WARN: Type inference failed for: r3v20, types: [com.narvii.chat.global.GlobalChatCategoryItemView$categoryThreadLoadCallback$1] */
    public GlobalChatCategoryItemView(@Nullable Context context) {
        super(context);
        this.categoryTitle$delegate = bind(this, R.id.category_title);
        this.showAllView$delegate = bind(this, R.id.show_all);
        this.thread_1$delegate = bind(this, R.id.thread_1);
        this.thread_2$delegate = bind(this, R.id.thread_2);
        this.thread_3$delegate = bind(this, R.id.thread_3);
        this.thread_4$delegate = bind(this, R.id.thread_4);
        this.threadList = new ArrayList<>();
        this.communityMap = new HashMap<>();
        this.userInfoMap = new HashMap<>();
        this.playlistMap = new HashMap<>();
        this.presenter = new GlobalChatCategoryPresenter(Utils.getNVContext(getContext()));
        NVContext nVContext = Utils.getNVContext(getContext());
        t.i(nVContext, "getNVContext(...)");
        this.chatLaunchHelper = new GlobalChatHelper(nVContext);
        this.filterHelper = new FilterHelper(Utils.getNVContext(getContext()));
        final Class<CategoryThreadResponse> cls = CategoryThreadResponse.class;
        this.categoryThreadLoadCallback = new ApiResponseListener<CategoryThreadResponse>(cls) { // from class: com.narvii.chat.global.GlobalChatCategoryItemView$categoryThreadLoadCallback$1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(@Nullable ApiRequest apiRequest, @Nullable CategoryThreadResponse categoryThreadResponse) throws Exception {
                super.onFinish(apiRequest, categoryThreadResponse);
                if (categoryThreadResponse == null) {
                    this.this$0.curStartIndexForThread = 0;
                    this.this$0.showThreadSections();
                    return;
                }
                GlobalChatCategoryItemView globalChatCategoryItemView = this.this$0;
                globalChatCategoryItemView.curStartIndexForThread = categoryThreadResponse.list().size() > 0 ? globalChatCategoryItemView.threadList.size() : 0;
                GlobalThreadListWrapper globalThreadListWrapper = new GlobalThreadListWrapper(categoryThreadResponse.threadListWrapper, categoryThreadResponse.threadCategory);
                Map<String, Community> communityInfoMapping = categoryThreadResponse.communityInfoMapping;
                t.i(communityInfoMapping, "communityInfoMapping");
                globalChatCategoryItemView.innerSetThreadCategory(globalThreadListWrapper, communityInfoMapping);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(@Nullable ApiRequest apiRequest, int i10, @Nullable List<NameValuePair> list, @Nullable String str, @Nullable ApiResponse apiResponse, @Nullable Throwable th) {
                super.onFail(apiRequest, i10, list, str, apiResponse, th);
                this.this$0.curStartIndexForThread = 0;
                this.this$0.showThreadSections();
            }
        };
        Object service = Utils.getNVContext(getContext()).getService("config");
        t.i(service, "getService(...)");
        this.configService = (ConfigService) service;
    }

    public static void safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Context p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    public final void setShownInAdapter(@NotNull NVAdapter adapter) {
        t.j(adapter, "adapter");
        this.shownInAdapter = adapter;
    }

    private final <T extends View> m<T> bind(GlobalChatCategoryItemView globalChatCategoryItemView, @IdRes int i10) {
        return o.b(q.NONE, globalChatCategoryItemView.new AnonymousClass1(i10));
    }

    private final TextView getCategoryTitle() {
        return (TextView) this.categoryTitle$delegate.getValue();
    }

    private final View getShowAllView() {
        return (View) this.showAllView$delegate.getValue();
    }

    private final HangoutItem getThread_1() {
        return (HangoutItem) this.thread_1$delegate.getValue();
    }

    private final HangoutItem getThread_2() {
        return (HangoutItem) this.thread_2$delegate.getValue();
    }

    private final HangoutItem getThread_3() {
        return (HangoutItem) this.thread_3$delegate.getValue();
    }

    private final HangoutItem getThread_4() {
        return (HangoutItem) this.thread_4$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void innerSetThreadCategory(GlobalThreadListWrapper globalThreadListWrapper, Map<String, ? extends Community> map) {
        this.communityMap.putAll(map);
        this.userInfoMap.putAll(globalThreadListWrapper.getUserInfoInThread());
        this.playlistMap.putAll(globalThreadListWrapper.getPlaylistInThread());
        if (globalThreadListWrapper.getThreadList() != null) {
            List<ChatThread> listFilter = this.filterHelper.filter(globalThreadListWrapper.getThreadList());
            ArrayList arrayList = new ArrayList();
            for (ChatThread chatThread : listFilter) {
                if (chatThread != null) {
                    t.g(chatThread);
                    OnlineUserInfoInfo onlineUserInfoInfo = this.userInfoMap.get(chatThread.id());
                    int i10 = onlineUserInfoInfo != null ? onlineUserInfoInfo.userProfileCount : 0;
                    List listFilter2 = this.filterHelper.filter(onlineUserInfoInfo != null ? onlineUserInfoInfo.userProfileList : null);
                    int size = listFilter2 != null ? listFilter2.size() : 0;
                    if (i10 > 0 && size > 0) {
                        arrayList.add(chatThread);
                    }
                }
            }
            this.threadList.addAll(arrayList);
        }
        getShowAllView().setVisibility(this.threadList.size() <= 4 ? 8 : 0);
        showThreadSections();
    }

    private final void setChatThread(HangoutItem hangoutItem, final ChatThread chatThread) {
        hangoutItem.setThread(chatThread, this.playlistMap.get(chatThread.id()));
        if (this.configService.getCommunityId() == 0) {
            hangoutItem.setCommunityInfo(this.communityMap.get(String.valueOf(chatThread.ndcId)));
        }
        hangoutItem.setOnlineUserList(chatThread, this.userInfoMap.get(chatThread.id()));
        LogUtils.setAttachedObject(hangoutItem, chatThread);
        HashMap map = new HashMap();
        GlobalThreadListWrapper.GlobalThreadCategory globalThreadCategory = this.curCategory;
        if (globalThreadCategory != null) {
            map.put("collectionId", globalThreadCategory.categoryId);
        }
        LogUtils.tagExtraMap(hangoutItem, map);
        hangoutItem.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.global.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GlobalChatCategoryItemView.setChatThread$lambda$9(this.f1915a, chatThread, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setChatThread$lambda$9(GlobalChatCategoryItemView this$0, ChatThread thread, View view) {
        t.j(this$0, "this$0");
        t.j(thread, "$thread");
        NVAdapter nVAdapter = this$0.shownInAdapter;
        if (nVAdapter != null) {
            nVAdapter.logClickEvent(thread, ActSemantic.checkDetail);
        }
        Community community = this$0.communityMap.get(String.valueOf(thread.ndcId));
        if (community != null) {
            this$0.chatLaunchHelper.launchChatThread(thread, community);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showThreadSections() {
        if (this.threadList.isEmpty()) {
            return;
        }
        getThread_1().setVisibility(0);
        getThread_2().setVisibility(0);
        getThread_3().setVisibility(0);
        getThread_4().setVisibility(0);
        HangoutItem thread_1 = getThread_1();
        ChatThread chatThread = this.threadList.get(this.curStartIndexForThread);
        t.i(chatThread, "get(...)");
        setChatThread(thread_1, chatThread);
        int size = this.threadList.size() - this.curStartIndexForThread;
        if (size != 1) {
            if (size != 2) {
                if (size != 3) {
                    HangoutItem thread_2 = getThread_2();
                    ArrayList<ChatThread> arrayList = this.threadList;
                    int i10 = this.curStartIndexForThread + 1;
                    this.curStartIndexForThread = i10;
                    ChatThread chatThread2 = arrayList.get(i10);
                    t.i(chatThread2, "get(...)");
                    setChatThread(thread_2, chatThread2);
                    HangoutItem thread_3 = getThread_3();
                    ArrayList<ChatThread> arrayList2 = this.threadList;
                    int i11 = this.curStartIndexForThread + 1;
                    this.curStartIndexForThread = i11;
                    ChatThread chatThread3 = arrayList2.get(i11);
                    t.i(chatThread3, "get(...)");
                    setChatThread(thread_3, chatThread3);
                    HangoutItem thread_4 = getThread_4();
                    ArrayList<ChatThread> arrayList3 = this.threadList;
                    int i12 = this.curStartIndexForThread + 1;
                    this.curStartIndexForThread = i12;
                    ChatThread chatThread4 = arrayList3.get(i12);
                    t.i(chatThread4, "get(...)");
                    setChatThread(thread_4, chatThread4);
                } else if (this.threadList.size() <= 4) {
                    getThread_4().setVisibility(4);
                    HangoutItem thread_5 = getThread_2();
                    ArrayList<ChatThread> arrayList4 = this.threadList;
                    int i13 = this.curStartIndexForThread + 1;
                    this.curStartIndexForThread = i13;
                    ChatThread chatThread5 = arrayList4.get(i13);
                    t.i(chatThread5, "get(...)");
                    setChatThread(thread_5, chatThread5);
                    HangoutItem thread_6 = getThread_3();
                    ArrayList<ChatThread> arrayList5 = this.threadList;
                    int i14 = this.curStartIndexForThread + 1;
                    this.curStartIndexForThread = i14;
                    ChatThread chatThread6 = arrayList5.get(i14);
                    t.i(chatThread6, "get(...)");
                    setChatThread(thread_6, chatThread6);
                } else {
                    HangoutItem thread_7 = getThread_2();
                    ChatThread chatThread7 = this.threadList.get(this.curStartIndexForThread + 1);
                    t.i(chatThread7, "get(...)");
                    setChatThread(thread_7, chatThread7);
                    HangoutItem thread_8 = getThread_3();
                    ChatThread chatThread8 = this.threadList.get(this.curStartIndexForThread + 2);
                    t.i(chatThread8, "get(...)");
                    setChatThread(thread_8, chatThread8);
                    this.curStartIndexForThread = 0;
                    HangoutItem thread_9 = getThread_4();
                    ChatThread chatThread9 = this.threadList.get(this.curStartIndexForThread);
                    t.i(chatThread9, "get(...)");
                    setChatThread(thread_9, chatThread9);
                }
            } else if (this.threadList.size() <= 4) {
                getThread_3().setVisibility(8);
                getThread_4().setVisibility(8);
                HangoutItem thread_10 = getThread_2();
                ArrayList<ChatThread> arrayList6 = this.threadList;
                int i15 = this.curStartIndexForThread + 1;
                this.curStartIndexForThread = i15;
                ChatThread chatThread10 = arrayList6.get(i15);
                t.i(chatThread10, "get(...)");
                setChatThread(thread_10, chatThread10);
            } else {
                HangoutItem thread_11 = getThread_2();
                ChatThread chatThread11 = this.threadList.get(this.curStartIndexForThread + 1);
                t.i(chatThread11, "get(...)");
                setChatThread(thread_11, chatThread11);
                this.curStartIndexForThread = 0;
                HangoutItem thread_12 = getThread_3();
                ChatThread chatThread12 = this.threadList.get(this.curStartIndexForThread);
                t.i(chatThread12, "get(...)");
                setChatThread(thread_12, chatThread12);
                HangoutItem thread_13 = getThread_4();
                ArrayList<ChatThread> arrayList7 = this.threadList;
                int i16 = this.curStartIndexForThread + 1;
                this.curStartIndexForThread = i16;
                ChatThread chatThread13 = arrayList7.get(i16);
                t.i(chatThread13, "get(...)");
                setChatThread(thread_13, chatThread13);
            }
        } else if (this.threadList.size() <= 4) {
            getThread_2().setVisibility(4);
            getThread_3().setVisibility(8);
            getThread_4().setVisibility(8);
        } else {
            this.curStartIndexForThread = 0;
            HangoutItem thread_14 = getThread_2();
            ChatThread chatThread14 = this.threadList.get(this.curStartIndexForThread);
            t.i(chatThread14, "get(...)");
            setChatThread(thread_14, chatThread14);
            HangoutItem thread_15 = getThread_3();
            ArrayList<ChatThread> arrayList8 = this.threadList;
            int i17 = this.curStartIndexForThread + 1;
            this.curStartIndexForThread = i17;
            ChatThread chatThread15 = arrayList8.get(i17);
            t.i(chatThread15, "get(...)");
            setChatThread(thread_15, chatThread15);
            HangoutItem thread_16 = getThread_4();
            ArrayList<ChatThread> arrayList9 = this.threadList;
            int i18 = this.curStartIndexForThread + 1;
            this.curStartIndexForThread = i18;
            ChatThread chatThread16 = arrayList9.get(i18);
            t.i(chatThread16, "get(...)");
            setChatThread(thread_16, chatThread16);
        }
        this.curStartIndexForThread++;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(@Nullable View view) {
        Integer numValueOf = view != null ? Integer.valueOf(view.getId()) : null;
        if (numValueOf != null && numValueOf.intValue() == R.id.show_all) {
            LogEvent.Builder builderSubArea = LogEvent.clickBuilder(this.shownInAdapter, ActSemantic.listViewEnter).subArea("SeeAll");
            GlobalThreadListWrapper.GlobalThreadCategory globalThreadCategory = this.curCategory;
            if (globalThreadCategory != null) {
                builderSubArea.extraParam("collectionId", globalThreadCategory.categoryId);
            }
            builderSubArea.send();
            if (this.activity != null) {
                new MasterThemeHelper(Utils.getNVContext(getContext())).saveDynamicThemeBg(this.activity);
            }
            Intent intent = new Intent(getContext(), (Class<?>) GlobalCategoryChatListActivity.class);
            intent.putExtra(ExternalPostPreviewFragment.SOURCE, view.getId() == R.id.category_title ? "Title" : "See ALl");
            GlobalThreadListWrapper.GlobalThreadCategory globalThreadCategory2 = this.curCategory;
            if (globalThreadCategory2 != null) {
                intent.putExtra("category", JacksonUtils.writeAsString(globalThreadCategory2));
            }
            safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(getContext(), intent);
        }
    }

    public final void setThreadCategory(@NotNull GlobalThreadListWrapper threadCategoryWrapper, @NotNull Map<String, ? extends Community> map, @Nullable Activity activity) {
        t.j(threadCategoryWrapper, "threadCategoryWrapper");
        t.j(map, "map");
        this.activity = activity;
        this.curCategory = threadCategoryWrapper.threadCategory;
        this.threadList.clear();
        this.communityMap.clear();
        this.userInfoMap.clear();
        this.playlistMap.clear();
        this.curStartIndexForThread = 0;
        getCategoryTitle().setText(threadCategoryWrapper.getCategoryTitle());
        innerSetThreadCategory(threadCategoryWrapper, map);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        getCategoryTitle().setOnClickListener(this);
        getShowAllView().setOnClickListener(this);
        TextView textView = (TextView) getShowAllView().findViewById(R.id.count_text);
        if (textView != null) {
            textView.setText(getResources().getString(R.string.show_all));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r2v20, types: [com.narvii.chat.global.GlobalChatCategoryItemView$categoryThreadLoadCallback$1] */
    public GlobalChatCategoryItemView(@Nullable Context context, @NotNull AttributeSet attributes) {
        super(context, attributes);
        t.j(attributes, "attributes");
        this.categoryTitle$delegate = bind(this, R.id.category_title);
        this.showAllView$delegate = bind(this, R.id.show_all);
        this.thread_1$delegate = bind(this, R.id.thread_1);
        this.thread_2$delegate = bind(this, R.id.thread_2);
        this.thread_3$delegate = bind(this, R.id.thread_3);
        this.thread_4$delegate = bind(this, R.id.thread_4);
        this.threadList = new ArrayList<>();
        this.communityMap = new HashMap<>();
        this.userInfoMap = new HashMap<>();
        this.playlistMap = new HashMap<>();
        this.presenter = new GlobalChatCategoryPresenter(Utils.getNVContext(getContext()));
        NVContext nVContext = Utils.getNVContext(getContext());
        t.i(nVContext, "getNVContext(...)");
        this.chatLaunchHelper = new GlobalChatHelper(nVContext);
        this.filterHelper = new FilterHelper(Utils.getNVContext(getContext()));
        final Class<CategoryThreadResponse> cls = CategoryThreadResponse.class;
        this.categoryThreadLoadCallback = new ApiResponseListener<CategoryThreadResponse>(cls) { // from class: com.narvii.chat.global.GlobalChatCategoryItemView$categoryThreadLoadCallback$1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(@Nullable ApiRequest apiRequest, @Nullable CategoryThreadResponse categoryThreadResponse) throws Exception {
                super.onFinish(apiRequest, categoryThreadResponse);
                if (categoryThreadResponse == null) {
                    this.this$0.curStartIndexForThread = 0;
                    this.this$0.showThreadSections();
                    return;
                }
                GlobalChatCategoryItemView globalChatCategoryItemView = this.this$0;
                globalChatCategoryItemView.curStartIndexForThread = categoryThreadResponse.list().size() > 0 ? globalChatCategoryItemView.threadList.size() : 0;
                GlobalThreadListWrapper globalThreadListWrapper = new GlobalThreadListWrapper(categoryThreadResponse.threadListWrapper, categoryThreadResponse.threadCategory);
                Map<String, Community> communityInfoMapping = categoryThreadResponse.communityInfoMapping;
                t.i(communityInfoMapping, "communityInfoMapping");
                globalChatCategoryItemView.innerSetThreadCategory(globalThreadListWrapper, communityInfoMapping);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(@Nullable ApiRequest apiRequest, int i10, @Nullable List<NameValuePair> list, @Nullable String str, @Nullable ApiResponse apiResponse, @Nullable Throwable th) {
                super.onFail(apiRequest, i10, list, str, apiResponse, th);
                this.this$0.curStartIndexForThread = 0;
                this.this$0.showThreadSections();
            }
        };
        Object service = Utils.getNVContext(getContext()).getService("config");
        t.i(service, "getService(...)");
        this.configService = (ConfigService) service;
    }
}
