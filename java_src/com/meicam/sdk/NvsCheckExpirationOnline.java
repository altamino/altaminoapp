package com.meicam.sdk;

import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class NvsCheckExpirationOnline {
    private static final String TAG = "Meicam";
    private static NvsCheckExpirationOnline m_checker;
    private Context mContext;
    private Handler mHandler;
    private Thread mThread;
    private Runnable runnable = new Runnable() { // from class: com.meicam.sdk.NvsCheckExpirationOnline.1
        @Override // java.lang.Runnable
        public void run() {
            if (NvsCheckExpirationOnline.this.mThread != null) {
                NvsCheckExpirationOnline.this.mThread.start();
            }
        }
    };

    public static NvsCheckExpirationOnline instance(Context context) {
        if (m_checker == null) {
            m_checker = new NvsCheckExpirationOnline(context);
        }
        return m_checker;
    }

    private NvsCheckExpirationOnline(Context context) {
        this.mContext = null;
        this.mHandler = null;
        this.mThread = null;
        this.mContext = context;
        this.mHandler = new Handler();
        this.mThread = new Thread(new Runnable() { // from class: com.meicam.sdk.NvsCheckExpirationOnline.2
            @Override // java.lang.Runnable
            public void run() throws JSONException {
                NvsCheckExpirationOnline.this.checkExpiration();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkExpiration() throws JSONException {
        NvsHttpsRequest nvsHttpsRequest = new NvsHttpsRequest();
        HashMap map = new HashMap();
        map.put("command", "isExpired");
        map.put("appId", this.mContext.getPackageName());
        try {
            JSONObject jSONObject = new JSONObject(nvsHttpsRequest.httpsRequest("https://api.meishesdk.com/license/index.php", map));
            if (jSONObject.getInt("errNo") != 0) {
                Log.e(TAG, "" + jSONObject.getString("errString"));
            } else if (jSONObject.getBoolean("isExpired")) {
                NvsSystemVariableManager.setSystemVariableInt(this.mContext, "isExpired", 1);
                NvsSystemVariableManager.setSystemVariableString(this.mContext, "lastTime", NvsTimeUtil.getCurrentTime());
            } else {
                NvsSystemVariableManager.setSystemVariableInt(this.mContext, "isExpired", 0);
                NvsSystemVariableManager.setSystemVariableString(this.mContext, "lastTime", NvsTimeUtil.getCurrentTime());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void startCheck() {
        int hourRange;
        Context context = this.mContext;
        if (context == null) {
            return;
        }
        String systemVariableString = NvsSystemVariableManager.getSystemVariableString(context, "lastTime");
        if (TextUtils.isEmpty(systemVariableString) || (hourRange = NvsTimeUtil.getHourRange(systemVariableString, NvsTimeUtil.getCurrentTime())) < 0 || hourRange > 24) {
            int randomTime = NvsTimeUtil.getRandomTime(30000, 60000);
            Handler handler = this.mHandler;
            if (handler != null) {
                handler.postDelayed(this.runnable, randomTime);
            }
        }
    }

    public void release() throws InterruptedException {
        if (m_checker == null) {
            return;
        }
        this.mContext = null;
        m_checker = null;
        this.mHandler.removeCallbacksAndMessages(null);
        try {
            this.mThread.join();
            this.mThread = null;
        } catch (Exception e) {
            Log.e(TAG, "" + e.getMessage());
            e.printStackTrace();
        }
    }
}
