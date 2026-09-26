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
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
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
import android.view.Display;
import android.view.OrientationEventListener;
import android.view.WindowManager;
import androidx.core.os.EnvironmentCompat;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
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

/* JADX INFO: loaded from: classes2.dex */
class CommonUtility {
    private static final String TAG = "CommonUtility";
    private static final int VIDEO_SOURCE_TYPE_CUSTOMIZED = 2;
    private static final int VIDEO_SOURCE_TYPE_DEFAULT = 1;
    private static final int VIDEO_SOURCE_TYPE_EXTERNAL_DEPRECATED = 3;
    private static final int VIDEO_SOURCE_TYPE_NULL = 0;
    private static WeakReference<Application> mApplication;
    private volatile boolean mAccessible;
    private long mBridgeHandle;
    private WeakReference<Context> mContext;
    private AgoraPhoneStateListener mPhoneStateListener;
    private ConnectionChangeBroadcastReceiver mConnectionBroadcastReceiver = null;
    private BroadcastReceiver mOrientationObserver = null;
    private PowerConnectionReceiver mPowerConnectionReceiver = null;
    private int mMobileType = -1;
    private int batteryPercentage = 255;
    private int mOrientation = -1;
    private boolean mLocalVideoEnabled = false;
    private int mVideoSourceType = 1;
    private OrientationEventListener mOrientationListener = null;

    private class AgoraPhoneStateListener extends PhoneStateListener {
        private SignalStrength mSignalStrenth;
        private boolean phoneStatusNeedResume = false;

        private int invokeMethod(String methodName) {
            Method declaredMethod;
            try {
                SignalStrength signalStrength = this.mSignalStrenth;
                if (signalStrength != null && (declaredMethod = signalStrength.getClass().getDeclaredMethod(methodName, new Class[0])) != null) {
                    return ((Integer) declaredMethod.invoke(this.mSignalStrenth, new Object[0])).intValue();
                }
            } catch (Exception unused) {
            }
            return 0;
        }

        public AgoraPhoneStateListener() {
        }

        public int getAsuLevel() {
            if (Build.VERSION.SDK_INT <= 28) {
                return invokeMethod("getAsuLevel");
            }
            return 0;
        }

        public int getLevel() {
            return invokeMethod("getLevel");
        }

        public int getRssi() {
            if (Build.VERSION.SDK_INT <= 28) {
                return invokeMethod("getDbm");
            }
            return 0;
        }

        @Override // android.telephony.PhoneStateListener
        public void onCallStateChanged(int state, String incomingNumber) {
            if (((Context) CommonUtility.this.mContext.get()) == null || !CommonUtility.this.mAccessible) {
                return;
            }
            super.onCallStateChanged(state, incomingNumber);
            if (state == 0) {
                if (this.phoneStatusNeedResume) {
                    this.phoneStatusNeedResume = false;
                    Logging.i(CommonUtility.TAG, "system phone call end delay 1000ms");
                    new Handler().postDelayed(new Runnable() { // from class: io.agora.rtc.internal.CommonUtility.AgoraPhoneStateListener.1
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                CommonUtility.this.onPhoneStateChanged(true, 22, 0);
                            } catch (Exception e) {
                                Logging.e(CommonUtility.TAG, "fail to resume ", e);
                            }
                        }
                    }, 1000L);
                    return;
                }
                return;
            }
            if (state == 1) {
                Logging.i(CommonUtility.TAG, "system phone call ring");
                this.phoneStatusNeedResume = true;
                CommonUtility.this.onPhoneStateChanged(false, 22, 1);
            } else {
                if (state != 2) {
                    return;
                }
                Logging.i(CommonUtility.TAG, "system phone call start");
                this.phoneStatusNeedResume = true;
                CommonUtility.this.onPhoneStateChanged(false, 22, 2);
            }
        }

        @Override // android.telephony.PhoneStateListener
        public void onSignalStrengthsChanged(SignalStrength signalStrength) {
            if (((Context) CommonUtility.this.mContext.get()) == null || !CommonUtility.this.mAccessible) {
                return;
            }
            super.onSignalStrengthsChanged(signalStrength);
            this.mSignalStrenth = signalStrength;
        }
    }

    public static class MobileType {
        public static final int Cdma = 1;
        public static final int Gsm = 0;
        public static final int Lte = 3;
        public static final int Unknown = -1;
        public static final int Wcdma = 2;
    }

    private static boolean checkAccessNetworkState(Context context) {
        return context != null && context.checkPermission("android.permission.ACCESS_NETWORK_STATE", Process.myPid(), Process.myUid()) == 0;
    }

    private static boolean checkAccessWifiState(Context context) {
        return context != null && context.checkPermission("android.permission.ACCESS_WIFI_STATE", Process.myPid(), Process.myUid()) == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkOrientation(int orientation) {
        if (orientation == -1 || !this.mAccessible) {
            return;
        }
        if (orientation > 340 || orientation < 20 || ((orientation > 70 && orientation < 110) || ((orientation > 160 && orientation < 200) || (orientation > 250 && orientation < 290)))) {
            updateViewOrientation();
        }
    }

    private void checkVoipPermissions(Context context, String perm) throws SecurityException {
        if (context == null || context.checkPermission(perm, Process.myPid(), Process.myUid()) != 0) {
            throw new SecurityException(perm + " is not granted");
        }
    }

    private static String getAndroidID(Context context) {
        return "";
    }

    @TargetApi(17)
    private boolean getSignalStrength(Context context, RtcEngineMessage.MediaNetworkInfo ni) {
        CellInfo cellInfo;
        CellSignalStrengthLte cellSignalStrength;
        CellSignalStrengthWcdma cellSignalStrength2;
        CellSignalStrengthCdma cellSignalStrength3;
        CellSignalStrengthGsm cellSignalStrength4;
        if (context == null) {
            this.mMobileType = -1;
            return false;
        }
        List<CellInfo> allCellInfo = ((TelephonyManager) context.getSystemService("phone")).getAllCellInfo();
        if (allCellInfo == null || allCellInfo.isEmpty() || (cellInfo = allCellInfo.get(0)) == null) {
            return false;
        }
        try {
            int i10 = this.mMobileType;
            if ((i10 == -1 || i10 == 0) && (cellSignalStrength4 = ((CellInfoGsm) cellInfo).getCellSignalStrength()) != null) {
                this.mMobileType = 0;
                ni.rssi = cellSignalStrength4.getDbm();
                ni.signalLevel = cellSignalStrength4.getLevel();
                ni.asu = cellSignalStrength4.getAsuLevel();
                return true;
            }
        } catch (Exception unused) {
            this.mMobileType = -1;
        }
        try {
            int i11 = this.mMobileType;
            if ((i11 == -1 || i11 == 1) && (cellSignalStrength3 = ((CellInfoCdma) cellInfo).getCellSignalStrength()) != null) {
                this.mMobileType = 1;
                ni.rssi = cellSignalStrength3.getDbm();
                ni.signalLevel = cellSignalStrength3.getLevel();
                ni.asu = cellSignalStrength3.getAsuLevel();
                return true;
            }
        } catch (Exception unused2) {
            this.mMobileType = -1;
        }
        try {
            int i12 = this.mMobileType;
            if ((i12 == -1 || i12 == 2) && (cellSignalStrength2 = ((CellInfoWcdma) cellInfo).getCellSignalStrength()) != null) {
                this.mMobileType = 2;
                ni.rssi = cellSignalStrength2.getDbm();
                ni.signalLevel = cellSignalStrength2.getLevel();
                ni.asu = cellSignalStrength2.getAsuLevel();
                return true;
            }
        } catch (Exception unused3) {
            this.mMobileType = -1;
        }
        try {
            int i13 = this.mMobileType;
            if ((i13 == -1 || i13 == 3) && (cellSignalStrength = ((CellInfoLte) cellInfo).getCellSignalStrength()) != null) {
                this.mMobileType = 3;
                ni.rssi = cellSignalStrength.getDbm();
                ni.signalLevel = cellSignalStrength.getLevel();
                ni.asu = cellSignalStrength.getAsuLevel();
                return true;
            }
        } catch (Exception unused4) {
            this.mMobileType = -1;
        }
        return false;
    }

    private static InetAddress intToInetAddress(int hostAddress) {
        try {
            return InetAddress.getByAddress(new byte[]{(byte) (hostAddress & 255), (byte) ((hostAddress >> 8) & 255), (byte) ((hostAddress >> 16) & 255), (byte) ((hostAddress >> 24) & 255)});
        } catch (UnknownHostException unused) {
            return null;
        }
    }

    private native void nativeAudioRoutingPhoneChanged(long bridgeHandle, boolean enableAudio, int event, int arg);

    private native int nativeNotifyNetworkChange(long bridgeHandle, byte[] networkInfo);

    private native int nativeNotifyOrientationChange(long bridgeHandle, int mOrientation);

    public void destroy() {
        this.mAccessible = false;
        Context context = this.mContext.get();
        if (this.mPhoneStateListener != null && context != null) {
            ((TelephonyManager) context.getSystemService("phone")).listen(this.mPhoneStateListener, 0);
            this.mPhoneStateListener = null;
        }
        monitorConnectionEvent(false);
        monitorPowerChange(false);
        monitorOrientationChange(context, false);
        this.mContext.clear();
        Logging.i(TAG, "[destroy] done!");
    }

    public int getAndroidVersion() {
        return Build.VERSION.SDK_INT;
    }

    private void disableOrientationListener() {
        OrientationEventListener orientationEventListener = this.mOrientationListener;
        if (orientationEventListener == null) {
            Logging.e(TAG, "[disableOrientationListener] mOrientationListener is null!");
            return;
        }
        orientationEventListener.disable();
        this.mOrientationListener = null;
        Logging.i(TAG, "[disableOrientationListener] done!");
    }

    private RtcEngineMessage.MediaNetworkInfo doGetNetworkInfo(Context context) {
        InetAddress inetAddressIntToInetAddress;
        if (context == null || !this.mAccessible) {
            return null;
        }
        RtcEngineMessage.MediaNetworkInfo mediaNetworkInfo = new RtcEngineMessage.MediaNetworkInfo();
        if (!checkAccessNetworkState(context)) {
            mediaNetworkInfo.ssid = "";
            mediaNetworkInfo.bssid = "";
            mediaNetworkInfo.rssi = 0;
            mediaNetworkInfo.signalLevel = 0;
            mediaNetworkInfo.frequency = 0;
            mediaNetworkInfo.linkspeed = 0;
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
        if (mediaNetworkInfo.networkType != 2) {
            AgoraPhoneStateListener agoraPhoneStateListener = this.mPhoneStateListener;
            if (agoraPhoneStateListener != null) {
                try {
                    mediaNetworkInfo.rssi = agoraPhoneStateListener.getRssi();
                    mediaNetworkInfo.signalLevel = this.mPhoneStateListener.getLevel();
                    mediaNetworkInfo.asu = this.mPhoneStateListener.getAsuLevel();
                } catch (Exception unused) {
                }
            } else if (context.checkPermission("android.permission.ACCESS_COARSE_LOCATION", Process.myPid(), Process.myUid()) == 0) {
                getSignalStrength(context, mediaNetworkInfo);
            }
        } else {
            if (!checkAccessWifiState(context)) {
                mediaNetworkInfo.ssid = "";
                mediaNetworkInfo.bssid = "";
                mediaNetworkInfo.rssi = 0;
                mediaNetworkInfo.signalLevel = 0;
                mediaNetworkInfo.frequency = 0;
                mediaNetworkInfo.linkspeed = 0;
                return mediaNetworkInfo;
            }
            WifiManager wifiManager = (WifiManager) context.getSystemService("wifi");
            DhcpInfo dhcpInfo = wifiManager.getDhcpInfo();
            if (dhcpInfo != null && (inetAddressIntToInetAddress = intToInetAddress(dhcpInfo.gateway)) != null) {
                mediaNetworkInfo.gatewayIp4 = inetAddressIntToInetAddress.getHostAddress();
            }
            WifiInfo connectionInfo = wifiManager.getConnectionInfo();
            if (connectionInfo != null) {
                mediaNetworkInfo.ssid = "";
                mediaNetworkInfo.bssid = "";
                int rssi = connectionInfo.getRssi();
                mediaNetworkInfo.rssi = rssi;
                mediaNetworkInfo.signalLevel = WifiManager.calculateSignalLevel(rssi, 5);
                mediaNetworkInfo.linkspeed = connectionInfo.getLinkSpeed();
                int frequency = connectionInfo.getFrequency();
                mediaNetworkInfo.frequency = frequency;
                if (frequency >= 5000) {
                    mediaNetworkInfo.networkSubtype = 101;
                } else if (frequency >= 2400) {
                    mediaNetworkInfo.networkSubtype = 100;
                }
            }
        }
        return mediaNetworkInfo;
    }

    private void enableOrientationListener(Context context) {
        try {
            if (this.mOrientationListener == null) {
                this.mOrientationListener = new OrientationEventListener(context, 2) { // from class: io.agora.rtc.internal.CommonUtility.1
                    @Override // android.view.OrientationEventListener
                    public void onOrientationChanged(int orientation) {
                        if (orientation == -1) {
                            return;
                        }
                        CommonUtility.this.checkOrientation(orientation);
                    }
                };
            }
            this.mOrientationListener.enable();
            Logging.i(TAG, "[enableOrientationListener] done!");
        } catch (Exception e) {
            Logging.e(TAG, "Unable to create OrientationEventListener, ", e);
        }
    }

    private static String getAppPrivateStorageDir(Context context) {
        File externalFilesDir;
        return (!"mounted".equals(Environment.getExternalStorageState()) || (externalFilesDir = context.getExternalFilesDir(null)) == null) ? context.getFilesDir().getAbsolutePath() : externalFilesDir.getAbsolutePath();
    }

    private static String getAppStorageDir(Context context) {
        if (context == null) {
            return null;
        }
        if (context.checkPermission("android.permission.READ_EXTERNAL_STORAGE", Process.myPid(), Process.myUid()) != 0) {
            Logging.w(TAG, "read external storage is not granted");
            return null;
        }
        return "/sdcard/" + context.getApplicationInfo().packageName;
    }

    private String getAssetsCacheFile(Context context, String filePath) {
        Logging.i(TAG, "getAssetsCacheFile filePath: " + filePath);
        try {
            File file = new File(context.getCacheDir(), "wm_" + filePath.replace(File.separator, "_"));
            if (file.exists()) {
                file.delete();
            }
            InputStream inputStreamOpen = context.getAssets().open(filePath);
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                try {
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int i10 = inputStreamOpen.read(bArr);
                        if (i10 <= 0) {
                            fileOutputStream.close();
                            inputStreamOpen.close();
                            return file.getAbsolutePath();
                        }
                        fileOutputStream.write(bArr, 0, i10);
                    }
                } catch (Throwable th) {
                    fileOutputStream.close();
                    throw th;
                }
            } catch (Throwable th2) {
                inputStreamOpen.close();
                throw th2;
            }
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    private AudioManager getAudioManager(Context context) {
        if (context == null) {
            return null;
        }
        return (AudioManager) context.getSystemService("audio");
    }

    public static byte[] getContextInfo(Context context) {
        if (context == null) {
            return null;
        }
        RtcEngineMessage.PAndroidContextInfo pAndroidContextInfo = new RtcEngineMessage.PAndroidContextInfo();
        pAndroidContextInfo.device = DeviceUtils.getDeviceId();
        pAndroidContextInfo.deviceInfo = DeviceUtils.getDeviceInfo();
        pAndroidContextInfo.systemInfo = DeviceUtils.getSystemInfo();
        pAndroidContextInfo.configDir = getAppPrivateStorageDir(context);
        pAndroidContextInfo.dataDir = context.getCacheDir().getAbsolutePath();
        pAndroidContextInfo.pluginDir = context.getApplicationInfo().nativeLibraryDir;
        pAndroidContextInfo.androidID = "";
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
        if (TextUtils.isEmpty(pAndroidContextInfo.androidID)) {
            pAndroidContextInfo.androidID = "";
        }
        return pAndroidContextInfo.marshall();
    }

    private static String getSystemProperty(String name) throws Exception {
        Class<?> cls = Class.forName("android.os.SystemProperties");
        return (String) cls.getMethod("get", String.class).invoke(cls, name);
    }

    private boolean isSimulatorProperty() {
        int i10;
        String systemProperty = "";
        String str = Build.MANUFACTURER;
        try {
            systemProperty = getSystemProperty("ro.hardware");
            i10 = (systemProperty == null || systemProperty.toLowerCase().equals("intel")) ? 1 : 0;
        } catch (Exception unused) {
            Logging.e(TAG, "get property hardware fail.");
        }
        String str2 = TAG;
        Logging.i(str2, "hardware = " + systemProperty + ", suspectCount = " + i10);
        try {
            String property = System.getProperty("os.arch");
            if (property == null || (property.toLowerCase().equals("i686") && !str.toLowerCase().contains("asus"))) {
                i10++;
                Logging.i(str2, "arch = " + property + ", suspectCount = " + i10);
            }
        } catch (Exception unused2) {
            Logging.e(TAG, "get property arch fail.");
        }
        if (Build.VERSION.SDK_INT > 28) {
            if (systemProperty.toLowerCase().contains("ttvm") || systemProperty.toLowerCase().contains("nox")) {
                i10 += 10;
            }
            try {
                String systemProperty2 = getSystemProperty("ro.build.flavor");
                if (systemProperty2 == null || systemProperty2.contains("vbox") || systemProperty2.contains("sdk_gphone")) {
                    i10++;
                    Logging.i(TAG, "buildFlavor = " + systemProperty2 + ", suspectCount = " + i10);
                }
            } catch (Exception unused3) {
                Logging.e(TAG, "get property buildFlavor fail.");
            }
            try {
                String systemProperty3 = getSystemProperty("ro.product.board");
                if (systemProperty3 == null || (systemProperty3.contains("android") | systemProperty3.contains("goldfish"))) {
                    i10++;
                    Logging.i(TAG, "productBoard = " + systemProperty3 + ", suspectCount = " + i10);
                }
            } catch (Exception unused4) {
                Logging.e(TAG, "get property productBoard fail.");
            }
            try {
                String systemProperty4 = getSystemProperty("ro.board.platform");
                if (systemProperty4 == null || systemProperty4.contains("android")) {
                    i10++;
                    Logging.i(TAG, "boardPlatform = " + systemProperty4 + ", suspectCount = " + i10);
                }
            } catch (Exception unused5) {
                Logging.e(TAG, "get property boardPlatform fail.");
            }
        }
        return i10 > 0;
    }

    private void monitorOrientationChange(Context context, boolean enable) {
        if (enable) {
            enableOrientationListener(context);
            regiseterBroadcaster(context);
        } else {
            disableOrientationListener();
            unregisterBroadcaster(context);
        }
    }

    private void regiseterBroadcaster(Context context) {
        if (context == null) {
            return;
        }
        this.mOrientationObserver = new BroadcastReceiver() { // from class: io.agora.rtc.internal.CommonUtility.2
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                if (intent.getAction().equals("android.intent.action.CONFIGURATION_CHANGED") && CommonUtility.this.mAccessible) {
                    CommonUtility.this.updateViewOrientation();
                }
            }
        };
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.CONFIGURATION_CHANGED");
        context.registerReceiver(this.mOrientationObserver, intentFilter);
        Logging.i(TAG, "[regiseterBroadcaster] done!");
    }

    private void unregisterBroadcaster(Context context) {
        BroadcastReceiver broadcastReceiver;
        if (context == null || (broadcastReceiver = this.mOrientationObserver) == null) {
            return;
        }
        context.unregisterReceiver(broadcastReceiver);
        Logging.i(TAG, "[unregisterBroadcaster] done!");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateViewOrientation() {
        if (this.mContext.get() == null || !this.mAccessible) {
            Logging.e(TAG, "[updateViewOrientation] mContext is null or mAccessible is false!");
            return;
        }
        Display defaultDisplay = ((WindowManager) this.mContext.get().getSystemService("window")).getDefaultDisplay();
        if (defaultDisplay == null) {
            Logging.e(TAG, "[updateViewOrientation] display is null!");
            return;
        }
        int rotation = defaultDisplay.getRotation();
        if (rotation == this.mOrientation) {
            return;
        }
        if (rotation == 0) {
            this.mOrientation = 0;
            nativeNotifyOrientationChange(this.mBridgeHandle, 0);
            return;
        }
        if (rotation == 1) {
            this.mOrientation = 1;
            nativeNotifyOrientationChange(this.mBridgeHandle, 1);
        } else if (rotation == 2) {
            this.mOrientation = 2;
            nativeNotifyOrientationChange(this.mBridgeHandle, 2);
        } else {
            if (rotation != 3) {
                return;
            }
            this.mOrientation = 3;
            nativeNotifyOrientationChange(this.mBridgeHandle, 3);
        }
    }

    public int getBatteryLifePercent() {
        if (this.mContext.get() == null || !this.mAccessible) {
            return 255;
        }
        return this.batteryPercentage;
    }

    public byte[] getNetworkInfo() {
        RtcEngineMessage.MediaNetworkInfo mediaNetworkInfoDoGetNetworkInfo;
        Context context = this.mContext.get();
        if (context == null || !this.mAccessible || (mediaNetworkInfoDoGetNetworkInfo = doGetNetworkInfo(context)) == null) {
            return null;
        }
        return mediaNetworkInfoDoGetNetworkInfo.marshall();
    }

    public int getNetworkType() {
        Context context = this.mContext.get();
        if (context != null && this.mAccessible && checkAccessNetworkState(context)) {
            return Connectivity.getNetworkType(context);
        }
        return -1;
    }

    public int isSpeakerphoneEnabled(Context context) {
        if (context == null) {
            return 0;
        }
        return getAudioManager(context).isSpeakerphoneOn() ? 1 : 0;
    }

    public void monitorConnectionEvent(boolean monitor) {
        ConnectionChangeBroadcastReceiver connectionChangeBroadcastReceiver;
        ConnectionChangeBroadcastReceiver connectionChangeBroadcastReceiver2;
        if (!monitor) {
            try {
                Context context = this.mContext.get();
                if (context != null && (connectionChangeBroadcastReceiver = this.mConnectionBroadcastReceiver) != null) {
                    context.unregisterReceiver(connectionChangeBroadcastReceiver);
                }
            } catch (IllegalArgumentException unused) {
            }
            this.mConnectionBroadcastReceiver = null;
            return;
        }
        if (this.mConnectionBroadcastReceiver == null) {
            try {
                this.mConnectionBroadcastReceiver = new ConnectionChangeBroadcastReceiver(this);
                Context context2 = this.mContext.get();
                if (context2 == null || (connectionChangeBroadcastReceiver2 = this.mConnectionBroadcastReceiver) == null) {
                    return;
                }
                context2.registerReceiver(connectionChangeBroadcastReceiver2, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            } catch (Exception e) {
                Logging.e(TAG, "Unable to create ConnectionChangeBroadcastReceiver, ", e);
            }
        }
    }

    public void monitorPowerChange(boolean monitor) {
        PowerConnectionReceiver powerConnectionReceiver;
        if (!monitor) {
            try {
                Context context = this.mContext.get();
                if (context != null && (powerConnectionReceiver = this.mPowerConnectionReceiver) != null) {
                    context.unregisterReceiver(powerConnectionReceiver);
                }
            } catch (IllegalArgumentException unused) {
            }
            this.mPowerConnectionReceiver = null;
            return;
        }
        if (this.mPowerConnectionReceiver == null) {
            try {
                this.mPowerConnectionReceiver = new PowerConnectionReceiver(this);
                Context context2 = this.mContext.get();
                if (context2 == null || this.mPowerConnectionReceiver == null) {
                    return;
                }
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.intent.action.BATTERY_CHANGED");
                context2.registerReceiver(this.mPowerConnectionReceiver, intentFilter);
            } catch (Exception e) {
                Logging.e(TAG, "Unable to create PowerConnectionReceiver, ", e);
            }
        }
    }

    public void notifyNetworkChange() {
        byte[] networkInfo;
        if (this.mContext.get() == null || !this.mAccessible || (networkInfo = getNetworkInfo()) == null || !this.mAccessible) {
            return;
        }
        nativeNotifyNetworkChange(this.mBridgeHandle, networkInfo);
    }

    public void onPhoneStateChanged(boolean enableAudio, int event, int arg) {
        if (this.mBridgeHandle == 0 || !this.mAccessible) {
            return;
        }
        nativeAudioRoutingPhoneChanged(this.mBridgeHandle, enableAudio, event, arg);
    }

    public void onPowerChange(int batteryPct) {
        if (this.mContext.get() == null || !this.mAccessible) {
            return;
        }
        this.batteryPercentage = batteryPct;
    }

    public void updateLocalVideoEnableState(boolean enable) {
        Logging.d(TAG, "updateLocalVideoEnableState: " + enable);
        this.mLocalVideoEnabled = enable;
    }

    public void updateVideoSourceType(int type) {
        Logging.d(TAG, "updateVideoSourceType: " + type);
        this.mVideoSourceType = type;
    }

    public CommonUtility(Context context, long bridge) {
        this.mAccessible = false;
        this.mPhoneStateListener = null;
        this.mBridgeHandle = 0L;
        this.mContext = new WeakReference<>(context);
        this.mBridgeHandle = bridge;
        try {
            this.mPhoneStateListener = new AgoraPhoneStateListener();
            ((TelephonyManager) context.getSystemService("phone")).listen(this.mPhoneStateListener, 288);
        } catch (Exception e) {
            Logging.e(TAG, "Unable to create PhoneStateListener, ", e);
        }
        monitorConnectionEvent(true);
        monitorPowerChange(true);
        monitorOrientationChange(context, true);
        this.mAccessible = true;
        Logging.i(TAG, "[init] done!");
    }

    public static boolean canGetDefaultContext() {
        Looper.myLooper();
        Looper.getMainLooper();
        return true;
    }

    private void checkVoipPermissions(Context context) throws SecurityException {
        checkVoipPermissions(context, "android.permission.INTERNET");
        checkVoipPermissions(context, "android.permission.RECORD_AUDIO");
        checkVoipPermissions(context, "android.permission.MODIFY_AUDIO_SETTINGS");
        if (this.mVideoSourceType == 1 && this.mLocalVideoEnabled) {
            checkVoipPermissions(context, "android.permission.CAMERA");
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
            if (!arrayList.isEmpty()) {
                String[] strArr = new String[arrayList.size()];
                Iterator it2 = arrayList.iterator();
                int i10 = 0;
                while (it2.hasNext()) {
                    strArr[i10] = (String) it2.next();
                    i10++;
                }
                return strArr;
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public static String getRandomUUID() {
        return UUID.randomUUID().toString().replace("-", "").toUpperCase();
    }

    private static String inetAddressToIpAddress(InetAddress address) {
        if (!address.isLoopbackAddress()) {
            if (address instanceof Inet4Address) {
                return ((Inet4Address) address).getHostAddress();
            }
            boolean z6 = address instanceof Inet6Address;
            return null;
        }
        return null;
    }

    public int getFrontCameraIndex(Context context) {
        return DeviceUtils.selectFrontCamera(context);
    }

    public int getNumberOfCameras(Context context) {
        return DeviceUtils.getNumberOfCameras(context);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0060 A[Catch: Exception -> 0x0079, TryCatch #0 {Exception -> 0x0079, blocks: (B:19:0x0052, B:21:0x0060, B:22:0x0062), top: B:49:0x0052 }] */
    /* JADX WARN: Code duplicated, block: B:27:0x0086  */
    /* JADX WARN: Code duplicated, block: B:30:0x008f  */
    /* JADX WARN: Code duplicated, block: B:41:0x00b9  */
    public int isSimulator() {
        String serial;
        int i10;
        String str = "";
        try {
            int i11 = Build.VERSION.SDK_INT;
            if (i11 < 26) {
                serial = Build.SERIAL;
            } else if (i11 <= 28) {
                serial = Build.getSerial();
            } else {
                serial = "";
            }
            try {
                if (serial.toLowerCase().equals(EnvironmentCompat.MEDIA_UNKNOWN)) {
                    try {
                        Logging.i(TAG, "serial = " + serial + ", suspectCount = 1");
                        i10 = 1;
                    } catch (Exception unused) {
                        i10 = 1;
                        Logging.e(TAG, "get serial info fail.");
                    }
                } else {
                    i10 = 0;
                }
            } catch (Exception unused2) {
                i10 = 0;
                Logging.e(TAG, "get serial info fail.");
                str = Build.MANUFACTURER;
                if (str.toLowerCase().contains("netease")) {
                    i10++;
                }
                Logging.i(TAG, "manufacturer = " + str);
                if (isSimulatorProperty()) {
                    i10++;
                }
                if (Build.VERSION.SDK_INT <= 28) {
                    return !serial.toLowerCase().equals(EnvironmentCompat.MEDIA_UNKNOWN) ? 1 : 1;
                }
                if ("nokia".equalsIgnoreCase(str)) {
                }
                return 1;
                return 0;
            }
        } catch (Exception unused3) {
            serial = "";
        }
        try {
            str = Build.MANUFACTURER;
            if (str.toLowerCase().contains("netease")) {
                i10++;
            }
            Logging.i(TAG, "manufacturer = " + str);
        } catch (Exception unused4) {
            Logging.e(TAG, "get manufacturer info fail.");
        }
        if (isSimulatorProperty()) {
            i10++;
        }
        if (Build.VERSION.SDK_INT <= 28) {
            if (("nokia".equalsIgnoreCase(str) || (!"Nokia_N1".equalsIgnoreCase(Build.DEVICE) && !"N1".equalsIgnoreCase(Build.MODEL))) && i10 > 0 && !str.toLowerCase().contains("welldo")) {
                return 1;
            }
        } else if ((!serial.toLowerCase().equals(EnvironmentCompat.MEDIA_UNKNOWN) || i10 > 0) && !str.toLowerCase().contains("welldo")) {
        }
        return 0;
    }

    private int checkVoipPermissions(Context context, int clientRole) {
        if (clientRole == 1) {
            try {
                checkVoipPermissions(context);
                return 0;
            } catch (SecurityException e) {
                Logging.e(TAG, "Do not have enough permission! ", e);
                return -9;
            }
        }
        if (clientRole != 2) {
            return -2;
        }
        try {
            checkVoipPermissions(context, "android.permission.INTERNET");
            return 0;
        } catch (SecurityException unused) {
            Logging.e(TAG, "Do not have Internet permission!");
            return -9;
        }
    }
}
