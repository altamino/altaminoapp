package com.narvii.pushservice;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Build;
import android.os.SystemClock;
import android.text.TextPaint;
import android.text.TextUtils;
import android.widget.RemoteViews;
import androidx.annotation.RequiresApi;
import androidx.core.app.NotificationCompat;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.ViewCompat;
import androidx.work.WorkRequest;
import com.narvii.account.AccountService;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.community.CommunityService;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.master.search.SearchPrefsHelper;
import com.narvii.model.Community;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.CommunityResponse;
import com.narvii.modulization.page.PageManager;
import com.narvii.navigator.Navigator;
import com.narvii.notification.channel.NotificationChannelHelper;
import com.narvii.services.AutostartServiceProvider;
import com.narvii.util.BlockingItem;
import com.narvii.util.Callback;
import com.narvii.util.DateTimeFormatter;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.PendingIntentUtils;
import com.narvii.util.SafeFileOutputStream;
import com.narvii.util.Utils;
import com.narvii.util.crashlytics.OomHelper;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.http.ProxyStack;
import com.narvii.util.image.BitmapUtils;
import com.narvii.util.image.NVImageLoader;
import com.narvii.util.statistics.TmpValue;
import com.narvii.volley.util.HurlConnectionHelper;
import com.narvii.widget.NVImageView;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.BufferUnderflowException;
import java.util.List;
import org.apache.commons.compress.archivers.cpio.CpioConstants;

/* JADX INFO: loaded from: classes9.dex */
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
    Callback<PushPayload> callback = new Callback() { // from class: com.narvii.pushservice.d
        @Override // com.narvii.util.Callback
        public final void call(Object obj) throws Throwable {
            this.f2654a.lambda$new$0((PushPayload) obj);
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

    public static class PushFrom {
        public PushPayload fromPushPayload;

        public PushFrom() {
        }

        public PushFrom(PushPayload pushPayload) {
            this.fromPushPayload = pushPayload;
        }
    }

    private boolean isCommunityIconReady(int i10) {
        if (i10 <= 0) {
            return true;
        }
        File iconDir = getIconDir();
        StringBuilder sb = new StringBuilder();
        sb.append("x");
        sb.append(i10);
        return new File(iconDir, sb.toString()).length() > 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(PushPayload pushPayload) throws Throwable {
        showPushNotification(pushPayload, null, null, null, null, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:134:0x037e  */
    /* JADX WARN: Code duplicated, block: B:168:0x046b  */
    /* JADX WARN: Code duplicated, block: B:170:0x0473  */
    /* JADX WARN: Code duplicated, block: B:173:0x0487  */
    /* JADX WARN: Code duplicated, block: B:176:0x0490  */
    /* JADX WARN: Code duplicated, block: B:179:0x0499  */
    /* JADX WARN: Code duplicated, block: B:183:0x04d7  */
    /* JADX WARN: Code duplicated, block: B:189:0x04ea  */
    /* JADX WARN: Code duplicated, block: B:205:? A[RETURN, SYNTHETIC] */
    public void showPushNotificationInteral(PushPayload pushPayload, Intent intent, PendingIntent pendingIntent, Integer num, String str, boolean z6) throws Throwable {
        Uri defaultUri;
        String str2;
        boolean z10;
        Bitmap bitmap;
        Bitmap bitmap2;
        Uri uri;
        boolean z11;
        Bitmap bitmap3;
        Uri uri2;
        int i10;
        boolean z12;
        Notification notification;
        Uri uri3;
        Intent intent2;
        boolean z13;
        final Notification notificationG;
        String str3;
        String str4;
        PushPayloadSet pushPayloadSet;
        Bitmap bitmap4;
        String strMessage = pushPayload.message(this.context);
        if (strMessage == null) {
            Log.i(TAG, "no push message, just ignore");
            return;
        }
        if (pushPayload.type == 18 && pushPayload.threadId != null) {
            this.chatPushNotificatonVavle.saveLastShownTime(pushPayload);
        }
        Uri uri4 = pushPayload.getUri();
        int notifyType = getNotifyType(pushPayload);
        int notifyId = getNotifyId(pushPayload, num);
        NotificationCompat.Builder builder = new NotificationCompat.Builder(this.context.getContext(), Build.VERSION.SDK_INT >= 26 ? getChannelId(pushPayload) : "");
        builder.t(true);
        builder.S(z6);
        boolean z14 = pushPayload.isChat() || isAppActive;
        if (z14) {
            builder.U(1);
        }
        if (pushPayload.aps.sound == null || SystemClock.elapsedRealtime() <= this.lastRing + 8000) {
            defaultUri = null;
        } else {
            this.lastRing = SystemClock.elapsedRealtime();
            try {
                Context context = this.context.getContext();
                String strSubstring = pushPayload.aps.sound;
                int iIndexOf = strSubstring.indexOf(46);
                if (iIndexOf > 0) {
                    strSubstring = strSubstring.substring(0, iIndexOf);
                }
                String packageName = context.getPackageName();
                if (context.getResources().getIdentifier(strSubstring, "raw", packageName) != 0) {
                    defaultUri = Uri.parse("android.resource://" + packageName + "/raw/" + strSubstring);
                } else {
                    defaultUri = null;
                }
            } catch (Exception unused) {
            }
            if (defaultUri == null) {
                defaultUri = RingtoneManager.getDefaultUri(2);
            }
        }
        boolean z15 = defaultUri != null || z14;
        builder.d0(defaultUri);
        builder.G(4);
        if (z15) {
            builder.k0(new long[]{0, 240});
        }
        if (!this.isMaster || pushPayload.ndcId <= 0) {
            str2 = null;
        } else {
            String string = this.pushCommunityNamePrefs.getString("x" + pushPayload.ndcId, null);
            if (TextUtils.isEmpty(string)) {
                Community community = ((CommunityService) this.context.getService(SearchPrefsHelper.PREFS_KEY_COMMUNITY)).getCommunity(pushPayload.ndcId);
                string = community == null ? null : community.name;
            }
            str2 = string;
        }
        String strTitle = pushPayload.title();
        if (strTitle == null) {
            strTitle = str2;
        }
        if (strTitle == null) {
            strTitle = this.context.getContext().getString(this.context.getContext().getApplicationInfo().labelRes);
        }
        String str5 = strTitle;
        builder.E(str5);
        builder.D(strMessage);
        builder.h0(strMessage);
        if (str == null) {
            builder.L("x" + pushPayload.ndcId);
            builder.t(true);
        } else if (!"null".equals(str)) {
            builder.L(str);
            builder.t(true);
        }
        if (intent == null && (notifyType == 1 || notifyType == 2)) {
            File file = new File(this.account.getDir(), "push_" + notifyId);
            if (file.length() > 0) {
                try {
                    pushPayloadSet = (PushPayloadSet) JacksonUtils.DEFAULT_MAPPER.readValue(file, PushPayloadSet.class);
                } catch (Exception e) {
                    Log.w(TAG, "fail to read push payload set from " + file, e);
                    pushPayloadSet = null;
                }
            } else {
                pushPayloadSet = null;
            }
            if (pushPayloadSet == null) {
                pushPayloadSet = new PushPayloadSet();
            }
            PushPayloadSet pushPayloadSet2 = pushPayloadSet;
            pushPayloadSet2.append(pushPayload);
            if (file.getParentFile().isDirectory()) {
                try {
                    JacksonUtils.DEFAULT_MAPPER.writeValue(file, pushPayloadSet2);
                } catch (Exception e2) {
                    Log.w(TAG, "fail to write push payload set to " + file, e2);
                }
            }
            pushPayloadSet2.setNotificationContent(this.context, builder);
            if (pushPayloadSet2.size() > 1) {
                if (notifyType == 2) {
                    if (str2 == null) {
                        builder.E(this.context.getContext().getString(R.string.pushservice_chat_title, Integer.valueOf(pushPayloadSet2.size())));
                    } else {
                        builder.E(this.context.getContext().getString(R.string.pushservice_chat_title_c, Integer.valueOf(pushPayloadSet2.size()), str2));
                    }
                    if (this.isMaster) {
                        uri4 = Uri.parse("ndc://x" + pushPayload.ndcId + "/my-chats");
                    } else {
                        uri4 = Uri.parse(PageManager.PAGE_MY_CHAT_URI);
                    }
                } else {
                    if (str2 == null) {
                        builder.E(this.context.getContext().getString(R.string.pushservice_normal_title, Integer.valueOf(pushPayloadSet2.size())));
                    } else {
                        builder.E(this.context.getContext().getString(R.string.pushservice_normal_title_c, Integer.valueOf(pushPayloadSet2.size()), str2));
                    }
                    if (this.isMaster) {
                        uri4 = Uri.parse("ndc://x" + pushPayload.ndcId + "/notifications");
                    } else {
                        uri4 = Uri.parse("ndc://notifications");
                    }
                }
                bitmap4 = null;
            } else if (hasPic(pushPayload)) {
                Bitmap[] bitmapArr = new Bitmap[1];
                fetchPic(pushPayload, bitmapArr);
                bitmap4 = bitmapArr[0];
            } else {
                bitmap4 = null;
            }
            bitmap3 = bitmap4;
            uri2 = uri4;
            bitmap = null;
        } else {
            if (hasPic(pushPayload)) {
                Bitmap[] bitmapArr2 = new Bitmap[2];
                fetchPic(pushPayload, bitmapArr2);
                bitmap2 = bitmapArr2[0];
                z10 = true;
                bitmap = bitmapArr2[1];
            } else {
                z10 = true;
                bitmap = null;
                bitmap2 = null;
            }
            try {
                if (strMessage.length() > 160) {
                    uri = uri4;
                } else {
                    Resources resources = this.context.getContext().getResources();
                    uri = uri4;
                    try {
                        float dimension = resources.getDimension(resources.getIdentifier("notification_text_size", "dimen", "android"));
                        int iMin = Math.min(resources.getDisplayMetrics().widthPixels, (int) Utils.dpToPx(this.context.getContext(), 475.0f));
                        TextPaint textPaint = new TextPaint();
                        textPaint.setTextSize(dimension);
                        if (textPaint.measureText(strMessage) <= (iMin * 82) / 100) {
                            z11 = false;
                        }
                    } catch (Exception unused2) {
                    }
                    if (bitmap != null || z11) {
                        NotificationCompat.BigTextStyle bigTextStyle = new NotificationCompat.BigTextStyle();
                        bigTextStyle.x(strMessage);
                        builder.f0(bigTextStyle);
                    } else {
                        NotificationCompat.BigPictureStyle bigPictureStyle = new NotificationCompat.BigPictureStyle();
                        bigPictureStyle.z(bitmap);
                        bigPictureStyle.B(strMessage);
                        builder.f0(bigPictureStyle);
                    }
                    bitmap3 = bitmap2;
                    uri2 = uri;
                }
                z11 = z10;
            } catch (Exception unused3) {
                uri = uri4;
            }
            if (bitmap != null) {
                NotificationCompat.BigTextStyle bigTextStyle2 = new NotificationCompat.BigTextStyle();
                bigTextStyle2.x(strMessage);
                builder.f0(bigTextStyle2);
            } else {
                NotificationCompat.BigTextStyle bigTextStyle3 = new NotificationCompat.BigTextStyle();
                bigTextStyle3.x(strMessage);
                builder.f0(bigTextStyle3);
            }
            bitmap3 = bitmap2;
            uri2 = uri;
        }
        Bitmap iconBitmap = getIconBitmap(pushPayload.ndcId);
        builder.a0(R.drawable.ic_notify);
        builder.z(NVApplication.CLIENT_TYPE == 200 ? -7120385 : this.context.getContext().getResources().getColor(R.color.color_notify));
        if (bitmap3 != null) {
            builder.N(bitmap3);
        } else if (this.isMaster) {
            builder.N(iconBitmap);
        }
        if (notifyType != 4 || bitmap3 == null || Build.VERSION.SDK_INT < 24) {
            i10 = notifyId;
            z12 = false;
            notification = null;
            uri3 = uri2;
        } else {
            notification = null;
            z12 = false;
            i10 = notifyId;
            uri3 = uri2;
            configCustomBuilder(builder, bitmap3, str2, iconBitmap, str5, strMessage);
            if (bitmap != null) {
                NotificationCompat.BigPictureStyle bigPictureStyle2 = new NotificationCompat.BigPictureStyle();
                bigPictureStyle2.z(bitmap);
                bigPictureStyle2.B(strMessage);
                builder.f0(bigPictureStyle2);
            }
        }
        try {
            if (intent == null) {
                if (uri3 != null) {
                    intent2 = getIntent(uri3, pushPayload);
                    if (intent2 == null) {
                        if ("ndc".equals(uri3.getScheme())) {
                            Log.w(TAG, "unable to mapping " + uri3 + ", use MAIN instead");
                            intent2 = this.context.getContext().getPackageManager().getLaunchIntentForPackage(this.context.getContext().getPackageName());
                        } else {
                            intent2 = new Intent("android.intent.action.VIEW", uri3);
                        }
                    }
                    if (!z13) {
                        intent2.putExtra("_pushIntent", true);
                        if (notifyType != 0) {
                            intent2.putExtra("_pushClearType", notifyType);
                            intent2.putExtra("_pushClearCid", pushPayload.ndcId);
                        }
                        if (!intent2.hasExtra(ExternalPostPreviewFragment.SOURCE)) {
                            intent2.putExtra(ExternalPostPreviewFragment.SOURCE, "Push");
                        }
                        str3 = pushPayload.trackId;
                        if (str3 != null) {
                            intent2.putExtra("_pushTrackId", str3);
                        }
                        str4 = pushPayload.url;
                        if (str4 != null) {
                            intent2.putExtra("_pushUrl", str4);
                        }
                        intent2.putExtra("_pushFrom", JacksonUtils.writeAsString(new PushFrom(pushPayload)));
                    }
                    intent2.addFlags(268435456);
                    builder.C(PendingIntent.getActivity(this.context.getContext(), ((-65536) & R.id.text) | (((int) SystemClock.elapsedRealtime()) & 65535), intent2, PendingIntentUtils.INSTANCE.getCurrentImmutableFlag(1207959552)));
                    if (pendingIntent != null) {
                        builder.H(pendingIntent);
                    }
                    notificationG = builder.g();
                    if (notificationG != null) {
                        final int i11 = i10;
                        Utils.post(new Runnable() { // from class: com.narvii.pushservice.PushNotificationService.3
                            @Override // java.lang.Runnable
                            public void run() {
                                try {
                                    PushNotificationService.this.notifiManager.notify(i11, notificationG);
                                } catch (Exception e6) {
                                    Log.e(PushNotificationService.TAG, "fail to notify notification", e6);
                                }
                            }
                        });
                    }
                }
                intent2 = this.context.getContext().getPackageManager().getLaunchIntentForPackage(this.context.getContext().getPackageName());
                z13 = true;
                if (!z13) {
                    intent2.putExtra("_pushIntent", true);
                    if (notifyType != 0) {
                        intent2.putExtra("_pushClearType", notifyType);
                        intent2.putExtra("_pushClearCid", pushPayload.ndcId);
                    }
                    if (!intent2.hasExtra(ExternalPostPreviewFragment.SOURCE)) {
                        intent2.putExtra(ExternalPostPreviewFragment.SOURCE, "Push");
                    }
                    str3 = pushPayload.trackId;
                    if (str3 != null) {
                        intent2.putExtra("_pushTrackId", str3);
                    }
                    str4 = pushPayload.url;
                    if (str4 != null) {
                        intent2.putExtra("_pushUrl", str4);
                    }
                    intent2.putExtra("_pushFrom", JacksonUtils.writeAsString(new PushFrom(pushPayload)));
                }
                intent2.addFlags(268435456);
                builder.C(PendingIntent.getActivity(this.context.getContext(), ((-65536) & R.id.text) | (((int) SystemClock.elapsedRealtime()) & 65535), intent2, PendingIntentUtils.INSTANCE.getCurrentImmutableFlag(1207959552)));
                if (pendingIntent != null) {
                    builder.H(pendingIntent);
                }
                notificationG = builder.g();
                if (notificationG != null) {
                    final int i12 = i10;
                    Utils.post(new Runnable() { // from class: com.narvii.pushservice.PushNotificationService.3
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                PushNotificationService.this.notifiManager.notify(i12, notificationG);
                            } catch (Exception e6) {
                                Log.e(PushNotificationService.TAG, "fail to notify notification", e6);
                            }
                        }
                    });
                }
            }
            intent2 = intent;
            notificationG = builder.g();
        } catch (Throwable th) {
            Log.e(TAG, "fail to build notification", th);
            notificationG = notification;
        }
        z13 = z12;
        if (!z13) {
            intent2.putExtra("_pushIntent", true);
            if (notifyType != 0) {
                intent2.putExtra("_pushClearType", notifyType);
                intent2.putExtra("_pushClearCid", pushPayload.ndcId);
            }
            if (!intent2.hasExtra(ExternalPostPreviewFragment.SOURCE)) {
                intent2.putExtra(ExternalPostPreviewFragment.SOURCE, "Push");
            }
            str3 = pushPayload.trackId;
            if (str3 != null) {
                intent2.putExtra("_pushTrackId", str3);
            }
            str4 = pushPayload.url;
            if (str4 != null) {
                intent2.putExtra("_pushUrl", str4);
            }
            intent2.putExtra("_pushFrom", JacksonUtils.writeAsString(new PushFrom(pushPayload)));
        }
        intent2.addFlags(268435456);
        builder.C(PendingIntent.getActivity(this.context.getContext(), ((-65536) & R.id.text) | (((int) SystemClock.elapsedRealtime()) & 65535), intent2, PendingIntentUtils.INSTANCE.getCurrentImmutableFlag(1207959552)));
        if (pendingIntent != null) {
            builder.H(pendingIntent);
        }
        if (notificationG != null) {
            final int i13 = i10;
            Utils.post(new Runnable() { // from class: com.narvii.pushservice.PushNotificationService.3
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        PushNotificationService.this.notifiManager.notify(i13, notificationG);
                    } catch (Exception e6) {
                        Log.e(PushNotificationService.TAG, "fail to notify notification", e6);
                    }
                }
            });
        }
    }

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, PushNotificationService pushNotificationService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, PushNotificationService pushNotificationService) {
        isAppActive = false;
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, PushNotificationService pushNotificationService) {
        isAppActive = true;
    }

    public void showPushNotification(PushPayload pushPayload) {
        if (pushPayload.type != 18 || pushPayload.threadId == null) {
            showPushNotification(pushPayload, null, null, null, null, false);
        } else {
            this.chatPushNotificatonVavle.checkShowNotification(pushPayload, this.callback);
        }
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, PushNotificationService pushNotificationService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, PushNotificationService pushNotificationService) {
    }

    @RequiresApi
    private void configCustomBuilder(NotificationCompat.Builder builder, Bitmap bitmap, String str, Bitmap bitmap2, String str2, String str3) {
        String string = this.context.getContext().getString(this.context.getContext().getApplicationInfo().labelRes);
        RemoteViews remoteViews = new RemoteViews(this.context.getContext().getPackageName(), R.layout.custom_notification_layout);
        int i10 = R.id.custom_notification_title;
        remoteViews.setTextViewText(i10, str2);
        remoteViews.setViewVisibility(i10, TextUtils.isEmpty(str2) ? 8 : 0);
        remoteViews.setTextViewText(R.id.custom_notification_body, str3);
        remoteViews.setImageViewBitmap(R.id.custom_notification_thumbnail, bitmap);
        if (bitmap2 == null) {
            remoteViews.setImageViewResource(R.id.custom_notification_small_icon, R.drawable.ic_notify_ablue);
        } else {
            remoteViews.setImageViewBitmap(R.id.custom_notification_small_icon, bitmap2);
        }
        remoteViews.setTextViewText(R.id.custom_notification_title_text, string);
        int i11 = R.id.custom_notification_title_text2;
        remoteViews.setTextViewText(i11, str);
        remoteViews.setViewVisibility(i11, TextUtils.isEmpty(str) ? 8 : 0);
        remoteViews.setViewVisibility(R.id.custom_notification_title_dot, TextUtils.isEmpty(str) ? 8 : 0);
        builder.f0(null);
        builder.F(remoteViews);
    }

    private int getNotifyId(PushPayload pushPayload, Integer num) {
        if (num != null) {
            return num.intValue();
        }
        int notifyType = getNotifyType(pushPayload);
        return this.isMaster ? notifyType | ((pushPayload.ndcId << 3) & NOTIFY_CID_MASK) : notifyType;
    }

    private Intent handleSpecificPush(Intent intent, PushPayload pushPayload) {
        if (pushPayload.type == 66) {
            intent.putExtra(ApiRequest.MULTIPART_NAME_PAYLOAD, JacksonUtils.writeAsString(pushPayload));
        }
        return intent;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean needGroup(PushPayload pushPayload) {
        PushPayloadSet pushPayloadSet = null;
        File file = new File(this.account.getDir(), "push_" + getNotifyId(pushPayload, null));
        if (file.length() > 0) {
            try {
                pushPayloadSet = (PushPayloadSet) JacksonUtils.DEFAULT_MAPPER.readValue(file, PushPayloadSet.class);
            } catch (Exception e) {
                Log.w(TAG, "fail to read push payload set from " + file, e);
            }
        }
        return pushPayloadSet != null;
    }

    @Override // com.narvii.services.ServiceProvider
    public PushNotificationService create(NVContext nVContext) {
        NVApplication nVApplicationInstance = NVApplication.instance();
        this.context = nVApplicationInstance;
        this.isMaster = NVApplication.CLIENT_TYPE == 100;
        this.account = (AccountService) nVApplicationInstance.getService("account");
        this.community = (CommunityService) this.context.getService(SearchPrefsHelper.PREFS_KEY_COMMUNITY);
        this.imageLoader = (NVImageLoader) this.context.getService("imageLoader");
        this.notifiManager = (NotificationManager) nVContext.getContext().getSystemService("notification");
        this.pushCommunityNamePrefs = nVContext.getContext().getSharedPreferences("push_cn", 0);
        this.dateTimeFormatter = DateTimeFormatter.getInstance(nVContext.getContext());
        this.chatPushNotificatonVavle = new ChatPushNotificationVavle();
        return this;
    }

    /* JADX WARN: Code duplicated, block: B:139:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:96:0x0229  */
    void fetchPic(PushPayload pushPayload, Bitmap[] bitmapArr) {
        File file;
        boolean z6;
        int i10;
        Bitmap bitmapOpenBitmapAtSize;
        Bitmap bitmapCropCenterAtSize;
        Bitmap bitmapOpenBitmapAtSize2;
        String str = pushPayload.picUrl;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            boolean zEndsWith = str.endsWith(".gif");
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            HttpURLConnection httpURLConnectionCreateConnection = new ProxyStack(this.context).createConnection(new URL(str));
            if (zEndsWith) {
                httpURLConnectionCreateConnection.addRequestProperty("Range", "bytes=0-122880");
            }
            httpURLConnectionCreateConnection.setConnectTimeout(15000);
            httpURLConnectionCreateConnection.setReadTimeout(15000);
            InputStream inputStream = HurlConnectionHelper.getInputStream(httpURLConnectionCreateConnection);
            File fileCreateTmpFile = Utils.createTmpFile();
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(fileCreateTmpFile);
                byte[] bArr = zEndsWith ? new byte[CpioConstants.C_ISSOCK] : null;
                byte[] bArr2 = new byte[4096];
                int i11 = 0;
                while (true) {
                    int i12 = inputStream.read(bArr2);
                    if (i12 != -1) {
                        fileOutputStream.write(bArr2, 0, i12);
                        if (bArr != null && i11 + i12 >= bArr.length) {
                            if (bArr.length < 122880) {
                                byte[] bArr3 = new byte[Math.min(122880, bArr.length * 2)];
                                System.arraycopy(bArr, 0, bArr3, 0, i11);
                                bArr = bArr3;
                            }
                        }
                        if (bArr != null) {
                            System.arraycopy(bArr2, 0, bArr, i11, i12);
                            i11 += i12;
                            try {
                                if (new GifDec().read(bArr, 0, i11) == 0) {
                                    z6 = true;
                                    break;
                                }
                            } catch (BufferUnderflowException unused) {
                                continue;
                            }
                        }
                    }
                    z6 = false;
                    break;
                }
                fileOutputStream.close();
                inputStream.close();
                httpURLConnectionCreateConnection.disconnect();
                if (!zEndsWith) {
                    Log.i(TAG, "push pic download in " + (SystemClock.elapsedRealtime() - jElapsedRealtime) + "ms " + str);
                } else if (z6) {
                    Log.i(TAG, "push gif download " + (i11 / 1024) + "k in " + (SystemClock.elapsedRealtime() - jElapsedRealtime) + "ms " + str);
                } else {
                    Log.w(TAG, "push gif download giveup at " + (i11 / 1024) + "k in " + (SystemClock.elapsedRealtime() - jElapsedRealtime) + "ms " + str);
                }
                int dimensionPixelSize = this.context.getContext().getResources().getDimensionPixelSize(android.R.dimen.notification_large_icon_width);
                int dimensionPixelSize2 = this.context.getContext().getResources().getDimensionPixelSize(android.R.dimen.notification_large_icon_height);
                try {
                    bitmapOpenBitmapAtSize = BitmapUtils.openBitmapAtSize(fileCreateTmpFile, dimensionPixelSize, dimensionPixelSize2);
                    try {
                        bitmapCropCenterAtSize = BitmapUtils.cropCenterAtSize(bitmapOpenBitmapAtSize, dimensionPixelSize, dimensionPixelSize2);
                        pushPayload = pushPayload;
                        i10 = 1;
                        try {
                            if (pushPayload.picType == 1) {
                                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize2, bitmapCropCenterAtSize.getConfig());
                                bitmapCreateBitmap.eraseColor(0);
                                Canvas canvas = new Canvas(bitmapCreateBitmap);
                                Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                                BitmapShader bitmapShader = new BitmapShader(bitmapCropCenterAtSize, tileMode, tileMode);
                                Paint paint = new Paint();
                                paint.setAntiAlias(true);
                                paint.setDither(true);
                                paint.setFilterBitmap(true);
                                paint.setShader(bitmapShader);
                                paint.setColor(SupportMenu.CATEGORY_MASK);
                                canvas.drawCircle(dimensionPixelSize * 0.5f, dimensionPixelSize2 * 0.5f, Math.min(dimensionPixelSize, dimensionPixelSize2) / 2, paint);
                                bitmapCropCenterAtSize.recycle();
                                bitmapCropCenterAtSize = bitmapCreateBitmap;
                            }
                            if (bitmapOpenBitmapAtSize != null && bitmapOpenBitmapAtSize != bitmapCropCenterAtSize) {
                                bitmapOpenBitmapAtSize.recycle();
                            }
                            bitmapArr = bitmapArr;
                            bitmapArr[0] = bitmapCropCenterAtSize;
                        } catch (Throwable th) {
                            th = th;
                            bitmapArr = bitmapArr;
                            try {
                                OomHelper.test(th);
                                if (bitmapOpenBitmapAtSize != null && bitmapOpenBitmapAtSize != bitmapCropCenterAtSize) {
                                    bitmapOpenBitmapAtSize.recycle();
                                }
                                bitmapArr[0] = bitmapCropCenterAtSize;
                            } catch (Throwable th2) {
                                if (bitmapOpenBitmapAtSize != null && bitmapOpenBitmapAtSize != bitmapCropCenterAtSize) {
                                    bitmapOpenBitmapAtSize.recycle();
                                }
                                bitmapArr[0] = bitmapCropCenterAtSize;
                                throw th2;
                            }
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        i10 = 1;
                        bitmapCropCenterAtSize = null;
                        OomHelper.test(th);
                        if (bitmapOpenBitmapAtSize != null) {
                            bitmapOpenBitmapAtSize.recycle();
                        }
                        bitmapArr[0] = bitmapCropCenterAtSize;
                        if (bitmapArr.length > i10) {
                            int iMin = Math.min(Math.min((int) Utils.dpToPx(this.context.getContext(), 450.0f), 1024), this.context.getContext().getResources().getDisplayMetrics().widthPixels);
                            int iRound = Math.round(iMin * 0.78f);
                            try {
                                bitmapOpenBitmapAtSize2 = BitmapUtils.openBitmapAtSize(fileCreateTmpFile, iMin, iRound);
                                try {
                                    Bitmap bitmapCropCenterAtSize2 = BitmapUtils.cropCenterAtSize(bitmapOpenBitmapAtSize2, iMin, iRound);
                                    if (bitmapOpenBitmapAtSize2 != null) {
                                        bitmapOpenBitmapAtSize2.recycle();
                                    }
                                    bitmapArr[i10] = bitmapCropCenterAtSize2;
                                } catch (Throwable th4) {
                                    th = th4;
                                    try {
                                        OomHelper.test(th);
                                        if (bitmapOpenBitmapAtSize2 != null) {
                                            bitmapOpenBitmapAtSize2.recycle();
                                        }
                                        bitmapArr[i10] = null;
                                    } catch (Throwable th5) {
                                        if (bitmapOpenBitmapAtSize2 != null) {
                                            bitmapOpenBitmapAtSize2.recycle();
                                        }
                                        bitmapArr[i10] = null;
                                        throw th5;
                                    }
                                }
                            } catch (Throwable th6) {
                                th = th6;
                                bitmapOpenBitmapAtSize2 = null;
                            }
                        }
                        if (fileCreateTmpFile != null) {
                            fileCreateTmpFile.delete();
                        }
                    }
                } catch (Throwable th7) {
                    th = th7;
                    i10 = 1;
                    bitmapOpenBitmapAtSize = null;
                }
                if (bitmapArr.length > i10 && pushPayload.picType == 0) {
                    int iMin2 = Math.min(Math.min((int) Utils.dpToPx(this.context.getContext(), 450.0f), 1024), this.context.getContext().getResources().getDisplayMetrics().widthPixels);
                    int iRound2 = Math.round(iMin2 * 0.78f);
                    bitmapOpenBitmapAtSize2 = BitmapUtils.openBitmapAtSize(fileCreateTmpFile, iMin2, iRound2);
                    Bitmap bitmapCropCenterAtSize3 = BitmapUtils.cropCenterAtSize(bitmapOpenBitmapAtSize2, iMin2, iRound2);
                    if (bitmapOpenBitmapAtSize2 != null && bitmapOpenBitmapAtSize2 != bitmapCropCenterAtSize3) {
                        bitmapOpenBitmapAtSize2.recycle();
                    }
                    bitmapArr[i10] = bitmapCropCenterAtSize3;
                }
                if (fileCreateTmpFile != null) {
                    fileCreateTmpFile.delete();
                }
            } catch (Throwable th8) {
                th = th8;
                file = fileCreateTmpFile;
                try {
                    Log.w(TAG, "push pic download fail " + str, th);
                    OomHelper.test(th);
                } finally {
                    if (file != null) {
                        file.delete();
                    }
                }
            }
        } catch (Throwable th9) {
            th = th9;
            file = null;
        }
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

    Bitmap getIconBitmap(int i10) {
        File file = new File(getIconDir(), "x" + i10);
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

    protected Intent getIntent(Uri uri, PushPayload pushPayload) {
        if (!pushPayload.isCurrenVersionPush(this.context.getContext())) {
            uri = Uri.parse("ndc://app-upgrade");
        }
        Intent intentIntentMapping = ((Navigator) this.context.getService("navigator")).intentMapping(handleSpecificPush(new Intent("android.intent.action.VIEW", uri), pushPayload));
        if (intentIntentMapping.getComponent() != null) {
            return intentIntentMapping;
        }
        return null;
    }

    ProxyStack getStack() {
        if (this.stack == null) {
            this.stack = new ProxyStack(this.context);
        }
        return this.stack;
    }

    protected boolean hasPic(PushPayload pushPayload) {
        int i10;
        return !TextUtils.isEmpty(pushPayload.picUrl) && ((i10 = pushPayload.picType) == 0 || i10 == 1);
    }

    /* JADX WARN: Code duplicated, block: B:100:0x01ea A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:104:0x0228 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:112:0x01e5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:123:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:126:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:62:0x01ef  */
    /* JADX WARN: Code duplicated, block: B:64:0x01f4  */
    /* JADX WARN: Code duplicated, block: B:81:0x0232  */
    /* JADX WARN: Code duplicated, block: B:83:0x0237  */
    /* JADX WARN: Code duplicated, block: B:94:0x022d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    void fetchCommunity(int i10) throws Throwable {
        Bitmap bitmap;
        HttpURLConnection httpURLConnectionCreateConnection;
        Bitmap bitmapLoadDiskCachedBitmap;
        Bitmap bitmap2;
        InputStream inputStream;
        if (i10 == 0) {
            return;
        }
        Community community = this.community.getCommunity(i10);
        if (community == null) {
            final BlockingItem blockingItem = new BlockingItem();
            ((ApiService) this.context.getService("api")).exec(ApiRequest.builder().path("community/info").scopeCommunityId(i10).build(), new ApiResponseListener<CommunityResponse>(CommunityResponse.class) { // from class: com.narvii.pushservice.PushNotificationService.4
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i11, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    blockingItem.put(Boolean.FALSE);
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, CommunityResponse communityResponse) throws Exception {
                    PushNotificationService.this.community.updateCommunity(communityResponse.community, true, communityResponse.timestamp);
                    blockingItem.put(Boolean.TRUE);
                }
            });
            Boolean bool = Boolean.FALSE;
            try {
                bool = (Boolean) blockingItem.tryTake(WorkRequest.MIN_BACKOFF_MILLIS);
            } catch (InterruptedException unused) {
            }
            if (bool == Boolean.TRUE) {
                community = this.community.getCommunity(i10);
            }
        }
        if (community == null) {
            return;
        }
        InputStream inputStream2 = null;
        bitmapCreateBitmap = null;
        bitmapCreateBitmap = null;
        Bitmap bitmapCreateBitmap = null;
        inputStream2 = null;
        inputStream = null;
        inputStream2 = null;
        inputStream2 = null;
        inputStream = null;
        inputStream2 = null;
        inputStream2 = null;
        InputStream inputStream3 = null;
        if (!Utils.isEqualsNotNull(this.pushCommunityNamePrefs.getString("x" + community.id, null), community.name)) {
            this.pushCommunityNamePrefs.edit().putString("x" + community.id, community.name).apply();
        }
        int dimensionPixelSize = this.context.getContext().getResources().getDimensionPixelSize(android.R.dimen.notification_large_icon_width);
        int dimensionPixelSize2 = this.context.getContext().getResources().getDimensionPixelSize(android.R.dimen.notification_large_icon_height);
        File iconDir = getIconDir();
        try {
            String str = community.id + "|" + community.icon + "|" + dimensionPixelSize + "|" + dimensionPixelSize2;
            File file = new File(iconDir, "x" + community.id + ".info");
            if (str.equals(Utils.readStringFromFile(file))) {
                return;
            }
            String strFitSize = NVImageView.fitSize(community.icon, NVImageView.TYPE_COMMUNITY_ICON, dimensionPixelSize, dimensionPixelSize2);
            NVImageLoader nVImageLoader = this.imageLoader;
            if (nVImageLoader == null) {
                bitmapLoadDiskCachedBitmap = null;
            } else {
                bitmapLoadDiskCachedBitmap = nVImageLoader.loadDiskCachedBitmap(strFitSize);
            }
            if (bitmapLoadDiskCachedBitmap == null) {
                try {
                    httpURLConnectionCreateConnection = getStack().createConnection(new URL(strFitSize));
                    try {
                        inputStream = HurlConnectionHelper.getInputStream(httpURLConnectionCreateConnection);
                        try {
                            bitmapLoadDiskCachedBitmap = BitmapFactory.decodeStream(inputStream);
                        } catch (Exception e) {
                            e = e;
                            bitmap = bitmapCreateBitmap;
                            inputStream2 = inputStream;
                        } catch (OutOfMemoryError unused2) {
                            bitmap2 = bitmapCreateBitmap;
                            inputStream3 = inputStream;
                            if (inputStream3 != null) {
                                try {
                                    inputStream3.close();
                                } catch (Exception unused3) {
                                }
                            }
                            if (httpURLConnectionCreateConnection != null) {
                                try {
                                    httpURLConnectionCreateConnection.disconnect();
                                } catch (Exception unused4) {
                                }
                            }
                            if (bitmapLoadDiskCachedBitmap != null) {
                                bitmapLoadDiskCachedBitmap.recycle();
                            }
                            if (bitmap2 != null) {
                                bitmap2.recycle();
                                return;
                            }
                            return;
                        } catch (Throwable th) {
                            th = th;
                            bitmap = bitmapCreateBitmap;
                            inputStream2 = inputStream;
                            if (inputStream2 != null) {
                                try {
                                    inputStream2.close();
                                } catch (Exception unused5) {
                                }
                            }
                            if (httpURLConnectionCreateConnection != null) {
                                try {
                                    httpURLConnectionCreateConnection.disconnect();
                                } catch (Exception unused6) {
                                }
                            }
                            if (bitmapLoadDiskCachedBitmap != null) {
                                bitmapLoadDiskCachedBitmap.recycle();
                            }
                            if (bitmap != null) {
                                bitmap.recycle();
                                throw th;
                            }
                            throw th;
                        }
                    } catch (Exception e2) {
                        e = e2;
                        bitmap = null;
                    } catch (OutOfMemoryError unused7) {
                        bitmap2 = null;
                        if (inputStream3 != null) {
                            inputStream3.close();
                        }
                        if (httpURLConnectionCreateConnection != null) {
                            httpURLConnectionCreateConnection.disconnect();
                        }
                        if (bitmapLoadDiskCachedBitmap != null) {
                            bitmapLoadDiskCachedBitmap.recycle();
                        }
                        if (bitmap2 != null) {
                            bitmap2.recycle();
                            return;
                        }
                        return;
                    } catch (Throwable th2) {
                        th = th2;
                        bitmap = null;
                        if (inputStream2 != null) {
                            inputStream2.close();
                        }
                        if (httpURLConnectionCreateConnection != null) {
                            httpURLConnectionCreateConnection.disconnect();
                        }
                        if (bitmapLoadDiskCachedBitmap != null) {
                            bitmapLoadDiskCachedBitmap.recycle();
                        }
                        if (bitmap != null) {
                            bitmap.recycle();
                            throw th;
                        }
                        throw th;
                    }
                } catch (Exception e6) {
                    e = e6;
                    bitmap = null;
                    httpURLConnectionCreateConnection = null;
                } catch (OutOfMemoryError unused8) {
                    bitmap2 = null;
                    httpURLConnectionCreateConnection = null;
                } catch (Throwable th3) {
                    th = th3;
                    bitmap = null;
                    httpURLConnectionCreateConnection = null;
                }
            } else {
                httpURLConnectionCreateConnection = null;
                inputStream = null;
            }
            bitmapCreateBitmap = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize2, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            Path path = new Path();
            float f = dimensionPixelSize;
            float f6 = dimensionPixelSize2;
            RectF rectF = new RectF(0.0f, 0.0f, f, f6);
            path.addRoundRect(rectF, f * 0.2f, f6 * 0.2f, Path.Direction.CCW);
            canvas.clipPath(path);
            Rect rect = new Rect(0, 0, bitmapLoadDiskCachedBitmap.getWidth(), bitmapLoadDiskCachedBitmap.getHeight());
            Paint paint = new Paint();
            paint.setAntiAlias(true);
            paint.setColor(ViewCompat.MEASURED_STATE_MASK);
            canvas.drawBitmap(bitmapLoadDiskCachedBitmap, rect, rectF, paint);
            iconDir.mkdirs();
            SafeFileOutputStream safeFileOutputStream = new SafeFileOutputStream(new File(iconDir, "x" + community.id));
            bitmapCreateBitmap.compress(Bitmap.CompressFormat.PNG, 100, safeFileOutputStream);
            safeFileOutputStream.close();
            Utils.writeToFile(file, str);
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (Exception unused9) {
                }
            }
            if (httpURLConnectionCreateConnection != null) {
                try {
                    httpURLConnectionCreateConnection.disconnect();
                } catch (Exception unused10) {
                }
            }
            bitmapLoadDiskCachedBitmap.recycle();
            bitmapCreateBitmap.recycle();
            return;
        } catch (Exception e7) {
            e = e7;
            bitmap = null;
            httpURLConnectionCreateConnection = null;
            bitmapLoadDiskCachedBitmap = null;
        } catch (OutOfMemoryError unused11) {
            bitmap2 = null;
            httpURLConnectionCreateConnection = null;
            bitmapLoadDiskCachedBitmap = null;
        } catch (Throwable th4) {
            th = th4;
            bitmap = null;
            httpURLConnectionCreateConnection = null;
            bitmapLoadDiskCachedBitmap = null;
        }
        try {
            Log.w(TAG, "fail to cache icon for x" + community.id, e);
            if (inputStream2 != null) {
                try {
                    inputStream2.close();
                } catch (Exception unused12) {
                }
            }
            if (httpURLConnectionCreateConnection != null) {
                try {
                    httpURLConnectionCreateConnection.disconnect();
                } catch (Exception unused13) {
                }
            }
            if (bitmapLoadDiskCachedBitmap != null) {
                bitmapLoadDiskCachedBitmap.recycle();
            }
            if (bitmap != null) {
                bitmap.recycle();
            }
        } catch (Throwable th5) {
            th = th5;
            if (inputStream2 != null) {
                inputStream2.close();
            }
            if (httpURLConnectionCreateConnection != null) {
                httpURLConnectionCreateConnection.disconnect();
            }
            if (bitmapLoadDiskCachedBitmap != null) {
                bitmapLoadDiskCachedBitmap.recycle();
            }
            if (bitmap != null) {
                bitmap.recycle();
                throw th;
            }
            throw th;
        }
    }

    protected int getNotifyType(PushPayload pushPayload) {
        if (pushPayload.isMarketing()) {
            return 4;
        }
        if (pushPayload.isChat()) {
            return 2;
        }
        return 1;
    }

    public void showPushNotification(final PushPayload pushPayload, final Intent intent, final PendingIntent pendingIntent, final Integer num, final String str, final boolean z6) throws Throwable {
        if (pushPayload == null) {
            return;
        }
        boolean z10 = hasPic(pushPayload) && !pushPayload.picDownloaded;
        boolean zIsCommunityIconReady = true ^ isCommunityIconReady(pushPayload.ndcId);
        if (z10) {
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
                    PushNotificationService.this.showPushNotificationInteral(pushPayload4, intent, pendingIntent, num, str, z6);
                }
            }.start();
        } else if (zIsCommunityIconReady) {
            new Thread("push-communtiy") { // from class: com.narvii.pushservice.PushNotificationService.2
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() throws Throwable {
                    super.run();
                    PushNotificationService.this.fetchCommunity(pushPayload.ndcId);
                    PushNotificationService.this.showPushNotificationInteral(pushPayload, intent, pendingIntent, num, str, z6);
                }
            }.start();
        } else {
            showPushNotificationInteral(pushPayload, intent, pendingIntent, num, str, z6);
        }
    }
}
