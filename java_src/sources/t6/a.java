package t6;

import android.net.Uri;
import android.text.TextUtils;
import com.bytedance.tea.common.utility.Logger;
import com.bytedance.tea.common.utility.NetworkClient;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import org.json.JSONObject;
import qa.y;

/* JADX INFO: loaded from: classes7.dex */
public class a implements Runnable {
    private static a e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f3348a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f3349b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private BlockingQueue<JSONObject> f3350c = new LinkedBlockingQueue();
    private com.bytedance.tea.common.utility.b.b d;

    public boolean b() {
        return this.f3349b;
    }

    public static a c() {
        if (e == null) {
            synchronized (a.class) {
                try {
                    if (e == null) {
                        e = new a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return e;
    }

    public void a(JSONObject jSONObject) {
        if (jSONObject == null || !this.f3349b) {
            return;
        }
        this.f3350c.add(jSONObject);
    }

    @Override // java.lang.Runnable
    public void run() {
        while (!Thread.interrupted() && this.f3349b && !TextUtils.isEmpty(this.f3348a)) {
            try {
                JSONObject jSONObjectTake = this.f3350c.take();
                if (jSONObjectTake != null) {
                    try {
                        Uri.Builder builderBuildUpon = Uri.parse(y.HTTP + this.f3348a + com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING).buildUpon();
                        builderBuildUpon.appendQueryParameter("parameter", jSONObjectTake.toString());
                        String str = NetworkClient.getDefault().get(builderBuildUpon.toString());
                        if ("success".equals(new JSONObject(str).opt("data"))) {
                            Logger.d("EventSender", "send success event = " + jSONObjectTake.toString() + " resJson = " + str);
                        } else {
                            Logger.d("EventSender", "send fail event = " + jSONObjectTake.toString() + " resJson = " + str);
                        }
                    } catch (Exception e2) {
                        Logger.d("EventSender", "send exception event = " + jSONObjectTake.toString() + " e = " + e2.getMessage());
                    }
                }
            } catch (Exception unused) {
                return;
            }
        }
    }

    private a() {
    }
}
