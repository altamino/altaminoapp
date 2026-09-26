package io.agora.rtc.internal;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import com.google.firebase.sessions.settings.c;
import io.agora.rtc.video.VideoCaptureCamera;
import io.agora.rtc.video.VideoCaptureCamera2;
import io.agora.rtc.video.VideoCaptureFactory;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Reader;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes7.dex */
public class DeviceUtils {
    public static final int DEVICE_INFO_UNKNOWN = -1;
    private static final String TAG = "DeviceUtils";
    private static final String[] H264_HW_BLACKLIST = {"SAMSUNG-SGH-I337", "Nexus 7", "Nexus 4", "P6-C00", "HM 2A", "XT105", "XT109", "XT1060"};
    private static final FileFilter CPU_FILTER = new FileFilter() { // from class: io.agora.rtc.internal.DeviceUtils.1
        @Override // java.io.FileFilter
        public boolean accept(File pathname) {
            String name = pathname.getName();
            if (!name.startsWith("cpu")) {
                return false;
            }
            for (int i10 = 3; i10 < name.length(); i10++) {
                if (!Character.isDigit(name.charAt(i10))) {
                    return false;
                }
            }
            return true;
        }
    };

    private static int extractValue(byte[] buffer, int index) {
        byte b7;
        while (index < buffer.length && (b7 = buffer[index]) != 10) {
            if (Character.isDigit(b7)) {
                int i10 = index + 1;
                while (i10 < buffer.length && Character.isDigit(buffer[i10])) {
                    i10++;
                }
                return Integer.parseInt(new String(buffer, 0, index, i10 - index));
            }
            index++;
        }
        return -1;
    }

    public static int getCPUMaxFreqKHz() {
        int iIntValue = -1;
        for (int i10 = 0; i10 < getNumberOfCPUCores(); i10++) {
            try {
                File file = new File("/sys/devices/system/cpu/cpu" + i10 + "/cpufreq/cpuinfo_max_freq");
                if (file.exists()) {
                    byte[] bArr = new byte[128];
                    FileInputStream fileInputStream = new FileInputStream(file);
                    try {
                        fileInputStream.read(bArr);
                        int i11 = 0;
                        while (Character.isDigit(bArr[i11]) && i11 < 128) {
                            i11++;
                        }
                        Integer numValueOf = Integer.valueOf(Integer.parseInt(new String(bArr, 0, i11)));
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
        if (iIntValue == -1) {
            FileInputStream fileInputStream2 = new FileInputStream("/proc/cpuinfo");
            try {
                int fileForValue = parseFileForValue("cpu MHz", fileInputStream2) * 1000;
                if (fileForValue > iIntValue) {
                    iIntValue = fileForValue;
                }
            } finally {
                fileInputStream2.close();
            }
        }
        return iIntValue;
    }

    public static int getNumberOfCPUCores() {
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

    private static int getCoresFromCPUFileList() {
        return new File("/sys/devices/system/cpu").listFiles(CPU_FILTER).length;
    }

    private static int getCoresFromFileInfo(String fileLocation) throws Throwable {
        FileInputStream fileInputStream = null;
        try {
            FileInputStream fileInputStream2 = new FileInputStream(fileLocation);
            try {
                String line = new BufferedReader(new InputStreamReader(fileInputStream2)).readLine();
                fileInputStream2.close();
                int coresFromFileString = getCoresFromFileString(line);
                try {
                    fileInputStream2.close();
                } catch (IOException e) {
                    Logging.e(TAG, "close file stream", e);
                }
                return coresFromFileString;
            } catch (IOException unused) {
                fileInputStream = fileInputStream2;
                if (fileInputStream == null) {
                    return -1;
                }
                try {
                    fileInputStream.close();
                    return -1;
                } catch (IOException e2) {
                    Logging.e(TAG, "close file stream", e2);
                    return -1;
                }
            } catch (Throwable th) {
                th = th;
                fileInputStream = fileInputStream2;
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (IOException e6) {
                        Logging.e(TAG, "close file stream", e6);
                    }
                }
                throw th;
            }
        } catch (IOException unused2) {
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private static int getCoresFromFileString(String str) {
        if (str == null || !str.matches("0-[\\d]+$")) {
            return -1;
        }
        return Integer.valueOf(str.substring(2)).intValue() + 1;
    }

    public static String getCpuABI() {
        return Build.CPU_ABI;
    }

    /* JADX WARN: Code duplicated, block: B:43:0x0060 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static String getCpuName() throws Throwable {
        Throwable th;
        FileReader fileReader;
        Reader reader = null;
        try {
            try {
                try {
                    fileReader = new FileReader("/proc/cpuinfo");
                    try {
                        String[] strArrSplit = new BufferedReader(fileReader).readLine().split(":\\s+", 2);
                        for (int i10 = 0; i10 < strArrSplit.length; i10++) {
                        }
                        fileReader.close();
                        String str = strArrSplit[1];
                        try {
                            fileReader.close();
                        } catch (IOException e) {
                            Logging.e(TAG, "failed to close proc file", e);
                        }
                        return str;
                    } catch (FileNotFoundException e2) {
                        e = e2;
                        Logging.e(TAG, "getCpuName failed, no /proc/cpuinfo found in system", e);
                        if (fileReader != null) {
                            fileReader.close();
                        }
                        return null;
                    } catch (IOException e6) {
                        e = e6;
                        Logging.e(TAG, "getCpuName failed,", e);
                        if (fileReader != null) {
                            fileReader.close();
                        }
                        return null;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (0 != 0) {
                        try {
                            reader.close();
                        } catch (IOException e7) {
                            Logging.e(TAG, "failed to close proc file", e7);
                        }
                    }
                    throw th;
                }
            } catch (FileNotFoundException e10) {
                e = e10;
                fileReader = null;
            } catch (IOException e11) {
                e = e11;
                fileReader = null;
            } catch (Throwable th3) {
                th = th3;
                if (0 != 0) {
                    reader.close();
                }
                throw th;
            }
        } catch (IOException e12) {
            Logging.e(TAG, "failed to close proc file", e12);
        }
    }

    public static String getDeviceId() {
        StringBuilder sb = new StringBuilder();
        sb.append(Build.MANUFACTURER);
        sb.append(c.FORWARD_SLASH_STRING);
        sb.append(Build.MODEL);
        sb.append(c.FORWARD_SLASH_STRING);
        sb.append(Build.PRODUCT);
        sb.append(c.FORWARD_SLASH_STRING);
        String str = Build.DEVICE;
        sb.append(str);
        sb.append(c.FORWARD_SLASH_STRING);
        sb.append(Build.VERSION.SDK_INT);
        sb.append(c.FORWARD_SLASH_STRING);
        sb.append(System.getProperty("os.version"));
        String string = sb.toString();
        if (string != null) {
            string = string.toLowerCase();
        }
        Matcher matcher = Pattern.compile(".*[A-Z][A-M][0-9]$").matcher(Build.ID);
        if (Build.BRAND.toLowerCase().equals("samsung") && str.toLowerCase().startsWith("cs02")) {
            matcher.find();
        }
        return string;
    }

    public static String getDeviceInfo() {
        String str = Build.MANUFACTURER + c.FORWARD_SLASH_STRING + Build.MODEL + c.FORWARD_SLASH_STRING + Build.HARDWARE;
        return str != null ? str.toLowerCase() : str;
    }

    public static int getRecommendedEncoderType() {
        List listAsList = Arrays.asList(H264_HW_BLACKLIST);
        String str = Build.MODEL;
        if (!listAsList.contains(str)) {
            return 0;
        }
        Logging.w(TAG, "Model: " + str + " has black listed H.264 encoder.");
        return 1;
    }

    public static String getSystemInfo() {
        return "Android/" + Build.VERSION.RELEASE;
    }

    private static int parseFileForValue(String textToMatch, FileInputStream stream) {
        byte[] bArr = new byte[1024];
        try {
            int i10 = stream.read(bArr);
            int i11 = 0;
            while (i11 < i10) {
                byte b7 = bArr[i11];
                if (b7 == 10 || i11 == 0) {
                    if (b7 == 10) {
                        i11++;
                    }
                    for (int i12 = i11; i12 < i10; i12++) {
                        int i13 = i12 - i11;
                        if (bArr[i12] != textToMatch.charAt(i13)) {
                            break;
                        }
                        if (i13 == textToMatch.length() - 1) {
                            return extractValue(bArr, i12);
                        }
                    }
                }
                i11++;
            }
            return -1;
        } catch (IOException | NumberFormatException unused) {
            return -1;
        }
    }

    public static int getNumberOfCameras(Context appContext) {
        try {
            return VideoCaptureFactory.getNumberOfCameras(appContext);
        } catch (Exception e) {
            Log.e(TAG, e.toString());
            return 0;
        }
    }

    public static int selectFrontCamera(Context appContext) {
        if (VideoCaptureFactory.isLReleaseOrLater()) {
            return VideoCaptureCamera2.getFrontCameraIndex(appContext);
        }
        return VideoCaptureCamera.getFrontCameraIndex();
    }
}
