package io.agora.rtc.internal;

import android.annotation.TargetApi;
import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.net.DhcpInfo;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.telephony.CellInfo;
import android.telephony.CellInfoCdma;
import android.telephony.CellInfoGsm;
import android.telephony.CellInfoLte;
import android.telephony.CellInfoWcdma;
import android.telephony.CellSignalStrengthCdma;
import android.telephony.CellSignalStrengthGsm;
import android.telephony.CellSignalStrengthLte;
import android.telephony.CellSignalStrengthWcdma;
import android.telephony.PhoneStateListener;
import android.telephony.SignalStrength;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.view.WindowManager;
import com.narvii.account.CodeVerifyFragment;
import io.agora.rtc.internal.RtcEngineMessage;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

/* loaded from: classes4.dex */
class CommonUtility {
    private static final String TAG = "CommonUtility";
    private static WeakReference<Application> mApplication;
    private long mBridgeHandle;
    private WeakReference<Context> mContext;
    private AgoraPhoneStateListener mPhoneStateListener;
    private ConnectionChangeBroadcastReceiver mConnectionBroadcastReceiver = null;
    private BroadcastReceiver mOrientationObserver = null;
    private PowerConnectionReceiver mPowerConnectionReceiver = null;
    private int mMobileType = -1;
    private int batteryPercentage = 255;

    public static class MobileType {
        public static final int Cdma = 1;
        public static final int Gsm = 0;
        public static final int Lte = 3;
        public static final int Unknown = -1;
        public static final int Wcdma = 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public native void nativeAudioRoutingPhoneChanged(long j, boolean z, int i, int i2);

    private native int nativeNotifyNetworkChange(long j, byte[] bArr);

    public CommonUtility(Context context, long j) {
        this.mPhoneStateListener = null;
        this.mBridgeHandle = 0L;
        this.mContext = new WeakReference<>(context);
        this.mBridgeHandle = j;
        try {
            this.mPhoneStateListener = new AgoraPhoneStateListener();
            ((TelephonyManager) context.getSystemService(CodeVerifyFragment.KEY_PHONE)).listen(this.mPhoneStateListener, 288);
        } catch (Exception e) {
            Logging.e(TAG, "Unable to create PhoneStateListener, ", e);
        }
        monitorConnectionEvent(true);
        monitorPowerChange(true);
    }

    public void destroy() {
        Context context = this.mContext.get();
        if (this.mPhoneStateListener != null && context != null) {
            ((TelephonyManager) context.getSystemService(CodeVerifyFragment.KEY_PHONE)).listen(this.mPhoneStateListener, 0);
            this.mPhoneStateListener = null;
        }
        monitorConnectionEvent(false);
        monitorPowerChange(false);
    }

    public int getNetworkType() {
        Context context = this.mContext.get();
        if (context != null && checkAccessNetworkState(context)) {
            return Connectivity.getNetworkType(context);
        }
        return -1;
    }

    public byte[] getNetworkInfo() {
        RtcEngineMessage.MediaNetworkInfo mediaNetworkInfoDoGetNetworkInfo;
        Context context = this.mContext.get();
        if (context == null || (mediaNetworkInfoDoGetNetworkInfo = doGetNetworkInfo(context)) == null) {
            return null;
        }
        return mediaNetworkInfoDoGetNetworkInfo.marshall();
    }

    public int getBatteryLifePercent() {
        if (this.mContext.get() != null) {
            return this.batteryPercentage;
        }
        return 255;
    }

    public void onPhoneStateChanged(boolean z, int i, int i2) {
        long j = this.mBridgeHandle;
        if (j == 0) {
            return;
        }
        nativeAudioRoutingPhoneChanged(j, z, i, i2);
    }

    public void monitorConnectionEvent(boolean z) {
        if (z) {
            if (this.mConnectionBroadcastReceiver == null) {
                try {
                    this.mConnectionBroadcastReceiver = new ConnectionChangeBroadcastReceiver(this);
                    Context context = this.mContext.get();
                    if (context == null || this.mConnectionBroadcastReceiver == null) {
                        return;
                    }
                    context.registerReceiver(this.mConnectionBroadcastReceiver, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                    return;
                } catch (Exception e) {
                    Logging.e(TAG, "Unable to create ConnectionChangeBroadcastReceiver, ", e);
                    return;
                }
            }
            return;
        }
        try {
            Context context2 = this.mContext.get();
            if (context2 != null && this.mConnectionBroadcastReceiver != null) {
                context2.unregisterReceiver(this.mConnectionBroadcastReceiver);
            }
        } catch (IllegalArgumentException unused) {
        }
        this.mConnectionBroadcastReceiver = null;
    }

    public void monitorPowerChange(boolean z) {
        if (z) {
            if (this.mPowerConnectionReceiver == null) {
                try {
                    this.mPowerConnectionReceiver = new PowerConnectionReceiver(this);
                    Context context = this.mContext.get();
                    if (context == null || this.mPowerConnectionReceiver == null) {
                        return;
                    }
                    IntentFilter intentFilter = new IntentFilter();
                    intentFilter.addAction("android.intent.action.BATTERY_CHANGED");
                    context.registerReceiver(this.mPowerConnectionReceiver, intentFilter);
                    return;
                } catch (Exception e) {
                    Logging.e(TAG, "Unable to create PowerConnectionReceiver, ", e);
                    return;
                }
            }
            return;
        }
        try {
            Context context2 = this.mContext.get();
            if (context2 != null && this.mPowerConnectionReceiver != null) {
                context2.unregisterReceiver(this.mPowerConnectionReceiver);
            }
        } catch (IllegalArgumentException unused) {
        }
        this.mPowerConnectionReceiver = null;
    }

    public void notifyNetworkChange() {
        if (this.mContext.get() == null) {
            return;
        }
        nativeNotifyNetworkChange(this.mBridgeHandle, getNetworkInfo());
    }

    public void onPowerChange(int i) {
        if (this.mContext.get() == null) {
            return;
        }
        this.batteryPercentage = i;
    }

    public int getFrontCameraIndex() {
        return DeviceUtils.selectFrontCamera();
    }

    public int getNumberOfCameras() {
        return DeviceUtils.getNumberOfCameras();
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0060 A[Catch: Exception -> 0x0079, TryCatch #1 {Exception -> 0x0079, blocks: (B:20:0x0052, B:22:0x0060, B:23:0x0062), top: B:52:0x0052 }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00b8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int isSimulator() {
        /*
            r10 = this;
            java.lang.String r0 = "unknown"
            java.lang.String r1 = ""
            r2 = 28
            r3 = 0
            r4 = 1
            int r5 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Exception -> L49
            r6 = 26
            if (r5 >= r6) goto L11
            java.lang.String r5 = android.os.Build.SERIAL     // Catch: java.lang.Exception -> L49
            goto L1b
        L11:
            int r5 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Exception -> L49
            if (r5 > r2) goto L1a
            java.lang.String r5 = android.os.Build.getSerial()     // Catch: java.lang.Exception -> L49
            goto L1b
        L1a:
            r5 = r1
        L1b:
            java.lang.String r6 = r5.toLowerCase()     // Catch: java.lang.Exception -> L4a
            boolean r6 = r6.equals(r0)     // Catch: java.lang.Exception -> L4a
            if (r6 == 0) goto L47
            java.lang.String r6 = io.agora.rtc.internal.CommonUtility.TAG     // Catch: java.lang.Exception -> L45
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L45
            r7.<init>()     // Catch: java.lang.Exception -> L45
            java.lang.String r8 = "serial = "
            r7.append(r8)     // Catch: java.lang.Exception -> L45
            r7.append(r5)     // Catch: java.lang.Exception -> L45
            java.lang.String r8 = ", suspectCount = "
            r7.append(r8)     // Catch: java.lang.Exception -> L45
            r7.append(r4)     // Catch: java.lang.Exception -> L45
            java.lang.String r7 = r7.toString()     // Catch: java.lang.Exception -> L45
            io.agora.rtc.internal.Logging.i(r6, r7)     // Catch: java.lang.Exception -> L45
            r6 = 1
            goto L52
        L45:
            r6 = 1
            goto L4b
        L47:
            r6 = 0
            goto L52
        L49:
            r5 = r1
        L4a:
            r6 = 0
        L4b:
            java.lang.String r7 = io.agora.rtc.internal.CommonUtility.TAG
            java.lang.String r8 = "get serial info fail."
            io.agora.rtc.internal.Logging.e(r7, r8)
        L52:
            java.lang.String r1 = android.os.Build.MANUFACTURER     // Catch: java.lang.Exception -> L79
            java.lang.String r7 = r1.toLowerCase()     // Catch: java.lang.Exception -> L79
            java.lang.String r8 = "netease"
            boolean r7 = r7.contains(r8)     // Catch: java.lang.Exception -> L79
            if (r7 == 0) goto L62
            int r6 = r6 + 1
        L62:
            java.lang.String r7 = io.agora.rtc.internal.CommonUtility.TAG     // Catch: java.lang.Exception -> L79
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L79
            r8.<init>()     // Catch: java.lang.Exception -> L79
            java.lang.String r9 = "manufacturer = "
            r8.append(r9)     // Catch: java.lang.Exception -> L79
            r8.append(r1)     // Catch: java.lang.Exception -> L79
            java.lang.String r8 = r8.toString()     // Catch: java.lang.Exception -> L79
            io.agora.rtc.internal.Logging.i(r7, r8)     // Catch: java.lang.Exception -> L79
            goto L80
        L79:
            java.lang.String r7 = io.agora.rtc.internal.CommonUtility.TAG
            java.lang.String r8 = "get manufacturer info fail."
            io.agora.rtc.internal.Logging.e(r7, r8)
        L80:
            boolean r7 = r10.isSimulatorProperty()
            if (r7 == 0) goto L88
            int r6 = r6 + 1
        L88:
            int r7 = android.os.Build.VERSION.SDK_INT
            java.lang.String r8 = "welldo"
            if (r7 <= r2) goto Lb8
            java.lang.String r0 = "nokia"
            boolean r0 = r0.equalsIgnoreCase(r1)
            if (r0 == 0) goto Lab
            java.lang.String r0 = android.os.Build.DEVICE
            java.lang.String r2 = "Nokia_N1"
            boolean r0 = r2.equalsIgnoreCase(r0)
            if (r0 != 0) goto Laa
            java.lang.String r0 = android.os.Build.MODEL
            java.lang.String r2 = "N1"
            boolean r0 = r2.equalsIgnoreCase(r0)
            if (r0 == 0) goto Lab
        Laa:
            return r3
        Lab:
            if (r6 <= 0) goto Lcf
            java.lang.String r0 = r1.toLowerCase()
            boolean r0 = r0.contains(r8)
            if (r0 != 0) goto Lcf
            return r4
        Lb8:
            java.lang.String r2 = r5.toLowerCase()
            boolean r0 = r2.equals(r0)
            if (r0 != 0) goto Lc4
            if (r6 <= 0) goto Lcf
        Lc4:
            java.lang.String r0 = r1.toLowerCase()
            boolean r0 = r0.contains(r8)
            if (r0 != 0) goto Lcf
            return r4
        Lcf:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: io.agora.rtc.internal.CommonUtility.isSimulator():int");
    }

    public int getAndroidVersion() {
        return Build.VERSION.SDK_INT;
    }

    public int isSpeakerphoneEnabled(Context context) {
        if (context == null) {
            return 0;
        }
        return getAudioManager(context).isSpeakerphoneOn() ? 1 : 0;
    }

    public static boolean canGetDefaultContext() {
        return Looper.myLooper() == Looper.getMainLooper() || Build.VERSION.SDK_INT >= 18;
    }

    public static byte[] getContextInfo(Context context) {
        if (context == null) {
            return null;
        }
        RtcEngineMessage.PAndroidContextInfo pAndroidContextInfo = new RtcEngineMessage.PAndroidContextInfo();
        pAndroidContextInfo.device = DeviceUtils.getDeviceId();
        pAndroidContextInfo.deviceInfo = DeviceUtils.getDeviceInfo();
        pAndroidContextInfo.systemInfo = DeviceUtils.getSystemInfo();
        pAndroidContextInfo.configDir = getAppStorageDir(context);
        pAndroidContextInfo.dataDir = context.getCacheDir().getAbsolutePath();
        pAndroidContextInfo.pluginDir = context.getApplicationInfo().nativeLibraryDir;
        pAndroidContextInfo.imei = getImei(context);
        pAndroidContextInfo.macAddress = getWiFiMac(context);
        pAndroidContextInfo.androidID = getAndroidID(context);
        if (TextUtils.isEmpty(pAndroidContextInfo.device)) {
            pAndroidContextInfo.device = "";
        }
        if (TextUtils.isEmpty(pAndroidContextInfo.deviceInfo)) {
            pAndroidContextInfo.deviceInfo = "";
        }
        if (TextUtils.isEmpty(pAndroidContextInfo.systemInfo)) {
            pAndroidContextInfo.systemInfo = "";
        }
        if (TextUtils.isEmpty(pAndroidContextInfo.configDir)) {
            pAndroidContextInfo.configDir = "";
        }
        if (TextUtils.isEmpty(pAndroidContextInfo.dataDir)) {
            pAndroidContextInfo.dataDir = "";
        }
        if (TextUtils.isEmpty(pAndroidContextInfo.pluginDir)) {
            pAndroidContextInfo.pluginDir = "";
        }
        if (TextUtils.isEmpty(pAndroidContextInfo.imei)) {
            pAndroidContextInfo.imei = "";
        }
        if (TextUtils.isEmpty(pAndroidContextInfo.macAddress)) {
            pAndroidContextInfo.macAddress = "";
        }
        if (TextUtils.isEmpty(pAndroidContextInfo.androidID)) {
            pAndroidContextInfo.androidID = "";
        }
        return pAndroidContextInfo.marshall();
    }

    private static Boolean checkImei(String str) {
        try {
            Integer numValueOf = Integer.valueOf(str.length());
            if (numValueOf.intValue() > 10 && numValueOf.intValue() < 20 && !checkImeiSame(str.trim()).booleanValue()) {
                return true;
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    private static Boolean checkImeiSame(String str) {
        try {
            char cCharAt = str.length() > 0 ? str.charAt(0) : '0';
            for (int i = 0; i < str.length(); i++) {
                if (cCharAt != str.charAt(i)) {
                    return false;
                }
            }
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    private static String getImei(Context context) {
        String deviceId;
        String str = null;
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService(CodeVerifyFragment.KEY_PHONE);
            if (Build.VERSION.SDK_INT >= 22) {
                deviceId = telephonyManager.getDeviceId();
            } else {
                String deviceId2 = telephonyManager.getDeviceId();
                if (checkImei(deviceId2.trim()).booleanValue()) {
                    deviceId = deviceId2.trim();
                } else {
                    deviceId = ((TelephonyManager) context.getSystemService("phone1")).getDeviceId();
                    if (deviceId == null || !checkImei(deviceId).booleanValue()) {
                        deviceId = null;
                    }
                }
            }
            str = deviceId;
        } catch (Throwable unused) {
        }
        return str == null ? "" : str;
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x00cf  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String getWiFiMac(android.content.Context r10) {
        /*
            java.lang.String r0 = ""
            java.lang.String r1 = "00:00:00:00:00:00"
            java.lang.String r2 = "^([0-9A-F]{2}:){5}([0-9A-F]{2})$"
            java.util.regex.Pattern r2 = java.util.regex.Pattern.compile(r2)
            r3 = 0
            int r4 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Throwable -> Lcf
            r5 = 23
            if (r4 < r5) goto L92
            java.util.Enumeration r10 = java.net.NetworkInterface.getNetworkInterfaces()     // Catch: java.lang.Throwable -> L83
            java.util.ArrayList r10 = java.util.Collections.list(r10)     // Catch: java.lang.Throwable -> L83
            if (r10 == 0) goto L82
            int r1 = r10.size()     // Catch: java.lang.Throwable -> L83
            if (r1 > 0) goto L22
            goto L82
        L22:
            java.util.Iterator r10 = r10.iterator()     // Catch: java.lang.Throwable -> L83
        L26:
            boolean r1 = r10.hasNext()     // Catch: java.lang.Throwable -> L83
            if (r1 == 0) goto L84
            java.lang.Object r1 = r10.next()     // Catch: java.lang.Throwable -> L83
            java.net.NetworkInterface r1 = (java.net.NetworkInterface) r1     // Catch: java.lang.Throwable -> L83
            java.lang.String r2 = r1.getName()     // Catch: java.lang.Throwable -> L83
            java.lang.String r4 = "wlan0"
            boolean r2 = r2.equalsIgnoreCase(r4)     // Catch: java.lang.Throwable -> L83
            if (r2 != 0) goto L3f
            goto L26
        L3f:
            byte[] r1 = r1.getHardwareAddress()     // Catch: java.lang.Throwable -> L83
            if (r1 != 0) goto L46
            return r0
        L46:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L83
            r2.<init>()     // Catch: java.lang.Throwable -> L83
            int r4 = r1.length     // Catch: java.lang.Throwable -> L83
            r5 = 0
            r6 = 0
        L4e:
            r7 = 1
            if (r6 >= r4) goto L67
            r8 = r1[r6]     // Catch: java.lang.Throwable -> L83
            java.lang.String r9 = "%02X:"
            java.lang.Object[] r7 = new java.lang.Object[r7]     // Catch: java.lang.Throwable -> L83
            java.lang.Byte r8 = java.lang.Byte.valueOf(r8)     // Catch: java.lang.Throwable -> L83
            r7[r5] = r8     // Catch: java.lang.Throwable -> L83
            java.lang.String r7 = java.lang.String.format(r9, r7)     // Catch: java.lang.Throwable -> L83
            r2.append(r7)     // Catch: java.lang.Throwable -> L83
            int r6 = r6 + 1
            goto L4e
        L67:
            int r1 = r2.length()     // Catch: java.lang.Throwable -> L83
            if (r1 <= 0) goto L75
            int r1 = r2.length()     // Catch: java.lang.Throwable -> L83
            int r1 = r1 - r7
            r2.deleteCharAt(r1)     // Catch: java.lang.Throwable -> L83
        L75:
            java.lang.String r1 = r2.toString()     // Catch: java.lang.Throwable -> L83
            java.lang.String r1 = r1.toUpperCase()     // Catch: java.lang.Throwable -> L83
            java.lang.String r3 = r1.trim()     // Catch: java.lang.Throwable -> L83
            goto L26
        L82:
            return r0
        L83:
        L84:
            if (r3 == 0) goto L91
            java.lang.String r10 = r3.trim()     // Catch: java.lang.Throwable -> Lcf
            boolean r10 = r0.equals(r10)     // Catch: java.lang.Throwable -> Lcf
            if (r10 != 0) goto L91
            r0 = r3
        L91:
            return r0
        L92:
            java.lang.String r4 = "android.permission.ACCESS_WIFI_STATE"
            int r4 = r10.checkCallingOrSelfPermission(r4)     // Catch: java.lang.Throwable -> Lcf
            if (r4 != 0) goto Lcf
            java.lang.String r4 = "wifi"
            java.lang.Object r10 = r10.getSystemService(r4)     // Catch: java.lang.Throwable -> Lcf
            android.net.wifi.WifiManager r10 = (android.net.wifi.WifiManager) r10     // Catch: java.lang.Throwable -> Lcf
            boolean r4 = r10.isWifiEnabled()     // Catch: java.lang.Throwable -> Lcf
            if (r4 == 0) goto Lcf
            android.net.wifi.WifiInfo r10 = r10.getConnectionInfo()     // Catch: java.lang.Throwable -> Lcf
            if (r10 == 0) goto Lcf
            java.lang.String r10 = r10.getMacAddress()     // Catch: java.lang.Throwable -> Lcf
            if (r10 == 0) goto Ld0
            java.lang.String r4 = r10.toUpperCase()     // Catch: java.lang.Throwable -> Lcd
            java.lang.String r10 = r4.trim()     // Catch: java.lang.Throwable -> Lcd
            boolean r1 = r1.equals(r10)     // Catch: java.lang.Throwable -> Lcd
            if (r1 != 0) goto Lcf
            java.util.regex.Matcher r1 = r2.matcher(r10)     // Catch: java.lang.Throwable -> Lcd
            boolean r1 = r1.matches()     // Catch: java.lang.Throwable -> Lcd
            if (r1 != 0) goto Ld0
            goto Lcf
        Lcd:
            goto Ld0
        Lcf:
            r10 = r3
        Ld0:
            if (r10 != 0) goto Ld3
            return r0
        Ld3:
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: io.agora.rtc.internal.CommonUtility.getWiFiMac(android.content.Context):java.lang.String");
    }

    private static String getAndroidID(Context context) {
        String string;
        try {
            string = Settings.System.getString(context.getContentResolver(), "android_id");
        } catch (Exception unused) {
            string = null;
        }
        return string == null ? "" : string;
    }

    public static String[] getLocalHostList() {
        try {
            ArrayList<NetworkInterface> list = Collections.list(NetworkInterface.getNetworkInterfaces());
            ArrayList arrayList = new ArrayList();
            for (NetworkInterface networkInterface : list) {
                if (!networkInterface.getName().startsWith("usb")) {
                    Iterator it = Collections.list(networkInterface.getInetAddresses()).iterator();
                    while (it.hasNext()) {
                        String strInetAddressToIpAddress = inetAddressToIpAddress((InetAddress) it.next());
                        if (strInetAddressToIpAddress != null) {
                            arrayList.add(strInetAddressToIpAddress);
                        }
                    }
                }
            }
            if (arrayList.isEmpty()) {
                return null;
            }
            String[] strArr = new String[arrayList.size()];
            int i = 0;
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                strArr[i] = (String) it2.next();
                i++;
            }
            return strArr;
        } catch (Exception unused) {
            return null;
        }
    }

    public static String getLocalHost() {
        try {
            for (NetworkInterface networkInterface : Collections.list(NetworkInterface.getNetworkInterfaces())) {
                if (!networkInterface.getName().startsWith("usb")) {
                    Iterator it = Collections.list(networkInterface.getInetAddresses()).iterator();
                    while (it.hasNext()) {
                        String strInetAddressToIpAddress = inetAddressToIpAddress((InetAddress) it.next());
                        if (strInetAddressToIpAddress != null && !strInetAddressToIpAddress.isEmpty()) {
                            return strInetAddressToIpAddress;
                        }
                    }
                }
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public static String getRandomUUID() {
        return UUID.randomUUID().toString().replace("-", "").toUpperCase();
    }

    /* JADX WARN: Can't wrap try/catch for region: R(13:0|2|54|3|(9:5|(0)(1:9)|10|58|11|(1:15)|18|(11:20|(1:22)|56|26|(1:32)|52|35|(1:39)|60|42|(1:46))|(1:50)(1:62))|7|10|58|11|(2:13|15)(0)|18|(0)|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0075, code lost:
    
        io.agora.rtc.internal.Logging.e(io.agora.rtc.internal.CommonUtility.TAG, "get property arch fail.");
     */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0056 A[Catch: Exception -> 0x0075, TRY_LEAVE, TryCatch #3 {Exception -> 0x0075, blocks: (B:11:0x0042, B:13:0x004a, B:15:0x0056), top: B:58:0x0042 }] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x014d A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:62:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean isSimulatorProperty() {
        /*
            Method dump skipped, instructions count: 335
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.agora.rtc.internal.CommonUtility.isSimulatorProperty():boolean");
    }

    private void regiseterBroadcaster(Context context) {
        if (context == null) {
            return;
        }
        this.mOrientationObserver = new BroadcastReceiver() { // from class: io.agora.rtc.internal.CommonUtility.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                int rotation;
                if (intent.getAction().equals("android.intent.action.CONFIGURATION_CHANGED") && (rotation = ((WindowManager) ((Context) CommonUtility.this.mContext.get()).getSystemService("window")).getDefaultDisplay().getRotation()) != 0 && rotation == 1) {
                }
            }
        };
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.CONFIGURATION_CHANGED");
        context.registerReceiver(this.mOrientationObserver, intentFilter);
    }

    private void unregisterBroadcaster(Context context) {
        BroadcastReceiver broadcastReceiver;
        if (context == null || (broadcastReceiver = this.mOrientationObserver) == null) {
            return;
        }
        context.unregisterReceiver(broadcastReceiver);
    }

    private AudioManager getAudioManager(Context context) {
        if (context == null) {
            return null;
        }
        return (AudioManager) context.getSystemService("audio");
    }

    private static String getSystemProperty(String str) throws Exception {
        Class<?> cls = Class.forName("android.os.SystemProperties");
        return (String) cls.getMethod("get", String.class).invoke(cls, str);
    }

    private static boolean checkAccessNetworkState(Context context) {
        return context != null && context.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == 0;
    }

    private RtcEngineMessage.MediaNetworkInfo doGetNetworkInfo(Context context) {
        InetAddress inetAddressIntToInetAddress;
        if (context == null) {
            return null;
        }
        RtcEngineMessage.MediaNetworkInfo mediaNetworkInfo = new RtcEngineMessage.MediaNetworkInfo();
        if (!checkAccessNetworkState(context)) {
            mediaNetworkInfo.ssid = "";
            mediaNetworkInfo.bssid = "";
            mediaNetworkInfo.rssi = 0;
            mediaNetworkInfo.signalLevel = 0;
            return mediaNetworkInfo;
        }
        String localHost = getLocalHost();
        if (localHost != null) {
            mediaNetworkInfo.localIp4 = localHost;
        }
        NetworkInfo networkInfo = Connectivity.getNetworkInfo(context);
        mediaNetworkInfo.networkType = Connectivity.getNetworkType(networkInfo);
        if (networkInfo != null) {
            mediaNetworkInfo.networkSubtype = networkInfo.getSubtype();
        }
        mediaNetworkInfo.dnsList = Connectivity.getDnsList();
        if (mediaNetworkInfo.networkType == 2) {
            if (!checkAccessWifiState(context)) {
                mediaNetworkInfo.ssid = "";
                mediaNetworkInfo.bssid = "";
                mediaNetworkInfo.rssi = 0;
                mediaNetworkInfo.signalLevel = 0;
                return mediaNetworkInfo;
            }
            WifiManager wifiManager = (WifiManager) context.getSystemService("wifi");
            DhcpInfo dhcpInfo = wifiManager.getDhcpInfo();
            if (dhcpInfo != null && (inetAddressIntToInetAddress = intToInetAddress(dhcpInfo.gateway)) != null) {
                mediaNetworkInfo.gatewayIp4 = inetAddressIntToInetAddress.getHostAddress();
            }
            WifiInfo connectionInfo = wifiManager.getConnectionInfo();
            if (connectionInfo != null) {
                String bssid = connectionInfo.getBSSID();
                mediaNetworkInfo.ssid = connectionInfo.getSSID().replace("\"", "");
                mediaNetworkInfo.bssid = bssid != null ? bssid.replace("\"", "") : "";
                mediaNetworkInfo.rssi = connectionInfo.getRssi();
                mediaNetworkInfo.signalLevel = WifiManager.calculateSignalLevel(mediaNetworkInfo.rssi, 5);
                if (Build.VERSION.SDK_INT >= 21) {
                    int frequency = connectionInfo.getFrequency();
                    if (frequency >= 5000) {
                        mediaNetworkInfo.networkSubtype = 101;
                    } else if (frequency >= 2400) {
                        mediaNetworkInfo.networkSubtype = 100;
                    }
                }
            }
        } else {
            AgoraPhoneStateListener agoraPhoneStateListener = this.mPhoneStateListener;
            if (agoraPhoneStateListener != null) {
                mediaNetworkInfo.rssi = agoraPhoneStateListener.getRssi();
                mediaNetworkInfo.signalLevel = this.mPhoneStateListener.getLevel();
                mediaNetworkInfo.asu = this.mPhoneStateListener.getAsuLevel();
            } else if (context.checkCallingOrSelfPermission("android.permission.ACCESS_COARSE_LOCATION") == 0) {
                getSignalStrength(context, mediaNetworkInfo);
            }
        }
        return mediaNetworkInfo;
    }

    private static String inetAddressToIpAddress(InetAddress inetAddress) {
        if (inetAddress.isLoopbackAddress()) {
            return null;
        }
        if (inetAddress instanceof Inet4Address) {
            return ((Inet4Address) inetAddress).getHostAddress();
        }
        boolean z = inetAddress instanceof Inet6Address;
        return null;
    }

    private static boolean checkAccessWifiState(Context context) {
        return context != null && context.checkCallingOrSelfPermission("android.permission.ACCESS_WIFI_STATE") == 0;
    }

    private static InetAddress intToInetAddress(int i) {
        try {
            return InetAddress.getByAddress(new byte[]{(byte) (i & 255), (byte) ((i >> 8) & 255), (byte) ((i >> 16) & 255), (byte) ((i >> 24) & 255)});
        } catch (UnknownHostException unused) {
            return null;
        }
    }

    @TargetApi(17)
    private boolean getSignalStrength(Context context, RtcEngineMessage.MediaNetworkInfo mediaNetworkInfo) {
        CellInfo cellInfo;
        CellSignalStrengthLte cellSignalStrength;
        CellSignalStrengthCdma cellSignalStrength2;
        CellSignalStrengthGsm cellSignalStrength3;
        if (context == null || Build.VERSION.SDK_INT < 17) {
            this.mMobileType = -1;
            return false;
        }
        List<CellInfo> allCellInfo = ((TelephonyManager) context.getSystemService(CodeVerifyFragment.KEY_PHONE)).getAllCellInfo();
        if (allCellInfo == null || allCellInfo.isEmpty() || (cellInfo = allCellInfo.get(0)) == null) {
            return false;
        }
        try {
            if ((this.mMobileType == -1 || this.mMobileType == 0) && (cellSignalStrength3 = ((CellInfoGsm) cellInfo).getCellSignalStrength()) != null) {
                this.mMobileType = 0;
                mediaNetworkInfo.rssi = cellSignalStrength3.getDbm();
                mediaNetworkInfo.signalLevel = cellSignalStrength3.getLevel();
                mediaNetworkInfo.asu = cellSignalStrength3.getAsuLevel();
                return true;
            }
        } catch (Exception unused) {
            this.mMobileType = -1;
        }
        try {
            if ((this.mMobileType == -1 || this.mMobileType == 1) && (cellSignalStrength2 = ((CellInfoCdma) cellInfo).getCellSignalStrength()) != null) {
                this.mMobileType = 1;
                mediaNetworkInfo.rssi = cellSignalStrength2.getDbm();
                mediaNetworkInfo.signalLevel = cellSignalStrength2.getLevel();
                mediaNetworkInfo.asu = cellSignalStrength2.getAsuLevel();
                return true;
            }
        } catch (Exception unused2) {
            this.mMobileType = -1;
        }
        try {
            if (this.mMobileType == -1 || this.mMobileType == 2) {
                if (Build.VERSION.SDK_INT < 18) {
                    return false;
                }
                CellSignalStrengthWcdma cellSignalStrength4 = ((CellInfoWcdma) cellInfo).getCellSignalStrength();
                if (cellSignalStrength4 != null) {
                    this.mMobileType = 2;
                    mediaNetworkInfo.rssi = cellSignalStrength4.getDbm();
                    mediaNetworkInfo.signalLevel = cellSignalStrength4.getLevel();
                    mediaNetworkInfo.asu = cellSignalStrength4.getAsuLevel();
                    return true;
                }
            }
        } catch (Exception unused3) {
            this.mMobileType = -1;
        }
        try {
            if ((this.mMobileType == -1 || this.mMobileType == 3) && (cellSignalStrength = ((CellInfoLte) cellInfo).getCellSignalStrength()) != null) {
                this.mMobileType = 3;
                mediaNetworkInfo.rssi = cellSignalStrength.getDbm();
                mediaNetworkInfo.signalLevel = cellSignalStrength.getLevel();
                mediaNetworkInfo.asu = cellSignalStrength.getAsuLevel();
                return true;
            }
        } catch (Exception unused4) {
            this.mMobileType = -1;
        }
        return false;
    }

    private class AgoraPhoneStateListener extends PhoneStateListener {
        private SignalStrength mSignalStrenth;
        private boolean phoneStatusNeedResume = false;

        public AgoraPhoneStateListener() {
        }

        public int getRssi() {
            if (Build.VERSION.SDK_INT <= 28) {
                return invokeMethod("getDbm");
            }
            return 0;
        }

        public int getLevel() {
            return invokeMethod("getLevel");
        }

        public int getAsuLevel() {
            if (Build.VERSION.SDK_INT <= 28) {
                return invokeMethod("getAsuLevel");
            }
            return 0;
        }

        private int invokeMethod(String str) {
            Method declaredMethod;
            try {
                if (this.mSignalStrenth != null && (declaredMethod = this.mSignalStrenth.getClass().getDeclaredMethod(str, new Class[0])) != null) {
                    return ((Integer) declaredMethod.invoke(this.mSignalStrenth, new Object[0])).intValue();
                }
            } catch (Exception unused) {
            }
            return 0;
        }

        @Override // android.telephony.PhoneStateListener
        public void onSignalStrengthsChanged(SignalStrength signalStrength) {
            super.onSignalStrengthsChanged(signalStrength);
            this.mSignalStrenth = signalStrength;
        }

        @Override // android.telephony.PhoneStateListener
        public void onCallStateChanged(int i, String str) {
            super.onCallStateChanged(i, str);
            if (i == 0) {
                if (this.phoneStatusNeedResume) {
                    this.phoneStatusNeedResume = false;
                    Logging.i(CommonUtility.TAG, "system phone call end delay 1000ms");
                    new Handler().postDelayed(new Runnable() { // from class: io.agora.rtc.internal.CommonUtility.AgoraPhoneStateListener.1
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                CommonUtility.this.nativeAudioRoutingPhoneChanged(CommonUtility.this.mBridgeHandle, true, 22, 0);
                            } catch (Exception e) {
                                Logging.e(CommonUtility.TAG, "fail to resume ", e);
                            }
                        }
                    }, 1000L);
                    return;
                }
                return;
            }
            if (i == 1) {
                Logging.i(CommonUtility.TAG, "system phone call ring");
                this.phoneStatusNeedResume = true;
                CommonUtility commonUtility = CommonUtility.this;
                commonUtility.nativeAudioRoutingPhoneChanged(commonUtility.mBridgeHandle, false, 22, 1);
                return;
            }
            if (i != 2) {
                return;
            }
            Logging.i(CommonUtility.TAG, "system phone call start");
            this.phoneStatusNeedResume = true;
            CommonUtility commonUtility2 = CommonUtility.this;
            commonUtility2.nativeAudioRoutingPhoneChanged(commonUtility2.mBridgeHandle, false, 22, 2);
        }
    }

    private static String getAppStorageDir(Context context) {
        if (context == null) {
            return null;
        }
        if (context.checkCallingOrSelfPermission("android.permission.READ_EXTERNAL_STORAGE") == 0) {
            return "/sdcard/" + context.getApplicationInfo().packageName;
        }
        Logging.w(TAG, "read external storage is not granted");
        return null;
    }
}
