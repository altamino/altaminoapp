package com.narvii.chat.detail;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.TextView;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVFragment;
import com.narvii.app.theme.NVThemeFragment;
import com.narvii.chat.ThreadResponse;
import com.narvii.chat.util.ChatHelper;
import com.narvii.config.ConfigService;
import com.narvii.model.ChatThread;
import com.narvii.model.api.ApiResponse;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationCenter;
import com.narvii.notification.NotificationListener;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NotificationUtils;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.text.DefaultTagClickListener;
import com.narvii.util.text.LinkTouchMovementMethod;
import com.narvii.util.text.NVText;
import java.util.HashMap;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.TypeCastException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: ThreadAnnouncementFragment.kt */
/* loaded from: classes2.dex */
public final class ThreadAnnouncementFragment extends NVFragment implements NotificationListener {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(ThreadAnnouncementFragment.class), "editableBottom", "getEditableBottom()Landroid/view/ViewGroup;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(ThreadAnnouncementFragment.class), "switchView", "getSwitchView()Landroid/widget/CheckBox;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(ThreadAnnouncementFragment.class), "content", "getContent()Landroid/widget/TextView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(ThreadAnnouncementFragment.class), "emptyLayout", "getEmptyLayout()Landroid/view/View;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(ThreadAnnouncementFragment.class), "contentLayout", "getContentLayout()Landroid/view/View;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(ThreadAnnouncementFragment.class), "clearListener", "getClearListener()Landroid/view/View$OnClickListener;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(ThreadAnnouncementFragment.class), "api", "getApi()Lcom/narvii/util/http/ApiService;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(ThreadAnnouncementFragment.class), "progressDialog", "getProgressDialog()Lcom/narvii/util/dialog/ProgressDialog;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(ThreadAnnouncementFragment.class), "chatHelper", "getChatHelper()Lcom/narvii/chat/util/ChatHelper;"))};
    public static final Companion Companion = new Companion(null);
    private HashMap _$_findViewCache;
    private ChatThread chatThread;
    private ApiRequest request;
    private final Lazy editableBottom$delegate = bind(R.id.editable_bottom);
    private final Lazy switchView$delegate = bind(R.id.switch_view);
    private final Lazy content$delegate = bind(R.id.content);
    private final Lazy emptyLayout$delegate = bind(R.id.empty_layout);
    private final Lazy contentLayout$delegate = bind(R.id.content_layout);
    private final Lazy clearListener$delegate = LazyKt__LazyJVMKt.lazy(new Function0<View.OnClickListener>() { // from class: com.narvii.chat.detail.ThreadAnnouncementFragment$clearListener$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final View.OnClickListener invoke() {
            return new View.OnClickListener() { // from class: com.narvii.chat.detail.ThreadAnnouncementFragment$clearListener$2.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ThreadAnnouncementFragment threadAnnouncementFragment = ThreadAnnouncementFragment$clearListener$2.this.this$0;
                    threadAnnouncementFragment.startActivity(EditThreadAnnouncementFragment.Companion.intent(ThreadAnnouncementFragment.access$getChatThread$p(threadAnnouncementFragment)));
                }
            };
        }
    });
    private final Lazy api$delegate = LazyKt__LazyJVMKt.lazy(new Function0<ApiService>() { // from class: com.narvii.chat.detail.ThreadAnnouncementFragment$api$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final ApiService invoke() {
            return (ApiService) this.this$0.getService("api");
        }
    });
    private final Lazy progressDialog$delegate = LazyKt__LazyJVMKt.lazy(new Function0<ProgressDialog>() { // from class: com.narvii.chat.detail.ThreadAnnouncementFragment$progressDialog$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final ProgressDialog invoke() {
            return new ProgressDialog(this.this$0.getContext());
        }
    });
    private final Lazy chatHelper$delegate = LazyKt__LazyJVMKt.lazy(new Function0<ChatHelper>() { // from class: com.narvii.chat.detail.ThreadAnnouncementFragment$chatHelper$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final ChatHelper invoke() {
            Context context = this.this$0.getContext();
            Intrinsics.checkExpressionValueIsNotNull(context, "context");
            return new ChatHelper(context);
        }
    });

    private final View.OnClickListener getClearListener() {
        Lazy lazy = this.clearListener$delegate;
        KProperty kProperty = $$delegatedProperties[5];
        return (View.OnClickListener) lazy.getValue();
    }

    private final TextView getContent() {
        Lazy lazy = this.content$delegate;
        KProperty kProperty = $$delegatedProperties[2];
        return (TextView) lazy.getValue();
    }

    private final View getContentLayout() {
        Lazy lazy = this.contentLayout$delegate;
        KProperty kProperty = $$delegatedProperties[4];
        return (View) lazy.getValue();
    }

    private final ViewGroup getEditableBottom() {
        Lazy lazy = this.editableBottom$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (ViewGroup) lazy.getValue();
    }

    private final View getEmptyLayout() {
        Lazy lazy = this.emptyLayout$delegate;
        KProperty kProperty = $$delegatedProperties[3];
        return (View) lazy.getValue();
    }

    private final CheckBox getSwitchView() {
        Lazy lazy = this.switchView$delegate;
        KProperty kProperty = $$delegatedProperties[1];
        return (CheckBox) lazy.getValue();
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

    public final ApiService getApi() {
        Lazy lazy = this.api$delegate;
        KProperty kProperty = $$delegatedProperties[6];
        return (ApiService) lazy.getValue();
    }

    public final ChatHelper getChatHelper() {
        Lazy lazy = this.chatHelper$delegate;
        KProperty kProperty = $$delegatedProperties[8];
        return (ChatHelper) lazy.getValue();
    }

    public final ProgressDialog getProgressDialog() {
        Lazy lazy = this.progressDialog$delegate;
        KProperty kProperty = $$delegatedProperties[7];
        return (ProgressDialog) lazy.getValue();
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

    public static final /* synthetic */ ChatThread access$getChatThread$p(ThreadAnnouncementFragment threadAnnouncementFragment) {
        ChatThread chatThread = threadAnnouncementFragment.chatThread;
        if (chatThread != null) {
            return chatThread;
        }
        Intrinsics.throwUninitializedPropertyAccessException("chatThread");
        throw null;
    }

    public final ApiRequest getRequest() {
        return this.request;
    }

    public final void setRequest(ApiRequest apiRequest) {
        this.request = apiRequest;
    }

    /* compiled from: ThreadAnnouncementFragment.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Intent intent(ChatThread chatThread) {
            Intrinsics.checkParameterIsNotNull(chatThread, "chatThread");
            Intent intent = FragmentWrapperActivity.intent(ThreadAnnouncementFragment.class);
            intent.putExtra("chatThread", JacksonUtils.writeAsString(chatThread));
            intent.putExtra("__communityId", chatThread.ndcId);
            Intrinsics.checkExpressionValueIsNotNull(intent, "FragmentWrapperActivity.…atThread.ndcId)\n        }");
            return intent;
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Object as = JacksonUtils.readAs(getStringParam("chatThread"), ChatThread.class);
        Intrinsics.checkExpressionValueIsNotNull(as, "JacksonUtils.readAs(getS…, ChatThread::class.java)");
        this.chatThread = (ChatThread) as;
        ConfigService configService = (ConfigService) getService("config");
        if (configService != null) {
            NVThemeFragment.setDarkNVTheme$default(this, configService.getCommunityId() == 0, false, 2, null);
            setTitle(R.string.announcement);
        } else {
            Intrinsics.throwNpe();
            throw null;
        }
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        return inflater.inflate(R.layout.fragment_thread_announcement, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        updateView();
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification n) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        Intrinsics.checkParameterIsNotNull(n, "n");
        if (n.obj instanceof ChatThread) {
            String str = n.action;
            if (str == "update" || str == "edit") {
                Bundle bundle = n.bundle;
                if (bundle == null || !bundle.getBoolean("_fromChatFragment")) {
                    Object obj = n.obj;
                    if (obj == null) {
                        throw new TypeCastException("null cannot be cast to non-null type com.narvii.model.ChatThread");
                    }
                    ChatThread chatThread = (ChatThread) obj;
                    String strId = chatThread.id();
                    ChatThread chatThread2 = this.chatThread;
                    if (chatThread2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("chatThread");
                        throw null;
                    }
                    if (TextUtils.equals(strId, chatThread2.id())) {
                        this.chatThread = chatThread;
                        updateView();
                    }
                }
            }
        }
    }

    private final void updateView() throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        getSwitchView().setButtonDrawable(isDarkNVTheme() ? R.drawable.switch_bg_dt : R.drawable.switch_bg);
        if (isHost() || isCoHost()) {
            setActionBarRightButton(R.string.edit, ContextCompat.getDrawable(getContext(), android.R.color.transparent), getClearListener());
        }
        if (isHost() || isCoHost()) {
            getEditableBottom().setVisibility(0);
            CheckBox switchView = getSwitchView();
            ChatThread chatThread = this.chatThread;
            if (chatThread == null) {
                Intrinsics.throwUninitializedPropertyAccessException("chatThread");
                throw null;
            }
            Boolean boolIsPinAnnouncement = chatThread.isPinAnnouncement();
            Intrinsics.checkExpressionValueIsNotNull(boolIsPinAnnouncement, "chatThread.isPinAnnouncement");
            switchView.setChecked(boolIsPinAnnouncement.booleanValue());
            getSwitchView().setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.detail.ThreadAnnouncementFragment.updateView.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ThreadAnnouncementFragment.this.sendRequest(!ThreadAnnouncementFragment.access$getChatThread$p(r2).isPinAnnouncement().booleanValue());
                }
            });
        } else {
            getEditableBottom().setVisibility(8);
        }
        ChatThread chatThread2 = this.chatThread;
        if (chatThread2 != null) {
            String announcement = chatThread2.getAnnouncement();
            if (announcement == null) {
                announcement = "";
            }
            NVText nVText = new NVText(announcement, 4283058762L);
            nVText.markHashtagAndLink(DefaultTagClickListener.instance, true);
            getContent().setMovementMethod(LinkTouchMovementMethod.getInstanceIgnoreScroll());
            getContent().setText(nVText);
            ChatThread chatThread3 = this.chatThread;
            if (chatThread3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("chatThread");
                throw null;
            }
            if (TextUtils.isEmpty(chatThread3.getAnnouncement())) {
                getContentLayout().setVisibility(8);
                getEmptyLayout().setVisibility(0);
                return;
            } else {
                getContentLayout().setVisibility(0);
                getEmptyLayout().setVisibility(8);
                return;
            }
        }
        Intrinsics.throwUninitializedPropertyAccessException("chatThread");
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void sendRequest(final boolean z) {
        getProgressDialog().setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.narvii.chat.detail.ThreadAnnouncementFragment.sendRequest.1
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                if (ThreadAnnouncementFragment.this.getRequest() != null) {
                    ThreadAnnouncementFragment.this.getApi().abort(ThreadAnnouncementFragment.this.getRequest());
                }
            }
        });
        getProgressDialog().show();
        ApiRequest.Builder builderPath = ApiRequest.builder().post().path("/chat/thread/" + threadId());
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        ObjectNode objectNodeCreateObjectNode2 = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode2.put("pinAnnouncement", z);
        objectNodeCreateObjectNode.put("extensions", objectNodeCreateObjectNode2);
        this.request = builderPath.body(objectNodeCreateObjectNode).build();
        getApi().exec(this.request, new ApiResponseListener<ApiResponse>(ThreadResponse.class) { // from class: com.narvii.chat.detail.ThreadAnnouncementFragment.sendRequest.3
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                super.onFinish(apiRequest, apiResponse);
                ThreadAnnouncementFragment.this.getProgressDialog().dismiss();
                ThreadAnnouncementFragment.access$getChatThread$p(ThreadAnnouncementFragment.this).setPinAnnouncement(z);
                NotificationUtils.sendNotificationIncludeGlobal((NotificationCenter) ThreadAnnouncementFragment.this.getService("notification"), new Notification("update", ThreadAnnouncementFragment.access$getChatThread$p(ThreadAnnouncementFragment.this)));
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str, apiResponse, th);
                ThreadAnnouncementFragment.this.getProgressDialog().dismiss();
                Utils.showShortToast(ThreadAnnouncementFragment.this.getContext(), str);
            }
        });
    }

    public final String threadId() {
        ChatThread chatThread = this.chatThread;
        if (chatThread == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chatThread");
            throw null;
        }
        String strId = chatThread.id();
        Intrinsics.checkExpressionValueIsNotNull(strId, "chatThread.id()");
        return strId;
    }

    public final String userId() {
        ChatThread chatThread = this.chatThread;
        if (chatThread == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chatThread");
            throw null;
        }
        String strUid = chatThread.uid();
        Intrinsics.checkExpressionValueIsNotNull(strUid, "chatThread.uid()");
        return strUid;
    }

    public final boolean isHost() {
        ChatHelper chatHelper = getChatHelper();
        ChatThread chatThread = this.chatThread;
        if (chatThread != null) {
            return chatHelper.isHost(chatThread);
        }
        Intrinsics.throwUninitializedPropertyAccessException("chatThread");
        throw null;
    }

    public final boolean isCoHost() {
        ChatHelper chatHelper = getChatHelper();
        ChatThread chatThread = this.chatThread;
        if (chatThread != null) {
            return chatHelper.isCoHost(chatThread);
        }
        Intrinsics.throwUninitializedPropertyAccessException("chatThread");
        throw null;
    }

    private final <T extends View> Lazy<T> bind(final int i) {
        return LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, new Function0<T>() { // from class: com.narvii.chat.detail.ThreadAnnouncementFragment.bind.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Incorrect return type in method signature: ()TT; */
            @Override // kotlin.jvm.functions.Function0
            public final View invoke() {
                View view = ThreadAnnouncementFragment.this.getView();
                View viewFindViewById = view != null ? view.findViewById(i) : null;
                if (viewFindViewById != null) {
                    return viewFindViewById;
                }
                throw new TypeCastException("null cannot be cast to non-null type T");
            }
        });
    }
}
