package com.narvii.util.deviceid;

import android.os.Build;
import android.provider.Settings;
import com.narvii.app.NVContext;
import com.narvii.lib.R;
import com.narvii.util.NativeHelper;
import com.narvii.util.Utils;
import java.io.File;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.HashSet;

/* loaded from: classes3.dex */
public class DeviceIDService {
    public static String pendingDeviceIdPlaceholder;
    private NVContext context;
    public String deviceId;

    private String deviceId1() {
        return null;
    }

    public DeviceIDService(NVContext nVContext) throws Throwable {
        this.context = nVContext;
        File file = getFile();
        String stringFromFile = Utils.readStringFromFile(file);
        if (stringFromFile != null) {
            if (!stringFromFile.startsWith("19")) {
                GetDeviceIdHelper getDeviceIdHelper = new GetDeviceIdHelper(nVContext);
                stringFromFile = NativeHelper.C(getUniquePsuedoID());
                getDeviceIdHelper.writeDeviceId(stringFromFile, file);
            }
            if (stringFromFile.length() == 82) {
                this.deviceId = stringFromFile;
            }
        }
        if (this.deviceId == null) {
            NVContext nVContext2 = this.context;
            GetDeviceIdHelper getDeviceIdHelper2 = new GetDeviceIdHelper(nVContext);
            String strC = NativeHelper.C(getUniquePsuedoID());
            NativeHelper.test();
            getDeviceIdHelper2.writeDeviceId(strC, file);
            this.deviceId = strC;
        }
    }

    private String getVersionPrefix() {
        String string = this.context.getContext().getString(R.string.didsver);
        if (string.length() != 1) {
            return string;
        }
        return "0" + string;
    }

    public File getFile() {
        return new File(this.context.getContext().getFilesDir(), "did");
    }

    public String getDeviceId() {
        return this.deviceId;
    }

    public boolean isReady() {
        return this.deviceId != null;
    }

    public long getGenTime() {
        return this.time;
    }

    private byte[] sha1(byte[] bArr) {
        try {
            return MessageDigest.getInstance("SHA-1").digest(bArr);
        } catch (Exception unused) {
            return new byte[20];
        }
    }

    public byte[] getUniquePsuedoID() {
        StringBuilder sb = new StringBuilder();
        sb.append(deviceIdHw());
        sb.append(deviceId1());
        sb.append(deviceId2());
        int length = sb.length();
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            bArr[i] = (byte) sb.charAt(i);
        }
        return sha1(bArr);
    }

    private String deviceIdHw() {
        String str = Build.CPU_ABI;
        if (Build.VERSION.SDK_INT >= 21) {
            int i = 0;
            HashSet hashSet = new HashSet(Arrays.asList("armeabi", "armeabi-v7a", "arm64-v8a", "x86", "x86_64", "mips", "mips64"));
            String[] strArr = Build.SUPPORTED_ABIS;
            int length = strArr.length;
            while (true) {
                if (i >= length) {
                    break;
                }
                String str2 = strArr[i];
                if (hashSet.contains(str2)) {
                    str = str2;
                    break;
                }
                i++;
            }
        }
        return Build.BOARD + Build.BRAND + str + Build.DEVICE + Build.MANUFACTURER + Build.MODEL + Build.PRODUCT;
    }

    private String deviceId2() {
        try {
            return Settings.Secure.getString(this.context.getContext().getContentResolver(), "android_id");
        } catch (Exception unused) {
            return null;
        }
    }
}
