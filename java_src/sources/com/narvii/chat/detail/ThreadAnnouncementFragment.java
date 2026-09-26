package com.narvii.chat.detail;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.TextView;
import androidx.annotation.IdRes;
import androidx.core.content.ContextCompat;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.amino.master.R;
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
import java.util.List;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.m;
import w7.o;
import w7.q;

/* JADX INFO: loaded from: classes5.dex */
public final class ThreadAnnouncementFragment extends NVFragment implements NotificationListener {

    @NotNull
    public static final Companion Companion = new Companion(null);
    private ChatThread chatThread;

    @Nullable
    private ApiRequest request;

    @NotNull
    private final m editableBottom$delegate = bind(R.id.editable_bottom);

    @NotNull
    private final m switchView$delegate = bind(R.id.switch_view);

    @NotNull
    private final m content$delegate = bind(R.id.content);

    @NotNull
    private final m emptyLayout$delegate = bind(R.id.empty_layout);

    @NotNull
    private final m contentLayout$delegate = bind(R.id.content_layout);

    @NotNull
    private final m clearListener$delegate = o.a(new ThreadAnnouncementFragment$clearListener$2(this));

    @NotNull
    private final m api$delegate = o.a(new ThreadAnnouncementFragment$api$2(this));

    @NotNull
    private final m progressDialog$delegate = o.a(new ThreadAnnouncementFragment$progressDialog$2(this));

    @NotNull
    private final m chatHelper$delegate = o.a(new ThreadAnnouncementFragment$chatHelper$2(this));

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final Intent intent(@NotNull ChatThread chatThread) {
            t.j(chatThread, "chatThread");
            Intent intent = FragmentWrapperActivity.intent(ThreadAnnouncementFragment.class);
            intent.putExtra("chatThread", JacksonUtils.writeAsString(chatThread));
            intent.putExtra("__communityId", chatThread.ndcId);
            t.i(intent, "apply(...)");
            return intent;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: com.narvii.chat.detail.ThreadAnnouncementFragment$bind$1, reason: invalid class name */
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
            View view = ThreadAnnouncementFragment.this.getView();
            View viewFindViewById = view != null ? view.findViewById(this.$res) : null;
            t.h(viewFindViewById, "null cannot be cast to non-null type T of com.narvii.chat.detail.ThreadAnnouncementFragment.bind");
            return viewFindViewById;
        }
    }

    @Nullable
    public final ApiRequest getRequest() {
        return this.request;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    public final void setRequest(@Nullable ApiRequest apiRequest) {
        this.request = apiRequest;
    }

    private final <T extends View> m<T> bind(@IdRes int i10) {
        return o.b(q.NONE, new AnonymousClass1(i10));
    }

    private final View.OnClickListener getClearListener() {
        return (View.OnClickListener) this.clearListener$delegate.getValue();
    }

    private final TextView getContent() {
        return (TextView) this.content$delegate.getValue();
    }

    private final View getContentLayout() {
        return (View) this.contentLayout$delegate.getValue();
    }

    private final ViewGroup getEditableBottom() {
        return (ViewGroup) this.editableBottom$delegate.getValue();
    }

    private final View getEmptyLayout() {
        return (View) this.emptyLayout$delegate.getValue();
    }

    private final CheckBox getSwitchView() {
        return (CheckBox) this.switchView$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void sendRequest$lambda$2(ThreadAnnouncementFragment this$0, DialogInterface dialogInterface) {
        t.j(this$0, "this$0");
        if (this$0.request != null) {
            this$0.getApi().abort(this$0.request);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void updateView$lambda$0(ThreadAnnouncementFragment this$0, View view) {
        t.j(this$0, "this$0");
        ChatThread chatThread = this$0.chatThread;
        if (chatThread == null) {
            t.B("chatThread");
            chatThread = null;
        }
        this$0.sendRequest(!chatThread.isPinAnnouncement().booleanValue());
    }

    @NotNull
    public final ApiService getApi() {
        Object value = this.api$delegate.getValue();
        t.i(value, "getValue(...)");
        return (ApiService) value;
    }

    @NotNull
    public final ChatHelper getChatHelper() {
        return (ChatHelper) this.chatHelper$delegate.getValue();
    }

    @NotNull
    public final ProgressDialog getProgressDialog() {
        return (ProgressDialog) this.progressDialog$delegate.getValue();
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        t.j(inflater, "inflater");
        return inflater.inflate(R.layout.fragment_thread_announcement, viewGroup, false);
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(@NotNull Notification n) {
        t.j(n, "n");
        if (n.obj instanceof ChatThread) {
            String str = n.action;
            if (str == "update" || str == "edit") {
                Bundle bundle = n.bundle;
                if (bundle == null || !bundle.getBoolean("_fromChatFragment")) {
                    Object obj = n.obj;
                    t.h(obj, "null cannot be cast to non-null type com.narvii.model.ChatThread");
                    ChatThread chatThread = (ChatThread) obj;
                    String strId = chatThread.id();
                    ChatThread chatThread2 = this.chatThread;
                    if (chatThread2 == null) {
                        t.B("chatThread");
                        chatThread2 = null;
                    }
                    if (TextUtils.equals(strId, chatThread2.id())) {
                        this.chatThread = chatThread;
                        updateView();
                    }
                }
            }
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        t.j(view, "view");
        super.onViewCreated(view, bundle);
        updateView();
    }

    @NotNull
    public final String threadId() {
        ChatThread chatThread = this.chatThread;
        if (chatThread == null) {
            t.B("chatThread");
            chatThread = null;
        }
        String strId = chatThread.id();
        t.i(strId, "id(...)");
        return strId;
    }

    @NotNull
    public final String userId() {
        ChatThread chatThread = this.chatThread;
        if (chatThread == null) {
            t.B("chatThread");
            chatThread = null;
        }
        String strUid = chatThread.uid();
        t.i(strUid, "uid(...)");
        return strUid;
    }

    private final void sendRequest(final boolean z6) {
        getProgressDialog().setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.narvii.chat.detail.f
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                ThreadAnnouncementFragment.sendRequest$lambda$2(this.f1884a, dialogInterface);
            }
        });
        getProgressDialog().show();
        ApiRequest.Builder builderPath = ApiRequest.builder().post().path("/chat/thread/" + threadId());
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        ObjectNode objectNodeCreateObjectNode2 = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode2.put("pinAnnouncement", z6);
        l0 l0Var = l0.INSTANCE;
        objectNodeCreateObjectNode.put("extensions", objectNodeCreateObjectNode2);
        this.request = builderPath.body(objectNodeCreateObjectNode).build();
        getApi().exec(this.request, new ApiResponseListener<ApiResponse>(ThreadResponse.class) { // from class: com.narvii.chat.detail.ThreadAnnouncementFragment.sendRequest.3
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(@Nullable ApiRequest apiRequest, int i10, @Nullable List<NameValuePair> list, @Nullable String str, @Nullable ApiResponse apiResponse, @Nullable Throwable th) {
                super.onFail(apiRequest, i10, list, str, apiResponse, th);
                ThreadAnnouncementFragment.this.getProgressDialog().dismiss();
                Utils.showShortToast(ThreadAnnouncementFragment.this.getContext(), str);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(@Nullable ApiRequest apiRequest, @Nullable ApiResponse apiResponse) throws Exception {
                super.onFinish(apiRequest, apiResponse);
                ThreadAnnouncementFragment.this.getProgressDialog().dismiss();
                ChatThread chatThread = ThreadAnnouncementFragment.this.chatThread;
                ChatThread chatThread2 = null;
                if (chatThread == null) {
                    t.B("chatThread");
                    chatThread = null;
                }
                chatThread.setPinAnnouncement(z6);
                NotificationCenter notificationCenter = (NotificationCenter) ThreadAnnouncementFragment.this.getService("notification");
                ChatThread chatThread3 = ThreadAnnouncementFragment.this.chatThread;
                if (chatThread3 == null) {
                    t.B("chatThread");
                } else {
                    chatThread2 = chatThread3;
                }
                NotificationUtils.sendNotificationIncludeGlobal(notificationCenter, new Notification("update", chatThread2));
            }
        });
    }

    private final void updateView() {
        int i10;
        CheckBox switchView = getSwitchView();
        if (isDarkNVTheme()) {
            i10 = R.drawable.switch_bg_dt;
        } else {
            i10 = R.drawable.switch_bg;
        }
        switchView.setButtonDrawable(i10);
        if (isHost() || isCoHost()) {
            setActionBarRightButton(R.string.edit, ContextCompat.getDrawable(getContext(), android.R.color.transparent), getClearListener());
        }
        ChatThread chatThread = null;
        if (!isHost() && !isCoHost()) {
            getEditableBottom().setVisibility(8);
        } else {
            getEditableBottom().setVisibility(0);
            CheckBox switchView2 = getSwitchView();
            ChatThread chatThread2 = this.chatThread;
            if (chatThread2 == null) {
                t.B("chatThread");
                chatThread2 = null;
            }
            Boolean boolIsPinAnnouncement = chatThread2.isPinAnnouncement();
            t.i(boolIsPinAnnouncement, "isPinAnnouncement(...)");
            switchView2.setChecked(boolIsPinAnnouncement.booleanValue());
            getSwitchView().setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.detail.e
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ThreadAnnouncementFragment.updateView$lambda$0(this.f1883a, view);
                }
            });
        }
        ChatThread chatThread3 = this.chatThread;
        if (chatThread3 == null) {
            t.B("chatThread");
            chatThread3 = null;
        }
        String announcement = chatThread3.getAnnouncement();
        if (announcement == null) {
            announcement = "";
        }
        NVText nVText = new NVText(announcement, 4283058762L);
        nVText.markHashtagAndLink(DefaultTagClickListener.instance, true);
        getContent().setMovementMethod(LinkTouchMovementMethod.getInstanceIgnoreScroll());
        getContent().setText(nVText);
        ChatThread chatThread4 = this.chatThread;
        if (chatThread4 == null) {
            t.B("chatThread");
        } else {
            chatThread = chatThread4;
        }
        if (TextUtils.isEmpty(chatThread.getAnnouncement())) {
            getContentLayout().setVisibility(8);
            getEmptyLayout().setVisibility(0);
        } else {
            getContentLayout().setVisibility(0);
            getEmptyLayout().setVisibility(8);
        }
    }

    public final boolean isCoHost() {
        ChatHelper chatHelper = getChatHelper();
        ChatThread chatThread = this.chatThread;
        if (chatThread == null) {
            t.B("chatThread");
            chatThread = null;
        }
        return chatHelper.isCoHost(chatThread);
    }

    public final boolean isHost() {
        ChatHelper chatHelper = getChatHelper();
        ChatThread chatThread = this.chatThread;
        if (chatThread == null) {
            t.B("chatThread");
            chatThread = null;
        }
        return chatHelper.isHost(chatThread);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        boolean z6;
        super.onCreate(bundle);
        Object as = JacksonUtils.readAs(getStringParam("chatThread"), ChatThread.class);
        t.i(as, "readAs(...)");
        this.chatThread = (ChatThread) as;
        ConfigService configService = (ConfigService) getService("config");
        t.g(configService);
        if (configService.getCommunityId() == 0) {
            z6 = true;
        } else {
            z6 = false;
        }
        NVThemeFragment.setDarkNVTheme$default(this, z6, false, 2, null);
        setTitle(R.string.announcement);
    }
}
