package com.narvii.chat.organizer;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.text.SpannableStringBuilder;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.chat.ThreadInfoHost;
import com.narvii.chat.ThreadResponse;
import com.narvii.chat.global.GlobalChatThread;
import com.narvii.chat.util.ChatHelper;
import com.narvii.chat.util.GlobalChatService;
import com.narvii.community.CommunityHelper;
import com.narvii.config.ConfigService;
import com.narvii.membership.MembershipHintDialog;
import com.narvii.model.ChatThread;
import com.narvii.model.OrganizerTransferRequest;
import com.narvii.model.api.ApiResponse;
import com.narvii.modulization.Module;
import com.narvii.modulization.entry.EntryEligibleCheckResult;
import com.narvii.modulization.entry.EntryManager;
import com.narvii.modulization.entry.EntrySetting;
import com.narvii.modulization.entry.Privilege;
import com.narvii.modulization.page.PageManager;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationCenter;
import com.narvii.pushservice.PushPayload;
import com.narvii.pushservice.PushService;
import com.narvii.util.DateTimeFormatter;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.text.LinkTouchMovementMethod;
import com.narvii.util.text.LinkTouchSpan;
import com.narvii.wallet.MembershipService;
import com.narvii.widget.ACMAlertDialog;
import java.util.List;

/* loaded from: classes2.dex */
public class ClaimOrganizerTransFragment extends NVFragment implements View.OnClickListener, ThreadInfoHost {
    private static final int REQUEST_TYPE_ACCEPT = 1;
    private static final int REQUEST_TYPE_CLAIM = 2;
    private View claimLayout;
    private CommunityHelper communityHelper;
    private View confirmLayout;
    private boolean isGlobal;
    private OnFragmentSizeChangedFragment listener;
    private final PushService.PushListener pushListener = new PushService.PushListener() { // from class: com.narvii.chat.organizer.ClaimOrganizerTransFragment.5
        @Override // com.narvii.pushservice.PushService.PushListener
        public void onPushPayload(PushPayload pushPayload) {
            if (Utils.isEqualsNotNull(pushPayload.threadId, ClaimOrganizerTransFragment.this.getThreadId())) {
                int i = pushPayload.type;
                if (i == 53 || i == 54) {
                    ClaimOrganizerTransFragment claimOrganizerTransFragment = ClaimOrganizerTransFragment.this;
                    ClaimOrganizerTransFragment.sendGetThreadRequest(claimOrganizerTransFragment, claimOrganizerTransFragment.getThreadId());
                }
            }
        }

        @Override // com.narvii.pushservice.PushService.PushListener
        public boolean onInterceptNotification(PushPayload pushPayload) {
            int i;
            return ClaimOrganizerTransFragment.this.isActive() && Utils.isEqualsNotNull(pushPayload.threadId, ClaimOrganizerTransFragment.this.getThreadId()) && ((i = pushPayload.type) == 53 || i == 54);
        }
    };
    private View requestLayout;
    private int requestType;

    public interface OnFragmentSizeChangedFragment {
        void OnFragmentSizeChangedFragment();
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public boolean isValidPage() {
        return false;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ((PushService) getService("push")).addPushListener(this.pushListener);
        this.communityHelper = new CommunityHelper(this);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        ((PushService) getService("push")).removePushListener(this.pushListener);
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.chat_claim_organizer_layout, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        view.getLayoutParams().width = Math.min(getResources().getDisplayMetrics().heightPixels, getResources().getDisplayMetrics().widthPixels);
        view.findViewById(R.id.claim_organizer_accept).setOnClickListener(this);
        view.findViewById(R.id.claim_organizer_decline).setOnClickListener(this);
        view.findViewById(R.id.claim_organizer_confirm_decline).setOnClickListener(this);
        view.findViewById(R.id.claim_organizer_confirm).setOnClickListener(this);
        view.findViewById(R.id.claim_organizer_claim).setOnClickListener(this);
        this.requestLayout = view.findViewById(R.id.organizer_trans_request_layout);
        this.confirmLayout = view.findViewById(R.id.organizer_trans_confirm_layout);
        this.claimLayout = view.findViewById(R.id.organizer_trans_claim_layout);
        updateView();
        this.isGlobal = ((ConfigService) getService("config")).getCommunityId() == 0;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view == null) {
        }
        switch (view.getId()) {
            case R.id.claim_organizer_accept /* 2131296838 */:
                EntryEligibleCheckResult entryEligibleCheckResultCanUserChat = new EntryManager(this).canUserChat(((AccountService) getService("account")).getUserProfile());
                if (this.isGlobal && !entryEligibleCheckResultCanUserChat.isEligible && entryEligibleCheckResultCanUserChat.needMembership) {
                    new MembershipHintDialog(this).show();
                    break;
                } else {
                    ChatThread thread = getThread();
                    if (thread != null && this.communityHelper.checkCommunityJoined(thread.ndcId)) {
                        showConfirmLayout();
                        break;
                    }
                }
                break;
            case R.id.claim_organizer_claim /* 2131296839 */:
                checkAuthBeforeShowConfirmView();
                break;
            case R.id.claim_organizer_confirm /* 2131296840 */:
                int i = this.requestType;
                if (i != 1) {
                    if (i == 2) {
                        sendClaim();
                        break;
                    }
                } else {
                    sendReplyRequest(true);
                    break;
                }
                break;
            case R.id.claim_organizer_confirm_decline /* 2131296841 */:
            case R.id.claim_organizer_decline /* 2131296842 */:
                int i2 = this.requestType;
                if (i2 != 1) {
                    if (i2 == 2) {
                        hideAllLayout();
                        break;
                    }
                } else {
                    sendReplyRequest(false);
                    break;
                }
                break;
        }
    }

    @Override // com.narvii.chat.ThreadInfoHost
    public String getThreadId() {
        return getStringParam("id");
    }

    @Override // com.narvii.chat.ThreadInfoHost
    public ChatThread getThread() {
        return ChatHelper.Companion.getThreadFromThreadInfoHost(this);
    }

    @Override // com.narvii.chat.ThreadInfoHost
    public void onThreadChanged(ChatThread chatThread) {
        updateView();
    }

    public void updateView() {
        ChatThread thread = getThread();
        if (thread == null) {
            hideAllLayout();
        } else if (thread.getOrganizerTransferRequest() != null) {
            showAcceptLayout();
        } else {
            if (thread.isCurrentUserEligibleToBeTheOrganizer()) {
                return;
            }
            hideAllLayout();
        }
    }

    public void updateThread(boolean z) {
        sendGetThreadRequest(this, getThreadId(), z);
    }

    private void sendReplyRequest(final boolean z) {
        OrganizerTransferRequest organizerTransferRequest;
        ChatThread thread = getThread();
        if (thread == null || (organizerTransferRequest = thread.getOrganizerTransferRequest()) == null) {
            return;
        }
        ApiRequest.Builder builderPost = ApiRequest.builder().post();
        StringBuilder sb = new StringBuilder();
        sb.append("/chat/thread/");
        sb.append(thread.threadId);
        sb.append("/transfer-organizer/");
        sb.append(organizerTransferRequest.requestId);
        sb.append(z ? "/accept" : "/decline");
        builderPost.path(sb.toString());
        final ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.show();
        ((ApiService) getService("api")).exec(builderPost.build(), new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.chat.organizer.ClaimOrganizerTransFragment.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                progressDialog.dismiss();
                ClaimOrganizerTransFragment.this.updateThread(z);
                if (z) {
                    ClaimOrganizerTransFragment.this.showActivatedToast(R.string.confirmed);
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                progressDialog.dismiss();
                NVToast.makeText(ClaimOrganizerTransFragment.this.getContext(), str, 0).show();
            }
        });
    }

    private void sendClaim() {
        ChatThread thread = getThread();
        if (thread == null) {
            return;
        }
        ApiRequest.Builder builderPost = ApiRequest.builder().post();
        builderPost.path("/chat/thread/" + thread.threadId + "/transfer-organizer/apply");
        final ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.show();
        ((ApiService) getService("api")).exec(builderPost.build(), new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.chat.organizer.ClaimOrganizerTransFragment.2
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                progressDialog.dismiss();
                ClaimOrganizerTransFragment.this.updateThread(true);
                ClaimOrganizerTransFragment.this.showActivatedToast(R.string.confirmed);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                progressDialog.dismiss();
                NVToast.makeText(ClaimOrganizerTransFragment.this.getContext(), str, 0).show();
            }
        });
    }

    public void showAcceptLayout() {
        OrganizerTransferRequest organizerTransferRequest;
        ChatThread thread = getThread();
        if (thread == null || (organizerTransferRequest = thread.getOrganizerTransferRequest()) == null) {
            hideAllLayout();
            return;
        }
        this.requestLayout.setVisibility(0);
        ((TextView) this.requestLayout.findViewById(R.id.organizer_trans_from)).setText(getString(R.string.trans_organizer_receive_hint, thread.author.nickname));
        ((TextView) this.requestLayout.findViewById(R.id.organizer_trans_time)).setText(new DateTimeFormatter().format(organizerTransferRequest.createdTime));
        this.requestType = 1;
        this.confirmLayout.setVisibility(8);
        this.claimLayout.setVisibility(8);
        OnFragmentSizeChangedFragment onFragmentSizeChangedFragment = this.listener;
        if (onFragmentSizeChangedFragment != null) {
            onFragmentSizeChangedFragment.OnFragmentSizeChangedFragment();
        }
    }

    public void showConfirmLayout() {
        this.requestLayout.setVisibility(8);
        this.confirmLayout.setVisibility(0);
        TextView textView = (TextView) this.confirmLayout.findViewById(R.id.organizer_trans_claim_hint);
        String string = getString(R.string.trans_organizer_confirm_hint);
        String string2 = getString(R.string.chat_more_info);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(string + " " + string2);
        spannableStringBuilder.setSpan(new LinkTouchSpan() { // from class: com.narvii.chat.organizer.ClaimOrganizerTransFragment.3
            @Override // android.text.style.ClickableSpan
            public void onClick(View view) {
                ClaimOrganizerTransFragment.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(PageManager.PAGE_GUIDELINES_URI)));
            }
        }, string.length() + 1, string.length() + 1 + string2.length(), 18);
        textView.setMovementMethod(LinkTouchMovementMethod.getInstance());
        textView.setText(spannableStringBuilder);
        this.claimLayout.setVisibility(8);
        OnFragmentSizeChangedFragment onFragmentSizeChangedFragment = this.listener;
        if (onFragmentSizeChangedFragment != null) {
            onFragmentSizeChangedFragment.OnFragmentSizeChangedFragment();
        }
    }

    public void showClaimLayout() {
        this.requestLayout.setVisibility(8);
        this.confirmLayout.setVisibility(8);
        this.claimLayout.setVisibility(0);
        this.requestType = 2;
        OnFragmentSizeChangedFragment onFragmentSizeChangedFragment = this.listener;
        if (onFragmentSizeChangedFragment != null) {
            onFragmentSizeChangedFragment.OnFragmentSizeChangedFragment();
        }
    }

    public void hideAllLayout() {
        this.requestLayout.setVisibility(8);
        this.confirmLayout.setVisibility(8);
        this.claimLayout.setVisibility(8);
        OnFragmentSizeChangedFragment onFragmentSizeChangedFragment = this.listener;
        if (onFragmentSizeChangedFragment != null) {
            onFragmentSizeChangedFragment.OnFragmentSizeChangedFragment();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showActivatedToast(int i) throws Resources.NotFoundException {
        if (getActivity() instanceof NVActivity) {
            NVActivity nVActivity = (NVActivity) getActivity();
            Drawable drawable = ContextCompat.getDrawable(getContext(), R.drawable.check);
            if (i == 0) {
                i = R.string.confirmed;
            }
            nVActivity.toastImageWithText(drawable, getString(i), R.anim.toast_scale_in, 500L);
            return;
        }
        Context context = getContext();
        if (i == 0) {
            i = R.string.confirmed;
        }
        NVToast.makeText(context, i, 0).show();
    }

    public static void sendGetThreadRequest(NVContext nVContext, String str) {
        sendGetThreadRequest(nVContext, str, false);
    }

    public static void sendGetThreadRequest(final NVContext nVContext, String str, final boolean z) {
        ApiService apiService = (ApiService) nVContext.getService("api");
        final NotificationCenter notificationCenter = (NotificationCenter) nVContext.getService("notification");
        apiService.exec(ApiRequest.builder().chatServer().path("/chat/thread/" + str).build(), new ApiResponseListener<ThreadResponse>(ThreadResponse.class) { // from class: com.narvii.chat.organizer.ClaimOrganizerTransFragment.4
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ThreadResponse threadResponse) throws Exception {
                if (threadResponse.thread != null && z) {
                    ((GlobalChatService) nVContext.getService("globalChat")).addRecentChat(GlobalChatThread.newGlobalChatThread(threadResponse.thread, ((ConfigService) nVContext.getService("config")).getCommunityId(), nVContext.getContext()));
                }
                Notification notification = new Notification("update", threadResponse.thread);
                notification.bundle = new Bundle();
                notification.bundle.putBoolean("_instantFullInfo", true);
                notificationCenter.sendNotification(notification);
            }
        });
    }

    private void checkAuthBeforeShowConfirmView() {
        Privilege privilege;
        EntrySetting entrySetting = new EntryManager(this).getEntrySetting(Module.MODULE_POSTS, "postType", "publicChatRooms");
        AccountService accountService = (AccountService) getService("account");
        if (this.isGlobal) {
            boolean zIsMembership = ((MembershipService) getService("membership")).isMembership();
            if (this.isGlobal && !zIsMembership) {
                new MembershipHintDialog(this).show();
                return;
            } else {
                showConfirmLayout();
                return;
            }
        }
        if (entrySetting != null && (privilege = entrySetting.privilege) != null) {
            if (privilege.type == 2 && accountService.hasAccount() && accountService.getUserProfile().level < entrySetting.privilege.minLevel && !accountService.getUserProfile().isCurator()) {
                ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
                aCMAlertDialog.setMessage(getString(R.string.trans_organizer_claim_fail_hint_level, Integer.valueOf(entrySetting.privilege.minLevel)));
                aCMAlertDialog.addButton(android.R.string.ok, null);
                aCMAlertDialog.show();
                hideAllLayout();
                return;
            }
            if (entrySetting.privilege.type == 3 && accountService.hasAccount() && !accountService.getUserProfile().isCurator()) {
                ACMAlertDialog aCMAlertDialog2 = new ACMAlertDialog(getContext());
                aCMAlertDialog2.addButton(android.R.string.ok, null);
                aCMAlertDialog2.show();
                hideAllLayout();
                return;
            }
            showConfirmLayout();
            return;
        }
        showConfirmLayout();
    }

    public void setOnFragmentSizeChange(OnFragmentSizeChangedFragment onFragmentSizeChangedFragment) {
        this.listener = onFragmentSizeChangedFragment;
    }
}
