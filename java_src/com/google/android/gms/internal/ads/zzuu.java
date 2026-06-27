package com.google.android.gms.internal.ads;

import android.R;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.KeyguardManager;
import android.content.Context;
import android.graphics.Rect;
import android.os.PowerManager;
import android.os.Process;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.TextView;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

@zzard
@TargetApi(14)
/* loaded from: classes2.dex */
public final class zzuu extends Thread {
    private final Object lock;
    private boolean started;
    private final int zzbtz;
    private final int zzbub;
    private final boolean zzbuc;
    private boolean zzbuz;
    private boolean zzbva;
    private final zzup zzbvb;
    private final int zzbvc;
    private final int zzbvd;
    private final int zzbve;
    private final int zzbvf;
    private final int zzbvg;
    private final int zzbvh;
    private final String zzbvi;
    private final boolean zzbvj;
    private final boolean zzbvk;

    public zzuu() {
        this(new zzup());
    }

    @VisibleForTesting
    private zzuu(zzup zzupVar) {
        this.started = false;
        this.zzbuz = false;
        this.zzbva = false;
        this.zzbvb = zzupVar;
        this.lock = new Object();
        this.zzbtz = ((Integer) zzyt.zzpe().zzd(zzacu.zzcnb)).intValue();
        this.zzbvd = ((Integer) zzyt.zzpe().zzd(zzacu.zzcnc)).intValue();
        this.zzbub = ((Integer) zzyt.zzpe().zzd(zzacu.zzcnd)).intValue();
        this.zzbve = ((Integer) zzyt.zzpe().zzd(zzacu.zzcne)).intValue();
        this.zzbvf = ((Integer) zzyt.zzpe().zzd(zzacu.zzcng)).intValue();
        this.zzbvg = ((Integer) zzyt.zzpe().zzd(zzacu.zzcnh)).intValue();
        this.zzbvh = ((Integer) zzyt.zzpe().zzd(zzacu.zzcni)).intValue();
        this.zzbvc = ((Integer) zzyt.zzpe().zzd(zzacu.zzcnf)).intValue();
        this.zzbvi = (String) zzyt.zzpe().zzd(zzacu.zzcnk);
        this.zzbvj = ((Boolean) zzyt.zzpe().zzd(zzacu.zzcnl)).booleanValue();
        this.zzbuc = ((Boolean) zzyt.zzpe().zzd(zzacu.zzcnp)).booleanValue();
        this.zzbvk = ((Boolean) zzyt.zzpe().zzd(zzacu.zzcnq)).booleanValue();
        setName("ContentFetchTask");
    }

    public final void zzmv() {
        synchronized (this.lock) {
            if (this.started) {
                zzbad.zzdp("Content hash thread already started, quiting...");
            } else {
                this.started = true;
                start();
            }
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() throws InterruptedException {
        while (true) {
            try {
                if (zzmw()) {
                    Activity activity = com.google.android.gms.ads.internal.zzk.zzlj().getActivity();
                    if (activity == null) {
                        zzbad.zzdp("ContentFetchThread: no activity. Sleeping.");
                        zzmy();
                    } else if (activity != null) {
                        View viewFindViewById = null;
                        try {
                            if (activity.getWindow() != null && activity.getWindow().getDecorView() != null) {
                                viewFindViewById = activity.getWindow().getDecorView().findViewById(R.id.content);
                            }
                        } catch (Exception e) {
                            com.google.android.gms.ads.internal.zzk.zzlk().zza(e, "ContentFetchTask.extractContent");
                            zzbad.zzdp("Failed getting root view of activity. Content not extracted.");
                        }
                        if (viewFindViewById != null && viewFindViewById != null) {
                            viewFindViewById.post(new zzuv(this, viewFindViewById));
                        }
                    }
                } else {
                    zzbad.zzdp("ContentFetchTask: sleeping");
                    zzmy();
                }
                Thread.sleep(this.zzbvc * 1000);
            } catch (InterruptedException e2) {
                zzbad.zzc("Error in ContentFetchTask", e2);
            } catch (Exception e3) {
                zzbad.zzc("Error in ContentFetchTask", e3);
                com.google.android.gms.ads.internal.zzk.zzlk().zza(e3, "ContentFetchTask.run");
            }
            synchronized (this.lock) {
                while (this.zzbuz) {
                    try {
                        zzbad.zzdp("ContentFetchTask: waiting");
                        this.lock.wait();
                    } catch (InterruptedException unused) {
                    }
                }
            }
        }
    }

    @VisibleForTesting
    final void zzi(View view) {
        try {
            zzuo zzuoVar = new zzuo(this.zzbtz, this.zzbvd, this.zzbub, this.zzbve, this.zzbvf, this.zzbvg, this.zzbvh, this.zzbuc);
            Context context = com.google.android.gms.ads.internal.zzk.zzlj().getContext();
            if (context != null && !TextUtils.isEmpty(this.zzbvi)) {
                String str = (String) view.getTag(context.getResources().getIdentifier((String) zzyt.zzpe().zzd(zzacu.zzcnj), "id", context.getPackageName()));
                if (str != null && str.equals(this.zzbvi)) {
                    return;
                }
            }
            zzuy zzuyVarZza = zza(view, zzuoVar);
            zzuoVar.zzmt();
            if (zzuyVarZza.zzbvs == 0 && zzuyVarZza.zzbvt == 0) {
                return;
            }
            if (zzuyVarZza.zzbvt == 0 && zzuoVar.zzmu() == 0) {
                return;
            }
            if (zzuyVarZza.zzbvt == 0 && this.zzbvb.zza(zzuoVar)) {
                return;
            }
            this.zzbvb.zzc(zzuoVar);
        } catch (Exception e) {
            zzbad.zzc("Exception in fetchContentOnUIThread", e);
            com.google.android.gms.ads.internal.zzk.zzlk().zza(e, "ContentFetchTask.fetchContent");
        }
    }

    @VisibleForTesting
    private static boolean zzmw() {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        try {
            Context context = com.google.android.gms.ads.internal.zzk.zzlj().getContext();
            if (context == null) {
                return false;
            }
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            KeyguardManager keyguardManager = (KeyguardManager) context.getSystemService("keyguard");
            if (activityManager == null || keyguardManager == null || (runningAppProcesses = activityManager.getRunningAppProcesses()) == null) {
                return false;
            }
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (Process.myPid() == runningAppProcessInfo.pid) {
                    if (runningAppProcessInfo.importance != 100 || keyguardManager.inKeyguardRestrictedInputMode()) {
                        return false;
                    }
                    PowerManager powerManager = (PowerManager) context.getSystemService("power");
                    return powerManager == null ? false : powerManager.isScreenOn();
                }
            }
            return false;
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.zzk.zzlk().zza(th, "ContentFetchTask.isInForeground");
            return false;
        }
    }

    @VisibleForTesting
    private final zzuy zza(View view, zzuo zzuoVar) {
        boolean z;
        if (view == null) {
            return new zzuy(this, 0, 0);
        }
        boolean globalVisibleRect = view.getGlobalVisibleRect(new Rect());
        if ((view instanceof TextView) && !(view instanceof EditText)) {
            CharSequence text = ((TextView) view).getText();
            if (!TextUtils.isEmpty(text)) {
                zzuoVar.zzb(text.toString(), globalVisibleRect, view.getX(), view.getY(), view.getWidth(), view.getHeight());
                return new zzuy(this, 1, 0);
            }
            return new zzuy(this, 0, 0);
        }
        if ((view instanceof WebView) && !(view instanceof zzbgz)) {
            WebView webView = (WebView) view;
            if (PlatformVersion.isAtLeastKitKat()) {
                zzuoVar.zzmr();
                webView.post(new zzuw(this, zzuoVar, webView, globalVisibleRect));
                z = true;
            } else {
                z = false;
            }
            if (z) {
                return new zzuy(this, 0, 1);
            }
            return new zzuy(this, 0, 0);
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int i = 0;
            int i2 = 0;
            for (int i3 = 0; i3 < viewGroup.getChildCount(); i3++) {
                zzuy zzuyVarZza = zza(viewGroup.getChildAt(i3), zzuoVar);
                i += zzuyVarZza.zzbvs;
                i2 += zzuyVarZza.zzbvt;
            }
            return new zzuy(this, i, i2);
        }
        return new zzuy(this, 0, 0);
    }

    @VisibleForTesting
    final void zza(zzuo zzuoVar, WebView webView, String str, boolean z) {
        zzuoVar.zzmq();
        try {
            if (!TextUtils.isEmpty(str)) {
                String strOptString = new JSONObject(str).optString(MimeTypes.BASE_TYPE_TEXT);
                if (!this.zzbvj && !TextUtils.isEmpty(webView.getTitle())) {
                    String title = webView.getTitle();
                    StringBuilder sb = new StringBuilder(String.valueOf(title).length() + 1 + String.valueOf(strOptString).length());
                    sb.append(title);
                    sb.append("\n");
                    sb.append(strOptString);
                    zzuoVar.zza(sb.toString(), z, webView.getX(), webView.getY(), webView.getWidth(), webView.getHeight());
                } else {
                    zzuoVar.zza(strOptString, z, webView.getX(), webView.getY(), webView.getWidth(), webView.getHeight());
                }
            }
            if (zzuoVar.zzml()) {
                this.zzbvb.zzb(zzuoVar);
            }
        } catch (JSONException unused) {
            zzbad.zzdp("Json string may be malformed.");
        } catch (Throwable th) {
            zzbad.zzb("Failed to get webview content.", th);
            com.google.android.gms.ads.internal.zzk.zzlk().zza(th, "ContentFetchTask.processWebViewContent");
        }
    }

    public final zzuo zzmx() {
        return this.zzbvb.zzo(this.zzbvk);
    }

    public final void wakeup() {
        synchronized (this.lock) {
            this.zzbuz = false;
            this.lock.notifyAll();
            zzbad.zzdp("ContentFetchThread: wakeup");
        }
    }

    private final void zzmy() {
        synchronized (this.lock) {
            this.zzbuz = true;
            boolean z = this.zzbuz;
            StringBuilder sb = new StringBuilder(42);
            sb.append("ContentFetchThread: paused, mPause = ");
            sb.append(z);
            zzbad.zzdp(sb.toString());
        }
    }

    public final boolean zzmz() {
        return this.zzbuz;
    }
}
