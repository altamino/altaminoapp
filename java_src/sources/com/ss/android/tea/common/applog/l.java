package com.ss.android.tea.common.applog;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import com.bytedance.tea.common.utility.Logger;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static boolean f3137a = true;
    private static l k;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f3138b = "";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f3139c = "";
    private long d = -1;
    private int e = -1;
    private long f = -1;
    private boolean g = false;
    private boolean h = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private AtomicBoolean f3140i = new AtomicBoolean(false);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private WeakReference<Context> f3141j;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                l.this.q();
                l.this.t();
                l.this.s();
                l.this.o();
                l.this.f3140i.set(false);
            } catch (Throwable unused) {
            }
        }
    }

    public void h(boolean z6) {
        this.h = z6;
    }

    public boolean j() {
        return this.g;
    }

    public boolean l() {
        return this.h;
    }

    public boolean m() {
        return (this.d == -1 || this.f == -1) ? false : true;
    }

    public static l r(Context context) {
        if (k == null) {
            synchronized (l.class) {
                try {
                    if (k == null) {
                        k = new l(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return k;
    }

    public JSONObject b() {
        if (com.bytedance.tea.common.utility.d.a(this.f3138b) && com.bytedance.tea.common.utility.d.a(this.f3139c) && this.d == -1 && this.e == -1 && this.f == -1) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            if (!com.bytedance.tea.common.utility.d.a(this.f3138b)) {
                jSONObject.put("app_channel", this.f3138b);
            }
            if (!com.bytedance.tea.common.utility.d.a(this.f3139c)) {
                jSONObject.put("system_record_channel", this.f3139c);
            }
            long j6 = this.d;
            if (j6 != -1) {
                jSONObject.put("apk_create_time", j6);
            }
            int i10 = this.e;
            if (i10 != -1) {
                jSONObject.put("apk_shuffix_num", i10);
            }
            long j10 = this.f;
            if (j10 != -1) {
                jSONObject.put("system_create_time", j10);
            }
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public void d(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            this.f3138b = jSONObject.optString("app_channel", "");
            this.f3139c = jSONObject.optString("system_record_channel", "");
            this.d = jSONObject.optLong("apk_create_time", -1L);
            this.e = jSONObject.optInt("apk_shuffix_num", -1);
            this.f = jSONObject.optLong("system_create_time", -1L);
        } catch (Exception unused) {
        }
    }

    public void e(boolean z6) {
        this.g = z6;
        o();
    }

    public JSONObject f() {
        if (com.bytedance.tea.common.utility.d.a(this.f3139c)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            if (!com.bytedance.tea.common.utility.d.a(this.f3139c)) {
                jSONObject.put("system_record_channel", this.f3139c);
            }
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public void n() {
        if (this.f3141j.get() != null && this.f3140i.compareAndSet(false, true)) {
            new com.bytedance.tea.common.utility.b.b(new a(), "get_apk_install_info", true).a();
        }
    }

    public void o() {
        if (this.f3141j.get() == null) {
            return;
        }
        Context context = this.f3141j.get();
        JSONObject jSONObjectB = r(context).b();
        if (jSONObjectB != null) {
            try {
                if (Logger.debug()) {
                    Logger.d("CustomChannelHandler", "save appInstallJson = " + jSONObjectB);
                }
                synchronized ("custom_channels") {
                    jSONObjectB.put("has_send_app_info", this.g);
                    SharedPreferences.Editor editorEdit = context.getSharedPreferences("custom_channels", 0).edit();
                    editorEdit.putString("app_install_info", jSONObjectB.toString());
                    com.bytedance.tea.common.utility.c.a.a(editorEdit);
                }
            } catch (Exception unused) {
            }
        }
    }

    public void p() {
        if (this.f3141j.get() == null) {
            return;
        }
        Context context = this.f3141j.get();
        try {
            synchronized ("custom_channels") {
                try {
                    JSONObject jSONObject = new JSONObject(context.getSharedPreferences("custom_channels", 0).getString("app_install_info", ""));
                    r(context).d(jSONObject);
                    if (Logger.debug()) {
                        Logger.d("CustomChannelHandler", "load appInstallJson = " + jSONObject);
                    }
                    this.g = jSONObject.optBoolean("has_send_app_info", false);
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (Exception unused) {
        }
    }

    private l(Context context) {
        this.f3141j = new WeakReference<>(context.getApplicationContext());
    }

    private static long a(String str) {
        if (com.bytedance.tea.common.utility.d.a(str)) {
            return -1L;
        }
        try {
            File file = new File(str);
            if (!file.exists()) {
                return -1L;
            }
            return file.lastModified();
        } catch (Exception unused) {
            return -1L;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q() {
        if (Logger.debug()) {
            Logger.d("CustomChannelHandler", "getSystemRecordChannel");
        }
        if (com.bytedance.tea.common.utility.d.a(this.f3139c) && Logger.debug()) {
            Logger.d("CustomChannelHandler", "get mSystemRecordChannel = " + this.f3139c);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s() {
        if (Logger.debug()) {
            Logger.d("CustomChannelHandler", "getApkInfo");
        }
        if (this.f3141j.get() == null) {
            return;
        }
        String str = null;
        try {
            str = this.f3141j.get().getPackageManager().getApplicationInfo(this.f3141j.get().getPackageName(), 0).publicSourceDir;
            this.d = a(str) / 1000;
            if (Logger.debug()) {
                Logger.d("CustomChannelHandler", "get mApkCreateTime = " + this.d);
            }
        } catch (PackageManager.NameNotFoundException | Exception unused) {
        }
        if (str == null) {
            return;
        }
        try {
            Matcher matcher = Pattern.compile("(.*)-(\\d+)(.*)").matcher(str.trim());
            if (matcher.find()) {
                this.e = Integer.parseInt(matcher.group(2));
            } else {
                this.e = -1;
            }
            if (Logger.debug()) {
                Logger.d("CustomChannelHandler", "get mApkSuffixNum = " + this.e);
            }
        } catch (Exception unused2) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t() {
        if (Logger.debug()) {
            Logger.d("CustomChannelHandler", "getSystemCreateTime");
        }
        try {
            File file = new File("/system/app");
            if (file.isDirectory()) {
                File[] fileArrListFiles = file.listFiles();
                ArrayList arrayList = new ArrayList();
                int i10 = 0;
                for (File file2 : fileArrListFiles) {
                    if (file2.exists() && i10 < 5) {
                        arrayList.add(Long.valueOf(file2.lastModified() / 1000));
                        i10++;
                    }
                }
                Collections.sort(arrayList);
                this.f = ((Long) arrayList.get(arrayList.size() / 2)).longValue();
                if (Logger.debug()) {
                    Logger.d("CustomChannelHandler", "get mSystemCreateTime = " + this.f);
                }
            }
        } catch (Exception unused) {
        }
    }
}
