package io.agora.rtc.internal;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import java.lang.reflect.Method;
import java.util.ArrayList;

/* loaded from: classes4.dex */
class Connectivity {
    public static final int Network_2G = 3;
    public static final int Network_3G = 4;
    public static final int Network_4G = 5;
    public static final int Network_DISCONNECTED = 0;
    public static final int Network_LAN = 1;
    public static final int Network_SubType_WIFI_2P4G = 100;
    public static final int Network_SubType_WIFI_5G = 101;
    public static final int Network_UNKNOWN = -1;
    public static final int Network_WIFI = 2;

    public static boolean isConnectionFast(int i, int i2) {
        if (i == 1) {
            return true;
        }
        if (i == 0) {
            switch (i2) {
                case 1:
                case 2:
                    break;
                case 3:
                    return true;
                case 4:
                    return false;
                case 5:
                case 6:
                    return true;
                case 7:
                    return false;
                case 8:
                case 9:
                case 10:
                    return true;
                case 11:
                    return false;
                case 12:
                case 13:
                case 14:
                case 15:
                    return true;
                default:
                    return false;
            }
        }
        return false;
    }

    Connectivity() {
    }

    public static NetworkInfo getNetworkInfo(Context context) {
        if (context == null) {
            return null;
        }
        return ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
    }

    public static boolean isConnected(Context context) {
        NetworkInfo networkInfo = getNetworkInfo(context);
        return networkInfo != null && networkInfo.isConnected();
    }

    public static boolean isConnectedWifi(Context context) {
        NetworkInfo networkInfo = getNetworkInfo(context);
        return networkInfo != null && networkInfo.isConnected() && networkInfo.getType() == 1;
    }

    public static boolean isConnectedMobile(Context context) {
        NetworkInfo networkInfo = getNetworkInfo(context);
        return networkInfo != null && networkInfo.isConnected() && networkInfo.getType() == 0;
    }

    public static boolean isConnectedFast(Context context) {
        NetworkInfo networkInfo = getNetworkInfo(context);
        return networkInfo != null && networkInfo.isConnected() && isConnectionFast(networkInfo.getType(), networkInfo.getSubtype());
    }

    public static int getNetworkType(NetworkInfo networkInfo) {
        if (networkInfo == null || !networkInfo.isConnected()) {
            return 0;
        }
        int type = networkInfo.getType();
        if (type == 1) {
            return 2;
        }
        if (type != 0) {
            return -1;
        }
        switch (networkInfo.getSubtype()) {
        }
        return 0;
    }

    public static int getNetworkType(Context context) {
        return getNetworkType(getNetworkInfo(context));
    }

    public static ArrayList<String> getDnsList() throws NoSuchMethodException, SecurityException {
        try {
            Method method = Class.forName("android.os.SystemProperties").getMethod("get", String.class);
            ArrayList<String> arrayList = new ArrayList<>();
            for (String str : new String[]{"net.dns1", "net.dns2", "net.dns3", "net.dns4"}) {
                String str2 = (String) method.invoke(null, str);
                if (str2 != null && !"".equals(str2) && !arrayList.contains(str2)) {
                    arrayList.add(str2);
                }
            }
            return arrayList;
        } catch (Exception unused) {
            return null;
        }
    }
}
