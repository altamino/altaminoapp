package com.narvii.util;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.work.WorkRequest;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;
import com.narvii.util.statistics.TmpValue;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes7.dex */
public class ParamUtils {
    public static final int CAPSIZE = 150000;
    private static final long TMP_TIME = 5000;
    private static final HashMap<String, TmpValue<String>> directPassStrings = new HashMap<>();
    private static final AtomicInteger kgen = new AtomicInteger((int) (SystemClock.uptimeMillis() % WorkRequest.MIN_BACKOFF_MILLIS));
    private static final Runnable cleanTmp = new Runnable() { // from class: com.narvii.util.ParamUtils.1
        @Override // java.lang.Runnable
        public void run() {
            Iterator it = ParamUtils.directPassStrings.entrySet().iterator();
            while (it.hasNext()) {
                if (((TmpValue) ((Map.Entry) it.next()).getValue()).peek() == null) {
                    it.remove();
                }
            }
        }
    };

    public static boolean getBooleanParam(Fragment fragment, String str, boolean z6) {
        Uri uri;
        Bundle arguments = fragment.getArguments();
        if (arguments != null && arguments.containsKey(str)) {
            return arguments.getBoolean(str, z6);
        }
        if (arguments != null && arguments.containsKey("__url") && (uri = (Uri) arguments.getParcelable("__url")) != null) {
            try {
                String queryParameter = uri.getQueryParameter(str);
                if (queryParameter != null) {
                    return "1".equals(queryParameter) || "true".equals(queryParameter);
                }
            } catch (Exception unused) {
            }
        }
        if (arguments != null && arguments.getBoolean("__embed", false)) {
            return z6;
        }
        Fragment parentFragment = fragment.getParentFragment();
        if (parentFragment != null) {
            return getBooleanParam(parentFragment, str, z6);
        }
        FragmentActivity activity = fragment.getActivity();
        if (activity == null) {
            return z6;
        }
        return activity instanceof NVActivity ? ((NVActivity) activity).getBooleanParam(str, z6) : getBooleanParam(activity, str, z6);
    }

    public static int getIntParam(Fragment fragment, String str, int i10) {
        Uri uri;
        Bundle arguments = fragment.getArguments();
        if (arguments != null && arguments.containsKey(str)) {
            return arguments.getInt(str, i10);
        }
        if (arguments != null && arguments.containsKey("__url") && (uri = (Uri) arguments.getParcelable("__url")) != null) {
            try {
                String queryParameter = uri.getQueryParameter(str);
                if (queryParameter != null) {
                    return Integer.parseInt(queryParameter);
                }
            } catch (Exception unused) {
            }
        }
        if (arguments != null && arguments.getBoolean("__embed", false)) {
            return i10;
        }
        Fragment parentFragment = fragment.getParentFragment();
        if (parentFragment != null) {
            return getIntParam(parentFragment, str, i10);
        }
        FragmentActivity activity = fragment.getActivity();
        if (activity == null) {
            return i10;
        }
        return activity instanceof NVActivity ? ((NVActivity) activity).getIntParam(str, i10) : getIntParam(activity, str, i10);
    }

    public static String getStringParam(Fragment fragment, String str) {
        return getStringParam(fragment, str, true);
    }

    public static String getStringParam(Fragment fragment, String str, boolean z6) {
        Uri uri;
        Bundle arguments = fragment.getArguments();
        if (arguments != null && arguments.containsKey(str)) {
            return arguments.getString(str);
        }
        if (arguments != null && arguments.containsKey("__url") && (uri = (Uri) arguments.getParcelable("__url")) != null) {
            try {
                String queryParameter = uri.getQueryParameter(str);
                if (queryParameter != null) {
                    return queryParameter;
                }
            } catch (Exception unused) {
            }
        }
        if (z6 && arguments != null && arguments.getBoolean("__embed", false)) {
            return null;
        }
        Fragment parentFragment = fragment.getParentFragment();
        if (parentFragment != null) {
            return getStringParam(parentFragment, str);
        }
        FragmentActivity activity = fragment.getActivity();
        if (activity == null) {
            return null;
        }
        return activity instanceof NVActivity ? ((NVActivity) activity).getStringParam(str) : getStringParam(activity, str);
    }

    public static boolean processIntentNow(Intent intent) {
        boolean z6 = false;
        if (intent.getComponent() == null || !Utils.isEqualsNotNull(NVApplication.instance().getPackageName(), intent.getComponent().getPackageName())) {
            return false;
        }
        Bundle extras = intent.getExtras();
        int i10 = 0;
        int length = 0;
        for (String str : extras.keySet()) {
            if (!str.startsWith("_")) {
                Object obj = extras.get(str);
                if (obj instanceof String) {
                    String str2 = (String) obj;
                    if (str2.length() > 150000) {
                        String str3 = "__@@__" + kgen.incrementAndGet();
                        TmpValue<String> tmpValue = new TmpValue<>();
                        tmpValue.set(str2, 5000L);
                        directPassStrings.put(str3, tmpValue);
                        intent.putExtra(str, str3);
                        i10++;
                        length += str2.length();
                        z6 = true;
                    }
                }
            }
        }
        if (z6) {
            Log.w(i10 + " intent params with " + (length / 1000) + "kb is passing through memory");
            Handler handler = Utils.handler;
            Runnable runnable = cleanTmp;
            handler.removeCallbacks(runnable);
            Utils.postDelayed(runnable, 5000L);
        }
        return z6;
    }

    public static boolean getBooleanParam(Activity activity, String str, boolean z6) {
        return getBooleanParam(activity.getIntent(), str, z6);
    }

    public static int getIntParam(Activity activity, String str, int i10) {
        return getIntParam(activity.getIntent(), str, i10);
    }

    public static String getStringParam(Activity activity, String str) {
        return getStringParam(activity.getIntent(), str);
    }

    public static boolean getBooleanParam(Intent intent, String str, boolean z6) {
        if (intent.hasExtra(str)) {
            return intent.getBooleanExtra(str, z6);
        }
        try {
            String queryParameter = intent.getData().getQueryParameter(str);
            if (queryParameter.equals("1") || queryParameter.equals("true")) {
                return true;
            }
            return z6;
        } catch (Exception unused) {
        }
    }

    public static int getIntParam(Intent intent, String str, int i10) {
        if (intent.hasExtra(str)) {
            return intent.getIntExtra(str, i10);
        }
        try {
            Uri data = intent.getData();
            if (data != null) {
                return Integer.parseInt(data.getQueryParameter(str));
            }
        } catch (Exception unused) {
        }
        return i10;
    }

    public static String getStringParam(Intent intent, String str) {
        String stringExtra = intent.getStringExtra(str);
        if (stringExtra != null) {
            if (!stringExtra.startsWith("__@@__")) {
                return stringExtra;
            }
            TmpValue<String> tmpValue = directPassStrings.get(stringExtra);
            String andRemove = tmpValue != null ? tmpValue.getAndRemove() : null;
            if (andRemove == null) {
                StringBuilder sb = new StringBuilder();
                sb.append("intent passing is ");
                sb.append(tmpValue == null ? "lost" : "expired");
                sb.append(": ");
                sb.append(str);
                Log.w(sb.toString());
            }
            return andRemove;
        }
        Uri data = intent.getData();
        if (data != null) {
            try {
                return data.getQueryParameter(str);
            } catch (Exception unused) {
            }
        }
        return null;
    }
}
