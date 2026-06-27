package com.narvii.util;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.SystemClock;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;
import com.narvii.util.statistics.TmpValue;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes3.dex */
public class ParamUtils {
    public static final int CAPSIZE = 150000;
    private static final long TMP_TIME = 5000;
    private static final HashMap<String, TmpValue<String>> directPassStrings = new HashMap<>();
    private static final AtomicInteger kgen = new AtomicInteger((int) (SystemClock.uptimeMillis() % 10000));
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

    public static boolean processIntentNow(Intent intent) {
        boolean z = false;
        if (intent.getComponent() == null || !Utils.isEqualsNotNull(NVApplication.instance().getPackageName(), intent.getComponent().getPackageName())) {
            return false;
        }
        Bundle extras = intent.getExtras();
        int i = 0;
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
                        i++;
                        length += str2.length();
                        z = true;
                    }
                }
            }
        }
        if (z) {
            Log.w(i + " intent params with " + (length / 1000) + "kb is passing through memory");
            Utils.handler.removeCallbacks(cleanTmp);
            Utils.postDelayed(cleanTmp, 5000L);
        }
        return z;
    }

    public static String getStringParam(Fragment fragment, String str) {
        return getStringParam(fragment, str, true);
    }

    public static String getStringParam(Fragment fragment, String str, boolean z) {
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
        if (z && arguments != null && arguments.getBoolean("__embed", false)) {
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
        if (activity instanceof NVActivity) {
            return ((NVActivity) activity).getStringParam(str);
        }
        return getStringParam(activity, str);
    }

    public static String getStringParam(Activity activity, String str) {
        return getStringParam(activity.getIntent(), str);
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

    public static int getIntParam(Fragment fragment, String str, int i) {
        Uri uri;
        Bundle arguments = fragment.getArguments();
        if (arguments != null && arguments.containsKey(str)) {
            return arguments.getInt(str, i);
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
            return i;
        }
        Fragment parentFragment = fragment.getParentFragment();
        if (parentFragment != null) {
            return getIntParam(parentFragment, str, i);
        }
        FragmentActivity activity = fragment.getActivity();
        if (activity == null) {
            return i;
        }
        if (activity instanceof NVActivity) {
            return ((NVActivity) activity).getIntParam(str, i);
        }
        return getIntParam(activity, str, i);
    }

    public static int getIntParam(Activity activity, String str, int i) {
        return getIntParam(activity.getIntent(), str, i);
    }

    public static int getIntParam(Intent intent, String str, int i) {
        if (intent.hasExtra(str)) {
            return intent.getIntExtra(str, i);
        }
        try {
            Uri data = intent.getData();
            if (data != null) {
                return Integer.parseInt(data.getQueryParameter(str));
            }
        } catch (Exception unused) {
        }
        return i;
    }

    public static boolean getBooleanParam(Fragment fragment, String str, boolean z) {
        Uri uri;
        Bundle arguments = fragment.getArguments();
        if (arguments != null && arguments.containsKey(str)) {
            return arguments.getBoolean(str, z);
        }
        if (arguments != null && arguments.containsKey("__url") && (uri = (Uri) arguments.getParcelable("__url")) != null) {
            try {
                String queryParameter = uri.getQueryParameter(str);
                if (queryParameter != null) {
                    if (!IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE.equals(queryParameter)) {
                        if (!"true".equals(queryParameter)) {
                            return false;
                        }
                    }
                    return true;
                }
            } catch (Exception unused) {
            }
        }
        if (arguments != null && arguments.getBoolean("__embed", false)) {
            return z;
        }
        Fragment parentFragment = fragment.getParentFragment();
        if (parentFragment != null) {
            return getBooleanParam(parentFragment, str, z);
        }
        FragmentActivity activity = fragment.getActivity();
        if (activity == null) {
            return z;
        }
        if (activity instanceof NVActivity) {
            return ((NVActivity) activity).getBooleanParam(str, z);
        }
        return getBooleanParam(activity, str, z);
    }

    public static boolean getBooleanParam(Activity activity, String str, boolean z) {
        return getBooleanParam(activity.getIntent(), str, z);
    }

    public static boolean getBooleanParam(Intent intent, String str, boolean z) {
        String queryParameter;
        if (intent.hasExtra(str)) {
            return intent.getBooleanExtra(str, z);
        }
        try {
            queryParameter = intent.getData().getQueryParameter(str);
        } catch (Exception unused) {
        }
        if (queryParameter.equals(IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE)) {
            return true;
        }
        if (queryParameter.equals("true")) {
            return true;
        }
        return z;
    }
}
