package com.narvii.chat.call;

import android.app.KeyguardManager;
import android.app.NotificationManager;
import android.content.Intent;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.os.Vibrator;
import android.text.TextUtils;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy;
import com.narvii.amino.mastes.R;
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
import java.util.HashMap;
import java.util.List;

/* loaded from: classes.dex */
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

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, CallScreenService callScreenService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, CallScreenService callScreenService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, CallScreenService callScreenService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, CallScreenService callScreenService) {
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

    public void removeCallScreenStatusChangeListener(String str, CallStatusChangeListener callStatusChangeListener) {
        EventDispatcher<CallStatusChangeListener> eventDispatcher;
        if (TextUtils.isEmpty(str) || (eventDispatcher = this.callStatusDispatcher.get(str)) == null) {
            return;
        }
        eventDispatcher.removeListener(callStatusChangeListener);
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

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, CallScreenService callScreenService) {
        if ((!this.mKeyguardManager.inKeyguardRestrictedInputMode()) && this.status == 9 && VVChatInviteActivity.instance == null && this.missedIntent != null && !isExpired()) {
            this.missedIntent.addFlags(C.ENCODING_PCM_MU_LAW);
            nVContext.getContext().startActivity(this.missedIntent);
            cancelNotification(this.threadId);
        }
    }

    private boolean isExpired() {
        if (this.callExpireTime != 0) {
            return this.callExpireTime * 1000 < ((System.currentTimeMillis() > ApiService.timestamp() ? 1 : (System.currentTimeMillis() == ApiService.timestamp() ? 0 : -1)) < 0 ? ApiService.timestamp() : System.currentTimeMillis());
        }
        return false;
    }

    public void cancelNotification(String str) {
        int iHashCode;
        NotificationManager notificationManager = (NotificationManager) this.nvContext.getContext().getSystemService("notification");
        if (str == null) {
            iHashCode = PushInviteHelper.DEFAULT_CALL_NOTIFY_ID;
        } else {
            try {
                iHashCode = str.hashCode() & (-1);
            } catch (Exception unused) {
                return;
            }
        }
        notificationManager.cancel(iHashCode);
    }

    public void configCallScreenService(int i, String str) {
        this.ndcId = i;
        this.threadId = str;
        if (str == null) {
            this.role = -1;
            this.status = 0;
            this.callExpireTime = 0L;
        }
    }

    public void cancelCall(SignallingChannel signallingChannel) {
        RtcService rtcService = (RtcService) this.nvContext.getService("rtc");
        if (rtcService.getMainChannelChatThread() != null && rtcService.getMainChannelChatThread().type == 0) {
            this.vvChatHelper.sendCallCancelMessage(signallingChannel, rtcService.isPrivateMainChannelFullBefore());
        }
        updateStatus(3);
    }

    public void updateStatus(int i, int i2, String str) {
        if (this.ndcId == i2 && Utils.isEqualsNotNull(str, this.threadId) && this.status == 10) {
            return;
        }
        configCallScreenService(i2, str);
        updateStatus(i);
    }

    public void updateStatus(int i) {
        if (this.status == i) {
            return;
        }
        this.status = i;
        this.isEnding = isEndingStatus();
        if (i == 4) {
            Utils.handler.removeCallbacks(this.userBusyHintRunnable);
        } else {
            removeLocalStatusMonitor();
        }
        dispatchCallStatusChange(i);
        if (i == 1) {
            this.role = 0;
            Utils.postDelayed(this.userBusyHintRunnable, 30000L);
            Utils.postDelayed(this.callTimeOutRunnable, 70000L);
        } else if (i == 2 || i == 3 || i == 7 || i == 6 || i == 5) {
            configCallScreenService(0, null);
        } else if (i != 8 && i == 9) {
            this.role = 1;
            if (this.callExpireTime != 0) {
                int i2 = (((this.callExpireTime * 1000) - (System.currentTimeMillis() < ApiService.timestamp() ? ApiService.timestamp() : System.currentTimeMillis())) > 1000L ? 1 : (((this.callExpireTime * 1000) - (System.currentTimeMillis() < ApiService.timestamp() ? ApiService.timestamp() : System.currentTimeMillis())) == 1000L ? 0 : -1));
            }
            Utils.postDelayed(this.receiveCallLimitRunnable, DefaultLoadErrorHandlingPolicy.DEFAULT_TRACK_BLACKLIST_MS);
        }
        notifyUserStatusChange(i);
    }

    private void dispatchCallStatusChange(final int i) {
        EventDispatcher<CallStatusChangeListener> eventDispatcher;
        String str = this.threadId;
        if (str == null || (eventDispatcher = this.callStatusDispatcher.get(str)) == null) {
            return;
        }
        eventDispatcher.dispatch(new Callback<CallStatusChangeListener>() { // from class: com.narvii.chat.call.CallScreenService.1
            @Override // com.narvii.util.Callback
            public void call(CallStatusChangeListener callStatusChangeListener) {
                callStatusChangeListener.onCallStatusChanged(i);
            }
        });
    }

    public void removeLocalStatusMonitor() {
        Utils.handler.removeCallbacks(this.userBusyHintRunnable);
        Utils.handler.removeCallbacks(this.callTimeOutRunnable);
        Utils.handler.removeCallbacks(this.receiveCallLimitRunnable);
    }

    public int getCurStatus() {
        return this.status;
    }

    public String getThreadId() {
        return this.threadId;
    }

    public void sendNotAnswerRequest() {
        int i;
        if (TextUtils.isEmpty(this.threadId)) {
            return;
        }
        RtcService rtcService = (RtcService) this.nvContext.getService("rtc");
        int i2 = 52;
        if (rtcService != null && rtcService.getMainSigChannel() != null && (i = rtcService.getMainSigChannel().channelType) != 1) {
            if (i == 4) {
                i2 = 55;
            } else if (i == 3) {
                i2 = 58;
            }
        }
        ((ApiService) NVApplication.instance().getService(this.ndcId, "api")).exec(this.voiceCallHelper.buildRequest(this.ndcId, this.threadId, i2), new ApiResponseListener<MessageResponse>(MessageResponse.class) { // from class: com.narvii.chat.call.CallScreenService.5
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i3, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i3, list, str, apiResponse, th);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, MessageResponse messageResponse) throws Exception {
                super.onFinish(apiRequest, (ApiRequest) messageResponse);
            }
        });
    }

    private void notifyUserStatusChange(int i) throws IllegalStateException {
        if (this.mediaPlayer != null && i != 4) {
            stopMediaPlay();
            stopVibrate();
        }
        if (i == 1) {
            this.audioManager.setMode(0);
            this.audioManager.setSpeakerphoneOn(false);
            this.isSpeakerOn = false;
            this.isMuteOn = false;
            playMusic(R.raw.call_caller, true);
        } else if (i == 8) {
            if (this.role == 0) {
                playMusic(R.raw.call_time_out, false);
            }
        } else if (i == 9) {
            this.audioManager.setMode(0);
            this.audioManager.setSpeakerphoneOn(!r1.isWiredHeadsetOn());
            this.isSpeakerOn = true;
        } else if (i == 3) {
            if (this.audioManager.getRingerMode() == 2) {
                playMusic(R.raw.rtc_leave, false);
            }
            stopVibrate();
        } else if (i == 6) {
            stopVibrate();
        }
        abandonFocus(i);
    }

    private void abandonFocus(int i) {
        AudioManager audioManager;
        if (!(i == 6 || i == 3 || i == 2 || i == 7 || i == 10) || (audioManager = this.audioManager) == null) {
            return;
        }
        audioManager.abandonAudioFocus(null);
    }

    public void setCallExpireTime(long j) {
        this.callExpireTime = j;
    }

    private void playMusic(int i, boolean z) throws IllegalStateException {
        MediaPlayer mediaPlayer = this.mediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.release();
        }
        try {
            this.audioManager.requestAudioFocus(null, 3, 2);
        } catch (Exception unused) {
        }
        this.mediaPlayer = MediaPlayer.create(this.nvContext.getContext(), i);
        MediaPlayer mediaPlayer2 = this.mediaPlayer;
        if (mediaPlayer2 == null) {
            return;
        }
        mediaPlayer2.setLooping(z);
        this.mediaPlayer.setAudioStreamType(3);
        try {
            this.mediaPlayer.start();
        } catch (Exception unused2) {
            this.mediaPlayer.release();
        }
    }

    public void onCallComeIn() throws IllegalStateException {
        stopVibrate();
        stopMediaPlay();
        if (this.audioManager.getRingerMode() == 2) {
            playMusic(R.raw.call_receiver, true);
            startVibrate();
        } else if (this.audioManager.getRingerMode() == 1) {
            startVibrate();
        }
    }

    private void startVibrate() {
        try {
            this.vibrate.vibrate(new long[]{1000, 500}, 0);
        } catch (Exception unused) {
        }
    }

    private void stopVibrate() {
        Vibrator vibrator = this.vibrate;
        if (vibrator != null) {
            vibrator.cancel();
        }
    }

    private void stopMediaPlay() throws IllegalStateException {
        MediaPlayer mediaPlayer = this.mediaPlayer;
        if (mediaPlayer != null) {
            try {
                mediaPlayer.stop();
                this.mediaPlayer.release();
            } catch (Exception unused) {
            }
        }
    }

    public void silenceMode() throws IllegalStateException {
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

    private boolean isEndingStatus() {
        int i = this.status;
        return i == 8 || i == 3 || i == 7 || i == 10 || i == 6;
    }

    public boolean isEnding() {
        return this.isEnding;
    }

    public void setMissedIntent(Intent intent) {
        this.missedIntent = intent;
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

    public boolean isMuteOn() {
        return this.isMuteOn;
    }

    public boolean isSpeakerOn() {
        return this.isSpeakerOn;
    }

    public void resetCallScreen() {
        configCallScreenService(0, null);
    }
}
