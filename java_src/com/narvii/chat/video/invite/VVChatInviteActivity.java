package com.narvii.chat.video.invite;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Vibrator;
import android.support.v4.content.ContextCompat;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.chat.ChatFragment;
import com.narvii.chat.call.CallScreenService;
import com.narvii.chat.call.CallStatusChangeListener;
import com.narvii.chat.core.ChatService;
import com.narvii.chat.global.GlobalChatThread;
import com.narvii.chat.rtc.RtcService;
import com.narvii.chat.util.GlobalChatService;
import com.narvii.chat.video.VVChatMembershipNameLayout;
import com.narvii.chat.video.fragments.VVChatMainFragment;
import com.narvii.chat.video.view.VoiceCallHelper;
import com.narvii.community.CommunityService;
import com.narvii.config.ConfigService;
import com.narvii.model.ChatMessage;
import com.narvii.model.ChatThread;
import com.narvii.model.Community;
import com.narvii.model.User;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.permisson.NVPermission;
import com.narvii.permisson.PermissionRationaleDialog;
import com.narvii.pushservice.PushPayload;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.widget.CommunityIconView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.ThumbImageView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class VVChatInviteActivity extends NVActivity implements View.OnClickListener, CallStatusChangeListener {
    public static final String KEY_CALLER_INFO = "key_caller_info";
    public static final String KEY_COMMUNITY_ID = "key_community_id";
    public static final String KEY_COMMUNITY_INFO = "key_community_info";
    public static final String KEY_PAYLOAD = "key_pay_load";
    public static final String KEY_THREAD_ID = "key_thread_id";
    public static WeakReference<VVChatInviteActivity> instance;
    private View actionAccept;
    private View actionDeclined;
    CallScreenService callScreenService;
    private User caller;
    private Community community;
    private CommunityConfigHelper communityConfigHelper;
    private CommunityIconView communityIconView;
    private View communityInfoContainer;
    private ThumbImageView imgAvatar;
    private NVImageView imgInviteBg;
    private boolean isRinging;
    private VVChatMembershipNameLayout membershipNameLayout;
    private PushPayload payload;
    RtcService rtcService;
    private TextView tvCommunityName;
    private TextView tvHintInfo;
    private TextView tvInviteHint;
    private Vibrator vibrate;
    private final BroadcastReceiver screenStatusReceiver = new BroadcastReceiver() { // from class: com.narvii.chat.video.invite.VVChatInviteActivity.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) throws IllegalStateException {
            CallScreenService callScreenService;
            if (!"android.intent.action.SCREEN_OFF".equals(intent.getAction()) || (callScreenService = VVChatInviteActivity.this.callScreenService) == null) {
                return;
            }
            callScreenService.silenceMode();
        }
    };
    private Runnable hintInfoAutoDismissRunnable = new Runnable() { // from class: com.narvii.chat.video.invite.VVChatInviteActivity.6
        @Override // java.lang.Runnable
        public void run() {
            if (VVChatInviteActivity.this.tvHintInfo != null) {
                VVChatInviteActivity.this.tvHintInfo.setText((CharSequence) null);
                VVChatInviteActivity.this.tvHintInfo.setVisibility(8);
            }
        }
    };

    @Override // com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
    }

    @Override // com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onCreate(bundle);
        if (getActionBar() != null) {
            getActionBar().hide();
        }
        this.rtcService = (RtcService) getService("rtc");
        setContentView(this.rtcService.getMainSigChannel() == null ? R.layout.activity_chat_invite : R.layout.activity_chat_invite_switch);
        getWindow().addFlags(6815872);
        this.callScreenService = (CallScreenService) getService("callScreen");
        this.callScreenService.addCallScreenStatusChangeListener(getStringParam("id"), this);
        this.actionAccept = findViewById(R.id.accept_container);
        this.actionDeclined = findViewById(R.id.decline_container);
        this.imgAvatar = (ThumbImageView) findViewById(R.id.avatar);
        this.imgInviteBg = (NVImageView) findViewById(R.id.invite_bg);
        this.tvHintInfo = (TextView) findViewById(R.id.calling_hint_info);
        this.communityInfoContainer = findViewById(R.id.community_info_container);
        this.tvInviteHint = (TextView) findViewById(R.id.invite_hint);
        this.membershipNameLayout = (VVChatMembershipNameLayout) findViewById(R.id.membership_nickname_layout);
        this.tvCommunityName = (TextView) findViewById(R.id.community_name);
        this.communityIconView = (CommunityIconView) findViewById(R.id.community_icon);
        this.actionAccept.setOnClickListener(this);
        this.actionDeclined.setOnClickListener(this);
        this.caller = (User) JacksonUtils.readAs(getStringParam(KEY_CALLER_INFO), User.class);
        this.community = (Community) JacksonUtils.readAs(getStringParam(KEY_COMMUNITY_INFO), Community.class);
        if (this.community == null) {
            this.community = ((CommunityService) getService("community")).getCommunity(getIntParam(KEY_COMMUNITY_ID));
        }
        this.callScreenService.configCallScreenService(getIntParam(KEY_COMMUNITY_ID), getStringParam("key_thread_id"));
        this.payload = (PushPayload) JacksonUtils.readAs(getStringParam(KEY_PAYLOAD), PushPayload.class);
        registerReceiver(this.screenStatusReceiver, new IntentFilter("android.intent.action.SCREEN_OFF"));
        if (this.callScreenService.getCurStatus() == 2 || this.callScreenService.getCurStatus() == 0) {
            finish();
        }
        instance = new WeakReference<>(this);
        this.callScreenService.setMissedIntent(null);
        this.vibrate = (Vibrator) getContext().getSystemService("vibrator");
        this.communityConfigHelper = new CommunityConfigHelper(this);
        updateViews();
    }

    @Override // com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onResume() throws IllegalStateException {
        super.onResume();
        CallScreenService callScreenService = this.callScreenService;
        if (callScreenService == null || callScreenService.getCurStatus() != 9 || this.isRinging) {
            return;
        }
        this.isRinging = true;
        this.callScreenService.onCallComeIn();
    }

    @Override // com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        unregisterReceiver(this.screenStatusReceiver);
        Utils.handler.removeCallbacks(this.hintInfoAutoDismissRunnable);
        CallScreenService callScreenService = this.callScreenService;
        if (callScreenService != null) {
            callScreenService.removeCallScreenStatusChangeListener(getStringParam("id"), this);
        }
        WeakReference<VVChatInviteActivity> weakReference = instance;
        if (weakReference == null || weakReference.get() != this) {
            return;
        }
        instance = null;
    }

    private int getSignalChannelType(PushPayload pushPayload) {
        if (pushPayload == null) {
            return 1;
        }
        int i = pushPayload.type;
        if (i == 32 || i == 30) {
            return 4;
        }
        return (i == 35 || i == 34) ? 3 : 1;
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
    }

    private void updateViews() {
        User user = this.caller;
        if (user == null) {
            finish();
            return;
        }
        ThumbImageView thumbImageView = this.imgAvatar;
        if (thumbImageView != null) {
            thumbImageView.setImageUrl(user.icon());
        }
        NVImageView nVImageView = this.imgInviteBg;
        if (nVImageView != null) {
            nVImageView.setImageUrl(this.caller.icon());
        }
        VVChatMembershipNameLayout vVChatMembershipNameLayout = this.membershipNameLayout;
        if (vVChatMembershipNameLayout != null) {
            vVChatMembershipNameLayout.setUser(this.caller);
        }
        TextView textView = this.tvInviteHint;
        if (textView != null) {
            textView.setText(getString(R.string.invite_live_chat));
        }
        if (this.community != null && getIntParam(KEY_COMMUNITY_ID) != 0) {
            this.communityInfoContainer.setVisibility(0);
            this.tvCommunityName.setText(this.community.name);
            this.communityIconView.setImageUrl(this.community.icon);
            this.communityIconView.setScaleType(ImageView.ScaleType.CENTER_CROP);
            this.communityIconView.setPadding(0, 0, 0, 0);
            return;
        }
        this.communityIconView.setImageDrawable(ContextCompat.getDrawable(getContext(), this.rtcService.getMainSigChannel() == null ? R.drawable.ic_call_screen_indicator : R.drawable.ic_call_screen_indicator_dark));
        this.communityIconView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        int iDpToPxInt = Utils.dpToPxInt(getContext(), 4.0f);
        this.communityIconView.setPadding(iDpToPxInt, iDpToPxInt, iDpToPxInt, iDpToPxInt);
        this.tvCommunityName.setText(getString(R.string.community));
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.accept_container) {
            NVPermission.builder(this).permissionListener(this).permissions(getSignalChannelType(this.payload) == 1 ? new String[]{"android.permission.RECORD_AUDIO"} : new String[]{"android.permission.RECORD_AUDIO", "android.permission.CAMERA"}).requestCode(109).rationaleDneyCallback(new Callback() { // from class: com.narvii.chat.video.invite.VVChatInviteActivity.2
                @Override // com.narvii.util.Callback
                public void call(Object obj) {
                    VVChatInviteActivity.this.finishCallScreen();
                }
            }).request();
        } else {
            if (id != R.id.decline_container) {
                return;
            }
            declineCall();
        }
    }

    @Override // com.narvii.app.NVActivity, com.narvii.permisson.PermissionListener
    public void onPermissionGranted(int i) {
        super.onPermissionGranted(i);
        if (i == 109) {
            acceptCall();
        }
    }

    @Override // com.narvii.app.NVActivity, com.narvii.permisson.PermissionListener
    public void onPermissionDenied(int i, boolean z, ArrayList<String> arrayList) {
        if (z) {
            PermissionRationaleDialog.builder(getContext()).setRationalePermissionList(arrayList).setDeniedPermissionList(arrayList).setCancelCallback(new Callback<Integer>() { // from class: com.narvii.chat.video.invite.VVChatInviteActivity.3
                @Override // com.narvii.util.Callback
                public void call(Integer num) {
                    VVChatInviteActivity.this.finishCallScreen();
                }
            }).show();
        } else {
            finishCallScreen();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finishCallScreen() {
        CallScreenService callScreenService = this.callScreenService;
        if (callScreenService != null) {
            callScreenService.updateStatus(6);
        }
        finish();
    }

    private void acceptCall() {
        disableButtons();
        Bundle bundle = new Bundle();
        bundle.putString("id", getStringParam("id"));
        bundle.putString("Source", "Call Screen");
        bundle.putInt("channel_type", getSignalChannelType(this.payload));
        bundle.putBoolean(VVChatMainFragment.KEY_AUTO_JOIN_AS_PRESENTER, true);
        ChatThread chatThread = new ChatThread();
        chatThread.threadId = getStringParam("id");
        chatThread.type = 0;
        chatThread.membersSummary = new ArrayList();
        User user = this.caller;
        if (user != null) {
            chatThread.membersSummary.add(user);
        }
        bundle.putString("thread", JacksonUtils.writeAsString(chatThread));
        Intent intent = FragmentWrapperActivity.intent(ChatFragment.class);
        intent.putExtras(bundle);
        startActivity(intent);
        recordChatActivity();
        overridePendingTransition(0, 0);
        CallScreenService callScreenService = this.callScreenService;
        if (callScreenService != null) {
            callScreenService.updateStatus(6);
        } else {
            try {
                this.vibrate.cancel();
            } catch (Exception unused) {
            }
        }
        finish();
    }

    private void declineCall() {
        disableButtons();
        sendDeclineMessage();
        CallScreenService callScreenService = this.callScreenService;
        if (callScreenService != null) {
            callScreenService.updateStatus(6);
        }
        finish();
    }

    private void sendDeclineMessage() {
        ChatService chatService = (ChatService) getService("chat");
        VoiceCallHelper voiceCallHelper = new VoiceCallHelper(getContext());
        PushPayload pushPayload = this.payload;
        int i = 54;
        if (pushPayload != null && pushPayload.getPayloadCallType() != 1) {
            if (this.payload.getPayloadCallType() == 2) {
                i = 57;
            } else if (this.payload.getPayloadCallType() == 3) {
                i = 60;
            }
        }
        ChatMessage callChatMessage = voiceCallHelper.getCallChatMessage(getStringParam("key_thread_id"), i);
        AccountService accountService = (AccountService) getService("account");
        if (callChatMessage.author == null) {
            callChatMessage.author = new User();
            callChatMessage.author.uid = accountService.getUserId();
        }
        chatService.postMessage(callChatMessage);
        recordChatActivity();
    }

    private void recordChatActivity() {
        GlobalChatService globalChatService = (GlobalChatService) getService("globalChat");
        ConfigService configService = (ConfigService) getService("config");
        PushPayload pushPayload = this.payload;
        globalChatService.addRecentChat(new GlobalChatThread(pushPayload.threadId, pushPayload.fromUser, pushPayload.nickname, configService.getCommunityId()));
    }

    @Override // com.narvii.chat.call.CallStatusChangeListener
    public void onCallStatusChanged(int i) {
        if (isFinishing()) {
            return;
        }
        if (i == 3) {
            disableButtons();
            updateHintInfo(getString(R.string.call_cancelled));
            Utils.postDelayed(new Runnable() { // from class: com.narvii.chat.video.invite.VVChatInviteActivity.4
                @Override // java.lang.Runnable
                public void run() {
                    if (VVChatInviteActivity.this.isFinishing()) {
                        return;
                    }
                    VVChatInviteActivity.this.finish();
                }
            }, 1500L);
        } else if (i == 8) {
            disableButtons();
            updateHintInfo(getString(R.string.call_ended));
            Utils.postDelayed(new Runnable() { // from class: com.narvii.chat.video.invite.VVChatInviteActivity.5
                @Override // java.lang.Runnable
                public void run() {
                    if (VVChatInviteActivity.this.isFinishing()) {
                        return;
                    }
                    VVChatInviteActivity.this.finish();
                }
            }, 1500L);
            CallScreenService callScreenService = this.callScreenService;
            if (callScreenService != null) {
                callScreenService.updateStatus(6);
            }
        }
    }

    private void disableButtons() {
        this.actionAccept.setClickable(false);
        this.actionDeclined.setClickable(false);
    }

    private void updateHintInfo(String str) {
        if (TextUtils.isEmpty(str)) {
            TextView textView = this.tvHintInfo;
            if (textView != null) {
                textView.setVisibility(8);
                this.tvHintInfo.setText((CharSequence) null);
            }
            Utils.handler.removeCallbacks(this.hintInfoAutoDismissRunnable);
            return;
        }
        TextView textView2 = this.tvHintInfo;
        if (textView2 != null) {
            textView2.setVisibility(0);
            this.tvHintInfo.setText(str);
            Utils.handler.removeCallbacks(this.hintInfoAutoDismissRunnable);
            Utils.postDelayed(this.hintInfoAutoDismissRunnable, DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS);
        }
    }
}
