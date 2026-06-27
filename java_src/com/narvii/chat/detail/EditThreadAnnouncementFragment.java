package com.narvii.chat.detail;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.amino.mastes.R;
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
import kotlin.text.StringsKt__StringsKt;

/* compiled from: EditThreadAnnouncementFragment.kt */
/* loaded from: classes2.dex */
public final class EditThreadAnnouncementFragment extends BaseSingleEditFragment {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(EditThreadAnnouncementFragment.class), "root", "getRoot()Landroid/view/View;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(EditThreadAnnouncementFragment.class), "editContent", "getEditContent()Landroid/widget/EditText;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(EditThreadAnnouncementFragment.class), "inputHint", "getInputHint()Landroid/widget/TextView;"))};
    public static final Companion Companion = new Companion(null);
    public static final int MAX_LENGTH = 500;
    private HashMap _$_findViewCache;
    public ChatThread chatThread;
    private final Lazy root$delegate = bind(R.id.root);
    private final Lazy editContent$delegate = bind(R.id.content);
    private final Lazy inputHint$delegate = bind(R.id.input_hint);

    private final EditText getEditContent() {
        Lazy lazy = this.editContent$delegate;
        KProperty kProperty = $$delegatedProperties[1];
        return (EditText) lazy.getValue();
    }

    private final TextView getInputHint() {
        Lazy lazy = this.inputHint$delegate;
        KProperty kProperty = $$delegatedProperties[2];
        return (TextView) lazy.getValue();
    }

    private final View getRoot() {
        Lazy lazy = this.root$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (View) lazy.getValue();
    }

    @Override // com.narvii.master.home.profile.BaseSingleEditFragment, com.narvii.app.theme.NVThemeFragment
    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    @Override // com.narvii.master.home.profile.BaseSingleEditFragment, com.narvii.app.theme.NVThemeFragment
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
    public boolean isModel() {
        return true;
    }

    @Override // com.narvii.master.home.profile.BaseSingleEditFragment
    public int layoutId() {
        return R.layout.fragment_edit_chat_announcement;
    }

    @Override // com.narvii.master.home.profile.BaseSingleEditFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    @Override // com.narvii.master.home.profile.BaseSingleEditFragment
    public int title() {
        return R.string.edit_announcement;
    }

    public final ChatThread getChatThread() {
        ChatThread chatThread = this.chatThread;
        if (chatThread != null) {
            return chatThread;
        }
        Intrinsics.throwUninitializedPropertyAccessException("chatThread");
        throw null;
    }

    public final void setChatThread(ChatThread chatThread) {
        Intrinsics.checkParameterIsNotNull(chatThread, "<set-?>");
        this.chatThread = chatThread;
    }

    /* compiled from: EditThreadAnnouncementFragment.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Intent intent(ChatThread chatThread) {
            Intrinsics.checkParameterIsNotNull(chatThread, "chatThread");
            Intent intent = FragmentWrapperActivity.intent(EditThreadAnnouncementFragment.class);
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
        } else {
            Intrinsics.throwNpe();
            throw null;
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        observeTextChanged(getEditContent());
        EditText editContent = getEditContent();
        ChatThread chatThread = this.chatThread;
        if (chatThread != null) {
            editContent.setText(chatThread.getAnnouncement());
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("chatThread");
            throw null;
        }
    }

    @Override // com.narvii.master.home.profile.BaseSingleEditFragment
    public boolean passValidate() {
        int length = getEditContent().getText().toString().length();
        return length >= 0 && 500 >= length;
    }

    @Override // com.narvii.master.home.profile.BaseSingleEditFragment
    protected void submit() {
        final String string = getEditContent().getText().toString();
        ChatThread chatThread = this.chatThread;
        if (chatThread == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chatThread");
            throw null;
        }
        String announcement = chatThread.getAnnouncement();
        if (string != null) {
            if ((TextUtils.isEmpty(StringsKt__StringsKt.trim(string).toString()) && TextUtils.isEmpty(announcement)) || TextUtils.equals(string, announcement)) {
                finish();
                return;
            }
            if (string != null) {
                if (TextUtils.isEmpty(StringsKt__StringsKt.trim(string).toString())) {
                    ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
                    aCMAlertDialog.setMessage(R.string.save_with_no_announcement);
                    aCMAlertDialog.addButton(R.string.cancel, (View.OnClickListener) null, -11908534);
                    aCMAlertDialog.addButton(R.string.save, new View.OnClickListener() { // from class: com.narvii.chat.detail.EditThreadAnnouncementFragment$submit$$inlined$apply$lambda$1
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            this.this$0.sendRequest(false, string);
                        }
                    });
                    aCMAlertDialog.show();
                    return;
                }
                ACMAlertDialog aCMAlertDialog2 = new ACMAlertDialog(getContext());
                aCMAlertDialog2.setMessage(R.string.do_you_want_to_save_change);
                aCMAlertDialog2.setVerticalButtons();
                aCMAlertDialog2.addButton(R.string.save_only, new View.OnClickListener() { // from class: com.narvii.chat.detail.EditThreadAnnouncementFragment$submit$$inlined$apply$lambda$2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.this$0.sendRequest(false, string);
                    }
                });
                aCMAlertDialog2.addButton(R.string.save_and_announce, new View.OnClickListener() { // from class: com.narvii.chat.detail.EditThreadAnnouncementFragment$submit$$inlined$apply$lambda$3
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.this$0.sendRequest(true, string);
                    }
                });
                aCMAlertDialog2.addButton(R.string.cancel, null);
                aCMAlertDialog2.show();
                return;
            }
            throw new TypeCastException("null cannot be cast to non-null type kotlin.CharSequence");
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.CharSequence");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void sendRequest(final boolean z, final String str) {
        getProgressDialog().setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.narvii.chat.detail.EditThreadAnnouncementFragment.sendRequest.1
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                if (EditThreadAnnouncementFragment.this.getRequest() != null) {
                    EditThreadAnnouncementFragment.this.getApi().abort(EditThreadAnnouncementFragment.this.getRequest());
                }
            }
        });
        getProgressDialog().show();
        ApiRequest.Builder builderPath = ApiRequest.builder().post().path("/chat/thread/" + threadId());
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        ObjectNode objectNodeCreateObjectNode2 = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode2.put("announcement", str);
        if (!TextUtils.isEmpty(str) && z) {
            objectNodeCreateObjectNode2.put("pinAnnouncement", z);
        }
        objectNodeCreateObjectNode.put("extensions", objectNodeCreateObjectNode2);
        setRequest(builderPath.body(objectNodeCreateObjectNode).build());
        getApi().exec(getRequest(), new ApiResponseListener<ThreadResponse>(ThreadResponse.class) { // from class: com.narvii.chat.detail.EditThreadAnnouncementFragment.sendRequest.3
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ThreadResponse threadResponse) throws Exception {
                super.onFinish(apiRequest, (ApiRequest) threadResponse);
                EditThreadAnnouncementFragment.this.getProgressDialog().dismiss();
                if ((threadResponse != null ? threadResponse.thread : null) != null) {
                    ChatThread chatThread = EditThreadAnnouncementFragment.this.getChatThread();
                    ChatThread chatThread2 = threadResponse.thread;
                    Intrinsics.checkExpressionValueIsNotNull(chatThread2, "resp.thread");
                    chatThread.setAnnouncement(chatThread2.getAnnouncement());
                    ChatThread chatThread3 = EditThreadAnnouncementFragment.this.getChatThread();
                    ChatThread chatThread4 = threadResponse.thread;
                    Intrinsics.checkExpressionValueIsNotNull(chatThread4, "resp.thread");
                    chatThread3.setPinAnnouncement(chatThread4.isPinAnnouncement().booleanValue());
                } else {
                    EditThreadAnnouncementFragment.this.getChatThread().setAnnouncement(str);
                    if (z) {
                        EditThreadAnnouncementFragment.this.getChatThread().setPinAnnouncement(true);
                    }
                }
                NotificationUtils.sendNotificationIncludeGlobal((NotificationCenter) EditThreadAnnouncementFragment.this.getService("notification"), new Notification("update", EditThreadAnnouncementFragment.this.getChatThread()));
                EditThreadAnnouncementFragment.this.finish();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str2, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str2, apiResponse, th);
                EditThreadAnnouncementFragment.this.getProgressDialog().dismiss();
                Utils.showShortToast(EditThreadAnnouncementFragment.this.getContext(), str2);
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

    @Override // com.narvii.master.home.profile.BaseSingleEditFragment
    protected void updateView() {
        super.updateView();
        int length = getEditContent().getText().length();
        getInputHint().setText(length + "/500");
    }

    public final int getThemeColor(int i) {
        ConfigService configService = (ConfigService) getService("config");
        if (i == 0 || configService == null || configService.getTheme() == null) {
            return 1248835;
        }
        return configService.getTheme().colorPrimary();
    }

    private final <T extends View> Lazy<T> bind(final int i) {
        return LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, new Function0<T>() { // from class: com.narvii.chat.detail.EditThreadAnnouncementFragment.bind.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Incorrect return type in method signature: ()TT; */
            @Override // kotlin.jvm.functions.Function0
            public final View invoke() {
                View view = EditThreadAnnouncementFragment.this.getView();
                View viewFindViewById = view != null ? view.findViewById(i) : null;
                if (viewFindViewById != null) {
                    return viewFindViewById;
                }
                throw new TypeCastException("null cannot be cast to non-null type T");
            }
        });
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public void onThemeChange(int i) {
        super.onThemeChange(i);
        if (i == 1) {
            getEditContent().setTextColor((int) 4283058762L);
        } else {
            if (i != 2) {
                return;
            }
            getEditContent().setTextColor(ContextCompat.getColor(getContext(), R.color.white));
        }
    }
}
