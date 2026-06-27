package com.narvii.pushservice;

import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Build;
import android.support.v4.app.NotificationCompat;
import android.text.TextUtils;
import android.widget.RemoteViews;
import com.narvii.account.AccountService;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.community.CommunityService;
import com.narvii.navigator.Navigator;
import com.narvii.notification.channel.NotificationChannelHelper;
import com.narvii.services.AutostartServiceProvider;
import com.narvii.util.Callback;
import com.narvii.util.DateTimeFormatter;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.crashlytics.OomHelper;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ProxyStack;
import com.narvii.util.image.NVImageLoader;
import com.narvii.util.statistics.TmpValue;
import java.io.File;

/* loaded from: classes.dex */
public class PushNotificationService implements AutostartServiceProvider<PushNotificationService> {
    public static TmpValue<PushFrom> FROM_PUSH = new TmpValue<>();
    private static final int MUTE_INTERVAL = 8000;
    static final int NOTIFY_CID_MASK = -8;
    static final int NOTIFY_CID_SHIFT = 3;
    public static final int NOTIFY_TYPE_CHAT = 2;
    public static final int NOTIFY_TYPE_MARKETING = 4;
    static final int NOTIFY_TYPE_MASK = 7;
    public static final int NOTIFY_TYPE_NORMAL = 1;
    public static final String NO_GROUP = "null";
    static final String TAG = "narvii_push";
    static boolean isAppActive;
    AccountService account;
    Callback<PushPayload> callback = new Callback() { // from class: com.narvii.pushservice.-$$Lambda$PushNotificationService$YieLhpj2zsi1FWzEtccGiiQq9aQ
        @Override // com.narvii.util.Callback
        public final void call(Object obj) throws Throwable {
            this.f$0.lambda$new$0$PushNotificationService((PushPayload) obj);
        }
    };
    ChatPushNotificationVavle chatPushNotificatonVavle;
    CommunityService community;
    NVContext context;
    DateTimeFormatter dateTimeFormatter;
    File iconDir;
    NVImageLoader imageLoader;
    boolean isMaster;
    long lastRing;
    NotificationManager notifiManager;
    SharedPreferences pushCommunityNamePrefs;
    ProxyStack stack;

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, PushNotificationService pushNotificationService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, PushNotificationService pushNotificationService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, PushNotificationService pushNotificationService) {
    }

    public static class PushFrom {
        public PushPayload fromPushPayload;

        public PushFrom() {
        }

        public PushFrom(PushPayload pushPayload) {
            this.fromPushPayload = pushPayload;
        }
    }

    @Override // com.narvii.services.ServiceProvider
    public PushNotificationService create(NVContext nVContext) {
        this.context = NVApplication.instance();
        this.isMaster = NVApplication.CLIENT_TYPE == 100;
        this.account = (AccountService) this.context.getService("account");
        this.community = (CommunityService) this.context.getService("community");
        this.imageLoader = (NVImageLoader) this.context.getService("imageLoader");
        this.notifiManager = (NotificationManager) nVContext.getContext().getSystemService("notification");
        this.pushCommunityNamePrefs = nVContext.getContext().getSharedPreferences("push_cn", 0);
        this.dateTimeFormatter = DateTimeFormatter.getInstance(nVContext.getContext());
        this.chatPushNotificatonVavle = new ChatPushNotificationVavle();
        return this;
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, PushNotificationService pushNotificationService) {
        isAppActive = true;
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, PushNotificationService pushNotificationService) {
        isAppActive = false;
    }

    public void showPushNotification(PushPayload pushPayload) throws Throwable {
        if (pushPayload.type == 18 && pushPayload.threadId != null) {
            this.chatPushNotificatonVavle.checkShowNotification(pushPayload, this.callback);
        } else {
            showPushNotification(pushPayload, null, null, null, null, false);
        }
    }

    public /* synthetic */ void lambda$new$0$PushNotificationService(PushPayload pushPayload) throws Throwable {
        showPushNotification(pushPayload, null, null, null, null, false);
    }

    public void showPushNotification(final PushPayload pushPayload, final Intent intent, final PendingIntent pendingIntent, final Integer num, final String str, final boolean z) throws Throwable {
        if (pushPayload == null) {
            return;
        }
        boolean z2 = hasPic(pushPayload) && !pushPayload.picDownloaded;
        boolean zIsCommunityIconReady = true ^ isCommunityIconReady(pushPayload.ndcId);
        if (z2) {
            new Thread("push-pic") { // from class: com.narvii.pushservice.PushNotificationService.1
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() throws Throwable {
                    Bitmap[] bitmapArr;
                    super.run();
                    PushNotificationService.this.fetchCommunity(pushPayload.ndcId);
                    PushNotificationService pushNotificationService = PushNotificationService.this;
                    PushPayload pushPayload2 = pushPayload;
                    if (pushNotificationService.needGroup(pushPayload2)) {
                        bitmapArr = new Bitmap[]{pushPayload.picIcon};
                    } else {
                        PushPayload pushPayload3 = pushPayload;
                        bitmapArr = new Bitmap[]{pushPayload3.picIcon, pushPayload3.picFull};
                    }
                    pushNotificationService.fetchPic(pushPayload2, bitmapArr);
                    PushPayload pushPayload4 = pushPayload;
                    pushPayload4.picDownloaded = true;
                    PushNotificationService.this.showPushNotificationInteral(pushPayload4, intent, pendingIntent, num, str, z);
                }
            }.start();
        } else if (zIsCommunityIconReady) {
            new Thread("push-communtiy") { // from class: com.narvii.pushservice.PushNotificationService.2
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() throws Throwable {
                    super.run();
                    PushNotificationService.this.fetchCommunity(pushPayload.ndcId);
                    PushNotificationService.this.showPushNotificationInteral(pushPayload, intent, pendingIntent, num, str, z);
                }
            }.start();
        } else {
            showPushNotificationInteral(pushPayload, intent, pendingIntent, num, str, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean needGroup(PushPayload pushPayload) {
        PushPayloadSet pushPayloadSet;
        File file = new File(this.account.getDir(), "push_" + getNotifyId(pushPayload, null));
        if (file.length() > 0) {
            try {
                pushPayloadSet = (PushPayloadSet) JacksonUtils.DEFAULT_MAPPER.readValue(file, PushPayloadSet.class);
            } catch (Exception e) {
                Log.w(TAG, "fail to read push payload set from " + file, e);
            }
        } else {
            pushPayloadSet = null;
        }
        return pushPayloadSet != null;
    }

    protected int getNotifyType(PushPayload pushPayload) {
        if (pushPayload.isMarketing()) {
            return 4;
        }
        return pushPayload.isChat() ? 2 : 1;
    }

    private int getNotifyId(PushPayload pushPayload, Integer num) {
        if (num == null) {
            int notifyType = getNotifyType(pushPayload);
            return this.isMaster ? notifyType | ((pushPayload.ndcId << 3) & NOTIFY_CID_MASK) : notifyType;
        }
        return num.intValue();
    }

    protected String getChannelId(PushPayload pushPayload) {
        if (NVApplication.CLIENT_TYPE == 200) {
            return NotificationChannelHelper.CHANNEL_COMMUNITY_MANAGEMENT;
        }
        int notifyType = getNotifyType(pushPayload);
        if (notifyType == 1) {
            return NotificationChannelHelper.CHANNEL_ALERT;
        }
        if (notifyType == 2) {
            return "chat";
        }
        if (notifyType != 4) {
            return null;
        }
        return NotificationChannelHelper.CHANNEL_BROADCAST;
    }

    protected boolean hasPic(PushPayload pushPayload) {
        if (Build.VERSION.SDK_INT < 16 || TextUtils.isEmpty(pushPayload.picUrl)) {
            return false;
        }
        int i = pushPayload.picType;
        return i == 0 || i == 1;
    }

    protected Intent getIntent(Uri uri, PushPayload pushPayload) {
        if (!pushPayload.isCurrenVersionPush(this.context.getContext())) {
            uri = Uri.parse("ndc://app-upgrade");
        }
        Navigator navigator = (Navigator) this.context.getService("navigator");
        Intent intentHandleSpecificPush = handleSpecificPush(new Intent("android.intent.action.VIEW", uri), pushPayload);
        if (NVApplication.CLIENT_TYPE == 101 && "ndc".equals(uri.getScheme())) {
            intentHandleSpecificPush.putExtra("__forward", true);
        }
        Intent intentIntentMapping = navigator.intentMapping(intentHandleSpecificPush);
        if (intentIntentMapping.getComponent() != null) {
            return intentIntentMapping;
        }
        return null;
    }

    private Intent handleSpecificPush(Intent intent, PushPayload pushPayload) {
        if (pushPayload.type == 66) {
            intent.putExtra(ApiRequest.MULTIPART_NAME_PAYLOAD, JacksonUtils.writeAsString(pushPayload));
        }
        return intent;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:114:0x02f1  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0394  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x01f5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01e3  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x021c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void showPushNotificationInteral(com.narvii.pushservice.PushPayload r22, android.content.Intent r23, android.app.PendingIntent r24, java.lang.Integer r25, java.lang.String r26, boolean r27) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 1296
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.pushservice.PushNotificationService.showPushNotificationInteral(com.narvii.pushservice.PushPayload, android.content.Intent, android.app.PendingIntent, java.lang.Integer, java.lang.String, boolean):void");
    }

    private void configCustomBuilder(NotificationCompat.Builder builder, Bitmap bitmap, String str, Bitmap bitmap2, String str2, String str3) {
        String string = this.context.getContext().getString(this.context.getContext().getApplicationInfo().labelRes);
        RemoteViews remoteViews = new RemoteViews(this.context.getContext().getPackageName(), R.layout.custom_notification_layout);
        remoteViews.setTextViewText(R.id.custom_notification_title, str2);
        remoteViews.setViewVisibility(R.id.custom_notification_title, TextUtils.isEmpty(str2) ? 8 : 0);
        remoteViews.setTextViewText(R.id.custom_notification_body, str3);
        remoteViews.setImageViewBitmap(R.id.custom_notification_thumbnail, bitmap);
        if (bitmap2 == null) {
            remoteViews.setImageViewResource(R.id.custom_notification_small_icon, R.drawable.ic_notify_ablue);
        } else {
            remoteViews.setImageViewBitmap(R.id.custom_notification_small_icon, bitmap2);
        }
        remoteViews.setTextViewText(R.id.custom_notification_title_text, string);
        remoteViews.setTextViewText(R.id.custom_notification_title_text2, str);
        remoteViews.setViewVisibility(R.id.custom_notification_title_text2, TextUtils.isEmpty(str) ? 8 : 0);
        remoteViews.setViewVisibility(R.id.custom_notification_title_dot, TextUtils.isEmpty(str) ? 8 : 0);
        builder.setStyle(null);
        builder.setCustomContentView(remoteViews);
    }

    ProxyStack getStack() {
        if (this.stack == null) {
            this.stack = new ProxyStack(this.context);
        }
        return this.stack;
    }

    /* JADX WARN: Removed duplicated region for block: B:144:0x009c A[EDGE_INSN: B:144:0x009c->B:35:0x009c BREAK  A[LOOP:0: B:18:0x005c->B:34:0x0097], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:148:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:149:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0050 A[Catch: all -> 0x023e, TryCatch #10 {all -> 0x023e, blocks: (B:13:0x0049, B:15:0x0050, B:17:0x0057, B:18:0x005c, B:20:0x0063, B:22:0x0069, B:24:0x006e, B:27:0x0075, B:29:0x0085, B:31:0x008a, B:36:0x009d, B:41:0x00b0, B:44:0x0120, B:54:0x019b, B:55:0x019e, B:68:0x01c5, B:70:0x01c8, B:72:0x01cc, B:77:0x0209, B:78:0x020c, B:87:0x021a, B:88:0x021d, B:93:0x0227, B:94:0x022a, B:95:0x022d, B:66:0x01bf, B:67:0x01c2, B:102:0x0237, B:103:0x023a, B:104:0x023d, B:42:0x00d8, B:43:0x0100, B:63:0x01b8, B:84:0x0213), top: B:140:0x0049, inners: #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0063 A[Catch: all -> 0x023e, TryCatch #10 {all -> 0x023e, blocks: (B:13:0x0049, B:15:0x0050, B:17:0x0057, B:18:0x005c, B:20:0x0063, B:22:0x0069, B:24:0x006e, B:27:0x0075, B:29:0x0085, B:31:0x008a, B:36:0x009d, B:41:0x00b0, B:44:0x0120, B:54:0x019b, B:55:0x019e, B:68:0x01c5, B:70:0x01c8, B:72:0x01cc, B:77:0x0209, B:78:0x020c, B:87:0x021a, B:88:0x021d, B:93:0x0227, B:94:0x022a, B:95:0x022d, B:66:0x01bf, B:67:0x01c2, B:102:0x0237, B:103:0x023a, B:104:0x023d, B:42:0x00d8, B:43:0x0100, B:63:0x01b8, B:84:0x0213), top: B:140:0x0049, inners: #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0100 A[Catch: all -> 0x023e, TryCatch #10 {all -> 0x023e, blocks: (B:13:0x0049, B:15:0x0050, B:17:0x0057, B:18:0x005c, B:20:0x0063, B:22:0x0069, B:24:0x006e, B:27:0x0075, B:29:0x0085, B:31:0x008a, B:36:0x009d, B:41:0x00b0, B:44:0x0120, B:54:0x019b, B:55:0x019e, B:68:0x01c5, B:70:0x01c8, B:72:0x01cc, B:77:0x0209, B:78:0x020c, B:87:0x021a, B:88:0x021d, B:93:0x0227, B:94:0x022a, B:95:0x022d, B:66:0x01bf, B:67:0x01c2, B:102:0x0237, B:103:0x023a, B:104:0x023d, B:42:0x00d8, B:43:0x0100, B:63:0x01b8, B:84:0x0213), top: B:140:0x0049, inners: #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0151 A[Catch: all -> 0x01a4, TRY_LEAVE, TryCatch #6 {all -> 0x01a4, blocks: (B:48:0x014d, B:50:0x0151), top: B:132:0x014d }] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01c8 A[Catch: all -> 0x023e, TryCatch #10 {all -> 0x023e, blocks: (B:13:0x0049, B:15:0x0050, B:17:0x0057, B:18:0x005c, B:20:0x0063, B:22:0x0069, B:24:0x006e, B:27:0x0075, B:29:0x0085, B:31:0x008a, B:36:0x009d, B:41:0x00b0, B:44:0x0120, B:54:0x019b, B:55:0x019e, B:68:0x01c5, B:70:0x01c8, B:72:0x01cc, B:77:0x0209, B:78:0x020c, B:87:0x021a, B:88:0x021d, B:93:0x0227, B:94:0x022a, B:95:0x022d, B:66:0x01bf, B:67:0x01c2, B:102:0x0237, B:103:0x023a, B:104:0x023d, B:42:0x00d8, B:43:0x0100, B:63:0x01b8, B:84:0x0213), top: B:140:0x0049, inners: #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0230  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void fetchPic(com.narvii.pushservice.PushPayload r17, android.graphics.Bitmap[] r18) {
        /*
            Method dump skipped, instructions count: 618
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.pushservice.PushNotificationService.fetchPic(com.narvii.pushservice.PushPayload, android.graphics.Bitmap[]):void");
    }

    File getIconDir() {
        if (this.iconDir == null) {
            File externalCacheDir = this.context.getContext().getExternalCacheDir();
            if (externalCacheDir == null || !externalCacheDir.isDirectory()) {
                externalCacheDir = this.context.getContext().getCacheDir();
            }
            this.iconDir = new File(externalCacheDir, "PushIcon");
        }
        return this.iconDir;
    }

    Bitmap getIconBitmap(int i) {
        File file = new File(getIconDir(), "x" + i);
        if (file.length() <= 0) {
            return null;
        }
        try {
            return BitmapFactory.decodeFile(file.getAbsolutePath());
        } catch (Exception unused) {
            return null;
        } catch (OutOfMemoryError e) {
            OomHelper.test(e);
            return null;
        }
    }

    private boolean isCommunityIconReady(int i) {
        if (i <= 0) {
            return true;
        }
        File iconDir = getIconDir();
        StringBuilder sb = new StringBuilder();
        sb.append("x");
        sb.append(i);
        return new File(iconDir, sb.toString()).length() > 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x024a  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x024f  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0229 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:109:0x01f4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:113:0x01ed A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:115:0x023c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0243 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0222 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:134:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:136:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:137:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01fb  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0230  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0235  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void fetchCommunity(int r17) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 595
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.pushservice.PushNotificationService.fetchCommunity(int):void");
    }
}
