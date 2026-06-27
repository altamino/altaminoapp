package com.narvii.pushservice;

import com.narvii.util.Callback;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import java.util.HashMap;

/* loaded from: classes.dex */
public class ChatPushNotificationVavle {
    private static final long CHAT_NOTIFICATION_INTERVAL_MS = 2000;
    private static final long CHAT_NOTIFICATION_VAVLE_COUNT = 10;
    private static final long CHAT_NOTIFICATION_VAVLE_EXPIRE_TIME = 300000;
    private static final long CHAT_NOTIFICATION_VAVLE_TIME_MS = 2000;
    private static final String TAG = "ChatPushNotificationVavle";
    Callback<PushPayload> callback;
    HashMap<String, Long> lastShownTime = new HashMap<>();
    HashMap<String, NotificationRunnable> notificationRunnableMapper = new HashMap<>();
    HashMap<String, Boolean> rateControlMapper = new HashMap<>();
    HashMap<String, Integer> rateControlShownCount = new HashMap<>();
    HashMap<String, Long> rateControlCheckTime = new HashMap<>();
    HashMap<String, RateControlCheckRunnable> rateControlRunnableMapper = new HashMap<>();
    HashMap<String, RateControlExpireRunnable> rateControlExpireRunnableMapper = new HashMap<>();

    public void checkShowNotification(PushPayload pushPayload, Callback<PushPayload> callback) {
        String str;
        this.callback = callback;
        if (pushPayload == null || pushPayload.type != 18 || (str = pushPayload.threadId) == null) {
            if (callback != null) {
                callback.call(pushPayload);
                return;
            }
            return;
        }
        boolean z = true;
        if (this.rateControlMapper.get(str) != null && this.rateControlMapper.get(str).booleanValue()) {
            Long l = this.lastShownTime.get(str);
            if (l != null && System.currentTimeMillis() - l.longValue() <= 2000) {
                z = false;
            }
            if (z) {
                Log.d(TAG, "show push directly ");
                if (callback != null) {
                    callback.call(pushPayload);
                    return;
                }
                return;
            }
            long jAbs = Math.abs((l.longValue() + 2000) - System.currentTimeMillis());
            NotificationRunnable notificationRunnable = this.notificationRunnableMapper.get(str);
            if (notificationRunnable != null) {
                Utils.handler.removeCallbacks(notificationRunnable);
            }
            NotificationRunnable notificationRunnable2 = new NotificationRunnable(str, pushPayload);
            this.notificationRunnableMapper.put(str, notificationRunnable2);
            Utils.postDelayed(notificationRunnable2, jAbs);
            return;
        }
        if (callback != null) {
            callback.call(pushPayload);
        }
        int iIntValue = (this.rateControlShownCount.get(str) != null ? this.rateControlShownCount.get(str).intValue() : 0) + 1;
        this.rateControlShownCount.put(str, Integer.valueOf(iIntValue));
        if (this.rateControlCheckTime.get(str) == null) {
            this.rateControlCheckTime.put(str, Long.valueOf(System.currentTimeMillis()));
        }
        long jLongValue = this.rateControlCheckTime.get(str) == null ? 0L : this.rateControlCheckTime.get(str).longValue();
        if (iIntValue >= CHAT_NOTIFICATION_VAVLE_COUNT) {
            if (jLongValue != 0 && System.currentTimeMillis() - jLongValue < 2000) {
                enterRateControlMode(str);
                return;
            } else {
                this.rateControlShownCount.remove(str);
                this.rateControlCheckTime.remove(str);
                return;
            }
        }
        Log.d(TAG, "post runnable to check count");
        RateControlCheckRunnable rateControlCheckRunnable = this.rateControlRunnableMapper.get(str);
        if (rateControlCheckRunnable != null) {
            Utils.handler.removeCallbacks(rateControlCheckRunnable);
        }
        RateControlCheckRunnable rateControlCheckRunnable2 = new RateControlCheckRunnable(str);
        this.rateControlRunnableMapper.put(str, rateControlCheckRunnable2);
        Utils.postDelayed(rateControlCheckRunnable2, 2000L);
    }

    public void saveLastShownTime(PushPayload pushPayload) {
        if (pushPayload == null) {
            return;
        }
        this.lastShownTime.put(pushPayload.threadId, Long.valueOf(System.currentTimeMillis()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void enterRateControlMode(String str) {
        Log.d(TAG, "enter rate control mode");
        this.rateControlMapper.put(str, true);
        this.rateControlCheckTime.remove(str);
        this.rateControlShownCount.remove(str);
        if (this.rateControlRunnableMapper.get(str) != null) {
            Utils.handler.removeCallbacks(this.rateControlRunnableMapper.get(str));
        }
        if (this.rateControlExpireRunnableMapper.get(str) != null) {
            Utils.handler.removeCallbacks(this.rateControlExpireRunnableMapper.get(str));
        }
        RateControlExpireRunnable rateControlExpireRunnable = new RateControlExpireRunnable(str);
        this.rateControlExpireRunnableMapper.put(str, rateControlExpireRunnable);
        Utils.postDelayed(rateControlExpireRunnable, 300000L);
    }

    /* loaded from: classes3.dex */
    class RateControlCheckRunnable implements Runnable {
        public String key;

        public RateControlCheckRunnable(String str) {
            this.key = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            if ((ChatPushNotificationVavle.this.rateControlShownCount.get(this.key) == null ? 0 : ChatPushNotificationVavle.this.rateControlShownCount.get(this.key).intValue()) >= ChatPushNotificationVavle.CHAT_NOTIFICATION_VAVLE_COUNT) {
                ChatPushNotificationVavle.this.enterRateControlMode(this.key);
            } else {
                Log.d(ChatPushNotificationVavle.TAG, "recount");
                ChatPushNotificationVavle.this.rateControlShownCount.remove(this.key);
            }
        }
    }

    /* loaded from: classes3.dex */
    class RateControlExpireRunnable implements Runnable {
        public String key;

        public RateControlExpireRunnable(String str) {
            this.key = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            String str = this.key;
            if (str != null) {
                ChatPushNotificationVavle.this.rateControlMapper.remove(str);
                ChatPushNotificationVavle.this.rateControlCheckTime.remove(this.key);
                ChatPushNotificationVavle.this.rateControlShownCount.remove(this.key);
                if (ChatPushNotificationVavle.this.rateControlRunnableMapper.get(this.key) != null) {
                    Utils.handler.removeCallbacks(ChatPushNotificationVavle.this.rateControlRunnableMapper.get(this.key));
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    class NotificationRunnable implements Runnable {
        public String key;
        public PushPayload payload;

        public NotificationRunnable(String str, PushPayload pushPayload) {
            this.key = str;
            this.payload = pushPayload;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.payload == null || ChatPushNotificationVavle.this.callback == null) {
                return;
            }
            Log.d(ChatPushNotificationVavle.TAG, "show notification after rate control delay");
            ChatPushNotificationVavle.this.callback.call(this.payload);
        }
    }
}
