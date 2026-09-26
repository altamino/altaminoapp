package a2;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.content.Context;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;

/* JADX INFO: loaded from: classes4.dex */
public class a {
    private static final FileFilter CPU_FILTER = new C0003a();
    public static final int DEVICEINFO_UNKNOWN = -1;

    private static int a(byte[] bArr, int i10) {
        byte b7;
        while (i10 < bArr.length && (b7 = bArr[i10]) != 10) {
            if (Character.isDigit(b7)) {
                int i11 = i10 + 1;
                while (i11 < bArr.length && Character.isDigit(bArr[i11])) {
                    i11++;
                }
                return Integer.parseInt(new String(bArr, 0, i10, i11 - i10));
            }
            i10++;
        }
        return -1;
    }

    public static int b() {
        int iIntValue = -1;
        for (int i10 = 0; i10 < f(); i10++) {
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
                int iH = h("cpu MHz", fileInputStream2) * 1000;
                if (iH > iIntValue) {
                    iIntValue = iH;
                }
            } finally {
                fileInputStream2.close();
            }
        }
        return iIntValue;
    }

    public static int f() {
        try {
            int iD = d("/sys/devices/system/cpu/possible");
            if (iD == -1) {
                iD = d("/sys/devices/system/cpu/present");
            }
            return iD == -1 ? c() : iD;
        } catch (NullPointerException | SecurityException unused) {
            return -1;
        }
    }

    /* JADX INFO: renamed from: a2.a$a, reason: collision with other inner class name */
    static class C0003a implements FileFilter {
        C0003a() {
        }

        @Override // java.io.FileFilter
        public boolean accept(File file) {
            String name = file.getName();
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
    }

    private static int c() {
        return new File("/sys/devices/system/cpu/").listFiles(CPU_FILTER).length;
    }

    private static int d(String str) {
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(str)));
            String line = bufferedReader.readLine();
            bufferedReader.close();
            return e(line);
        } catch (IOException unused) {
            return -1;
        }
    }

    static int e(String str) {
        if (str == null || !str.matches("0-[\\d]+$")) {
            return -1;
        }
        return Integer.valueOf(str.substring(2)).intValue() + 1;
    }

    @TargetApi(16)
    public static long g(Context context) {
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        ((ActivityManager) context.getSystemService("activity")).getMemoryInfo(memoryInfo);
        return memoryInfo.totalMem;
    }

    private static int h(String str, FileInputStream fileInputStream) {
        byte[] bArr = new byte[1024];
        try {
            int i10 = fileInputStream.read(bArr);
            int i11 = 0;
            while (i11 < i10) {
                byte b7 = bArr[i11];
                if (b7 == 10 || i11 == 0) {
                    if (b7 == 10) {
                        i11++;
                    }
                    for (int i12 = i11; i12 < i10; i12++) {
                        int i13 = i12 - i11;
                        if (bArr[i12] != str.charAt(i13)) {
                            break;
                        }
                        if (i13 == str.length() - 1) {
                            return a(bArr, i12);
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
}
