package com.narvii.chat.global.chat;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListAdapter;
import com.narvii.account.AccountService;
import com.narvii.adapter.NVPagerStatusAdapter;
import com.narvii.amino.master.R;
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
import java.util.Iterator;
import java.util.List;
import kotlin.collections.d0;
import kotlin.collections.v;
import kotlin.collections.w;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.o;

/* JADX INFO: loaded from: classes4.dex */
public final class ChatBatchDeletionFragment extends NVListFragment implements ChatService.ChatMessageReceptor {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    public static final String TAG = "ChatBatchDeletionFragment";
    public AccountService account;
    public Adapter adapter;
    public ApiService api;

    @Nullable
    private ApiRequest apiRequest;
    public ChatHelper chatHelper;
    public ChatService chatService;
    public ConfigService config;
    public Button deleteButton;
    public MyCommunityListService myCommunityService;
    private int ndcId;
    private boolean needRefreshWhenResume;

    @NotNull
    private final List<ChatThread> selectThreads = new ArrayList();

    @NotNull
    private final w7.m progress$delegate = o.a(new ChatBatchDeletionFragment$progress$2(this));

    public final class Adapter extends NVPagedAdapter<ChatThread, ThreadListResponse> implements NotificationListener, IMyChatList {

        @Nullable
        private final NVContext ctx;

        @Nullable
        private User curUser;

        @Nullable
        private List<? extends ChatThread> l;

        @Nullable
        private MyChatListDelegate myChatListDelegate;

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        @NotNull
        public Class<ChatThread> dataType() {
            return ChatThread.class;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected boolean filterDuplicate() {
            return true;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
        @NotNull
        public String getAreaName() {
            return "ChatRoomList";
        }

        @Nullable
        public final NVContext getCtx() {
            return this.ctx;
        }

        @Nullable
        public final User getCurUser() {
            return this.curUser;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemTypeCount() {
            return 3;
        }

        @Nullable
        public final List<ChatThread> getL$Amino_bundle() {
            return this.l;
        }

        @Nullable
        public final MyChatListDelegate getMyChatListDelegate() {
            return this.myChatListDelegate;
        }

        @Override // com.narvii.list.NVPagedAdapter
        @Nullable
        public List<ChatThread> list() {
            return this.l;
        }

        @Override // com.narvii.list.NVAdapter
        public boolean onLongClick(@Nullable ListAdapter listAdapter, int i10, @Nullable Object obj, @Nullable View view, @Nullable View view2) {
            return true;
        }

        @Override // com.narvii.chat.util.IMyChatList
        public void onThreadUpdateInfo(@NotNull ThreadUpdateObject updateObject) {
            t.j(updateObject, "updateObject");
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        @NotNull
        public Class<? extends ThreadListResponse> responseType() {
            return ThreadListResponse.class;
        }

        public final void setCurUser(@Nullable User user) {
            this.curUser = user;
        }

        public final void setL$Amino_bundle(@Nullable List<? extends ChatThread> list) {
            this.l = list;
        }

        public final void setMyChatListDelegate(@Nullable MyChatListDelegate myChatListDelegate) {
            this.myChatListDelegate = myChatListDelegate;
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

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onItemClick$lambda$1$lambda$0(Adapter this$0, Object obj, View view) {
            t.j(this$0, "this$0");
            this$0.selectChat((ChatThread) obj);
        }

        private final void selectChat(ChatThread chatThread) {
            if (ChatBatchDeletionFragment.this.selectIds().contains(chatThread.id())) {
                ChatBatchDeletionFragment.this.selectThreads.remove(chatThread);
            } else {
                ChatBatchDeletionFragment.this.selectThreads.add(chatThread);
            }
            notifyDataSetChanged();
            invalidateOptionsMenu();
        }

        @Override // com.narvii.list.NVPagedAdapter
        @NotNull
        protected List<ChatThread> filterResponseList(@Nullable List<ChatThread> list, int i10) {
            return list == null ? new ArrayList() : list;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemType(@Nullable Object obj) {
            t.h(obj, "null cannot be cast to non-null type com.narvii.model.ChatThread");
            return ThreadListItem.getViewType(ChatBatchDeletionFragment.this.getChatHelper(), (ChatThread) obj);
        }

        @Override // com.narvii.list.NVPagedAdapter
        @Nullable
        protected View getItemView(@Nullable Object obj, @Nullable View view, @Nullable ViewGroup viewGroup) {
            ChatThread chatThread = obj instanceof ChatThread ? (ChatThread) obj : null;
            ViewGroup viewGroup2 = (ViewGroup) createView(R.layout.chat_thread_selected_item, viewGroup, view);
            if (t.e(viewGroup2, view)) {
                ViewGroup viewGroup3 = (ViewGroup) viewGroup2.findViewById(R.id.chat_container);
                View childAt = viewGroup3.getChildCount() > 0 ? viewGroup3.getChildAt(0) : null;
                MyChatListDelegate myChatListDelegate = this.myChatListDelegate;
                if (myChatListDelegate != null) {
                    myChatListDelegate.getChatThreadItemCell(this, chatThread, childAt, viewGroup);
                }
            } else {
                ViewGroup viewGroup4 = (ViewGroup) viewGroup2.findViewById(R.id.chat_container);
                MyChatListDelegate myChatListDelegate2 = this.myChatListDelegate;
                View chatThreadItemCell = myChatListDelegate2 != null ? myChatListDelegate2.getChatThreadItemCell(this, chatThread, null, viewGroup4) : null;
                viewGroup4.removeAllViews();
                viewGroup4.addView(chatThreadItemCell);
            }
            ((ImageView) viewGroup2.findViewById(R.id.select)).setImageResource(d0.Z(ChatBatchDeletionFragment.this.selectIds(), chatThread != null ? chatThread.id() : null) ? R.drawable.ic_rcmd_onboarding_user_selected : R.drawable.ic_rcmd_onboarding_user_select2);
            return viewGroup2;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(@Nullable ListAdapter listAdapter, int i10, @Nullable final Object obj, @Nullable View view, @Nullable View view2) {
            if (!(obj instanceof ChatThread)) {
                return true;
            }
            ChatThread chatThread = (ChatThread) obj;
            if (!ChatBatchDeletionFragment.this.getChatHelper().isHost(chatThread) || ChatHelperKt.isSingleChat(chatThread) || ChatBatchDeletionFragment.this.selectIds().contains(chatThread.id())) {
                selectChat(chatThread);
                return true;
            }
            ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
            aCMAlertDialog.setMessage(R.string.select_chat_comfirm);
            aCMAlertDialog.addButton(R.string.cancel, (View.OnClickListener) null, -11890462);
            aCMAlertDialog.addButton(R.string.yes, new View.OnClickListener() { // from class: com.narvii.chat.global.chat.g
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    ChatBatchDeletionFragment.Adapter.onItemClick$lambda$1$lambda$0(this.f1927a, obj, view3);
                }
            }, -11890462);
            aCMAlertDialog.show();
            return true;
        }

        public final void onNewMessage(@NotNull ChatMessage message) {
            t.j(message, "message");
            MyChatListDelegate myChatListDelegate = this.myChatListDelegate;
            if (myChatListDelegate != null) {
                myChatListDelegate.onNewChatMessage(message);
            }
        }

        @Override // com.narvii.notification.NotificationListener
        public void onNotification(@Nullable Notification notification) {
            MyChatListDelegate myChatListDelegate = this.myChatListDelegate;
            if (myChatListDelegate != null) {
                myChatListDelegate.onNotification(notification, Integer.valueOf(ChatBatchDeletionFragment.this.getIntParam(CommentPostActivity.COMMENT_POST_KEY_NDC_ID)));
            }
        }

        @Override // com.narvii.chat.util.IMyChatList
        public void onUnknownThreadMessageCome(@NotNull ChatMessage message) {
            t.j(message, "message");
            if (ChatBatchDeletionFragment.this.isActive()) {
                refresh(256, null);
            } else {
                ChatBatchDeletionFragment.this.needRefreshWhenResume = true;
            }
        }

        @Override // com.narvii.chat.util.IMyChatList
        public void refreshList() {
            if (ChatBatchDeletionFragment.this.isActive()) {
                refresh(256, null);
            } else {
                ChatBatchDeletionFragment.this.needRefreshWhenResume = true;
            }
        }

        @Override // com.narvii.list.NVPagedAdapter
        @NotNull
        protected ApiRequest createRequest(boolean z6) {
            ApiRequest.Builder builderCommunityId = ApiRequest.builder().chatServer().path("/chat/thread").param("type", "joined-me").communityId(ChatBatchDeletionFragment.this.getIntParam(CommentPostActivity.COMMENT_POST_KEY_NDC_ID));
            builderCommunityId.tag(Boolean.valueOf(z6));
            ApiRequest apiRequestBuild = builderCommunityId.build();
            t.i(apiRequestBuild, "build(...)");
            return apiRequestBuild;
        }

        @Override // com.narvii.chat.util.IMyChatList
        @Nullable
        public ChatThread getMappedThreadFromList(@Nullable String str) {
            for (ChatThread chatThread : super.rawList()) {
                if (Utils.isEqualsNotNull(chatThread.threadId, str)) {
                    return chatThread;
                }
            }
            return null;
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            List<? extends ChatThread> listRawList = super.rawList();
            this.l = listRawList;
            try {
                Collections.sort(listRawList, ChatHelper.Companion.getTHREAD_COMPARATOR());
            } catch (Exception e) {
                Log.e(ChatBatchDeletionFragment.TAG, "notifyDataSetChanged: failed to sort thread list", e);
            }
            super.notifyDataSetChanged();
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
            if (this.mainIpc == null) {
                addImpressionCollector(new LinearImpressionCollector(ChatThread.class));
            }
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }
    }

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
        public EmptyAdapter(@NotNull ChatBatchDeletionFragment chatBatchDeletionFragment, NVContext ctx) {
            super(ctx);
            t.j(ctx, "ctx");
            this.this$0 = chatBatchDeletionFragment;
        }
    }

    public final int getNdcId() {
        return this.ndcId;
    }

    @Override // com.narvii.list.NVListFragment
    protected int getSelectorLightColor() {
        return -1996488705;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
    public void onResetChatMessageList() {
    }

    @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
    public void onUnreadThreadCountChanged(int i10) {
    }

    public final void setAccount(@NotNull AccountService accountService) {
        t.j(accountService, "<set-?>");
        this.account = accountService;
    }

    public final void setAdapter(@NotNull Adapter adapter) {
        t.j(adapter, "<set-?>");
        this.adapter = adapter;
    }

    public final void setApi(@NotNull ApiService apiService) {
        t.j(apiService, "<set-?>");
        this.api = apiService;
    }

    public final void setChatHelper(@NotNull ChatHelper chatHelper) {
        t.j(chatHelper, "<set-?>");
        this.chatHelper = chatHelper;
    }

    public final void setChatService(@NotNull ChatService chatService) {
        t.j(chatService, "<set-?>");
        this.chatService = chatService;
    }

    public final void setConfig(@NotNull ConfigService configService) {
        t.j(configService, "<set-?>");
        this.config = configService;
    }

    public final void setDeleteButton(@NotNull Button button) {
        t.j(button, "<set-?>");
        this.deleteButton = button;
    }

    public final void setMyCommunityService(@NotNull MyCommunityListService myCommunityListService) {
        t.j(myCommunityListService, "<set-?>");
        this.myCommunityService = myCommunityListService;
    }

    public final void setNdcId(int i10) {
        this.ndcId = i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ProgressDialog getProgress() {
        return (ProgressDialog) this.progress$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreateOptionsMenu$lambda$4(final ChatBatchDeletionFragment this$0, View view) {
        t.j(this$0, "this$0");
        final ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this$0.getContext());
        aCMAlertDialog.setMessage(R.string.delete_selected_chat_comfirm);
        aCMAlertDialog.addButton(R.string.cancel, (View.OnClickListener) null, -11890462);
        aCMAlertDialog.addButton(R.string.delete, new View.OnClickListener() { // from class: com.narvii.chat.global.chat.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ChatBatchDeletionFragment.onCreateOptionsMenu$lambda$4$lambda$3$lambda$2(this.f1924a, aCMAlertDialog, view2);
            }
        }, -3145189);
        aCMAlertDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreateOptionsMenu$lambda$4$lambda$3$lambda$2(final ChatBatchDeletionFragment this$0, final ACMAlertDialog this_apply, View view) {
        t.j(this$0, "this$0");
        t.j(this_apply, "$this_apply");
        this$0.getProgress().setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.chat.global.chat.f
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                ChatBatchDeletionFragment.onCreateOptionsMenu$lambda$4$lambda$3$lambda$2$lambda$1(this.f1926a, dialogInterface);
            }
        });
        this$0.getProgress().show();
        this$0.apiRequest = ApiRequest.builder().chatServer().path("/chat/thread/leave").param("threadIds", this$0.threadIds()).build();
        final Class<ApiResponse> cls = ApiResponse.class;
        this$0.getApi().exec(this$0.apiRequest, new ApiResponseListener<ApiResponse>(cls) { // from class: com.narvii.chat.global.chat.ChatBatchDeletionFragment$onCreateOptionsMenu$1$1$1$2
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(@Nullable ApiRequest apiRequest, int i10, @Nullable List<NameValuePair> list, @Nullable String str, @Nullable ApiResponse apiResponse, @Nullable Throwable th) {
                super.onFail(apiRequest, i10, list, str, apiResponse, th);
                this.this$0.getProgress().dismiss();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(@Nullable ApiRequest apiRequest, @Nullable ApiResponse apiResponse) throws Exception {
                super.onFinish(apiRequest, apiResponse);
                ChatRequestHelper chatRequestHelper = new ChatRequestHelper(this.this$0);
                String userId = this.this$0.getAccount().getUserId();
                List<ChatThread> list = this.this$0.selectThreads;
                ChatBatchDeletionFragment chatBatchDeletionFragment = this.this$0;
                for (ChatThread chatThread : list) {
                    chatRequestHelper.handleDeleteUserResponse(userId, chatThread.threadId, chatThread);
                    chatBatchDeletionFragment.removeThreadFromRTC(chatThread);
                }
                BatchDeleteChatObject batchDeleteChatObject = new BatchDeleteChatObject();
                ChatBatchDeletionFragment chatBatchDeletionFragment2 = this.this$0;
                batchDeleteChatObject.setSelectThreadIdsList(chatBatchDeletionFragment2.selectIds());
                batchDeleteChatObject.setNdcId(chatBatchDeletionFragment2.getNdcId());
                Notification notification = new Notification("delete", batchDeleteChatObject);
                this.this$0.getProgress().dismiss();
                NotificationUtils.sendNotificationIncludeGlobal((NotificationCenter) this_apply.getService("notification"), notification);
                this.this$0.selectThreads.clear();
                this.this$0.invalidateOptionsMenu();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreateOptionsMenu$lambda$4$lambda$3$lambda$2$lambda$1(ChatBatchDeletionFragment this$0, DialogInterface dialogInterface) {
        t.j(this$0, "this$0");
        ApiRequest apiRequest = this$0.apiRequest;
        if (apiRequest != null) {
            this$0.getApi().abort(apiRequest);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<String> selectIds() {
        List<ChatThread> list = this.selectThreads;
        ArrayList arrayList = new ArrayList(w.x(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((ChatThread) it.next()).id());
        }
        return arrayList;
    }

    private final String threadIds() {
        StringBuilder sb = new StringBuilder();
        int i10 = 0;
        for (Object obj : selectIds()) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                v.w();
            }
            String str = (String) obj;
            if (i10 > 0) {
                sb.append(",");
            }
            sb.append(str);
            i10 = i11;
        }
        String string = sb.toString();
        t.i(string, "toString(...)");
        return string;
    }

    @Override // com.narvii.list.NVListFragment
    @NotNull
    protected ListAdapter createAdapter(@Nullable Bundle bundle) {
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        setAdapter(new Adapter(this));
        EmptyAdapter emptyAdapter = new EmptyAdapter(this, this);
        emptyAdapter.setAdapter(getAdapter(), Boolean.valueOf(this.ndcId == 0));
        mergeAdapter.addAdapter(getAdapter());
        mergeAdapter.addAdapter(emptyAdapter);
        return mergeAdapter;
    }

    @NotNull
    public final AccountService getAccount() {
        AccountService accountService = this.account;
        if (accountService != null) {
            return accountService;
        }
        t.B("account");
        return null;
    }

    @NotNull
    public final Adapter getAdapter() {
        Adapter adapter = this.adapter;
        if (adapter != null) {
            return adapter;
        }
        t.B("adapter");
        return null;
    }

    @NotNull
    public final ApiService getApi() {
        ApiService apiService = this.api;
        if (apiService != null) {
            return apiService;
        }
        t.B("api");
        return null;
    }

    @NotNull
    public final ChatHelper getChatHelper() {
        ChatHelper chatHelper = this.chatHelper;
        if (chatHelper != null) {
            return chatHelper;
        }
        t.B("chatHelper");
        return null;
    }

    @NotNull
    public final ChatService getChatService() {
        ChatService chatService = this.chatService;
        if (chatService != null) {
            return chatService;
        }
        t.B("chatService");
        return null;
    }

    @NotNull
    public final ConfigService getConfig() {
        ConfigService configService = this.config;
        if (configService != null) {
            return configService;
        }
        t.B("config");
        return null;
    }

    @NotNull
    public final Button getDeleteButton() {
        Button button = this.deleteButton;
        if (button != null) {
            return button;
        }
        t.B("deleteButton");
        return null;
    }

    @NotNull
    public final MyCommunityListService getMyCommunityService() {
        MyCommunityListService myCommunityListService = this.myCommunityService;
        if (myCommunityListService != null) {
            return myCommunityListService;
        }
        t.B("myCommunityService");
        return null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(@NotNull Menu menu, @NotNull MenuInflater inflater) {
        MenuItem actionView;
        t.j(menu, "menu");
        t.j(inflater, "inflater");
        View viewInflate = getLayoutInflater().inflate(R.layout.actionbar_btn, (ViewGroup) null);
        View viewFindViewById = viewInflate.findViewById(R.id.actionbar_right_btn_btn);
        t.i(viewFindViewById, "findViewById(...)");
        setDeleteButton((Button) viewFindViewById);
        ViewGroup.LayoutParams layoutParams = getDeleteButton().getLayoutParams();
        t.h(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        marginLayoutParams.setMarginEnd(Utils.dpToPxInt(getContext(), 10.0f));
        getDeleteButton().setText(R.string.delete);
        getDeleteButton().setTextColor(-1);
        getDeleteButton().setBackground(NVActivity.getRightButtonBackground(-3145189));
        getDeleteButton().setLayoutParams(marginLayoutParams);
        getDeleteButton().setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.global.chat.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChatBatchDeletionFragment.onCreateOptionsMenu$lambda$4(this.f1923a, view);
            }
        });
        MenuItem menuItemAdd = menu.add(0, R.string.delete, 0, R.string.delete);
        if (menuItemAdd != null && (actionView = menuItemAdd.setActionView(viewInflate)) != null) {
            actionView.setShowAsAction(2);
        }
        super.onCreateOptionsMenu(menu, inflater);
    }

    @Override // com.narvii.list.NVListFragment, androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        t.j(inflater, "inflater");
        return inflater.inflate(R.layout.delete_chat_list_layout, viewGroup, false);
    }

    @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
    public void onNewChatMessage(int i10, @NotNull ChatMessageDto chatMessageDto) {
        t.j(chatMessageDto, "chatMessageDto");
        if (getAdapter() == null || chatMessageDto.chatMessage == null) {
            return;
        }
        Adapter adapter = getAdapter();
        ChatMessage chatMessage = chatMessageDto.chatMessage;
        t.i(chatMessage, "chatMessage");
        adapter.onNewMessage(chatMessage);
    }

    @Override // androidx.fragment.app.Fragment
    public void onPrepareOptionsMenu(@NotNull Menu menu) {
        t.j(menu, "menu");
        super.onPrepareOptionsMenu(menu);
        updateDeleteButton();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        t.j(view, "view");
        super.onViewCreated(view, bundle);
        getListView().setDividerHeight(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void removeThreadFromRTC(ChatThread chatThread) {
        String strId = chatThread.id();
        NVObject nVObjectM1622clone = chatThread.m1622clone();
        t.h(nVObjectM1622clone, "null cannot be cast to non-null type com.narvii.model.ChatThread");
        ChatThread chatThread2 = (ChatThread) nVObjectM1622clone;
        RtcService rtcService = (RtcService) getService("rtc");
        ChatService chatService = (ChatService) getService("chat");
        t.g(chatService);
        chatService.removeThread(this.ndcId, chatThread.threadId);
        if (rtcService != null) {
            if (rtcService.getMainSigChannel() != null && Utils.isEqualsNotNull(rtcService.getMainSigChannel().threadId, strId)) {
                rtcService.exitLiveChannel(this.ndcId, strId);
            }
            rtcService.cleanMappedWindow(strId);
            rtcService.cleanThreadWindow(strId);
        }
        GlobalChatService globalChatService = (GlobalChatService) getService("globalChat");
        t.g(globalChatService);
        globalChatService.removeRecentChat(GlobalChatThread.newGlobalChatThread(chatThread2, this.ndcId, getContext()));
    }

    private final void updateDeleteButton() {
        float f;
        Drawable rightButtonBackground;
        if (getDeleteButton() != null) {
            boolean z6 = !selectIds().isEmpty();
            getDeleteButton().setEnabled(z6);
            Button deleteButton = getDeleteButton();
            if (z6) {
                f = 1.0f;
            } else {
                f = 0.5f;
            }
            deleteButton.setAlpha(f);
            Button deleteButton2 = getDeleteButton();
            if (z6) {
                rightButtonBackground = NVActivity.getRightButtonBackground(-3145189);
            } else {
                rightButtonBackground = NVActivity.getRightButtonBackground(1721210775);
            }
            deleteButton2.setBackground(rightButtonBackground);
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        boolean z6 = true;
        setHasOptionsMenu(true);
        this.ndcId = getIntParam(CommentPostActivity.COMMENT_POST_KEY_NDC_ID);
        Context context = getContext();
        t.g(context);
        setChatHelper(new ChatHelper(context));
        Object service = getService("myCommunityList");
        t.i(service, "getService(...)");
        setMyCommunityService((MyCommunityListService) service);
        Object service2 = getService("config");
        t.i(service2, "getService(...)");
        setConfig((ConfigService) service2);
        Object service3 = getService("api");
        t.i(service3, "getService(...)");
        setApi((ApiService) service3);
        Object service4 = getService("account");
        t.i(service4, "getService(...)");
        setAccount((AccountService) service4);
        Object service5 = getService("chat");
        t.i(service5, "getService(...)");
        setChatService((ChatService) service5);
        setTitle(R.string.manage_my_chat);
        if (this.ndcId != 0) {
            z6 = false;
        }
        NVThemeFragment.setDarkNVTheme$default(this, z6, false, 2, null);
        getChatService().addCommunityLevelReceptor(this.ndcId, this);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        getChatService().removeCommunityLevelReceptor(this.ndcId, this);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.list.refresh.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        super.onRefresh();
        if (this.ndcId == 0) {
            getChatService().queryThreadCheckInfo(0, true);
        }
    }
}
