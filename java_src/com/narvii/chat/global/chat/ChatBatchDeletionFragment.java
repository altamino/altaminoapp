package com.narvii.chat.global.chat;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.app.NotificationCompat;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.narvii.account.AccountService;
import com.narvii.adapter.NVPagerStatusAdapter;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.app.theme.NVThemeFragment;
import com.narvii.chat.core.ChatService;
import com.narvii.chat.core.ThreadUpdateObject;
import com.narvii.chat.global.GlobalChatThread;
import com.narvii.chat.rtc.RtcService;
import com.narvii.chat.thread.ThreadListItem;
import com.narvii.chat.thread.ThreadListResponse;
import com.narvii.chat.thread.object.BatchDeleteChatObject;
import com.narvii.chat.util.ChatHelper;
import com.narvii.chat.util.ChatHelperKt;
import com.narvii.chat.util.ChatMessageDto;
import com.narvii.chat.util.ChatRequestHelper;
import com.narvii.chat.util.GlobalChatService;
import com.narvii.chat.util.IMyChatList;
import com.narvii.chat.util.MyChatListDelegate;
import com.narvii.comment.post.CommentPostActivity;
import com.narvii.community.MyCommunityListService;
import com.narvii.config.ConfigService;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.list.NVPagedAdapter;
import com.narvii.logging.Impression.LinearImpressionCollector;
import com.narvii.model.ChatMessage;
import com.narvii.model.ChatThread;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationCenter;
import com.narvii.notification.NotificationListener;
import com.narvii.util.NotificationUtils;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.widget.ACMAlertDialog;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: ChatBatchDeletionFragment.kt */
/* loaded from: classes2.dex */
public final class ChatBatchDeletionFragment extends NVListFragment implements ChatService.ChatMessageReceptor {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(ChatBatchDeletionFragment.class), NotificationCompat.CATEGORY_PROGRESS, "getProgress()Lcom/narvii/util/dialog/ProgressDialog;"))};
    private HashMap _$_findViewCache;
    public AccountService account;
    public Adapter adapter;
    public ApiService api;
    private ApiRequest apiRequest;
    public ChatHelper chatHelper;
    public ChatService chatService;
    public ConfigService config;
    public Button deleteButton;
    public MyCommunityListService myCommunityService;
    private int ndcId;
    private boolean needRefreshWhenResume;
    private final List<ChatThread> selectThreads = new ArrayList();
    private final Lazy progress$delegate = LazyKt__LazyJVMKt.lazy(new Function0<ProgressDialog>() { // from class: com.narvii.chat.global.chat.ChatBatchDeletionFragment$progress$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final ProgressDialog invoke() {
            return new ProgressDialog(this.this$0.getContext());
        }
    });

    /* JADX INFO: Access modifiers changed from: private */
    public final ProgressDialog getProgress() {
        Lazy lazy = this.progress$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (ProgressDialog) lazy.getValue();
    }

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

    @Override // com.narvii.list.NVListFragment
    protected int getSelectorLightColor() {
        return (int) 2298478591L;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
    public void onResetChatMessageList() {
    }

    @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
    public void onUnreadThreadCountChanged(int i) {
    }

    public final int getNdcId() {
        return this.ndcId;
    }

    public final void setNdcId(int i) {
        this.ndcId = i;
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

    public final ConfigService getConfig() {
        ConfigService configService = this.config;
        if (configService != null) {
            return configService;
        }
        Intrinsics.throwUninitializedPropertyAccessException("config");
        throw null;
    }

    public final void setConfig(ConfigService configService) {
        Intrinsics.checkParameterIsNotNull(configService, "<set-?>");
        this.config = configService;
    }

    public final AccountService getAccount() {
        AccountService accountService = this.account;
        if (accountService != null) {
            return accountService;
        }
        Intrinsics.throwUninitializedPropertyAccessException("account");
        throw null;
    }

    public final void setAccount(AccountService accountService) {
        Intrinsics.checkParameterIsNotNull(accountService, "<set-?>");
        this.account = accountService;
    }

    public final ChatHelper getChatHelper() {
        ChatHelper chatHelper = this.chatHelper;
        if (chatHelper != null) {
            return chatHelper;
        }
        Intrinsics.throwUninitializedPropertyAccessException("chatHelper");
        throw null;
    }

    public final void setChatHelper(ChatHelper chatHelper) {
        Intrinsics.checkParameterIsNotNull(chatHelper, "<set-?>");
        this.chatHelper = chatHelper;
    }

    public final ChatService getChatService() {
        ChatService chatService = this.chatService;
        if (chatService != null) {
            return chatService;
        }
        Intrinsics.throwUninitializedPropertyAccessException("chatService");
        throw null;
    }

    public final void setChatService(ChatService chatService) {
        Intrinsics.checkParameterIsNotNull(chatService, "<set-?>");
        this.chatService = chatService;
    }

    public final Button getDeleteButton() {
        Button button = this.deleteButton;
        if (button != null) {
            return button;
        }
        Intrinsics.throwUninitializedPropertyAccessException("deleteButton");
        throw null;
    }

    public final void setDeleteButton(Button button) {
        Intrinsics.checkParameterIsNotNull(button, "<set-?>");
        this.deleteButton = button;
    }

    public final ApiService getApi() {
        ApiService apiService = this.api;
        if (apiService != null) {
            return apiService;
        }
        Intrinsics.throwUninitializedPropertyAccessException("api");
        throw null;
    }

    public final void setApi(ApiService apiService) {
        Intrinsics.checkParameterIsNotNull(apiService, "<set-?>");
        this.api = apiService;
    }

    public final Adapter getAdapter() {
        Adapter adapter = this.adapter;
        if (adapter != null) {
            return adapter;
        }
        Intrinsics.throwUninitializedPropertyAccessException("adapter");
        throw null;
    }

    public final void setAdapter(Adapter adapter) {
        Intrinsics.checkParameterIsNotNull(adapter, "<set-?>");
        this.adapter = adapter;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        this.ndcId = getIntParam(CommentPostActivity.COMMENT_POST_KEY_NDC_ID);
        Context context = getContext();
        if (context != null) {
            Intrinsics.checkExpressionValueIsNotNull(context, "context!!");
            this.chatHelper = new ChatHelper(context);
            Object service = getService("myCommunityList");
            Intrinsics.checkExpressionValueIsNotNull(service, "getService(\"myCommunityList\")");
            this.myCommunityService = (MyCommunityListService) service;
            Object service2 = getService("config");
            Intrinsics.checkExpressionValueIsNotNull(service2, "getService(\"config\")");
            this.config = (ConfigService) service2;
            Object service3 = getService("api");
            Intrinsics.checkExpressionValueIsNotNull(service3, "getService(\"api\")");
            this.api = (ApiService) service3;
            Object service4 = getService("account");
            Intrinsics.checkExpressionValueIsNotNull(service4, "getService(\"account\")");
            this.account = (AccountService) service4;
            Object service5 = getService("chat");
            Intrinsics.checkExpressionValueIsNotNull(service5, "getService(\"chat\")");
            this.chatService = (ChatService) service5;
            setTitle(R.string.manage_my_chat);
            NVThemeFragment.setDarkNVTheme$default(this, this.ndcId == 0, false, 2, null);
            ChatService chatService = this.chatService;
            if (chatService != null) {
                chatService.addCommunityLevelReceptor(this.ndcId, this);
                return;
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("chatService");
                throw null;
            }
        }
        Intrinsics.throwNpe();
        throw null;
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        this.adapter = new Adapter(this);
        EmptyAdapter emptyAdapter = new EmptyAdapter(this, this);
        Adapter adapter = this.adapter;
        if (adapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            throw null;
        }
        emptyAdapter.setAdapter(adapter, Boolean.valueOf(this.ndcId == 0));
        Adapter adapter2 = this.adapter;
        if (adapter2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            throw null;
        }
        mergeAdapter.addAdapter(adapter2);
        mergeAdapter.addAdapter(emptyAdapter);
        return mergeAdapter;
    }

    @Override // com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        return inflater.inflate(R.layout.delete_chat_list_layout, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        ListView listView = getListView();
        Intrinsics.checkExpressionValueIsNotNull(listView, "listView");
        listView.setDividerHeight(0);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        ChatService chatService = this.chatService;
        if (chatService != null) {
            chatService.removeCommunityLevelReceptor(this.ndcId, this);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("chatService");
            throw null;
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.list.refresh.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        super.onRefresh();
        if (this.ndcId == 0) {
            ChatService chatService = this.chatService;
            if (chatService != null) {
                chatService.queryThreadCheckInfo(0, true);
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("chatService");
                throw null;
            }
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        MenuItem menuItemAdd;
        MenuItem actionView;
        View viewInflate = getLayoutInflater().inflate(R.layout.actionbar_btn, (ViewGroup) null);
        View viewFindViewById = viewInflate.findViewById(R.id.actionbar_right_btn_btn);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "v.findViewById<Button>(c….actionbar_right_btn_btn)");
        this.deleteButton = (Button) viewFindViewById;
        Button button = this.deleteButton;
        if (button == null) {
            Intrinsics.throwUninitializedPropertyAccessException("deleteButton");
            throw null;
        }
        ViewGroup.LayoutParams layoutParams = button.getLayoutParams();
        if (layoutParams == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        if (Build.VERSION.SDK_INT >= 17) {
            marginLayoutParams.setMarginEnd(Utils.dpToPxInt(getContext(), 10.0f));
        } else {
            marginLayoutParams.rightMargin = Utils.dpToPxInt(getContext(), 10.0f);
        }
        Button button2 = this.deleteButton;
        if (button2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("deleteButton");
            throw null;
        }
        button2.setText(R.string.delete);
        Button button3 = this.deleteButton;
        if (button3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("deleteButton");
            throw null;
        }
        button3.setTextColor(-1);
        Button button4 = this.deleteButton;
        if (button4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("deleteButton");
            throw null;
        }
        button4.setBackground(NVActivity.getRightButtonBackground((int) 4291822107L));
        Button button5 = this.deleteButton;
        if (button5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("deleteButton");
            throw null;
        }
        button5.setLayoutParams(marginLayoutParams);
        Button button6 = this.deleteButton;
        if (button6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("deleteButton");
            throw null;
        }
        button6.setOnClickListener(new AnonymousClass1());
        if (menu != null && (menuItemAdd = menu.add(0, R.string.delete, 0, R.string.delete)) != null && (actionView = menuItemAdd.setActionView(viewInflate)) != null) {
            actionView.setShowAsAction(2);
        }
        super.onCreateOptionsMenu(menu, menuInflater);
    }

    /* compiled from: ChatBatchDeletionFragment.kt */
    /* renamed from: com.narvii.chat.global.chat.ChatBatchDeletionFragment$onCreateOptionsMenu$1, reason: invalid class name */
    static final class AnonymousClass1 implements View.OnClickListener {
        AnonymousClass1() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            final ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(ChatBatchDeletionFragment.this.getContext());
            aCMAlertDialog.setMessage(R.string.delete_selected_chat_comfirm);
            aCMAlertDialog.addButton(R.string.cancel, (View.OnClickListener) null, (int) 4283076834L);
            aCMAlertDialog.addButton(R.string.delete, new View.OnClickListener() { // from class: com.narvii.chat.global.chat.ChatBatchDeletionFragment$onCreateOptionsMenu$1$$special$$inlined$apply$lambda$1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    ChatBatchDeletionFragment.this.getProgress().setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.chat.global.chat.ChatBatchDeletionFragment$onCreateOptionsMenu$1$$special$$inlined$apply$lambda$1.1
                        @Override // android.content.DialogInterface.OnCancelListener
                        public final void onCancel(DialogInterface dialogInterface) {
                            ApiRequest apiRequest = ChatBatchDeletionFragment.this.apiRequest;
                            if (apiRequest != null) {
                                ChatBatchDeletionFragment.this.getApi().abort(apiRequest);
                            }
                        }
                    });
                    ChatBatchDeletionFragment.this.getProgress().show();
                    ChatBatchDeletionFragment.this.apiRequest = ApiRequest.builder().chatServer().path("/chat/thread/leave").param("threadIds", ChatBatchDeletionFragment.this.threadIds()).build();
                    ChatBatchDeletionFragment.this.getApi().exec(ChatBatchDeletionFragment.this.apiRequest, new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.chat.global.chat.ChatBatchDeletionFragment$onCreateOptionsMenu$1$$special$$inlined$apply$lambda$1.2
                        @Override // com.narvii.util.http.ApiResponseListener
                        public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                            super.onFinish(apiRequest, apiResponse);
                            ChatRequestHelper chatRequestHelper = new ChatRequestHelper(ChatBatchDeletionFragment.this);
                            String userId = ChatBatchDeletionFragment.this.getAccount().getUserId();
                            for (ChatThread chatThread : ChatBatchDeletionFragment.this.selectThreads) {
                                chatRequestHelper.handleDeleteUserResponse(userId, chatThread.threadId, chatThread);
                                ChatBatchDeletionFragment.this.removeThreadFromRTC(chatThread);
                            }
                            BatchDeleteChatObject batchDeleteChatObject = new BatchDeleteChatObject();
                            batchDeleteChatObject.setSelectThreadIdsList(ChatBatchDeletionFragment.this.selectIds());
                            batchDeleteChatObject.setNdcId(ChatBatchDeletionFragment.this.getNdcId());
                            Notification notification = new Notification("delete", batchDeleteChatObject);
                            ChatBatchDeletionFragment.this.getProgress().dismiss();
                            NotificationUtils.sendNotificationIncludeGlobal((NotificationCenter) aCMAlertDialog.getService("notification"), notification);
                            ChatBatchDeletionFragment.this.selectThreads.clear();
                            ChatBatchDeletionFragment.this.invalidateOptionsMenu();
                        }

                        @Override // com.narvii.util.http.ApiResponseListener
                        public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                            super.onFail(apiRequest, i, list, str, apiResponse, th);
                            ChatBatchDeletionFragment.this.getProgress().dismiss();
                        }
                    });
                }
            }, (int) 4291822107L);
            aCMAlertDialog.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void removeThreadFromRTC(ChatThread chatThread) {
        String strId = chatThread.id();
        NVObject nVObjectM46clone = chatThread.m46clone();
        if (nVObjectM46clone == null) {
            throw new TypeCastException("null cannot be cast to non-null type com.narvii.model.ChatThread");
        }
        ChatThread chatThread2 = (ChatThread) nVObjectM46clone;
        RtcService rtcService = (RtcService) getService("rtc");
        ChatService chatService = (ChatService) getService("chat");
        if (chatService != null) {
            chatService.removeThread(this.ndcId, chatThread.threadId);
            if (rtcService != null) {
                if (rtcService.getMainSigChannel() != null && Utils.isEqualsNotNull(rtcService.getMainSigChannel().threadId, strId)) {
                    rtcService.exitLiveChannel(this.ndcId, strId);
                }
                rtcService.cleanMappedWindow(strId);
                rtcService.cleanThreadWindow(strId);
            }
            GlobalChatService globalChatService = (GlobalChatService) getService("globalChat");
            if (globalChatService != null) {
                globalChatService.removeRecentChat(GlobalChatThread.newGlobalChatThread(chatThread2, this.ndcId, getContext()));
                return;
            } else {
                Intrinsics.throwNpe();
                throw null;
            }
        }
        Intrinsics.throwNpe();
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String threadIds() {
        StringBuilder sb = new StringBuilder();
        int i = 0;
        for (Object obj : selectIds()) {
            int i2 = i + 1;
            if (i >= 0) {
                String str = (String) obj;
                if (i > 0) {
                    sb.append(",");
                }
                sb.append(str);
                i = i2;
            } else {
                CollectionsKt.throwIndexOverflow();
                throw null;
            }
        }
        String string = sb.toString();
        Intrinsics.checkExpressionValueIsNotNull(string, "sb.toString()");
        return string;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<String> selectIds() {
        List<ChatThread> list = this.selectThreads;
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((ChatThread) it.next()).id());
        }
        return arrayList;
    }

    @Override // android.support.v4.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) throws Resources.NotFoundException {
        super.onPrepareOptionsMenu(menu);
        updateDeleteButton();
    }

    private final void updateDeleteButton() throws Resources.NotFoundException {
        Drawable rightButtonBackground;
        Button button = this.deleteButton;
        if (button == null) {
            Intrinsics.throwUninitializedPropertyAccessException("deleteButton");
            throw null;
        }
        if (button != null) {
            boolean z = !selectIds().isEmpty();
            Button button2 = this.deleteButton;
            if (button2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("deleteButton");
                throw null;
            }
            button2.setEnabled(z);
            Button button3 = this.deleteButton;
            if (button3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("deleteButton");
                throw null;
            }
            button3.setAlpha(z ? 1.0f : 0.5f);
            Button button4 = this.deleteButton;
            if (button4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("deleteButton");
                throw null;
            }
            if (z) {
                rightButtonBackground = NVActivity.getRightButtonBackground((int) 4291822107L);
            } else {
                rightButtonBackground = NVActivity.getRightButtonBackground(1721210775);
            }
            button4.setBackground(rightButtonBackground);
        }
    }

    /* compiled from: ChatBatchDeletionFragment.kt */
    public final class Adapter extends NVPagedAdapter<ChatThread, ThreadListResponse> implements NotificationListener, IMyChatList {
        private final NVContext ctx;
        private User curUser;
        private List<? extends ChatThread> l;
        private MyChatListDelegate myChatListDelegate;

        @Override // com.narvii.list.NVPagedAdapter
        protected boolean filterDuplicate() {
            return true;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "ChatRoomList";
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemTypeCount() {
            return 3;
        }

        @Override // com.narvii.list.NVAdapter
        public boolean onLongClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            return true;
        }

        @Override // com.narvii.chat.util.IMyChatList
        public void onThreadUpdateInfo(ThreadUpdateObject updateObject) {
            Intrinsics.checkParameterIsNotNull(updateObject, "updateObject");
        }

        public Adapter(NVContext nVContext) {
            super(nVContext);
            this.ctx = nVContext;
            setDarkTheme(ChatBatchDeletionFragment.this.getNdcId() == 0);
            AccountService accountService = (AccountService) getService("account");
            if (ChatBatchDeletionFragment.this.getNdcId() != 0) {
                this.curUser = ChatBatchDeletionFragment.this.getMyCommunityService().getUserProfile(ChatBatchDeletionFragment.this.getNdcId()) == null ? accountService.getUserProfile(ChatBatchDeletionFragment.this.getNdcId()) : ChatBatchDeletionFragment.this.getMyCommunityService().getUserProfile(ChatBatchDeletionFragment.this.getNdcId());
            } else {
                this.curUser = accountService.getUserProfile(0);
            }
            this.myChatListDelegate = new MyChatListDelegate(this, this, ChatBatchDeletionFragment.this.getConfig().getCommunityId() == 0, this.curUser, false, 16, null);
        }

        public final NVContext getCtx() {
            return this.ctx;
        }

        public final User getCurUser() {
            return this.curUser;
        }

        public final void setCurUser(User user) {
            this.curUser = user;
        }

        public final MyChatListDelegate getMyChatListDelegate() {
            return this.myChatListDelegate;
        }

        public final void setMyChatListDelegate(MyChatListDelegate myChatListDelegate) {
            this.myChatListDelegate = myChatListDelegate;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
            if (this.mainIpc == null) {
                addImpressionCollector(new LinearImpressionCollector(ChatThread.class));
            }
        }

        public final List<ChatThread> getL$Amino_bundle() {
            return this.l;
        }

        public final void setL$Amino_bundle(List<? extends ChatThread> list) {
            this.l = list;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<ChatThread> dataType() {
            return ChatThread.class;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<? extends ThreadListResponse> responseType() {
            return ThreadListResponse.class;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            ApiRequest.Builder builderCommunityId = ApiRequest.builder().chatServer().path("/chat/thread").param("type", "joined-me").communityId(ChatBatchDeletionFragment.this.getIntParam(CommentPostActivity.COMMENT_POST_KEY_NDC_ID));
            builderCommunityId.tag(Boolean.valueOf(z));
            ApiRequest apiRequestBuild = builderCommunityId.build();
            Intrinsics.checkExpressionValueIsNotNull(apiRequestBuild, "builder.build()");
            return apiRequestBuild;
        }

        @Override // com.narvii.list.NVPagedAdapter
        public List<ChatThread> list() {
            return this.l;
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            this.l = super.rawList();
            Collections.sort(this.l, ChatHelper.Companion.getTHREAD_COMPARATOR());
            super.notifyDataSetChanged();
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemType(Object obj) {
            if (obj == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.model.ChatThread");
            }
            return ThreadListItem.getViewType(ChatBatchDeletionFragment.this.getChatHelper(), (ChatThread) obj);
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected List<ChatThread> filterResponseList(List<ChatThread> list, int i) {
            return list != null ? list : new ArrayList();
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            if (!(obj instanceof ChatThread)) {
                obj = null;
            }
            ChatThread chatThread = (ChatThread) obj;
            ViewGroup viewGroup2 = (ViewGroup) createView(R.layout.chat_thread_selected_item, viewGroup, view);
            if (!Intrinsics.areEqual(viewGroup2, view)) {
                ViewGroup viewGroup3 = (ViewGroup) viewGroup2.findViewById(R.id.chat_container);
                MyChatListDelegate myChatListDelegate = this.myChatListDelegate;
                View chatThreadItemCell = myChatListDelegate != null ? myChatListDelegate.getChatThreadItemCell(this, chatThread, null, viewGroup3) : null;
                viewGroup3.removeAllViews();
                viewGroup3.addView(chatThreadItemCell);
            } else {
                ViewGroup container = (ViewGroup) viewGroup2.findViewById(R.id.chat_container);
                Intrinsics.checkExpressionValueIsNotNull(container, "container");
                View childAt = container.getChildCount() > 0 ? container.getChildAt(0) : null;
                MyChatListDelegate myChatListDelegate2 = this.myChatListDelegate;
                if (myChatListDelegate2 != null) {
                    myChatListDelegate2.getChatThreadItemCell(this, chatThread, childAt, viewGroup);
                }
            }
            ((ImageView) viewGroup2.findViewById(R.id.select)).setImageResource(CollectionsKt___CollectionsKt.contains(ChatBatchDeletionFragment.this.selectIds(), chatThread != null ? chatThread.id() : null) ? R.drawable.ic_rcmd_onboarding_user_selected : R.drawable.ic_rcmd_onboarding_user_select2);
            return viewGroup2;
        }

        @Override // com.narvii.chat.util.IMyChatList
        public ChatThread getMappedThreadFromList(String str) {
            for (ChatThread chatThread : super.rawList()) {
                if (Utils.isEqualsNotNull(chatThread.threadId, str)) {
                    return chatThread;
                }
            }
            return null;
        }

        @Override // com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
            MyChatListDelegate myChatListDelegate = this.myChatListDelegate;
            if (myChatListDelegate != null) {
                myChatListDelegate.onNotification(notification, Integer.valueOf(ChatBatchDeletionFragment.this.getIntParam(CommentPostActivity.COMMENT_POST_KEY_NDC_ID)));
            }
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, final Object obj, View view, View view2) {
            if (!(obj instanceof ChatThread)) {
                return true;
            }
            ChatThread chatThread = (ChatThread) obj;
            if (ChatBatchDeletionFragment.this.getChatHelper().isHost(chatThread) && !ChatHelperKt.isSingleChat(chatThread) && !ChatBatchDeletionFragment.this.selectIds().contains(chatThread.id())) {
                ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
                aCMAlertDialog.setMessage(R.string.select_chat_comfirm);
                int i2 = (int) 4283076834L;
                aCMAlertDialog.addButton(R.string.cancel, (View.OnClickListener) null, i2);
                aCMAlertDialog.addButton(R.string.yes, new View.OnClickListener() { // from class: com.narvii.chat.global.chat.ChatBatchDeletionFragment$Adapter$onItemClick$$inlined$apply$lambda$1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view3) {
                        this.this$0.selectChat((ChatThread) obj);
                    }
                }, i2);
                aCMAlertDialog.show();
                return true;
            }
            selectChat(chatThread);
            return true;
        }

        @Override // com.narvii.chat.util.IMyChatList
        public void onUnknownThreadMessageCome(ChatMessage message) {
            Intrinsics.checkParameterIsNotNull(message, "message");
            if (!ChatBatchDeletionFragment.this.isActive()) {
                ChatBatchDeletionFragment.this.needRefreshWhenResume = true;
            } else {
                refresh(256, null);
            }
        }

        public final void onNewMessage(ChatMessage message) {
            Intrinsics.checkParameterIsNotNull(message, "message");
            MyChatListDelegate myChatListDelegate = this.myChatListDelegate;
            if (myChatListDelegate != null) {
                myChatListDelegate.onNewChatMessage(message);
            }
        }

        @Override // com.narvii.chat.util.IMyChatList
        public void refreshList() {
            if (!ChatBatchDeletionFragment.this.isActive()) {
                ChatBatchDeletionFragment.this.needRefreshWhenResume = true;
            } else {
                refresh(256, null);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void selectChat(ChatThread chatThread) {
            if (ChatBatchDeletionFragment.this.selectIds().contains(chatThread.id())) {
                ChatBatchDeletionFragment.this.selectThreads.remove(chatThread);
            } else {
                ChatBatchDeletionFragment.this.selectThreads.add(chatThread);
            }
            notifyDataSetChanged();
            invalidateOptionsMenu();
        }
    }

    /* compiled from: ChatBatchDeletionFragment.kt */
    public final class EmptyAdapter extends NVPagerStatusAdapter {
        final /* synthetic */ ChatBatchDeletionFragment this$0;

        @Override // com.narvii.adapter.NVPagerStatusAdapter
        protected int emptyLayoutId() {
            return R.layout.empty_delete_chat;
        }

        @Override // com.narvii.list.NVAdapter
        protected boolean supportNVTheme() {
            return true;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public EmptyAdapter(ChatBatchDeletionFragment chatBatchDeletionFragment, NVContext ctx) {
            super(ctx);
            Intrinsics.checkParameterIsNotNull(ctx, "ctx");
            this.this$0 = chatBatchDeletionFragment;
        }
    }

    @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
    public void onNewChatMessage(int i, ChatMessageDto chatMessageDto) {
        ChatMessage chatMessage;
        Intrinsics.checkParameterIsNotNull(chatMessageDto, "chatMessageDto");
        Adapter adapter = this.adapter;
        if (adapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            throw null;
        }
        if (adapter == null || (chatMessage = chatMessageDto.chatMessage) == null) {
            return;
        }
        if (adapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            throw null;
        }
        Intrinsics.checkExpressionValueIsNotNull(chatMessage, "chatMessageDto.chatMessage");
        adapter.onNewMessage(chatMessage);
    }
}
