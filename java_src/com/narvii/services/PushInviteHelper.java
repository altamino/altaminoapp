package com.narvii.services;

import android.app.Activity;
import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.PowerManager;
import android.text.TextUtils;
import android.view.View;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.chat.ChatActivity;
import com.narvii.chat.call.CallScreenService;
import com.narvii.chat.rtc.RtcService;
import com.narvii.chat.setting.helper.ChatWaitingListServiceKt;
import com.narvii.chat.signalling.SignallingChannel;
import com.narvii.chat.video.VVChatEntryHelper;
import com.narvii.chat.video.invite.VVChatInviteActivity;
import com.narvii.chat.video.overlay.VVchatPermissionInviteListener;
import com.narvii.navigator.Navigator;
import com.narvii.pushservice.PushAPS;
import com.narvii.pushservice.PushNotificationService;
import com.narvii.pushservice.PushPayload;
import com.narvii.pushservice.PushService;
import com.narvii.util.Callback;
import com.narvii.util.EventDispatcher;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.NotificationManagerHelper;
import com.narvii.util.PackageUtils;
import com.narvii.util.Utils;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.util.http.ApiService;
import com.narvii.util.services.TopActivityService;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public class PushInviteHelper implements AutostartServiceProvider<PushInviteHelper>, PushService.PushListener {
    public static final int DEFAULT_CALL_NOTIFY_ID = 24370;
    public static final int NOTIFICATION_TYPE_INVITE_PRESENTER_VV_CHAT = 39;
    WeakReference<Activity> activeActivity;
    CallScreenService callScreenService;
    NVContext context;
    EventDispatcher<VVchatPermissionInviteListener> dispatcher = new EventDispatcher<>();
    KeyguardManager mKeyguardManager;
    private int notificationId;
    NotificationManagerHelper notificationManagerHelper;
    PushService push;
    int status;

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, PushInviteHelper pushInviteHelper) {
    }

    @Override // com.narvii.services.ServiceProvider
    public PushInviteHelper create(NVContext nVContext) {
        if (nVContext instanceof NVApplication) {
            this.context = nVContext;
            this.push = (PushService) nVContext.getService("push");
            this.callScreenService = (CallScreenService) nVContext.getService("callScreen");
            this.push.addPushListener(this);
            this.mKeyguardManager = (KeyguardManager) this.context.getContext().getSystemService("keyguard");
            this.notificationManagerHelper = new NotificationManagerHelper(nVContext.getContext());
            this.notificationId = DEFAULT_CALL_NOTIFY_ID;
        }
        return this;
    }

    public void addOriganerInviteListener(VVchatPermissionInviteListener vVchatPermissionInviteListener) {
        this.dispatcher.addListener(vVchatPermissionInviteListener);
    }

    public void removeOriganerInviteListener(VVchatPermissionInviteListener vVchatPermissionInviteListener) {
        this.dispatcher.removeListener(vVchatPermissionInviteListener);
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, PushInviteHelper pushInviteHelper) {
        this.status = Math.max(1, this.status);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, PushInviteHelper pushInviteHelper) {
        this.status = Math.max(2, this.status);
        if (nVContext instanceof Activity) {
            this.activeActivity = new WeakReference<>((Activity) nVContext);
        }
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, PushInviteHelper pushInviteHelper) {
        this.status = Math.min(1, this.status);
        WeakReference<Activity> weakReference = this.activeActivity;
        if ((weakReference == null ? null : weakReference.get()) == nVContext) {
            this.activeActivity = null;
        }
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, PushInviteHelper pushInviteHelper) {
        this.status = 0;
    }

    @Override // com.narvii.pushservice.PushService.PushListener
    public void onPushPayload(PushPayload pushPayload) throws Throwable {
        if (onInterceptNotification(pushPayload)) {
            int i = pushPayload.type;
            if (i == 39) {
                this.dispatcher.dispatch(new Callback<VVchatPermissionInviteListener>() { // from class: com.narvii.services.PushInviteHelper.1
                    @Override // com.narvii.util.Callback
                    public void call(VVchatPermissionInviteListener vVchatPermissionInviteListener) {
                        vVchatPermissionInviteListener.onInvited();
                    }
                });
                return;
            }
            if (i == 67) {
                this.dispatcher.dispatch(new Callback() { // from class: com.narvii.services.-$$Lambda$PushInviteHelper$oL6p7qzgmhB-ltlYm6Du-DMeoUE
                    @Override // com.narvii.util.Callback
                    public final void call(Object obj) {
                        ((VVchatPermissionInviteListener) obj).onCoHostResult(true);
                    }
                });
                ChatWaitingListServiceKt.doJoinCancelIfInWaitingList(this.context, pushPayload);
            } else if (i == 68) {
                this.dispatcher.dispatch(new Callback() { // from class: com.narvii.services.-$$Lambda$PushInviteHelper$zjpSBu-TpunBHKktr4KrXsrV12I
                    @Override // com.narvii.util.Callback
                    public final void call(Object obj) {
                        ((VVchatPermissionInviteListener) obj).onCoHostResult(false);
                    }
                });
            }
            int communityIdFromPackageName = new PackageUtils(this.context.getContext()).getCommunityIdFromPackageName();
            if (NVApplication.CLIENT_TYPE != 101 || communityIdFromPackageName == pushPayload.ndcId) {
                NVActivity nVActivity = null;
                if (isPrivateVoiceCall(pushPayload) && (TextUtils.isEmpty(this.callScreenService.getThreadId()) || Utils.isEqualsNotNull(this.callScreenService.getThreadId(), pushPayload.threadId))) {
                    long jTimestamp = System.currentTimeMillis() < ApiService.timestamp() ? ApiService.timestamp() : System.currentTimeMillis();
                    long j = pushPayload.expireTime;
                    if (j != 0 && j * 1000 < jTimestamp) {
                        if (NVApplication.DEBUG) {
                            NVToast.makeText(this.context.getContext(), "expired call push, ignore! (debug)", 0).show();
                            return;
                        }
                        return;
                    }
                    int i2 = pushPayload.type;
                    if (i2 == 18) {
                        if (pushPayload.isCallCancelMessage()) {
                            if (this.callScreenService.getCurStatus() == 9) {
                                if (isRestrictedMode()) {
                                    updateNotificationBar(pushPayload, 3);
                                }
                                this.callScreenService.updateStatus(3);
                                return;
                            }
                            return;
                        }
                        if (pushPayload.isTimeoutMessage()) {
                            if (this.callScreenService.getCurStatus() == 9 || this.callScreenService.getCurStatus() == 8) {
                                if (isRestrictedMode()) {
                                    updateNotificationBar(pushPayload, 8);
                                }
                                this.callScreenService.updateStatus(8);
                                return;
                            }
                            return;
                        }
                        if (pushPayload.isDeclineMessage()) {
                            this.callScreenService.updateStatus(7);
                            return;
                        }
                        return;
                    }
                    if (i2 == 39) {
                        this.callScreenService.updateStatus(3);
                        return;
                    }
                    if (pushPayload.isCallInviteType()) {
                        if (this.callScreenService.getThreadId() == null || Utils.isEqualsNotNull(this.callScreenService.getThreadId(), pushPayload.threadId)) {
                            RtcService rtcService = (RtcService) this.context.getService("rtc");
                            if (rtcService == null || rtcService.getMainSigChannel() == null || !Utils.isEqualsNotNull(rtcService.getMainSigChannel().threadId, pushPayload.threadId) || !(rtcService.getMainSigChannel().userList.size() == 2 || rtcService.isPrivateMainChannelFullBefore())) {
                                KeyguardManager keyguardManager = this.mKeyguardManager;
                                boolean zInKeyguardRestrictedInputMode = keyguardManager != null ? keyguardManager.inKeyguardRestrictedInputMode() : true;
                                Intent intent = new Intent(this.context.getContext(), (Class<?>) VVChatInviteActivity.class);
                                intent.putExtra(VVChatInviteActivity.KEY_CALLER_INFO, JacksonUtils.writeAsString(pushPayload.fromUser));
                                intent.putExtra(VVChatInviteActivity.KEY_COMMUNITY_INFO, JacksonUtils.writeAsString(pushPayload.community));
                                intent.putExtra("key_thread_id", pushPayload.threadId);
                                intent.putExtra(VVChatInviteActivity.KEY_COMMUNITY_ID, pushPayload.ndcId);
                                intent.putExtra(VVChatInviteActivity.KEY_PAYLOAD, JacksonUtils.writeAsString(pushPayload));
                                Bundle baseBundleFromPush = getBaseBundleFromPush(pushPayload);
                                intent.putExtras(baseBundleFromPush);
                                if (zInKeyguardRestrictedInputMode) {
                                    boolean z = !this.notificationManagerHelper.areNotificationsEnabled();
                                    this.callScreenService.setMissedIntent(intent);
                                    showNotificationBar(pushPayload, intent, true);
                                    PowerManager powerManager = (PowerManager) this.context.getContext().getSystemService("power");
                                    if (!powerManager.isScreenOn()) {
                                        try {
                                            powerManager.newWakeLock(805306394, "CallScreen").acquire(DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS);
                                        } catch (Exception unused) {
                                        }
                                    }
                                    this.callScreenService.setCallExpireTime(pushPayload.expireTime);
                                    this.callScreenService.configCallScreenService(pushPayload.ndcId, pushPayload.threadId);
                                    this.callScreenService.updateStatus(9);
                                    if (z) {
                                        return;
                                    }
                                    this.callScreenService.onCallComeIn();
                                    return;
                                }
                                this.callScreenService.setMissedIntent(null);
                                intent.addFlags(C.ENCODING_PCM_MU_LAW);
                                SignallingChannel mainSigChannel = rtcService.getMainSigChannel();
                                Activity lastResumedActivity = ((TopActivityService) this.context.getService("topActivity")).getLastResumedActivity();
                                baseBundleFromPush.getString("threadId");
                                if (lastResumedActivity instanceof NVActivity) {
                                    NVActivity nVActivity2 = (NVActivity) lastResumedActivity;
                                    if (!nVActivity2.isDestoryed() && (nVActivity2 instanceof ChatActivity) && nVActivity2.getIntent() != null) {
                                        nVActivity = nVActivity2;
                                    }
                                }
                                if (mainSigChannel != null) {
                                    if (!Utils.isEqualsNotNull(mainSigChannel.threadId, pushPayload.threadId)) {
                                        if (rtcService.channelShowingMode != 1) {
                                            if (nVActivity instanceof ChatActivity) {
                                                ChatActivity chatActivity = (ChatActivity) nVActivity;
                                                chatActivity.setNoNeedToAutoJoin(true);
                                                chatActivity.setAllowFloatingWindow(false);
                                            }
                                            this.context.getContext().startActivity(intent);
                                        } else {
                                            Intent intent2 = (Intent) intent.clone();
                                            intent2.putExtra("expireTime", pushPayload.expireTime);
                                            rtcService.relaunchRtcMainActivity(true, intent2);
                                        }
                                    }
                                } else {
                                    if (nVActivity instanceof ChatActivity) {
                                        ChatActivity chatActivity2 = (ChatActivity) nVActivity;
                                        chatActivity2.setNoNeedToAutoJoin(true);
                                        chatActivity2.setAllowFloatingWindow(false);
                                    }
                                    this.context.getContext().startActivity(intent);
                                }
                                this.callScreenService.setCallExpireTime(pushPayload.expireTime);
                                this.callScreenService.configCallScreenService(pushPayload.ndcId, pushPayload.threadId);
                                this.callScreenService.updateStatus(9);
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    return;
                }
                final Intent launchIntent = new VVChatEntryHelper(this.context, pushPayload.ndcId).getLaunchIntent(getBaseBundleFromPush(pushPayload), false);
                launchIntent.putExtra("_pushIntent", true);
                launchIntent.putExtra("_pushClearType", 2);
                launchIntent.putExtra("_pushClearCid", pushPayload.ndcId);
                String str = pushPayload.trackId;
                if (str != null) {
                    launchIntent.putExtra("_pushTrackId", str);
                }
                String str2 = pushPayload.url;
                if (str2 != null) {
                    launchIntent.putExtra("_pushUrl", str2);
                }
                launchIntent.putExtra("Source", "Push");
                launchIntent.putExtra("_pushFrom", JacksonUtils.writeAsString(new PushNotificationService.PushFrom(pushPayload)));
                if (new NotificationManagerHelper(this.context.getContext()).areNotificationsEnabled()) {
                    showNotificationBar(pushPayload, launchIntent);
                    return;
                }
                WeakReference<Activity> weakReference = this.activeActivity;
                final Activity activity = weakReference == null ? null : weakReference.get();
                if (activity == null) {
                    Log.w("unable to popup push invite, no active activity");
                    return;
                }
                AlertDialog alertDialog = new AlertDialog(activity);
                alertDialog.setTitle(pushPayload.title());
                alertDialog.setMessage(pushPayload.message(this.context));
                alertDialog.addButton(R.string.join, 4, new View.OnClickListener() { // from class: com.narvii.services.PushInviteHelper.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        activity.startActivity(launchIntent);
                    }
                });
                alertDialog.addButton(R.string.cancel, 0, (View.OnClickListener) null);
                alertDialog.show();
            }
        }
    }

    private void updateNotificationBar(PushPayload pushPayload, int i) throws Throwable {
        if (i == 3 || i == 8) {
            PushPayload pushPayloadM53clone = pushPayload.m53clone();
            String string = this.context.getContext().getString(R.string.missed_call_from_caller);
            if (pushPayload.fromUser != null) {
                string = this.context.getContext().getString(R.string.missed_call_from_caller0, pushPayload.fromUser.nickname());
            }
            PushAPS pushAPS = pushPayloadM53clone.aps;
            if (pushAPS != null) {
                pushAPS.message = string;
            }
            showNotificationBar(pushPayloadM53clone, getIntent(pushPayload.getUri(), pushPayload));
        }
    }

    private boolean isRestrictedMode() {
        KeyguardManager keyguardManager = this.mKeyguardManager;
        if (keyguardManager != null) {
            return keyguardManager.inKeyguardRestrictedInputMode();
        }
        return true;
    }

    private Bundle getBaseBundleFromPush(PushPayload pushPayload) {
        Bundle bundle = new Bundle();
        bundle.putInt("__communityId", pushPayload.ndcId);
        bundle.putString("id", pushPayload.threadId);
        bundle.putBoolean("invite", true);
        bundle.putString("inviteFromUid", pushPayload.uid);
        bundle.putInt("inviteNotifyType", pushPayload.type);
        bundle.putInt("channel_type", getChannelType(pushPayload));
        return bundle;
    }

    public int getChannelType(PushPayload pushPayload) {
        int payloadCallType;
        if (pushPayload == null || (payloadCallType = pushPayload.getPayloadCallType()) == 1) {
            return 1;
        }
        if (payloadCallType == 2) {
            return 4;
        }
        if (payloadCallType != 3) {
            return payloadCallType != 4 ? 1 : 5;
        }
        return 3;
    }

    private void showNotificationBar(PushPayload pushPayload, Intent intent) throws Throwable {
        showNotificationBar(pushPayload, intent, false);
    }

    private void showNotificationBar(PushPayload pushPayload, Intent intent, boolean z) throws Throwable {
        String str;
        ((PushNotificationService) this.context.getService("_pushNotification")).showPushNotification(pushPayload, intent, null, Integer.valueOf((pushPayload == null || (str = pushPayload.threadId) == null) ? DEFAULT_CALL_NOTIFY_ID : str.hashCode() & (-1)), PushNotificationService.NO_GROUP, z);
    }

    private boolean isPrivateVoiceCall(PushPayload pushPayload) {
        if (pushPayload == null) {
            return false;
        }
        return (pushPayload.isCallInviteType() && pushPayload.threadType == 0) || isCallMessageRelatedPush(pushPayload);
    }

    @Override // com.narvii.pushservice.PushService.PushListener
    public boolean onInterceptNotification(PushPayload pushPayload) {
        int i;
        return isVVRelatedPush(pushPayload) || isCallMessageRelatedPush(pushPayload) || pushPayload.isScreenRoomType() || (i = pushPayload.type) == 34 || i == 35 || i == 39 || isCoHostMessageRelatedPush(pushPayload);
    }

    private boolean isVVRelatedPush(PushPayload pushPayload) {
        return pushPayload.isCallInviteType();
    }

    private boolean isCallMessageRelatedPush(PushPayload pushPayload) {
        if (pushPayload == null) {
            return false;
        }
        return pushPayload.isCallCancelMessage() || pushPayload.isTimeoutMessage() || pushPayload.isDeclineMessage();
    }

    private boolean isCoHostMessageRelatedPush(PushPayload pushPayload) {
        if (pushPayload == null) {
            return false;
        }
        int i = pushPayload.type;
        return i == 2457 || i == -26215;
    }

    protected Intent getIntent(Uri uri, PushPayload pushPayload) {
        Navigator navigator = (Navigator) this.context.getService("navigator");
        Intent intent = new Intent("android.intent.action.VIEW", uri);
        if ("ndc".equals(uri.getScheme())) {
            intent.putExtra("__forward", true);
        }
        Intent intentIntentMapping = navigator.intentMapping(intent);
        if (intentIntentMapping.getComponent() != null) {
            return intentIntentMapping;
        }
        return null;
    }

    /* loaded from: classes3.dex */
    class DismissBroadCastReceiver extends BroadcastReceiver {
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
        }

        DismissBroadCastReceiver() {
        }
    }
}
