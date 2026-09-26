package com.narvii.chat.detail;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import androidx.annotation.IdRes;
import androidx.core.content.ContextCompat;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.theme.NVThemeFragment;
import com.narvii.chat.ThreadResponse;
import com.narvii.config.ConfigService;
import com.narvii.master.home.profile.BaseSingleEditFragment;
import com.narvii.model.ChatThread;
import com.narvii.model.api.ApiResponse;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationCenter;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NotificationUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.NameValuePair;
import com.narvii.widget.ACMAlertDialog;
import java.util.List;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import kotlin.text.u;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.m;
import w7.o;
import w7.q;

/* JADX INFO: loaded from: classes.dex */
public final class EditThreadAnnouncementFragment extends BaseSingleEditFragment {

    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int MAX_LENGTH = 500;
    public ChatThread chatThread;

    @NotNull
    private final m root$delegate = bind(R.id.root);

    @NotNull
    private final m editContent$delegate = bind(R.id.content);

    @NotNull
    private final m inputHint$delegate = bind(R.id.input_hint);

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final Intent intent(@NotNull ChatThread chatThread) {
            t.j(chatThread, "chatThread");
            Intent intent = FragmentWrapperActivity.intent(EditThreadAnnouncementFragment.class);
            intent.putExtra("chatThread", JacksonUtils.writeAsString(chatThread));
            intent.putExtra("__communityId", chatThread.ndcId);
            t.i(intent, "apply(...)");
            return intent;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: com.narvii.chat.detail.EditThreadAnnouncementFragment$bind$1, reason: invalid class name */
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
            View view = EditThreadAnnouncementFragment.this.getView();
            View viewFindViewById = view != null ? view.findViewById(this.$res) : null;
            t.h(viewFindViewById, "null cannot be cast to non-null type T of com.narvii.chat.detail.EditThreadAnnouncementFragment.bind");
            return viewFindViewById;
        }
    }

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    @Override // com.narvii.master.home.profile.BaseSingleEditFragment
    public int layoutId() {
        return R.layout.fragment_edit_chat_announcement;
    }

    public final void setChatThread(@NotNull ChatThread chatThread) {
        t.j(chatThread, "<set-?>");
        this.chatThread = chatThread;
    }

    @Override // com.narvii.master.home.profile.BaseSingleEditFragment
    public int title() {
        return R.string.edit_announcement;
    }

    private final <T extends View> m<T> bind(@IdRes int i10) {
        return o.b(q.NONE, new AnonymousClass1(i10));
    }

    private final EditText getEditContent() {
        return (EditText) this.editContent$delegate.getValue();
    }

    private final TextView getInputHint() {
        return (TextView) this.inputHint$delegate.getValue();
    }

    private final View getRoot() {
        return (View) this.root$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void sendRequest$lambda$5(EditThreadAnnouncementFragment this$0, DialogInterface dialogInterface) {
        t.j(this$0, "this$0");
        if (this$0.getRequest() != null) {
            this$0.getApi().abort(this$0.getRequest());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void submit$lambda$1$lambda$0(EditThreadAnnouncementFragment this$0, String announcement, View view) {
        t.j(this$0, "this$0");
        t.j(announcement, "$announcement");
        this$0.sendRequest(false, announcement);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void submit$lambda$4$lambda$2(EditThreadAnnouncementFragment this$0, String announcement, View view) {
        t.j(this$0, "this$0");
        t.j(announcement, "$announcement");
        this$0.sendRequest(false, announcement);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void submit$lambda$4$lambda$3(EditThreadAnnouncementFragment this$0, String announcement, View view) {
        t.j(this$0, "this$0");
        t.j(announcement, "$announcement");
        this$0.sendRequest(true, announcement);
    }

    @NotNull
    public final ChatThread getChatThread() {
        ChatThread chatThread = this.chatThread;
        if (chatThread != null) {
            return chatThread;
        }
        t.B("chatThread");
        return null;
    }

    public final int getThemeColor(int i10) {
        ConfigService configService = (ConfigService) getService("config");
        if (i10 == 0 || configService == null || configService.getTheme() == null) {
            return 1248835;
        }
        return configService.getTheme().colorPrimary();
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        t.j(view, "view");
        super.onViewCreated(view, bundle);
        observeTextChanged(getEditContent());
        getEditContent().setText(getChatThread().getAnnouncement());
    }

    private final void sendRequest(final boolean z6, final String str) {
        getProgressDialog().setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.narvii.chat.detail.a
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                EditThreadAnnouncementFragment.sendRequest$lambda$5(this.f1876a, dialogInterface);
            }
        });
        getProgressDialog().show();
        ApiRequest.Builder builderPath = ApiRequest.builder().post().path("/chat/thread/" + threadId());
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        ObjectNode objectNodeCreateObjectNode2 = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode2.put("announcement", str);
        if (!TextUtils.isEmpty(str) && z6) {
            objectNodeCreateObjectNode2.put("pinAnnouncement", z6);
        }
        l0 l0Var = l0.INSTANCE;
        objectNodeCreateObjectNode.put("extensions", objectNodeCreateObjectNode2);
        setRequest(builderPath.body(objectNodeCreateObjectNode).build());
        getApi().exec(getRequest(), new ApiResponseListener<ThreadResponse>(ThreadResponse.class) { // from class: com.narvii.chat.detail.EditThreadAnnouncementFragment.sendRequest.3
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(@Nullable ApiRequest apiRequest, @Nullable ThreadResponse threadResponse) throws Exception {
                super.onFinish(apiRequest, threadResponse);
                EditThreadAnnouncementFragment.this.getProgressDialog().dismiss();
                if ((threadResponse != null ? threadResponse.thread : null) != null) {
                    EditThreadAnnouncementFragment.this.getChatThread().setAnnouncement(threadResponse.thread.getAnnouncement());
                    ChatThread chatThread = EditThreadAnnouncementFragment.this.getChatThread();
                    Boolean boolIsPinAnnouncement = threadResponse.thread.isPinAnnouncement();
                    t.i(boolIsPinAnnouncement, "isPinAnnouncement(...)");
                    chatThread.setPinAnnouncement(boolIsPinAnnouncement.booleanValue());
                } else {
                    EditThreadAnnouncementFragment.this.getChatThread().setAnnouncement(str);
                    if (z6) {
                        EditThreadAnnouncementFragment.this.getChatThread().setPinAnnouncement(true);
                    }
                }
                NotificationUtils.sendNotificationIncludeGlobal((NotificationCenter) EditThreadAnnouncementFragment.this.getService("notification"), new Notification("update", EditThreadAnnouncementFragment.this.getChatThread()));
                EditThreadAnnouncementFragment.this.finish();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(@Nullable ApiRequest apiRequest, int i10, @Nullable List<NameValuePair> list, @Nullable String str2, @Nullable ApiResponse apiResponse, @Nullable Throwable th) {
                super.onFail(apiRequest, i10, list, str2, apiResponse, th);
                EditThreadAnnouncementFragment.this.getProgressDialog().dismiss();
                Utils.showShortToast(EditThreadAnnouncementFragment.this.getContext(), str2);
            }
        });
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        boolean z6;
        super.onCreate(bundle);
        Object as = JacksonUtils.readAs(getStringParam("chatThread"), ChatThread.class);
        t.i(as, "readAs(...)");
        setChatThread((ChatThread) as);
        ConfigService configService = (ConfigService) getService("config");
        t.g(configService);
        if (configService.getCommunityId() == 0) {
            z6 = true;
        } else {
            z6 = false;
        }
        NVThemeFragment.setDarkNVTheme$default(this, z6, false, 2, null);
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public void onThemeChange(int i10) {
        super.onThemeChange(i10);
        if (i10 != 1) {
            if (i10 == 2) {
                getEditContent().setTextColor(ContextCompat.getColor(getContext(), R.color.white));
                return;
            }
            return;
        }
        getEditContent().setTextColor(-11908534);
    }

    @Override // com.narvii.master.home.profile.BaseSingleEditFragment
    public boolean passValidate() {
        int length = getEditContent().getText().toString().length();
        if (length < 0 || length >= 501) {
            return false;
        }
        return true;
    }

    @Override // com.narvii.master.home.profile.BaseSingleEditFragment
    protected void submit() {
        final String string = getEditContent().getText().toString();
        String announcement = getChatThread().getAnnouncement();
        if ((TextUtils.isEmpty(u.b1(string).toString()) && TextUtils.isEmpty(announcement)) || TextUtils.equals(string, announcement)) {
            finish();
            return;
        }
        if (TextUtils.isEmpty(u.b1(string).toString())) {
            ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
            aCMAlertDialog.setMessage(R.string.save_with_no_announcement);
            aCMAlertDialog.addButton(R.string.cancel, (View.OnClickListener) null, -11908534);
            aCMAlertDialog.addButton(R.string.save, new View.OnClickListener() { // from class: com.narvii.chat.detail.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    EditThreadAnnouncementFragment.submit$lambda$1$lambda$0(this.f1877a, string, view);
                }
            });
            aCMAlertDialog.show();
            return;
        }
        ACMAlertDialog aCMAlertDialog2 = new ACMAlertDialog(getContext());
        aCMAlertDialog2.setMessage(R.string.do_you_want_to_save_change);
        aCMAlertDialog2.setVerticalButtons();
        aCMAlertDialog2.addButton(R.string.save_only, new View.OnClickListener() { // from class: com.narvii.chat.detail.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EditThreadAnnouncementFragment.submit$lambda$4$lambda$2(this.f1879a, string, view);
            }
        });
        aCMAlertDialog2.addButton(R.string.save_and_announce, new View.OnClickListener() { // from class: com.narvii.chat.detail.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EditThreadAnnouncementFragment.submit$lambda$4$lambda$3(this.f1881a, string, view);
            }
        });
        aCMAlertDialog2.addButton(R.string.cancel, null);
        aCMAlertDialog2.show();
    }

    @NotNull
    public final String threadId() {
        String strId = getChatThread().id();
        t.i(strId, "id(...)");
        return strId;
    }

    @Override // com.narvii.master.home.profile.BaseSingleEditFragment
    protected void updateView() {
        super.updateView();
        int length = getEditContent().getText().length();
        getInputHint().setText(length + "/500");
    }

    @NotNull
    public final String userId() {
        String strUid = getChatThread().uid();
        t.i(strUid, "uid(...)");
        return strUid;
    }
}
