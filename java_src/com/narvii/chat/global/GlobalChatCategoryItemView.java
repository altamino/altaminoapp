package com.narvii.chat.global;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.chat.global.GlobalThreadListWrapper;
import com.narvii.chat.hangout.HangoutItem;
import com.narvii.chat.thread.OnlineUserInfoInfo;
import com.narvii.community.search.MasterThemeHelper;
import com.narvii.config.ConfigService;
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
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.TypeCastException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: GlobalChatCategoryItemView.kt */
/* loaded from: classes2.dex */
public final class GlobalChatCategoryItemView extends LinearLayout implements View.OnClickListener {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(GlobalChatCategoryItemView.class), "categoryTitle", "getCategoryTitle()Landroid/widget/TextView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(GlobalChatCategoryItemView.class), "showAllView", "getShowAllView()Landroid/view/View;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(GlobalChatCategoryItemView.class), "thread_1", "getThread_1()Lcom/narvii/chat/hangout/HangoutItem;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(GlobalChatCategoryItemView.class), "thread_2", "getThread_2()Lcom/narvii/chat/hangout/HangoutItem;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(GlobalChatCategoryItemView.class), "thread_3", "getThread_3()Lcom/narvii/chat/hangout/HangoutItem;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(GlobalChatCategoryItemView.class), "thread_4", "getThread_4()Lcom/narvii/chat/hangout/HangoutItem;"))};
    private HashMap _$_findViewCache;
    private Activity activity;
    private final GlobalChatCategoryItemView$categoryThreadLoadCallback$1 categoryThreadLoadCallback;
    private final Lazy categoryTitle$delegate;
    private final GlobalChatHelper chatLaunchHelper;
    private final HashMap<String, Community> communityMap;
    private final ConfigService configService;
    private GlobalThreadListWrapper.GlobalThreadCategory curCategory;
    private int curStartIndexForThread;
    private final FilterHelper filterHelper;
    private final HashMap<String, PlayList> playlistMap;
    private final GlobalChatCategoryPresenter presenter;
    private final Lazy showAllView$delegate;
    private NVAdapter shownInAdapter;
    private final ArrayList<ChatThread> threadList;
    private final Lazy thread_1$delegate;
    private final Lazy thread_2$delegate;
    private final Lazy thread_3$delegate;
    private final Lazy thread_4$delegate;
    private final HashMap<String, OnlineUserInfoInfo> userInfoMap;

    private final TextView getCategoryTitle() {
        Lazy lazy = this.categoryTitle$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (TextView) lazy.getValue();
    }

    private final View getShowAllView() {
        Lazy lazy = this.showAllView$delegate;
        KProperty kProperty = $$delegatedProperties[1];
        return (View) lazy.getValue();
    }

    private final HangoutItem getThread_1() {
        Lazy lazy = this.thread_1$delegate;
        KProperty kProperty = $$delegatedProperties[2];
        return (HangoutItem) lazy.getValue();
    }

    private final HangoutItem getThread_2() {
        Lazy lazy = this.thread_2$delegate;
        KProperty kProperty = $$delegatedProperties[3];
        return (HangoutItem) lazy.getValue();
    }

    private final HangoutItem getThread_3() {
        Lazy lazy = this.thread_3$delegate;
        KProperty kProperty = $$delegatedProperties[4];
        return (HangoutItem) lazy.getValue();
    }

    private final HangoutItem getThread_4() {
        Lazy lazy = this.thread_4$delegate;
        KProperty kProperty = $$delegatedProperties[5];
        return (HangoutItem) lazy.getValue();
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

    /* JADX WARN: Type inference failed for: r3v20, types: [com.narvii.chat.global.GlobalChatCategoryItemView$categoryThreadLoadCallback$1] */
    public GlobalChatCategoryItemView(Context context) {
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
        Intrinsics.checkExpressionValueIsNotNull(nVContext, "Utils.getNVContext(context)");
        this.chatLaunchHelper = new GlobalChatHelper(nVContext);
        this.filterHelper = new FilterHelper(Utils.getNVContext(getContext()));
        final Class<CategoryThreadResponse> cls = CategoryThreadResponse.class;
        this.categoryThreadLoadCallback = new ApiResponseListener<CategoryThreadResponse>(cls) { // from class: com.narvii.chat.global.GlobalChatCategoryItemView$categoryThreadLoadCallback$1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, CategoryThreadResponse categoryThreadResponse) throws Exception {
                super.onFinish(apiRequest, (ApiRequest) categoryThreadResponse);
                if (categoryThreadResponse == null) {
                    this.this$0.curStartIndexForThread = 0;
                    this.this$0.showThreadSections();
                    return;
                }
                this.this$0.curStartIndexForThread = categoryThreadResponse.list().size() > 0 ? this.this$0.threadList.size() : 0;
                GlobalChatCategoryItemView globalChatCategoryItemView = this.this$0;
                GlobalThreadListWrapper globalThreadListWrapper = new GlobalThreadListWrapper(categoryThreadResponse.threadListWrapper, categoryThreadResponse.threadCategory);
                Map<String, Community> map = categoryThreadResponse.communityInfoMapping;
                Intrinsics.checkExpressionValueIsNotNull(map, "resp.communityInfoMapping");
                globalChatCategoryItemView.innerSetThreadCategory(globalThreadListWrapper, map);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str, apiResponse, th);
                this.this$0.curStartIndexForThread = 0;
                this.this$0.showThreadSections();
            }
        };
        Object service = Utils.getNVContext(getContext()).getService("config");
        Intrinsics.checkExpressionValueIsNotNull(service, "Utils.getNVContext(context).getService(\"config\")");
        this.configService = (ConfigService) service;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r2v20, types: [com.narvii.chat.global.GlobalChatCategoryItemView$categoryThreadLoadCallback$1] */
    public GlobalChatCategoryItemView(Context context, AttributeSet attributes) {
        super(context, attributes);
        Intrinsics.checkParameterIsNotNull(attributes, "attributes");
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
        Intrinsics.checkExpressionValueIsNotNull(nVContext, "Utils.getNVContext(context)");
        this.chatLaunchHelper = new GlobalChatHelper(nVContext);
        this.filterHelper = new FilterHelper(Utils.getNVContext(getContext()));
        final Class<CategoryThreadResponse> cls = CategoryThreadResponse.class;
        this.categoryThreadLoadCallback = new ApiResponseListener<CategoryThreadResponse>(cls) { // from class: com.narvii.chat.global.GlobalChatCategoryItemView$categoryThreadLoadCallback$1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, CategoryThreadResponse categoryThreadResponse) throws Exception {
                super.onFinish(apiRequest, (ApiRequest) categoryThreadResponse);
                if (categoryThreadResponse == null) {
                    this.this$0.curStartIndexForThread = 0;
                    this.this$0.showThreadSections();
                    return;
                }
                this.this$0.curStartIndexForThread = categoryThreadResponse.list().size() > 0 ? this.this$0.threadList.size() : 0;
                GlobalChatCategoryItemView globalChatCategoryItemView = this.this$0;
                GlobalThreadListWrapper globalThreadListWrapper = new GlobalThreadListWrapper(categoryThreadResponse.threadListWrapper, categoryThreadResponse.threadCategory);
                Map<String, Community> map = categoryThreadResponse.communityInfoMapping;
                Intrinsics.checkExpressionValueIsNotNull(map, "resp.communityInfoMapping");
                globalChatCategoryItemView.innerSetThreadCategory(globalThreadListWrapper, map);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str, apiResponse, th);
                this.this$0.curStartIndexForThread = 0;
                this.this$0.showThreadSections();
            }
        };
        Object service = Utils.getNVContext(getContext()).getService("config");
        Intrinsics.checkExpressionValueIsNotNull(service, "Utils.getNVContext(context).getService(\"config\")");
        this.configService = (ConfigService) service;
    }

    private final <T extends View> Lazy<T> bind(GlobalChatCategoryItemView globalChatCategoryItemView, final int i) {
        return LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, new Function0<T>() { // from class: com.narvii.chat.global.GlobalChatCategoryItemView.bind.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Incorrect return type in method signature: ()TT; */
            @Override // kotlin.jvm.functions.Function0
            public final View invoke() {
                View viewFindViewById = GlobalChatCategoryItemView.this.findViewById(i);
                if (viewFindViewById != null) {
                    return viewFindViewById;
                }
                throw new TypeCastException("null cannot be cast to non-null type T");
            }
        });
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

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
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
            intent.putExtra("Source", view.getId() == R.id.category_title ? "Title" : "See ALl");
            GlobalThreadListWrapper.GlobalThreadCategory globalThreadCategory2 = this.curCategory;
            if (globalThreadCategory2 != null) {
                intent.putExtra("category", JacksonUtils.writeAsString(globalThreadCategory2));
            }
            getContext().startActivity(intent);
        }
    }

    public final void setThreadCategory(GlobalThreadListWrapper threadCategoryWrapper, Map<String, ? extends Community> map, Activity activity) {
        Intrinsics.checkParameterIsNotNull(threadCategoryWrapper, "threadCategoryWrapper");
        Intrinsics.checkParameterIsNotNull(map, "map");
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
                    OnlineUserInfoInfo onlineUserInfoInfo = this.userInfoMap.get(chatThread.id());
                    int i = onlineUserInfoInfo != null ? onlineUserInfoInfo.userProfileCount : 0;
                    List listFilter2 = this.filterHelper.filter(onlineUserInfoInfo != null ? onlineUserInfoInfo.userProfileList : null);
                    int size = listFilter2 != null ? listFilter2.size() : 0;
                    if (i > 0 && size > 0) {
                        arrayList.add(chatThread);
                    }
                }
            }
            this.threadList.addAll(arrayList);
        }
        getShowAllView().setVisibility(this.threadList.size() <= 4 ? 8 : 0);
        showThreadSections();
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
        Intrinsics.checkExpressionValueIsNotNull(chatThread, "threadList[curStartIndexForThread]");
        setChatThread(thread_1, chatThread);
        int size = this.threadList.size() - this.curStartIndexForThread;
        if (size != 1) {
            if (size != 2) {
                if (size == 3) {
                    if (this.threadList.size() <= 4) {
                        getThread_4().setVisibility(4);
                        HangoutItem thread_2 = getThread_2();
                        ArrayList<ChatThread> arrayList = this.threadList;
                        this.curStartIndexForThread++;
                        ChatThread chatThread2 = arrayList.get(this.curStartIndexForThread);
                        Intrinsics.checkExpressionValueIsNotNull(chatThread2, "threadList[++curStartIndexForThread]");
                        setChatThread(thread_2, chatThread2);
                        HangoutItem thread_3 = getThread_3();
                        ArrayList<ChatThread> arrayList2 = this.threadList;
                        this.curStartIndexForThread++;
                        ChatThread chatThread3 = arrayList2.get(this.curStartIndexForThread);
                        Intrinsics.checkExpressionValueIsNotNull(chatThread3, "threadList[++curStartIndexForThread]");
                        setChatThread(thread_3, chatThread3);
                    } else {
                        HangoutItem thread_22 = getThread_2();
                        ChatThread chatThread4 = this.threadList.get(this.curStartIndexForThread + 1);
                        Intrinsics.checkExpressionValueIsNotNull(chatThread4, "threadList[curStartIndexForThread + 1]");
                        setChatThread(thread_22, chatThread4);
                        HangoutItem thread_32 = getThread_3();
                        ChatThread chatThread5 = this.threadList.get(this.curStartIndexForThread + 2);
                        Intrinsics.checkExpressionValueIsNotNull(chatThread5, "threadList[curStartIndexForThread + 2]");
                        setChatThread(thread_32, chatThread5);
                        this.curStartIndexForThread = 0;
                        HangoutItem thread_4 = getThread_4();
                        ChatThread chatThread6 = this.threadList.get(this.curStartIndexForThread);
                        Intrinsics.checkExpressionValueIsNotNull(chatThread6, "threadList[curStartIndexForThread]");
                        setChatThread(thread_4, chatThread6);
                    }
                } else {
                    HangoutItem thread_23 = getThread_2();
                    ArrayList<ChatThread> arrayList3 = this.threadList;
                    this.curStartIndexForThread++;
                    ChatThread chatThread7 = arrayList3.get(this.curStartIndexForThread);
                    Intrinsics.checkExpressionValueIsNotNull(chatThread7, "threadList[++curStartIndexForThread]");
                    setChatThread(thread_23, chatThread7);
                    HangoutItem thread_33 = getThread_3();
                    ArrayList<ChatThread> arrayList4 = this.threadList;
                    this.curStartIndexForThread++;
                    ChatThread chatThread8 = arrayList4.get(this.curStartIndexForThread);
                    Intrinsics.checkExpressionValueIsNotNull(chatThread8, "threadList[++curStartIndexForThread]");
                    setChatThread(thread_33, chatThread8);
                    HangoutItem thread_42 = getThread_4();
                    ArrayList<ChatThread> arrayList5 = this.threadList;
                    this.curStartIndexForThread++;
                    ChatThread chatThread9 = arrayList5.get(this.curStartIndexForThread);
                    Intrinsics.checkExpressionValueIsNotNull(chatThread9, "threadList[++curStartIndexForThread]");
                    setChatThread(thread_42, chatThread9);
                }
            } else if (this.threadList.size() <= 4) {
                getThread_3().setVisibility(8);
                getThread_4().setVisibility(8);
                HangoutItem thread_24 = getThread_2();
                ArrayList<ChatThread> arrayList6 = this.threadList;
                this.curStartIndexForThread++;
                ChatThread chatThread10 = arrayList6.get(this.curStartIndexForThread);
                Intrinsics.checkExpressionValueIsNotNull(chatThread10, "threadList[++curStartIndexForThread]");
                setChatThread(thread_24, chatThread10);
            } else {
                HangoutItem thread_25 = getThread_2();
                ChatThread chatThread11 = this.threadList.get(this.curStartIndexForThread + 1);
                Intrinsics.checkExpressionValueIsNotNull(chatThread11, "threadList[curStartIndexForThread + 1]");
                setChatThread(thread_25, chatThread11);
                this.curStartIndexForThread = 0;
                HangoutItem thread_34 = getThread_3();
                ChatThread chatThread12 = this.threadList.get(this.curStartIndexForThread);
                Intrinsics.checkExpressionValueIsNotNull(chatThread12, "threadList[curStartIndexForThread]");
                setChatThread(thread_34, chatThread12);
                HangoutItem thread_43 = getThread_4();
                ArrayList<ChatThread> arrayList7 = this.threadList;
                this.curStartIndexForThread++;
                ChatThread chatThread13 = arrayList7.get(this.curStartIndexForThread);
                Intrinsics.checkExpressionValueIsNotNull(chatThread13, "threadList[++curStartIndexForThread]");
                setChatThread(thread_43, chatThread13);
            }
        } else if (this.threadList.size() <= 4) {
            getThread_2().setVisibility(4);
            getThread_3().setVisibility(8);
            getThread_4().setVisibility(8);
        } else {
            this.curStartIndexForThread = 0;
            HangoutItem thread_26 = getThread_2();
            ChatThread chatThread14 = this.threadList.get(this.curStartIndexForThread);
            Intrinsics.checkExpressionValueIsNotNull(chatThread14, "threadList[curStartIndexForThread]");
            setChatThread(thread_26, chatThread14);
            HangoutItem thread_35 = getThread_3();
            ArrayList<ChatThread> arrayList8 = this.threadList;
            this.curStartIndexForThread++;
            ChatThread chatThread15 = arrayList8.get(this.curStartIndexForThread);
            Intrinsics.checkExpressionValueIsNotNull(chatThread15, "threadList[++curStartIndexForThread]");
            setChatThread(thread_35, chatThread15);
            HangoutItem thread_44 = getThread_4();
            ArrayList<ChatThread> arrayList9 = this.threadList;
            this.curStartIndexForThread++;
            ChatThread chatThread16 = arrayList9.get(this.curStartIndexForThread);
            Intrinsics.checkExpressionValueIsNotNull(chatThread16, "threadList[++curStartIndexForThread]");
            setChatThread(thread_44, chatThread16);
        }
        this.curStartIndexForThread++;
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
        hangoutItem.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.global.GlobalChatCategoryItemView.setChatThread.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NVAdapter nVAdapter = GlobalChatCategoryItemView.this.shownInAdapter;
                if (nVAdapter != null) {
                    nVAdapter.logClickEvent(chatThread, ActSemantic.checkDetail);
                }
                Community community = (Community) GlobalChatCategoryItemView.this.communityMap.get(String.valueOf(chatThread.ndcId));
                if (community != null) {
                    GlobalChatCategoryItemView.this.chatLaunchHelper.launchChatThread(chatThread, community);
                }
            }
        });
    }

    public final void setShownInAdapter(NVAdapter adapter) {
        Intrinsics.checkParameterIsNotNull(adapter, "adapter");
        this.shownInAdapter = adapter;
    }
}
