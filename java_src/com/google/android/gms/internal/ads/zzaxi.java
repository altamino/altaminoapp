package com.google.android.gms.internal.ads;

import android.R;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.AlertDialog;
import android.app.KeyguardManager;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.os.Process;
import android.preference.PreferenceManager;
import android.support.customtabs.CustomTabsIntent;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.AdapterView;
import android.widget.PopupWindow;
import com.google.android.exoplayer2.C;
import com.google.android.gms.common.util.CrashUtils;
import com.google.android.gms.common.util.IOUtils;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.wrappers.Wrappers;
import com.narvii.pushservice.PushNotificationService;
import java.io.ByteArrayInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@zzard
/* loaded from: classes2.dex */
public final class zzaxi {
    public static final Handler zzdvv = new zzaxa(Looper.getMainLooper());
    private String zzapq;
    private AtomicReference<Pattern> zzdvt = new AtomicReference<>(null);
    private AtomicReference<Pattern> zzdvu = new AtomicReference<>(null);
    private boolean zzxt = true;
    private final Object zzdvw = new Object();
    private boolean zzdvx = false;
    private boolean zzdvy = false;

    public final void zza(Context context, String str, boolean z, HttpURLConnection httpURLConnection) {
        httpURLConnection.setConnectTimeout(60000);
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setReadTimeout(60000);
        httpURLConnection.setRequestProperty("User-Agent", zzq(context, str));
        httpURLConnection.setUseCaches(false);
    }

    public static boolean zzp(Context context, String str) {
        Context contextZzw = zzasq.zzw(context);
        return Wrappers.packageManager(contextZzw).checkPermission(str, contextZzw.getPackageName()) == 0;
    }

    public static void zzb(Context context, String str, String str2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(str2);
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            new zzazi(context, str, (String) obj).zzvi();
        }
    }

    public static String zza(InputStreamReader inputStreamReader) throws IOException {
        StringBuilder sb = new StringBuilder(8192);
        char[] cArr = new char[2048];
        while (true) {
            int i = inputStreamReader.read(cArr);
            if (i != -1) {
                sb.append(cArr, 0, i);
            } else {
                return sb.toString();
            }
        }
    }

    public final boolean zzak(Context context) {
        if (this.zzdvx) {
            return false;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        context.getApplicationContext().registerReceiver(new zzaxn(this, null), intentFilter);
        this.zzdvx = true;
        return true;
    }

    public final boolean zzal(Context context) {
        if (this.zzdvy) {
            return false;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.google.android.ads.intent.DEBUG_LOGGING_ENABLEMENT_CHANGED");
        context.getApplicationContext().registerReceiver(new zzaxm(this, null), intentFilter);
        this.zzdvy = true;
        return true;
    }

    public final void zza(Context context, String str, WebSettings webSettings) {
        webSettings.setUserAgentString(zzq(context, str));
    }

    private static String zzwa() {
        StringBuilder sb = new StringBuilder(256);
        sb.append("Mozilla/5.0 (Linux; U; Android");
        if (Build.VERSION.RELEASE != null) {
            sb.append(" ");
            sb.append(Build.VERSION.RELEASE);
        }
        sb.append("; ");
        sb.append(Locale.getDefault());
        if (Build.DEVICE != null) {
            sb.append("; ");
            sb.append(Build.DEVICE);
            if (Build.DISPLAY != null) {
                sb.append(" Build/");
                sb.append(Build.DISPLAY);
            }
        }
        sb.append(") AppleWebKit/533 Version/4.0 Safari/533");
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00a7 A[Catch: Exception -> 0x00b6, all -> 0x00d2, TRY_LEAVE, TryCatch #3 {Exception -> 0x00b6, blocks: (B:30:0x009d, B:32:0x00a7), top: B:50:0x009d, outer: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String zzq(android.content.Context r5, java.lang.String r6) {
        /*
            r4 = this;
            java.lang.Object r0 = r4.zzdvw
            monitor-enter(r0)
            java.lang.String r1 = r4.zzapq     // Catch: java.lang.Throwable -> Ld2
            if (r1 == 0) goto Lb
            java.lang.String r5 = r4.zzapq     // Catch: java.lang.Throwable -> Ld2
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Ld2
            return r5
        Lb:
            if (r6 != 0) goto L13
            java.lang.String r5 = zzwa()     // Catch: java.lang.Throwable -> Ld2
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Ld2
            return r5
        L13:
            com.google.android.gms.internal.ads.zzaxo r1 = com.google.android.gms.ads.internal.zzk.zzli()     // Catch: java.lang.Exception -> L1d java.lang.Throwable -> Ld2
            java.lang.String r1 = r1.getDefaultUserAgent(r5)     // Catch: java.lang.Exception -> L1d java.lang.Throwable -> Ld2
            r4.zzapq = r1     // Catch: java.lang.Exception -> L1d java.lang.Throwable -> Ld2
        L1d:
            java.lang.String r1 = r4.zzapq     // Catch: java.lang.Throwable -> Ld2
            boolean r1 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.Throwable -> Ld2
            if (r1 == 0) goto L6e
            com.google.android.gms.internal.ads.zzyt.zzpa()     // Catch: java.lang.Throwable -> Ld2
            boolean r1 = com.google.android.gms.internal.ads.zzazt.zzwy()     // Catch: java.lang.Throwable -> Ld2
            if (r1 != 0) goto L68
            r1 = 0
            r4.zzapq = r1     // Catch: java.lang.Throwable -> Ld2
            android.os.Handler r1 = com.google.android.gms.internal.ads.zzaxi.zzdvv     // Catch: java.lang.Throwable -> Ld2
            com.google.android.gms.internal.ads.zzaxk r2 = new com.google.android.gms.internal.ads.zzaxk     // Catch: java.lang.Throwable -> Ld2
            r2.<init>(r4, r5)     // Catch: java.lang.Throwable -> Ld2
            r1.post(r2)     // Catch: java.lang.Throwable -> Ld2
        L3b:
            java.lang.String r1 = r4.zzapq     // Catch: java.lang.Throwable -> Ld2
            if (r1 != 0) goto L6e
            java.lang.Object r1 = r4.zzdvw     // Catch: java.lang.InterruptedException -> L45 java.lang.Throwable -> Ld2
            r1.wait()     // Catch: java.lang.InterruptedException -> L45 java.lang.Throwable -> Ld2
            goto L3b
        L45:
            java.lang.String r1 = zzwa()     // Catch: java.lang.Throwable -> Ld2
            r4.zzapq = r1     // Catch: java.lang.Throwable -> Ld2
            java.lang.String r1 = "Interrupted, use default user agent: "
            java.lang.String r2 = r4.zzapq     // Catch: java.lang.Throwable -> Ld2
            java.lang.String r2 = java.lang.String.valueOf(r2)     // Catch: java.lang.Throwable -> Ld2
            int r3 = r2.length()     // Catch: java.lang.Throwable -> Ld2
            if (r3 == 0) goto L5e
            java.lang.String r1 = r1.concat(r2)     // Catch: java.lang.Throwable -> Ld2
            goto L64
        L5e:
            java.lang.String r2 = new java.lang.String     // Catch: java.lang.Throwable -> Ld2
            r2.<init>(r1)     // Catch: java.lang.Throwable -> Ld2
            r1 = r2
        L64:
            com.google.android.gms.internal.ads.zzbad.zzep(r1)     // Catch: java.lang.Throwable -> Ld2
            goto L3b
        L68:
            java.lang.String r1 = zzam(r5)     // Catch: java.lang.Throwable -> Ld2
            r4.zzapq = r1     // Catch: java.lang.Throwable -> Ld2
        L6e:
            java.lang.String r1 = r4.zzapq     // Catch: java.lang.Throwable -> Ld2
            java.lang.String r1 = java.lang.String.valueOf(r1)     // Catch: java.lang.Throwable -> Ld2
            java.lang.String r2 = java.lang.String.valueOf(r1)     // Catch: java.lang.Throwable -> Ld2
            int r2 = r2.length()     // Catch: java.lang.Throwable -> Ld2
            int r2 = r2 + 10
            java.lang.String r3 = java.lang.String.valueOf(r6)     // Catch: java.lang.Throwable -> Ld2
            int r3 = r3.length()     // Catch: java.lang.Throwable -> Ld2
            int r2 = r2 + r3
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Ld2
            r3.<init>(r2)     // Catch: java.lang.Throwable -> Ld2
            r3.append(r1)     // Catch: java.lang.Throwable -> Ld2
            java.lang.String r1 = " (Mobile; "
            r3.append(r1)     // Catch: java.lang.Throwable -> Ld2
            r3.append(r6)     // Catch: java.lang.Throwable -> Ld2
            java.lang.String r6 = r3.toString()     // Catch: java.lang.Throwable -> Ld2
            r4.zzapq = r6     // Catch: java.lang.Throwable -> Ld2
            com.google.android.gms.common.wrappers.PackageManagerWrapper r5 = com.google.android.gms.common.wrappers.Wrappers.packageManager(r5)     // Catch: java.lang.Exception -> Lb6 java.lang.Throwable -> Ld2
            boolean r5 = r5.isCallerInstantApp()     // Catch: java.lang.Exception -> Lb6 java.lang.Throwable -> Ld2
            if (r5 == 0) goto Lc0
            java.lang.String r5 = r4.zzapq     // Catch: java.lang.Exception -> Lb6 java.lang.Throwable -> Ld2
            java.lang.String r5 = java.lang.String.valueOf(r5)     // Catch: java.lang.Exception -> Lb6 java.lang.Throwable -> Ld2
            java.lang.String r6 = ";aia"
            java.lang.String r5 = r5.concat(r6)     // Catch: java.lang.Exception -> Lb6 java.lang.Throwable -> Ld2
            r4.zzapq = r5     // Catch: java.lang.Exception -> Lb6 java.lang.Throwable -> Ld2
            goto Lc0
        Lb6:
            r5 = move-exception
            com.google.android.gms.internal.ads.zzawm r6 = com.google.android.gms.ads.internal.zzk.zzlk()     // Catch: java.lang.Throwable -> Ld2
            java.lang.String r1 = "AdUtil.getUserAgent"
            r6.zza(r5, r1)     // Catch: java.lang.Throwable -> Ld2
        Lc0:
            java.lang.String r5 = r4.zzapq     // Catch: java.lang.Throwable -> Ld2
            java.lang.String r5 = java.lang.String.valueOf(r5)     // Catch: java.lang.Throwable -> Ld2
            java.lang.String r6 = ")"
            java.lang.String r5 = r5.concat(r6)     // Catch: java.lang.Throwable -> Ld2
            r4.zzapq = r5     // Catch: java.lang.Throwable -> Ld2
            java.lang.String r5 = r4.zzapq     // Catch: java.lang.Throwable -> Ld2
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Ld2
            return r5
        Ld2:
            r5 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Ld2
            goto Ld6
        Ld5:
            throw r5
        Ld6:
            goto Ld5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaxi.zzq(android.content.Context, java.lang.String):java.lang.String");
    }

    @VisibleForTesting
    protected static String zzam(Context context) {
        try {
            return new WebView(context).getSettings().getUserAgentString();
        } catch (Throwable unused) {
            return zzwa();
        }
    }

    public final JSONObject zzi(Map<String, ?> map) throws JSONException {
        try {
            JSONObject jSONObject = new JSONObject();
            for (String str : map.keySet()) {
                zza(jSONObject, str, map.get(str));
            }
            return jSONObject;
        } catch (ClassCastException e) {
            String strValueOf = String.valueOf(e.getMessage());
            throw new JSONException(strValueOf.length() != 0 ? "Could not convert map to JSON: ".concat(strValueOf) : new String("Could not convert map to JSON: "));
        }
    }

    public final JSONObject zza(Bundle bundle, JSONObject jSONObject) {
        if (bundle != null) {
            try {
                return zzd(bundle);
            } catch (JSONException e) {
                zzbad.zzc("Error converting Bundle to JSON", e);
            }
        }
        return null;
    }

    public final JSONObject zzd(Bundle bundle) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        for (String str : bundle.keySet()) {
            zza(jSONObject, str, bundle.get(str));
        }
        return jSONObject;
    }

    private final JSONArray zza(Collection<?> collection) throws JSONException {
        JSONArray jSONArray = new JSONArray();
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            zza(jSONArray, it.next());
        }
        return jSONArray;
    }

    private final void zza(JSONArray jSONArray, Object obj) throws JSONException {
        if (obj instanceof Bundle) {
            jSONArray.put(zzd((Bundle) obj));
            return;
        }
        if (obj instanceof Map) {
            jSONArray.put(zzi((Map<String, ?>) obj));
            return;
        }
        if (obj instanceof Collection) {
            jSONArray.put(zza((Collection<?>) obj));
            return;
        }
        if (obj instanceof Object[]) {
            JSONArray jSONArray2 = new JSONArray();
            for (Object obj2 : (Object[]) obj) {
                zza(jSONArray2, obj2);
            }
            jSONArray.put(jSONArray2);
            return;
        }
        jSONArray.put(obj);
    }

    private final void zza(JSONObject jSONObject, String str, Object obj) throws JSONException {
        if (obj instanceof Bundle) {
            jSONObject.put(str, zzd((Bundle) obj));
            return;
        }
        if (obj instanceof Map) {
            jSONObject.put(str, zzi((Map<String, ?>) obj));
            return;
        }
        if (obj instanceof Collection) {
            if (str == null) {
                str = PushNotificationService.NO_GROUP;
            }
            jSONObject.put(str, zza((Collection<?>) obj));
        } else if (obj instanceof Object[]) {
            jSONObject.put(str, zza(Arrays.asList((Object[]) obj)));
        } else {
            jSONObject.put(str, obj);
        }
    }

    private static int zza(char c) {
        if (c >= '0' && c <= '9') {
            return c - '0';
        }
        char c2 = 'A';
        if (c < 'A' || c > 'F') {
            c2 = 'a';
            if (c < 'a' || c > 'f') {
                throw new IllegalArgumentException("Invalid Hex.");
            }
        }
        return (c - c2) + 10;
    }

    public static Map<String, String> zzi(Uri uri) {
        if (!((Boolean) zzyt.zzpe().zzd(zzacu.zzcwv)).booleanValue()) {
            if (uri == null) {
                return null;
            }
            HashMap map = new HashMap();
            com.google.android.gms.ads.internal.zzk.zzli();
            for (String str : uri.getQueryParameterNames()) {
                map.put(str, uri.getQueryParameter(str));
            }
            return map;
        }
        if (uri == null) {
            return null;
        }
        HashMap map2 = new HashMap(20);
        String encodedQuery = uri.getEncodedQuery();
        if (encodedQuery == null) {
            return map2;
        }
        int length = encodedQuery.length();
        StringBuilder sb = new StringBuilder(100);
        StringBuilder sb2 = new StringBuilder(length);
        StringBuilder sb3 = sb;
        int i = 0;
        while (i < length) {
            char cCharAt = encodedQuery.charAt(i);
            if (cCharAt == '%') {
                byte[] bArr = new byte[(length - i) / 3];
                int i2 = 0;
                while (i < length - 2 && cCharAt == '%') {
                    try {
                        bArr[i2] = (byte) ((zza(encodedQuery.charAt(i + 1)) << 4) + zza(encodedQuery.charAt(i + 2)));
                        i2++;
                    } catch (IllegalArgumentException unused) {
                    }
                    i += 3;
                    if (i < length) {
                        cCharAt = encodedQuery.charAt(i);
                    }
                }
                try {
                    sb3.append(new String(bArr, 0, i2, C.UTF8_NAME));
                } catch (UnsupportedEncodingException unused2) {
                }
                if (cCharAt != '%') {
                }
            } else if (cCharAt == '&') {
                if (sb.length() > 0 && sb3 != sb) {
                    map2.put(sb.toString(), sb2.toString());
                    sb.setLength(0);
                    sb2.setLength(0);
                }
                sb3 = sb;
            } else if (cCharAt == '+') {
                sb3.append(' ');
            } else if (cCharAt == '=' && sb3 != sb2) {
                sb3 = sb2;
            } else {
                sb3.append(cCharAt);
            }
            i++;
        }
        if (sb.length() > 0 && sb3 != sb) {
            map2.put(sb.toString(), sb2.toString());
        }
        return map2;
    }

    public static String zzwb() {
        return UUID.randomUUID().toString();
    }

    public static int zzdy(String str) {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e) {
            String strValueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 22);
            sb.append("Could not parse value:");
            sb.append(strValueOf);
            zzbad.zzep(sb.toString());
            return 0;
        }
    }

    public static String zzwc() {
        String str = Build.MANUFACTURER;
        String str2 = Build.MODEL;
        if (str2.startsWith(str)) {
            return str2;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(str2).length());
        sb.append(str);
        sb.append(" ");
        sb.append(str2);
        return sb.toString();
    }

    private static int[] zzwd() {
        return new int[]{0, 0};
    }

    public static int[] zzd(Activity activity) {
        View viewFindViewById;
        Window window = activity.getWindow();
        return (window == null || (viewFindViewById = window.findViewById(R.id.content)) == null) ? zzwd() : new int[]{viewFindViewById.getWidth(), viewFindViewById.getHeight()};
    }

    public final int[] zze(Activity activity) {
        int[] iArrZzd = zzd(activity);
        return new int[]{zzyt.zzpa().zzb(activity, iArrZzd[0]), zzyt.zzpa().zzb(activity, iArrZzd[1])};
    }

    public final int[] zzf(Activity activity) {
        View viewFindViewById;
        Window window = activity.getWindow();
        int[] iArrZzwd = (window == null || (viewFindViewById = window.findViewById(R.id.content)) == null) ? zzwd() : new int[]{viewFindViewById.getTop(), viewFindViewById.getBottom()};
        return new int[]{zzyt.zzpa().zzb(activity, iArrZzwd[0]), zzyt.zzpa().zzb(activity, iArrZzwd[1])};
    }

    public static boolean zzdz(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.matches("([^\\s]+(\\.(?i)(jpg|png|gif|bmp|webp))$)");
    }

    public static DisplayMetrics zza(WindowManager windowManager) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics;
    }

    public static AlertDialog.Builder zzan(Context context) {
        return new AlertDialog.Builder(context);
    }

    public static zzacf zzao(Context context) {
        return new zzacf(context);
    }

    public static Bitmap zzk(View view) {
        view.setDrawingCacheEnabled(true);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(view.getDrawingCache());
        view.setDrawingCacheEnabled(false);
        return bitmapCreateBitmap;
    }

    public static PopupWindow zza(View view, int i, int i2, boolean z) {
        return new PopupWindow(view, i, i2, false);
    }

    public static String zzap(Context context) {
        List<ActivityManager.RunningTaskInfo> runningTasks;
        ActivityManager.RunningTaskInfo runningTaskInfo;
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            if (activityManager != null && (runningTasks = activityManager.getRunningTasks(1)) != null && !runningTasks.isEmpty() && (runningTaskInfo = runningTasks.get(0)) != null && runningTaskInfo.topActivity != null) {
                return runningTaskInfo.topActivity.getClassName();
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public static boolean zzaq(Context context) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            KeyguardManager keyguardManager = (KeyguardManager) context.getSystemService("keyguard");
            if (activityManager == null || keyguardManager == null || (runningAppProcesses = activityManager.getRunningAppProcesses()) == null) {
                return false;
            }
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (Process.myPid() == runningAppProcessInfo.pid) {
                    if (runningAppProcessInfo.importance != 100 || keyguardManager.inKeyguardRestrictedInputMode()) {
                        return true;
                    }
                    PowerManager powerManager = (PowerManager) context.getSystemService("power");
                    return !(powerManager == null ? false : powerManager.isScreenOn());
                }
            }
            return true;
        } catch (Throwable unused) {
        }
        return false;
    }

    public final void zza(Context context, String str, String str2, Bundle bundle, boolean z) {
        com.google.android.gms.ads.internal.zzk.zzlg();
        bundle.putString("device", zzwc());
        bundle.putString("eids", TextUtils.join(",", zzacu.zzqn()));
        zzyt.zzpa();
        zzazt.zza(context, str, str2, bundle, true, new zzaxl(this, context, str));
    }

    public static void zzd(Runnable runnable) {
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            runnable.run();
        } else {
            zzaxg.zzc(runnable);
        }
    }

    public static Bitmap zzl(View view) {
        if (view == null) {
            return null;
        }
        Bitmap bitmapZzn = zzn(view);
        return bitmapZzn == null ? zzm(view) : bitmapZzn;
    }

    private static Bitmap zzm(View view) {
        try {
            int width = view.getWidth();
            int height = view.getHeight();
            if (width != 0 && height != 0) {
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), Bitmap.Config.RGB_565);
                Canvas canvas = new Canvas(bitmapCreateBitmap);
                view.layout(0, 0, width, height);
                view.draw(canvas);
                return bitmapCreateBitmap;
            }
            zzbad.zzep("Width or height of view is zero");
            return null;
        } catch (RuntimeException e) {
            zzbad.zzc("Fail to capture the webview", e);
            return null;
        }
    }

    private static Bitmap zzn(View view) {
        try {
            boolean zIsDrawingCacheEnabled = view.isDrawingCacheEnabled();
            view.setDrawingCacheEnabled(true);
            Bitmap drawingCache = view.getDrawingCache();
            bitmapCreateBitmap = drawingCache != null ? Bitmap.createBitmap(drawingCache) : null;
            view.setDrawingCacheEnabled(zIsDrawingCacheEnabled);
        } catch (RuntimeException e) {
            zzbad.zzc("Fail to capture the web view", e);
        }
        return bitmapCreateBitmap;
    }

    public static void zza(Context context, Intent intent) {
        try {
            context.startActivity(intent);
        } catch (Throwable unused) {
            intent.addFlags(C.ENCODING_PCM_MU_LAW);
            context.startActivity(intent);
        }
    }

    public static int zzar(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        if (applicationInfo == null) {
            return 0;
        }
        return applicationInfo.targetSdkVersion;
    }

    public final boolean zza(View view, Context context) {
        Context applicationContext = context.getApplicationContext();
        return zza(view, applicationContext != null ? (PowerManager) applicationContext.getSystemService("power") : null, zzas(context));
    }

    private static KeyguardManager zzas(Context context) {
        Object systemService = context.getSystemService("keyguard");
        if (systemService == null || !(systemService instanceof KeyguardManager)) {
            return null;
        }
        return (KeyguardManager) systemService;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x001d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zza(android.view.View r4, android.os.PowerManager r5, android.app.KeyguardManager r6) {
        /*
            r3 = this;
            com.google.android.gms.internal.ads.zzaxi r0 = com.google.android.gms.ads.internal.zzk.zzlg()
            boolean r0 = r0.zzxt
            r1 = 1
            r2 = 0
            if (r0 != 0) goto L1d
            if (r6 != 0) goto Le
            r6 = 0
            goto L12
        Le:
            boolean r6 = r6.inKeyguardRestrictedInputMode()
        L12:
            if (r6 == 0) goto L1d
            boolean r6 = zzo(r4)
            if (r6 == 0) goto L1b
            goto L1d
        L1b:
            r6 = 0
            goto L1e
        L1d:
            r6 = 1
        L1e:
            int r0 = r4.getVisibility()
            if (r0 != 0) goto L63
            boolean r0 = r4.isShown()
            if (r0 == 0) goto L63
            if (r5 == 0) goto L35
            boolean r5 = r5.isScreenOn()
            if (r5 == 0) goto L33
            goto L35
        L33:
            r5 = 0
            goto L36
        L35:
            r5 = 1
        L36:
            if (r5 == 0) goto L63
            if (r6 == 0) goto L63
            com.google.android.gms.internal.ads.zzacj<java.lang.Boolean> r5 = com.google.android.gms.internal.ads.zzacu.zzcqh
            com.google.android.gms.internal.ads.zzacr r6 = com.google.android.gms.internal.ads.zzyt.zzpe()
            java.lang.Object r5 = r6.zzd(r5)
            java.lang.Boolean r5 = (java.lang.Boolean) r5
            boolean r5 = r5.booleanValue()
            if (r5 == 0) goto L62
            android.graphics.Rect r5 = new android.graphics.Rect
            r5.<init>()
            boolean r5 = r4.getLocalVisibleRect(r5)
            if (r5 != 0) goto L62
            android.graphics.Rect r5 = new android.graphics.Rect
            r5.<init>()
            boolean r4 = r4.getGlobalVisibleRect(r5)
            if (r4 == 0) goto L63
        L62:
            return r1
        L63:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaxi.zza(android.view.View, android.os.PowerManager, android.app.KeyguardManager):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0012  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean zzo(android.view.View r2) {
        /*
            android.view.View r2 = r2.getRootView()
            r0 = 0
            if (r2 == 0) goto L12
            android.content.Context r2 = r2.getContext()
            boolean r1 = r2 instanceof android.app.Activity
            if (r1 == 0) goto L12
            android.app.Activity r2 = (android.app.Activity) r2
            goto L13
        L12:
            r2 = r0
        L13:
            r1 = 0
            if (r2 != 0) goto L17
            return r1
        L17:
            android.view.Window r2 = r2.getWindow()
            if (r2 != 0) goto L1e
            goto L22
        L1e:
            android.view.WindowManager$LayoutParams r0 = r2.getAttributes()
        L22:
            if (r0 == 0) goto L2d
            int r2 = r0.flags
            r0 = 524288(0x80000, float:7.34684E-40)
            r2 = r2 & r0
            if (r2 == 0) goto L2d
            r2 = 1
            return r2
        L2d:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaxi.zzo(android.view.View):boolean");
    }

    @TargetApi(16)
    public static boolean zzat(Context context) {
        KeyguardManager keyguardManagerZzas;
        return context != null && PlatformVersion.isAtLeastJellyBean() && (keyguardManagerZzas = zzas(context)) != null && keyguardManagerZzas.isKeyguardLocked();
    }

    public static int zzp(View view) {
        if (view == null) {
            return -1;
        }
        ViewParent parent = view.getParent();
        while (parent != null && !(parent instanceof AdapterView)) {
            parent = parent.getParent();
        }
        if (parent == null) {
            return -1;
        }
        return ((AdapterView) parent).getPositionForView(view);
    }

    public static boolean zzau(Context context) {
        try {
            context.getClassLoader().loadClass("com.google.android.gms.ads.internal.ClientApi2");
            return false;
        } catch (ClassNotFoundException unused) {
            return true;
        } catch (Throwable th) {
            zzbad.zzc("Error loading class.", th);
            com.google.android.gms.ads.internal.zzk.zzlk().zza(th, "AdUtil.isLiteSdk");
            return false;
        }
    }

    @TargetApi(18)
    public static void zza(Context context, Uri uri) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW", uri);
            Bundle bundle = new Bundle();
            intent.putExtras(bundle);
            zzb(context, intent);
            bundle.putString("com.android.browser.application_id", context.getPackageName());
            context.startActivity(intent);
            String string = uri.toString();
            StringBuilder sb = new StringBuilder(String.valueOf(string).length() + 26);
            sb.append("Opening ");
            sb.append(string);
            sb.append(" in a new browser.");
            zzbad.zzdp(sb.toString());
        } catch (ActivityNotFoundException e) {
            zzbad.zzc("No browser is found.", e);
        }
    }

    @TargetApi(18)
    public static void zzb(Context context, Intent intent) {
        if (intent != null && PlatformVersion.isAtLeastJellyBeanMR2()) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            extras.putBinder(CustomTabsIntent.EXTRA_SESSION, null);
            extras.putString("com.android.browser.application_id", context.getPackageName());
            intent.putExtras(extras);
        }
    }

    public static void zzc(Context context, String str, String str2) throws IOException {
        try {
            FileOutputStream fileOutputStreamOpenFileOutput = context.openFileOutput(str, 0);
            fileOutputStreamOpenFileOutput.write(str2.getBytes(C.UTF8_NAME));
            fileOutputStreamOpenFileOutput.close();
        } catch (Exception e) {
            zzbad.zzc("Error writing to file in internal storage.", e);
        }
    }

    public static String zzr(Context context, String str) {
        try {
            return new String(IOUtils.readInputStreamFully(context.openFileInput(str), true), C.UTF8_NAME);
        } catch (IOException unused) {
            zzbad.zzdp("Error reading from internal storage.");
            return "";
        }
    }

    public final boolean zzea(String str) {
        return zza(str, this.zzdvt, (String) zzyt.zzpe().zzd(zzacu.zzcnt));
    }

    public final boolean zzeb(String str) {
        return zza(str, this.zzdvu, (String) zzyt.zzpe().zzd(zzacu.zzcnu));
    }

    private static boolean zza(String str, AtomicReference<Pattern> atomicReference, String str2) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            Pattern patternCompile = atomicReference.get();
            if (patternCompile == null || !str2.equals(patternCompile.pattern())) {
                patternCompile = Pattern.compile(str2);
                atomicReference.set(patternCompile);
            }
            return patternCompile.matcher(str).matches();
        } catch (PatternSyntaxException unused) {
            return false;
        }
    }

    public static String zzwe() {
        Resources resources = com.google.android.gms.ads.internal.zzk.zzlk().getResources();
        return resources != null ? resources.getString(com.google.android.gms.ads.impl.R.string.s7) : "Test Ad";
    }

    public static WebResourceResponse zzd(Context context, String str, String str2) throws ExecutionException, InterruptedException, TimeoutException {
        try {
            HashMap map = new HashMap();
            map.put("User-Agent", com.google.android.gms.ads.internal.zzk.zzlg().zzq(context, str));
            map.put("Cache-Control", "max-stale=3600");
            String str3 = new zzayu(context).zzc(str2, map).get(60L, TimeUnit.SECONDS);
            if (str3 != null) {
                return new WebResourceResponse("application/javascript", C.UTF8_NAME, new ByteArrayInputStream(str3.getBytes(C.UTF8_NAME)));
            }
            return null;
        } catch (IOException | InterruptedException | ExecutionException | TimeoutException e) {
            zzbad.zzd("Could not fetch MRAID JS.", e);
            return null;
        }
    }

    public static WebResourceResponse zzd(HttpURLConnection httpURLConnection) throws IOException {
        com.google.android.gms.ads.internal.zzk.zzlg();
        String contentType = httpURLConnection.getContentType();
        String strTrim = "";
        String strTrim2 = TextUtils.isEmpty(contentType) ? "" : contentType.split(";")[0].trim();
        com.google.android.gms.ads.internal.zzk.zzlg();
        String contentType2 = httpURLConnection.getContentType();
        if (!TextUtils.isEmpty(contentType2)) {
            String[] strArrSplit = contentType2.split(";");
            if (strArrSplit.length != 1) {
                int i = 1;
                while (true) {
                    if (i >= strArrSplit.length) {
                        break;
                    }
                    if (strArrSplit[i].trim().startsWith("charset")) {
                        String[] strArrSplit2 = strArrSplit[i].trim().split("=");
                        if (strArrSplit2.length > 1) {
                            strTrim = strArrSplit2[1].trim();
                            break;
                        }
                    }
                    i++;
                }
            }
        }
        String str = strTrim;
        Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
        HashMap map = new HashMap(headerFields.size());
        for (Map.Entry<String, List<String>> entry : headerFields.entrySet()) {
            if (entry.getKey() != null && entry.getValue() != null && entry.getValue().size() > 0) {
                map.put(entry.getKey(), entry.getValue().get(0));
            }
        }
        return com.google.android.gms.ads.internal.zzk.zzli().zza(strTrim2, str, httpURLConnection.getResponseCode(), httpURLConnection.getResponseMessage(), map, httpURLConnection.getInputStream());
    }

    public static void zza(Context context, Throwable th) {
        if (context == null) {
            return;
        }
        boolean zBooleanValue = false;
        try {
            zBooleanValue = ((Boolean) zzyt.zzpe().zzd(zzacu.zzclf)).booleanValue();
        } catch (IllegalStateException unused) {
        }
        if (zBooleanValue) {
            CrashUtils.addDynamiteErrorToDropBox(context, th);
        }
    }

    public static String zzav(Context context) {
        return !((Boolean) zzyt.zzpe().zzd(zzacu.zzcwm)).booleanValue() ? "" : context.getSharedPreferences("mobileads_consent", 0).getString("consent_string", "");
    }

    public static Bundle zzaw(Context context) {
        if (!((Boolean) zzyt.zzpe().zzd(zzacu.zzcwn)).booleanValue()) {
            return null;
        }
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        Bundle bundle = new Bundle();
        if (defaultSharedPreferences.contains("IABConsent_CMPPresent")) {
            bundle.putBoolean("IABConsent_CMPPresent", defaultSharedPreferences.getBoolean("IABConsent_CMPPresent", false));
        }
        String[] strArr = {"IABConsent_SubjectToGDPR", "IABConsent_ConsentString", "IABConsent_ParsedPurposeConsents", "IABConsent_ParsedVendorConsents"};
        for (int i = 0; i < 4; i++) {
            String str = strArr[i];
            if (defaultSharedPreferences.contains(str)) {
                bundle.putString(str, defaultSharedPreferences.getString(str, null));
            }
        }
        return bundle;
    }

    public static boolean zzax(Context context) {
        Window window;
        if ((context instanceof Activity) && (window = ((Activity) context).getWindow()) != null && window.getDecorView() != null) {
            Rect rect = new Rect();
            Rect rect2 = new Rect();
            window.getDecorView().getGlobalVisibleRect(rect, null);
            window.getDecorView().getWindowVisibleDisplayFrame(rect2);
            if (rect.bottom != 0 && rect2.bottom != 0 && rect.top == rect2.top) {
                return true;
            }
        }
        return false;
    }

    public static boolean zzec(String str) {
        if (!zzazx.isEnabled()) {
            return false;
        }
        if (!((Boolean) zzyt.zzpe().zzd(zzacu.zzcuo)).booleanValue()) {
            return false;
        }
        String str2 = (String) zzyt.zzpe().zzd(zzacu.zzcuq);
        if (!str2.isEmpty()) {
            for (String str3 : str2.split(";")) {
                if (str3.equals(str)) {
                    return false;
                }
            }
        }
        String str4 = (String) zzyt.zzpe().zzd(zzacu.zzcup);
        if (str4.isEmpty()) {
            return true;
        }
        for (String str5 : str4.split(";")) {
            if (str5.equals(str)) {
                return true;
            }
        }
        return false;
    }
}
