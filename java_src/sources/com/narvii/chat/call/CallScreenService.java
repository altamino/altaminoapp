package com.narvii.chat.call;

import android.app.KeyguardManager;
import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.os.Handler;
import android.os.Vibrator;
import android.text.TextUtils;
import com.narvii.amino.master.R;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.chat.MessageResponse;
import com.narvii.chat.rtc.RtcService;
import com.narvii.chat.signalling.SignallingChannel;
import com.narvii.chat.video.invite.VVChatInviteActivity;
import com.narvii.chat.video.utils.VVChatHelper;
import com.narvii.chat.video.view.VoiceCallHelper;
import com.narvii.model.api.ApiResponse;
import com.narvii.services.AutostartServiceProvider;
import com.narvii.services.PushInviteHelper;
import com.narvii.util.Callback;
import com.narvii.util.EventDispatcher;
import com.narvii.util.Log;
import com.narvii.util.NotificationManagerHelper;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.safedk.android.utils.Logger;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
public class CallScreenService implements AutostartServiceProvider<CallScreenService> {
    private static final int BUSY_HINT_TIME = 30000;
    public static final int CALL_TIME_LIMIT = 70000;
    private static final int REVING_TIME_LIMIT = 60000;
    public static final int ROLE_CALLER = 0;
    public static final int ROLE_RECEIVER = 1;
    public static final int STATUS_BUSY = 4;
    public static final int STATUS_CALLING = 1;
    public static final int STATUS_CANCELLED = 3;
    public static final int STATUS_CONNECTED = 2;
    public static final int STATUS_DECLINE = 7;
    public static final int STATUS_ENDED = 6;
    public static final int STATUS_ENDING = 5;
    public static final int STATUS_PREPARE = 0;
    public static final int STATUS_RECEIVER_BUSY = 10;
    public static final int STATUS_RECEVING = 9;
    public static final int STATUS_TIMEOUT = 8;
    private static final int VIBRATE_GAP = 1000;
    private static final int VIBRATE_PER_DURATION = 500;
    private static final int VIBRATE_TIMES = 3;
    private AudioManager audioManager;
    private long callExpireTime;
    private boolean isEnding;
    private boolean isMuteOn;
    private boolean isSpeakerOn;
    KeyguardManager mKeyguardManager;
    MediaPlayer mediaPlayer;
    private Intent missedIntent;
    private int ndcId;
    NotificationManagerHelper notificationManagerHelper;
    private NVContext nvContext;
    private int status;
    private String threadId;
    Vibrator vibrate;
    private VoiceCallHelper voiceCallHelper;
    private VVChatHelper vvChatHelper;
    private int role = -1;
    HashMap<String, EventDispatcher<CallStatusChangeListener>> callStatusDispatcher = new HashMap<>();
    Runnable userBusyHintRunnable = new Runnable() { // from class: com.narvii.chat.call.CallScreenService.2
        @Override // java.lang.Runnable
        public void run() {
            if (CallScreenService.this.status == 1 || CallScreenService.this.status == 0) {
                CallScreenService.this.updateStatus(4);
            }
        }
    };
    Runnable callTimeOutRunnable = new Runnable() { // from class: com.narvii.chat.call.CallScreenService.3
        @Override // java.lang.Runnable
        public void run() {
            if (CallScreenService.this.status == 1 || CallScreenService.this.status == 0 || CallScreenService.this.status == 4) {
                CallScreenService.this.updateStatus(8);
            }
        }
    };
    Runnable receiveCallLimitRunnable = new Runnable() { // from class: com.narvii.chat.call.CallScreenService.4
        @Override // java.lang.Runnable
        public void run() {
            if (CallScreenService.this.status == 9 || CallScreenService.this.status == 0) {
                CallScreenService.this.updateStatus(8);
            }
        }
    };

    private void abandonFocus(int i10) {
        AudioManager audioManager;
        if ((i10 == 6 || i10 == 3 || i10 == 2 || i10 == 7 || i10 == 10) && (audioManager = this.audioManager) != null) {
            audioManager.abandonAudioFocus(null);
        }
    }

    private boolean isEndingStatus() {
        int i10 = this.status;
        return i10 == 8 || i10 == 3 || i10 == 7 || i10 == 10 || i10 == 6;
    }

    public static void safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Context p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    private void startVibrate() {
        try {
            this.vibrate.vibrate(new long[]{1000, 500}, 0);
        } catch (Exception unused) {
        }
    }

    public void configCallScreenService(int i10, String str) {
        this.ndcId = i10;
        this.threadId = str;
        if (str == null) {
            this.role = -1;
            this.status = 0;
            this.callExpireTime = 0L;
        }
    }

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, CallScreenService callScreenService) {
    }

    public int getCurStatus() {
        return this.status;
    }

    public String getThreadId() {
        return this.threadId;
    }

    public boolean isEnding() {
        return this.isEnding;
    }

    public boolean isMuteOn() {
        return this.isMuteOn;
    }

    public boolean isSpeakerOn() {
        return this.isSpeakerOn;
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, CallScreenService callScreenService) {
    }

    public void resetCallScreen() {
        configCallScreenService(0, null);
    }

    public void setCallExpireTime(long j6) {
        this.callExpireTime = j6;
    }

    public void setMissedIntent(Intent intent) {
        this.missedIntent = intent;
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, CallScreenService callScreenService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, CallScreenService callScreenService) {
    }

    public void updateStatus(int i10, int i11, String str) {
        if (this.ndcId == i11 && Utils.isEqualsNotNull(str, this.threadId) && this.status == 10) {
            return;
        }
        configCallScreenService(i11, str);
        updateStatus(i10);
    }

    private void dispatchCallStatusChange(final int i10) {
        EventDispatcher<CallStatusChangeListener> eventDispatcher;
        String str = this.threadId;
        if (str == null || (eventDispatcher = this.callStatusDispatcher.get(str)) == null) {
            return;
        }
        eventDispatcher.dispatch(new Callback<CallStatusChangeListener>() { // from class: com.narvii.chat.call.CallScreenService.1
            @Override // com.narvii.util.Callback
            public void call(CallStatusChangeListener callStatusChangeListener) {
                callStatusChangeListener.onCallStatusChanged(i10);
            }
        });
    }

    private boolean isExpired() {
        if (this.callExpireTime != 0) {
            return this.callExpireTime * 1000 < ((System.currentTimeMillis() > ApiService.timestamp() ? 1 : (System.currentTimeMillis() == ApiService.timestamp() ? 0 : -1)) < 0 ? ApiService.timestamp() : System.currentTimeMillis());
        }
        return false;
    }

    private void notifyUserStatusChange(int i10) {
        if (this.mediaPlayer != null && i10 != 4) {
            stopMediaPlay();
            stopVibrate();
        }
        if (i10 == 1) {
            this.audioManager.setMode(0);
            this.audioManager.setSpeakerphoneOn(false);
            this.isSpeakerOn = false;
            this.isMuteOn = false;
            playMusic(R.raw.call_caller, true);
        } else if (i10 == 8) {
            if (this.role == 0) {
                playMusic(R.raw.call_time_out, false);
            }
        } else if (i10 == 9) {
            this.audioManager.setMode(0);
            AudioManager audioManager = this.audioManager;
            audioManager.setSpeakerphoneOn(!audioManager.isWiredHeadsetOn());
            this.isSpeakerOn = true;
        } else if (i10 == 3) {
            if (this.audioManager.getRingerMode() == 2) {
                playMusic(R.raw.rtc_leave, false);
            }
            stopVibrate();
        } else if (i10 == 6) {
            stopVibrate();
        }
        abandonFocus(i10);
    }

    private void playMusic(int i10, boolean z6) {
        MediaPlayer mediaPlayer = this.mediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.release();
        }
        try {
            this.audioManager.requestAudioFocus(null, 3, 2);
        } catch (Exception unused) {
        }
        MediaPlayer mediaPlayerCreate = MediaPlayer.create(this.nvContext.getContext(), i10);
        this.mediaPlayer = mediaPlayerCreate;
        if (mediaPlayerCreate == null) {
            return;
        }
        mediaPlayerCreate.setLooping(z6);
        this.mediaPlayer.setAudioStreamType(3);
        try {
            this.mediaPlayer.start();
        } catch (Exception unused2) {
            this.mediaPlayer.release();
        }
    }

    private void stopMediaPlay() {
        MediaPlayer mediaPlayer = this.mediaPlayer;
        if (mediaPlayer != null) {
            try {
                mediaPlayer.stop();
                this.mediaPlayer.release();
            } catch (Exception unused) {
            }
        }
    }

    private void stopVibrate() {
        Vibrator vibrator = this.vibrate;
        if (vibrator != null) {
            vibrator.cancel();
        }
    }

    public void cancelCall(SignallingChannel signallingChannel) {
        RtcService rtcService = (RtcService) this.nvContext.getService("rtc");
        if (rtcService.getMainChannelChatThread() != null && rtcService.getMainChannelChatThread().type == 0) {
            this.vvChatHelper.sendCallCancelMessage(signallingChannel, rtcService.isPrivateMainChannelFullBefore());
        }
        updateStatus(3);
    }

    public void cancelNotification(String str) {
        int iHashCode;
        NotificationManager notificationManager = (NotificationManager) this.nvContext.getContext().getSystemService("notification");
        if (str == null) {
            iHashCode = PushInviteHelper.DEFAULT_CALL_NOTIFY_ID;
        } else {
            try {
                iHashCode = str.hashCode();
            } catch (Exception unused) {
                return;
            }
        }
        notificationManager.cancel(iHashCode);
    }

    @Override // com.narvii.services.ServiceProvider
    public CallScreenService create(NVContext nVContext) {
        this.nvContext = nVContext;
        this.voiceCallHelper = new VoiceCallHelper(nVContext.getContext());
        this.vibrate = (Vibrator) this.nvContext.getContext().getSystemService("vibrator");
        this.notificationManagerHelper = new NotificationManagerHelper(nVContext.getContext());
        this.mKeyguardManager = (KeyguardManager) nVContext.getContext().getSystemService("keyguard");
        this.audioManager = (AudioManager) nVContext.getContext().getSystemService("audio");
        this.vvChatHelper = new VVChatHelper(nVContext);
        return this;
    }

    public void removeLocalStatusMonitor() {
        Handler handler = Utils.handler;
        handler.removeCallbacks(this.userBusyHintRunnable);
        handler.removeCallbacks(this.callTimeOutRunnable);
        handler.removeCallbacks(this.receiveCallLimitRunnable);
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, CallScreenService callScreenService) {
        if ((!this.mKeyguardManager.inKeyguardRestrictedInputMode()) && this.status == 9 && VVChatInviteActivity.instance == null && this.missedIntent != null && !isExpired()) {
            this.missedIntent.addFlags(268435456);
            safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(nVContext.getContext(), this.missedIntent);
            cancelNotification(this.threadId);
        }
    }

    public void sendNotAnswerRequest() {
        int i10;
        if (TextUtils.isEmpty(this.threadId)) {
            return;
        }
        RtcService rtcService = (RtcService) this.nvContext.getService("rtc");
        int i11 = 52;
        if (rtcService != null && rtcService.getMainSigChannel() != null && (i10 = rtcService.getMainSigChannel().channelType) != 1) {
            if (i10 == 4) {
                i11 = 55;
            } else if (i10 == 3) {
                i11 = 58;
            }
        }
        ((ApiService) NVApplication.instance().getService(this.ndcId, "api")).exec(this.voiceCallHelper.buildRequest(this.ndcId, this.threadId, i11), new ApiResponseListener<MessageResponse>(MessageResponse.class) { // from class: com.narvii.chat.call.CallScreenService.5
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, MessageResponse messageResponse) throws Exception {
                super.onFinish(apiRequest, messageResponse);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i12, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i12, list, str, apiResponse, th);
            }
        });
    }

    public void silenceMode() {
        MediaPlayer mediaPlayer = this.mediaPlayer;
        if (mediaPlayer != null) {
            try {
                mediaPlayer.stop();
                this.mediaPlayer.release();
            } catch (Exception unused) {
            }
        }
        stopVibrate();
    }

    public void switchMusicPlayStatus() {
        MediaPlayer mediaPlayer = this.mediaPlayer;
        if (mediaPlayer != null) {
            try {
                if (mediaPlayer.isPlaying()) {
                    this.isMuteOn = true;
                    this.mediaPlayer.pause();
                } else {
                    this.isMuteOn = false;
                    this.mediaPlayer.start();
                }
            } catch (Exception unused) {
            }
        }
    }

    public void switchSpeaker() {
        try {
            if (this.isSpeakerOn) {
                this.audioManager.setMode(3);
                this.audioManager.setSpeakerphoneOn(false);
                this.isSpeakerOn = false;
            } else {
                this.audioManager.setMode(3);
                this.audioManager.setSpeakerphoneOn(true);
                this.isSpeakerOn = true;
            }
        } catch (Exception e) {
            if (e.getMessage() != null) {
                Log.e(e.getMessage());
            }
        }
    }

    public void addCallScreenStatusChangeListener(String str, CallStatusChangeListener callStatusChangeListener) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        EventDispatcher<CallStatusChangeListener> eventDispatcher = this.callStatusDispatcher.get(str);
        if (eventDispatcher == null) {
            eventDispatcher = new EventDispatcher<>();
        }
        eventDispatcher.addListener(callStatusChangeListener);
        this.callStatusDispatcher.put(str, eventDispatcher);
    }

    public void onCallComeIn() {
        stopVibrate();
        stopMediaPlay();
        if (this.audioManager.getRingerMode() == 2) {
            playMusic(R.raw.call_receiver, true);
            startVibrate();
        } else if (this.audioManager.getRingerMode() == 1) {
            startVibrate();
        }
    }

    public void removeCallScreenStatusChangeListener(String str, CallStatusChangeListener callStatusChangeListener) {
        EventDispatcher<CallStatusChangeListener> eventDispatcher;
        if (TextUtils.isEmpty(str) || (eventDispatcher = this.callStatusDispatcher.get(str)) == null) {
            return;
        }
        eventDispatcher.removeListener(callStatusChangeListener);
    }

    public void updateStatus(int i10) {
        if (this.status == i10) {
            return;
        }
        this.status = i10;
        this.isEnding = isEndingStatus();
        if (i10 == 4) {
            Utils.handler.removeCallbacks(this.userBusyHintRunnable);
        } else {
            removeLocalStatusMonitor();
        }
        dispatchCallStatusChange(i10);
        if (i10 == 1) {
            this.role = 0;
            Utils.postDelayed(this.userBusyHintRunnable, 30000L);
            Utils.postDelayed(this.callTimeOutRunnable, 70000L);
        } else if (i10 == 2 || i10 == 3 || i10 == 7 || i10 == 6 || i10 == 5) {
            configCallScreenService(0, null);
        } else if (i10 != 8 && i10 == 9) {
            this.role = 1;
            if (this.callExpireTime != 0) {
                if (System.currentTimeMillis() < ApiService.timestamp()) {
                    ApiService.timestamp();
                } else {
                    System.currentTimeMillis();
                }
            }
            Utils.postDelayed(this.receiveCallLimitRunnable, 60000L);
        }
        notifyUserStatusChange(i10);
    }
}
