package com.bytedance.tea.common.utility;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Pair;
import androidx.browser.trusted.sharing.ShareTarget;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.Enumeration;
import java.util.List;
import java.util.Map;
import java.util.zip.GZIPInputStream;

/* JADX INFO: loaded from: classes5.dex */
public class NetworkUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static a f900a;

    public interface a {
        NetworkType a();
    }

    public static boolean a(Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.isAvailable()) {
                a aVar = f900a;
                if (aVar == null || aVar.a() == NetworkType.NONE) {
                    return 1 == activeNetworkInfo.getType();
                }
                return f900a.a() == NetworkType.WIFI;
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean b(Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            return activeNetworkInfo != null && activeNetworkInfo.isAvailable();
        } catch (Exception unused) {
            return false;
        }
    }

    private static String f(Context context) {
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                NetworkInterface networkInterfaceNextElement = networkInterfaces.nextElement();
                byte[] hardwareAddress = networkInterfaceNextElement.getHardwareAddress();
                if (hardwareAddress != null && hardwareAddress.length != 0) {
                    StringBuilder sb = new StringBuilder();
                    for (byte b7 : hardwareAddress) {
                        sb.append(String.format("%02X:", Byte.valueOf(b7)));
                    }
                    if (sb.length() > 0) {
                        sb.deleteCharAt(sb.length() - 1);
                    }
                    String string = sb.toString();
                    if (networkInterfaceNextElement.getName().equals("wlan0")) {
                        return string;
                    }
                }
            }
        } catch (SocketException unused) {
        }
        return null;
    }

    /* JADX INFO: renamed from: com.bytedance.tea.common.utility.NetworkUtils$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f901a;

        static {
            int[] iArr = new int[NetworkType.values().length];
            f901a = iArr;
            try {
                iArr[NetworkType.WIFI.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f901a[NetworkType.MOBILE_2G.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f901a[NetworkType.MOBILE_3G.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f901a[NetworkType.MOBILE_4G.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f901a[NetworkType.MOBILE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public enum CompressType {
        NONE(0),
        GZIP(1),
        DEFLATER(2);

        final int nativeInt;

        CompressType(int i10) {
            this.nativeInt = i10;
        }
    }

    public enum NetworkType {
        NONE(0),
        MOBILE(1),
        MOBILE_2G(2),
        MOBILE_3G(3),
        WIFI(4),
        MOBILE_4G(5);

        final int nativeInt;

        public int getValue() {
            return this.nativeInt;
        }

        NetworkType(int i10) {
            this.nativeInt = i10;
        }
    }

    public static NetworkType d(Context context) {
        a aVar = f900a;
        if (aVar != null && aVar.a() != NetworkType.NONE) {
            return f900a.a();
        }
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.isAvailable()) {
                int type = activeNetworkInfo.getType();
                if (1 == type) {
                    return NetworkType.WIFI;
                }
                if (type != 0) {
                    return NetworkType.MOBILE;
                }
                switch (((TelephonyManager) context.getSystemService("phone")).getNetworkType()) {
                    case 3:
                    case 5:
                    case 6:
                    case 8:
                    case 9:
                    case 10:
                    case 12:
                    case 14:
                    case 15:
                        return NetworkType.MOBILE_3G;
                    case 4:
                    case 7:
                    case 11:
                    default:
                        return NetworkType.MOBILE;
                    case 13:
                        return NetworkType.MOBILE_4G;
                }
            }
            return NetworkType.NONE;
        } catch (Throwable unused) {
            return NetworkType.MOBILE;
        }
    }

    public static String c(Context context) {
        try {
            String strF = f(context);
            if (!d.a(strF)) {
                return strF;
            }
            WifiInfo connectionInfo = ((WifiManager) context.getSystemService("wifi")).getConnectionInfo();
            if (connectionInfo != null) {
                return connectionInfo.getMacAddress();
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String e(Context context) {
        return a(d(context));
    }

    public static String a(NetworkType networkType) {
        try {
            int i10 = AnonymousClass1.f901a[networkType.ordinal()];
            if (i10 == 1) {
                return "wifi";
            }
            if (i10 == 2) {
                return "2g";
            }
            if (i10 == 3) {
                return "3g";
            }
            if (i10 != 4) {
                return i10 != 5 ? "" : "mobile";
            }
            return "4g";
        } catch (Exception unused) {
            return "";
        }
    }

    public static String a(List<Pair<String, String>> list, String str) {
        StringBuilder sb = new StringBuilder();
        for (Pair<String, String> pair : list) {
            String strA = a((String) pair.first, str);
            String str2 = (String) pair.second;
            String strA2 = str2 != null ? a(str2, str) : "";
            if (sb.length() > 0) {
                sb.append("&");
            }
            sb.append(strA);
            sb.append("=");
            sb.append(strA2);
        }
        return sb.toString();
    }

    private static String a(String str, String str2) {
        if (str2 == null) {
            str2 = "ISO-8859-1";
        }
        try {
            return URLEncoder.encode(str, str2);
        } catch (UnsupportedEncodingException e) {
            throw new IllegalArgumentException(e);
        }
    }

    public static byte[] a(String str, Map<String, String> map) throws Throwable {
        if (TextUtils.isDigitsOnly(str)) {
            return null;
        }
        return a(str, null, map, ShareTarget.METHOD_GET, false);
    }

    public static byte[] a(String str, byte[] bArr, Map<String, String> map, String str2, boolean z6) throws Throwable {
        byte[] bArrA;
        HttpURLConnection httpURLConnection = (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(new URL(str).openConnection()));
        if (map != null && !map.isEmpty()) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                if (!entry.getKey().isEmpty() && !entry.getValue().isEmpty()) {
                    httpURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
                }
            }
        }
        if (z6) {
            httpURLConnection.setDoOutput(true);
        } else {
            httpURLConnection.setDoOutput(false);
        }
        httpURLConnection.setRequestProperty("Accept-Encoding", "gzip");
        if (str2 != null) {
            httpURLConnection.setRequestMethod(str2);
            if (bArr != null && bArr.length > 0) {
                DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
                dataOutputStream.write(bArr);
                dataOutputStream.flush();
                dataOutputStream.close();
            }
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode == 200) {
                InputStream inputStream = httpURLConnection.getInputStream();
                String contentEncoding = httpURLConnection.getContentEncoding();
                if (!d.a(contentEncoding) && contentEncoding.equalsIgnoreCase("gzip")) {
                    GZIPInputStream gZIPInputStream = new GZIPInputStream(inputStream);
                    bArrA = a(gZIPInputStream);
                    gZIPInputStream.close();
                } else {
                    bArrA = a(inputStream);
                }
                if (inputStream != null) {
                    inputStream.close();
                }
                return bArrA;
            }
            throw new HttpResponseException(responseCode, httpURLConnection.getResponseMessage());
        }
        throw new IllegalArgumentException("request method is not null");
    }

    public static byte[] a(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[8192];
        while (true) {
            int i10 = inputStream.read(bArr);
            if (-1 != i10) {
                byteArrayOutputStream.write(bArr, 0, i10);
            } else {
                inputStream.close();
                return byteArrayOutputStream.toByteArray();
            }
        }
    }
}
