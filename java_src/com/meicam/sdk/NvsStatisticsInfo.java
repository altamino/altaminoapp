package com.meicam.sdk;

import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.os.Build;
import android.os.Bundle;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import com.narvii.account.CodeVerifyFragment;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.Date;

/* loaded from: classes2.dex */
public class NvsStatisticsInfo {
    private static int NV_OS_TYPE_ANDROID = 1;
    private Context context;
    private LocationListener locationListener = new LocationListener() { // from class: com.meicam.sdk.NvsStatisticsInfo.1
        @Override // android.location.LocationListener
        public void onLocationChanged(Location location) {
        }

        @Override // android.location.LocationListener
        public void onProviderDisabled(String str) {
        }

        @Override // android.location.LocationListener
        public void onProviderEnabled(String str) {
        }

        @Override // android.location.LocationListener
        public void onStatusChanged(String str, int i, Bundle bundle) {
        }
    };

    public NvsStatisticsInfo(Context context) {
        this.context = context;
    }

    public String getAppId() {
        return this.context.getApplicationInfo().packageName;
    }

    public String getStartTime() {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date(System.currentTimeMillis()));
    }

    public String getDeviceId() {
        String string = Settings.Secure.getString(this.context.getContentResolver(), "android_id");
        String serial = Build.SERIAL;
        if (Build.VERSION.SDK_INT >= 26 && this.context.checkSelfPermission("android.permission.READ_PHONE_STATE") == 0) {
            serial = Build.getSerial();
        }
        String str = string + serial;
        try {
            return toMD5(str).toUpperCase();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return str;
        }
    }

    public String getModel() {
        return Build.MODEL;
    }

    public int getOsType() {
        return NV_OS_TYPE_ANDROID;
    }

    public String getOsVersion() {
        return Build.VERSION.RELEASE;
    }

    public String getPhoneNumber() {
        TelephonyManager telephonyManager = (TelephonyManager) this.context.getSystemService(CodeVerifyFragment.KEY_PHONE);
        return (Build.VERSION.SDK_INT < 23 || this.context.checkSelfPermission("android.permission.READ_PHONE_STATE") != 0 || telephonyManager.getLine1Number() == null) ? "" : telephonyManager.getLine1Number();
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0075  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.ArrayList getLngAndLat() {
        /*
            r14 = this;
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 0
            r3 = 23
            if (r0 < r3) goto L79
            android.content.Context r0 = r14.context
            java.lang.String r3 = "android.permission.ACCESS_COARSE_LOCATION"
            int r0 = r0.checkSelfPermission(r3)
            java.lang.String r3 = "location"
            if (r0 != 0) goto L3e
            android.content.Context r0 = r14.context
            java.lang.Object r0 = r0.getSystemService(r3)
            android.location.LocationManager r0 = (android.location.LocationManager) r0
            java.lang.String r10 = "network"
            boolean r4 = r0.isProviderEnabled(r10)
            if (r4 == 0) goto L3e
            r6 = 1000(0x3e8, double:4.94E-321)
            r8 = 0
            android.location.LocationListener r9 = r14.locationListener
            java.lang.String r5 = "network"
            r4 = r0
            r4.requestLocationUpdates(r5, r6, r8, r9)
            android.location.Location r0 = r0.getLastKnownLocation(r10)
            if (r0 == 0) goto L3e
            double r1 = r0.getLatitude()
            double r4 = r0.getLongitude()
            goto L3f
        L3e:
            r4 = r1
        L3f:
            android.content.Context r0 = r14.context
            java.lang.String r6 = "android.permission.ACCESS_FINE_LOCATION"
            int r0 = r0.checkSelfPermission(r6)
            if (r0 != 0) goto L75
            android.content.Context r0 = r14.context
            java.lang.Object r0 = r0.getSystemService(r3)
            android.location.LocationManager r0 = (android.location.LocationManager) r0
            java.lang.String r3 = "gps"
            boolean r6 = r0.isProviderEnabled(r3)
            if (r6 == 0) goto L75
            r8 = 1000(0x3e8, double:4.94E-321)
            r10 = 0
            android.location.LocationListener r11 = r14.locationListener
            java.lang.String r7 = "gps"
            r6 = r0
            r6.requestLocationUpdates(r7, r8, r10, r11)
            android.location.Location r0 = r0.getLastKnownLocation(r3)
            if (r0 == 0) goto L75
            double r1 = r0.getLatitude()
            double r3 = r0.getLongitude()
            r12 = r1
            r1 = r3
            goto L77
        L75:
            r12 = r1
            r1 = r4
        L77:
            r3 = r12
            goto L7a
        L79:
            r3 = r1
        L7a:
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.lang.Double r1 = java.lang.Double.valueOf(r1)
            r0.add(r1)
            java.lang.Double r1 = java.lang.Double.valueOf(r3)
            r0.add(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.meicam.sdk.NvsStatisticsInfo.getLngAndLat():java.util.ArrayList");
    }

    private static String toMD5(String str) throws NoSuchAlgorithmException {
        byte[] bArrDigest = MessageDigest.getInstance("MD5").digest(str.getBytes());
        StringBuilder sb = new StringBuilder();
        for (byte b : bArrDigest) {
            String hexString = Integer.toHexString(b & 255);
            if (hexString.length() < 2) {
                sb.append(0);
            }
            sb.append(hexString);
        }
        return sb.toString();
    }
}
