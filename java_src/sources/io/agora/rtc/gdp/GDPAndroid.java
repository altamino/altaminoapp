package io.agora.rtc.gdp;

import android.app.ActivityManager;
import android.content.Context;
import android.opengl.GLES20;
import android.os.BatteryManager;
import android.os.Build;
import android.util.Log;
import com.google.firebase.remoteconfig.a;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class GDPAndroid {
    private static final FileFilter CPU_FILTER = new FileFilter() { // from class: io.agora.rtc.gdp.GDPAndroid.1
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
    private static final List<String> CPU_TEMP_FILE_PATHS = Arrays.asList("/sys/devices/system/cpu/cpu0/cpufreq/cpu_temp", "/sys/devices/system/cpu/cpu0/cpufreq/FakeShmoo_cpu_temp", "/sys/class/thermal/thermal_zone0/temp", "/sys/class/i2c-adapter/i2c-4/4-004c/temperature", "/sys/devices/platform/tegra-i2c.3/i2c-4/4-004c/temperature", "/sys/devices/platform/omap/omap_temp_sensor.0/temperature", "/sys/devices/platform/tegra_tmon/temp1_input", "/sys/kernel/debug/tegra_thermal/temp_tj", "/sys/devices/platform/s5p-tmu/temperature", "/sys/class/thermal/thermal_zone1/temp", "/sys/class/hwmon/hwmon0/device/temp1_input", "/sys/devices/virtual/thermal/thermal_zone1/temp", "/sys/devices/virtual/thermal/thermal_zone0/temp", "/sys/class/thermal/thermal_zone3/temp", "/sys/class/thermal/thermal_zone4/temp", "/sys/class/hwmon/hwmonX/temp1_input", "/sys/devices/platform/s5p-tmu/curr_temp");
    private static final int DEVICEINFO_UNKNOWN = -1;
    private static String TAG = "GDPAndroid";
    private Context mAppContext = null;
    private String mGpuVendor = "unkown";
    private String mGpuRenderer = "unkown";

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

    private static int getCPUMaxFreqKHz() {
        int i10 = -1;
        int iIntValue = -1;
        for (int i11 = 0; i11 < getNumberOfCPUCores(); i11++) {
            try {
                File file = new File("/sys/devices/system/cpu/cpu" + i11 + "/cpufreq/cpuinfo_max_freq");
                if (file.exists() && file.canRead()) {
                    byte[] bArr = new byte[128];
                    FileInputStream fileInputStream = new FileInputStream(file);
                    try {
                        fileInputStream.read(bArr);
                        int i12 = 0;
                        while (Character.isDigit(bArr[i12]) && i12 < 128) {
                            i12++;
                        }
                        Integer numValueOf = Integer.valueOf(Integer.parseInt(new String(bArr, 0, i12)));
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
            }
        }
        if (iIntValue == -1) {
            FileInputStream fileInputStream2 = new FileInputStream("/proc/cpuinfo");
            try {
                int fileForValue = parseFileForValue("cpu MHz", fileInputStream2) * 1000;
                if (fileForValue > iIntValue) {
                    iIntValue = fileForValue;
                }
                fileInputStream2.close();
            } catch (Throwable th2) {
                fileInputStream2.close();
                throw th2;
            }
        }
        i10 = iIntValue;
        Log.i(TAG, "max freq:" + i10);
        return i10;
    }

    private static int getCoresFromFileInfo(String fileLocation) throws Throwable {
        FileInputStream fileInputStream = null;
        try {
            FileInputStream fileInputStream2 = new FileInputStream(fileLocation);
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(fileInputStream2));
                String line = bufferedReader.readLine();
                bufferedReader.close();
                int coresFromFileString = getCoresFromFileString(line);
                try {
                    fileInputStream2.close();
                } catch (IOException unused) {
                }
                return coresFromFileString;
            } catch (IOException unused2) {
                fileInputStream = fileInputStream2;
                if (fileInputStream == null) {
                    return -1;
                }
                try {
                    fileInputStream.close();
                    return -1;
                } catch (IOException unused3) {
                    return -1;
                }
            } catch (Throwable th) {
                th = th;
                fileInputStream = fileInputStream2;
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (IOException unused4) {
                    }
                }
                throw th;
            }
        } catch (IOException unused5) {
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private static int getNumberOfCPUCores() {
        int coresFromCPUFileList = -1;
        try {
            int coresFromFileInfo = getCoresFromFileInfo("/sys/devices/system/cpu/possible");
            if (coresFromFileInfo == -1) {
                coresFromFileInfo = getCoresFromFileInfo("/sys/devices/system/cpu/present");
            }
            coresFromCPUFileList = coresFromFileInfo == -1 ? getCoresFromCPUFileList() : coresFromFileInfo;
        } catch (NullPointerException | SecurityException unused) {
        }
        Log.i(TAG, "cores:" + coresFromCPUFileList);
        return coresFromCPUFileList;
    }

    private boolean isEGL14SupportedHere() {
        return true;
    }

    private boolean isTemperatureValid(double temp) {
        return temp >= -30.0d && temp <= 250.0d;
    }

    public int getCpuTemperature() {
        double dDoubleValue;
        int i10 = 0;
        while (true) {
            List<String> list = CPU_TEMP_FILE_PATHS;
            if (i10 >= list.size()) {
                dDoubleValue = a.DEFAULT_VALUE_FOR_DOUBLE;
                break;
            }
            String str = list.get(i10);
            Double dValueOf = Double.valueOf(readOneLine(new File(str)));
            if (isTemperatureValid(dValueOf.doubleValue())) {
                dDoubleValue = dValueOf.doubleValue();
                Log.i(TAG, "getCpuTemperature valid path:" + str);
                break;
            }
            if (isTemperatureValid(dValueOf.doubleValue() / 1000.0d)) {
                dDoubleValue = dValueOf.doubleValue() / 1000.0d;
                Log.i(TAG, "getCpuTemperature valid path:" + str);
                break;
            }
            i10++;
        }
        return (int) (dDoubleValue * 1000.0d);
    }

    public String getGpuRenderer() {
        return this.mGpuRenderer;
    }

    public String getGpuVendor() {
        return this.mGpuVendor;
    }

    public int getOsVersion() {
        return Build.VERSION.SDK_INT;
    }

    private void gatherGlInfo() {
        EglCore eglCore = new EglCore(null, 2);
        OffscreenSurface offscreenSurface = new OffscreenSurface(eglCore, 1, 1);
        offscreenSurface.makeCurrent();
        this.mGpuVendor = GLES20.glGetString(7936);
        this.mGpuRenderer = GLES20.glGetString(7937);
        offscreenSurface.release();
        eglCore.release();
    }

    private int getBatteryLevel() {
        return ((BatteryManager) this.mAppContext.getSystemService("batterymanager")).getIntProperty(4);
    }

    private static int getCoresFromCPUFileList() {
        return new File("/sys/devices/system/cpu/").listFiles(CPU_FILTER).length;
    }

    private static int getCoresFromFileString(String str) {
        if (str == null || !str.matches("0-[\\d]+$")) {
            return -1;
        }
        return Integer.valueOf(str.substring(2)).intValue() + 1;
    }

    private static long getTotalMemory(Context c7) {
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        ((ActivityManager) c7.getSystemService("activity")).getMemoryInfo(memoryInfo);
        Log.i(TAG, "total mem:" + memoryInfo.totalMem);
        return memoryInfo.totalMem;
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

    private double readOneLine(File file) {
        String line = "";
        if (!file.exists()) {
            return -100000.0d;
        }
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            InputStreamReader inputStreamReader = new InputStreamReader(fileInputStream);
            BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
            line = bufferedReader.readLine();
            fileInputStream.close();
            inputStreamReader.close();
            bufferedReader.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        try {
            return Double.parseDouble(line);
        } catch (NumberFormatException unused) {
            return -100000.0d;
        }
    }

    public boolean checkBackground() {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) this.mAppContext.getSystemService("activity")).getRunningAppProcesses();
        if (runningAppProcesses.isEmpty()) {
            return true;
        }
        Iterator<ActivityManager.RunningAppProcessInfo> it = runningAppProcesses.iterator();
        while (it.hasNext()) {
            if (it.next().importance == 100) {
                return false;
            }
        }
        return true;
    }

    public String getCpuVendor() {
        return Build.HARDWARE;
    }

    public String getDeviceName() {
        return Build.MODEL;
    }

    public int getRam() {
        return (int) (getTotalMemory(this.mAppContext) / 1024);
    }

    public boolean initGDP(Context context) {
        this.mAppContext = context;
        if (!isEGL14SupportedHere()) {
            return true;
        }
        gatherGlInfo();
        return true;
    }

    public int getBattery() {
        return getBatteryLevel();
    }

    public int getCpuClock() {
        return getCPUMaxFreqKHz();
    }

    public int getCpuCores() {
        return getNumberOfCPUCores();
    }
}
