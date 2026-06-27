package io.agora.rtc.internal;

import android.hardware.Camera;
import android.os.Build;
import android.util.Log;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Arrays;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
public class DeviceUtils {
    public static final int DEVICE_INFO_UNKNOWN = -1;
    private static final String TAG = "DeviceUtils";
    private static final String[] H264_HW_BLACKLIST = {"SAMSUNG-SGH-I337", "Nexus 7", "Nexus 4", "P6-C00", "HM 2A", "XT105", "XT109", "XT1060"};
    private static final FileFilter CPU_FILTER = new FileFilter() { // from class: io.agora.rtc.internal.DeviceUtils.1
        @Override // java.io.FileFilter
        public boolean accept(File file) {
            String name = file.getName();
            if (!name.startsWith("cpu")) {
                return false;
            }
            for (int i = 3; i < name.length(); i++) {
                if (!Character.isDigit(name.charAt(i))) {
                    return false;
                }
            }
            return true;
        }
    };

    public static String getDeviceId() {
        String lowerCase = Build.MANUFACTURER + "/" + Build.MODEL + "/" + Build.PRODUCT + "/" + Build.DEVICE + "/" + Build.VERSION.SDK_INT + "/" + System.getProperty("os.version");
        if (lowerCase != null) {
            lowerCase = lowerCase.toLowerCase();
        }
        Matcher matcher = Pattern.compile(".*[A-Z][A-M][0-9]$").matcher(Build.ID);
        if (!Build.BRAND.toLowerCase().equals("samsung") || !Build.DEVICE.toLowerCase().startsWith("cs02") || matcher.find() || Build.VERSION.SDK_INT != 19) {
            return lowerCase;
        }
        return "yeshen/simulator/" + Build.MODEL + "/" + Build.PRODUCT + "/" + Build.DEVICE + "/" + Build.VERSION.SDK_INT + "/" + System.getProperty("os.version");
    }

    public static String getDeviceInfo() {
        String str = Build.MANUFACTURER + "/" + Build.MODEL;
        return str != null ? str.toLowerCase() : str;
    }

    public static String getSystemInfo() {
        return "Android/" + Build.VERSION.RELEASE;
    }

    public static int selectFrontCamera() {
        try {
            return Camera.getNumberOfCameras() > 1 ? 1 : 0;
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            return 0;
        }
    }

    public static int getNumberOfCameras() {
        try {
            return Camera.getNumberOfCameras();
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            return 0;
        }
    }

    public static int getRecommendedEncoderType() {
        if (!Arrays.asList(H264_HW_BLACKLIST).contains(Build.MODEL)) {
            return Build.VERSION.SDK_INT <= 18 ? 1 : 0;
        }
        Logging.w(TAG, "Model: " + Build.MODEL + " has black listed H.264 encoder.");
        return 1;
    }

    public static int getNumberOfCPUCores() {
        if (Build.VERSION.SDK_INT <= 10) {
            return 1;
        }
        try {
            int coresFromFileInfo = getCoresFromFileInfo("/sys/devices/system/cpu/possible");
            if (coresFromFileInfo == -1) {
                coresFromFileInfo = getCoresFromFileInfo("/sys/devices/system/cpu/present");
            }
            return coresFromFileInfo == -1 ? getCoresFromCPUFileList() : coresFromFileInfo;
        } catch (NullPointerException | SecurityException unused) {
            return -1;
        }
    }

    public static String getCpuName() throws Throwable {
        FileReader fileReader;
        FileReader fileReader2 = null;
        try {
        } catch (Throwable th) {
            th = th;
        }
        try {
            try {
                fileReader = new FileReader("/proc/cpuinfo");
            } catch (IOException e) {
                Logging.e(TAG, "failed to close proc file", e);
                return null;
            }
            try {
                String[] strArrSplit = new BufferedReader(fileReader).readLine().split(":\\s+", 2);
                for (int i = 0; i < strArrSplit.length; i++) {
                }
                fileReader.close();
                String str = strArrSplit[1];
                try {
                    fileReader.close();
                } catch (IOException e2) {
                    Logging.e(TAG, "failed to close proc file", e2);
                }
                return str;
            } catch (FileNotFoundException e3) {
                e = e3;
                Logging.e(TAG, "getCpuName failed, no /proc/cpuinfo found in system", e);
                if (fileReader != null) {
                    fileReader.close();
                }
                return null;
            } catch (IOException e4) {
                e = e4;
                Logging.e(TAG, "getCpuName failed,", e);
                if (fileReader != null) {
                    fileReader.close();
                }
                return null;
            }
        } catch (FileNotFoundException e5) {
            e = e5;
            fileReader = null;
        } catch (IOException e6) {
            e = e6;
            fileReader = null;
        } catch (Throwable th2) {
            th = th2;
            if (0 != 0) {
                try {
                    fileReader2.close();
                } catch (IOException e7) {
                    Logging.e(TAG, "failed to close proc file", e7);
                }
            }
            throw th;
        }
    }

    public static String getCpuABI() {
        return Build.CPU_ABI;
    }

    private static int getCoresFromFileInfo(String str) throws Throwable {
        FileInputStream fileInputStream;
        try {
            fileInputStream = new FileInputStream(str);
        } catch (IOException unused) {
            fileInputStream = null;
        } catch (Throwable th) {
            th = th;
            fileInputStream = null;
        }
        try {
            String line = new BufferedReader(new InputStreamReader(fileInputStream)).readLine();
            fileInputStream.close();
            int coresFromFileString = getCoresFromFileString(line);
            try {
                fileInputStream.close();
            } catch (IOException e) {
                Logging.e(TAG, "close file stream", e);
            }
            return coresFromFileString;
        } catch (IOException unused2) {
            if (fileInputStream != null) {
                try {
                    fileInputStream.close();
                } catch (IOException e2) {
                    Logging.e(TAG, "close file stream", e2);
                }
            }
            return -1;
        } catch (Throwable th2) {
            th = th2;
            if (fileInputStream != null) {
                try {
                    fileInputStream.close();
                } catch (IOException e3) {
                    Logging.e(TAG, "close file stream", e3);
                }
            }
            throw th;
        }
    }

    private static int getCoresFromFileString(String str) {
        if (str == null || !str.matches("0-[\\d]+$")) {
            return -1;
        }
        return Integer.valueOf(str.substring(2)).intValue() + 1;
    }

    private static int getCoresFromCPUFileList() {
        return new File("/sys/devices/system/cpu").listFiles(CPU_FILTER).length;
    }

    public static int getCPUMaxFreqKHz() throws IOException {
        int iIntValue = -1;
        for (int i = 0; i < getNumberOfCPUCores(); i++) {
            try {
                File file = new File("/sys/devices/system/cpu/cpu" + i + "/cpufreq/cpuinfo_max_freq");
                if (file.exists()) {
                    byte[] bArr = new byte[128];
                    FileInputStream fileInputStream = new FileInputStream(file);
                    try {
                        fileInputStream.read(bArr);
                        int i2 = 0;
                        while (Character.isDigit(bArr[i2]) && i2 < bArr.length) {
                            i2++;
                        }
                        Integer numValueOf = Integer.valueOf(Integer.parseInt(new String(bArr, 0, i2)));
                        if (numValueOf.intValue() > iIntValue) {
                            iIntValue = numValueOf.intValue();
                        }
                    } catch (NumberFormatException unused) {
                    } catch (Throwable th) {
                        fileInputStream.close();
                        throw th;
                    }
                    fileInputStream.close();
                }
            } catch (IOException unused2) {
                return -1;
            }
        }
        if (iIntValue != -1) {
            return iIntValue;
        }
        FileInputStream fileInputStream2 = new FileInputStream("/proc/cpuinfo");
        try {
            int fileForValue = parseFileForValue("cpu MHz", fileInputStream2) * 1000;
            if (fileForValue <= iIntValue) {
                fileForValue = iIntValue;
            }
            fileInputStream2.close();
            return fileForValue;
        } catch (Throwable th2) {
            fileInputStream2.close();
            throw th2;
        }
    }

    private static int parseFileForValue(String str, FileInputStream fileInputStream) throws IOException {
        byte[] bArr = new byte[1024];
        try {
            int i = fileInputStream.read(bArr);
            int i2 = 0;
            while (i2 < i) {
                if (bArr[i2] == 10 || i2 == 0) {
                    if (bArr[i2] == 10) {
                        i2++;
                    }
                    for (int i3 = i2; i3 < i; i3++) {
                        int i4 = i3 - i2;
                        if (bArr[i3] != str.charAt(i4)) {
                            break;
                        }
                        if (i4 == str.length() - 1) {
                            return extractValue(bArr, i3);
                        }
                    }
                }
                i2++;
            }
            return -1;
        } catch (IOException | NumberFormatException unused) {
            return -1;
        }
    }

    private static int extractValue(byte[] bArr, int i) {
        while (i < bArr.length && bArr[i] != 10) {
            if (Character.isDigit(bArr[i])) {
                int i2 = i + 1;
                while (i2 < bArr.length && Character.isDigit(bArr[i2])) {
                    i2++;
                }
                return Integer.parseInt(new String(bArr, 0, i, i2 - i));
            }
            i++;
        }
        return -1;
    }
}
