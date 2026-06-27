package com.narvii.util;

import android.R;
import android.app.Activity;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.AssetManager;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.Point;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.media.MediaPlayer;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.support.v4.content.FileProvider;
import android.support.v4.graphics.ColorUtils;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.text.TextUtilsCompat;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StyleSpan;
import android.util.Patterns;
import android.util.TypedValue;
import android.view.Display;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.fasterxml.jackson.databind.JsonNode;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.narvii.account.AccountService;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.app.NVInteractionScope;
import com.narvii.config.ConfigService;
import com.narvii.model.NVObject;
import com.narvii.model.api.ApiResponse;
import com.narvii.nvplayer.exoplayer.NVExoPlayer;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import com.narvii.widget.ACMAlertDialog;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URLEncoder;
import java.nio.channels.FileChannel;
import java.nio.charset.Charset;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.UUID;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* loaded from: classes.dex */
public class Utils {
    public static final int LENIENT_EQUAL = 1;
    public static final int NOT_EQUAL = 2;
    public static final int STRICT_EQUAL = 0;
    private static final String WEBP_FILE_HEADER_RIFF = "RIFF";
    private static final int WEBP_FILE_HEADER_SIZE = 12;
    private static final String WEBP_FILE_HEADER_WEBP = "WEBP";
    private static final AtomicLong uniqueLongIdGen = new AtomicLong();
    public static final DialogInterface.OnClickListener DIALOG_BUTTON_EMPTY_LISTENER = new DialogInterface.OnClickListener() { // from class: com.narvii.util.Utils.1
        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            dialogInterface.cancel();
        }
    };
    public static final Charset UTF_8 = Charset.forName(C.UTF8_NAME);
    public static final Handler handler = new Handler(Looper.getMainLooper());

    @Retention(RetentionPolicy.SOURCE)
    public @interface EqualCompareResult {
    }

    public static boolean isEquals(Object obj, Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        if (obj2 == null) {
            return false;
        }
        return obj.equals(obj2);
    }

    public static boolean isEqualsNotNull(Object obj, Object obj2) {
        if (obj == null || obj2 == null) {
            return false;
        }
        return obj.equals(obj2);
    }

    public static boolean isDeviceOffline(Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                return !activeNetworkInfo.isConnected();
            }
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean isEqualsContent(Object obj, Object obj2) {
        return isEquals(JacksonUtils.writeAsString(obj), JacksonUtils.writeAsString(obj2));
    }

    public static int compareLenientObject(LenientObject lenientObject, LenientObject lenientObject2) {
        if (lenientObject == null) {
            return lenientObject2 == null ? 0 : 2;
        }
        if (lenientObject2 == null) {
            return 2;
        }
        return lenientObject.checkEqual(lenientObject2);
    }

    public static int compareLenientObject(String str, String str2) {
        if (isStringEquals(str, str2)) {
            return 0;
        }
        return isStringEquals(urlIgnoreQuery(str), urlIgnoreQuery(str2)) ? 1 : 2;
    }

    public static int compareLenientObject(Object obj, Object obj2) {
        if (obj == null) {
            return obj2 == null ? 0 : 2;
        }
        if (obj2 == null) {
            return 2;
        }
        String string = obj.toString();
        String string2 = obj2.toString();
        if (isEquals(string, string2)) {
            return 0;
        }
        HashMap<String, String> urls = getUrls(obj.toString());
        HashMap<String, String> urls2 = getUrls(obj2.toString());
        for (Map.Entry<String, String> entry : urls.entrySet()) {
            string = string.replace(entry.getKey(), entry.getValue());
        }
        for (Map.Entry<String, String> entry2 : urls2.entrySet()) {
            string2 = string2.replace(entry2.getKey(), entry2.getValue());
        }
        return isEquals(string, string2) ? 1 : 2;
    }

    private static HashMap<String, String> getUrls(String str) {
        HashMap<String, String> map = new HashMap<>();
        Matcher matcher = Pattern.compile("\"(http://.*?)\"").matcher(str);
        while (matcher.find()) {
            String strGroup = matcher.group();
            if (strGroup != null) {
                map.put(strGroup, urlIgnoreQuery(strGroup));
            }
        }
        return map;
    }

    public static int compareLenientObjectList(List<? extends Object> list, List<? extends Object> list2) {
        if (list == null || list.size() == 0) {
            return (list2 == null || list2.size() == 0) ? 0 : 2;
        }
        if (list2 == null || list2.size() != list.size()) {
            return 2;
        }
        ArrayList arrayList = new ArrayList();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Object obj = list.get(i);
            Object obj2 = list2.get(i);
            if ((obj instanceof LenientObject) && (obj2 instanceof LenientObject)) {
                arrayList.add(Integer.valueOf(compareLenientObject((LenientObject) obj, (LenientObject) obj2)));
            } else if ((obj instanceof String) && (obj2 instanceof String)) {
                arrayList.add(Integer.valueOf(compareLenientObject((String) obj, (String) obj2)));
            } else {
                arrayList.add(Integer.valueOf(isEquals(obj, obj2) ? 0 : 2));
            }
        }
        if (arrayList.contains(2)) {
            return 2;
        }
        return arrayList.contains(1) ? 1 : 0;
    }

    public static boolean isStringEquals(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return TextUtils.isEmpty(str2);
        }
        return str.equals(str2);
    }

    public static boolean isListEquals(List<?> list, List<?> list2) {
        if (list == null || list.size() == 0) {
            return list2 == null || list2.size() == 0;
        }
        if (list2 == null || list2.size() != list.size()) {
            return false;
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Object obj = list.get(i);
            Object obj2 = list2.get(i);
            if ((obj instanceof NVObject) && (obj2 instanceof NVObject)) {
                if (!isIdEquals((NVObject) obj, (NVObject) obj2)) {
                    return false;
                }
            } else if (!isEquals(obj, obj2)) {
                return false;
            }
        }
        return true;
    }

    public static boolean isListObjectEquals(List<?> list, List<?> list2) {
        if (list == null || list.size() == 0) {
            return list2 == null || list2.size() == 0;
        }
        if (list2 == null || list2.size() != list.size()) {
            return false;
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (!isEquals(list.get(i), list2.get(i))) {
                return false;
            }
        }
        return true;
    }

    public static boolean isIdEquals(NVObject nVObject, NVObject nVObject2) {
        return (nVObject == null || nVObject2 == null || !isEqualsNotNull(nVObject.id(), nVObject2.id())) ? false : true;
    }

    public static boolean containsId(Collection<?> collection, String str) {
        if (collection == null) {
            return false;
        }
        for (Object obj : collection) {
            if ((obj instanceof NVObject) && isEqualsNotNull(((NVObject) obj).id(), str)) {
                return true;
            }
        }
        return false;
    }

    public static int indexOfId(Collection<?> collection, String str) {
        if (collection == null) {
            return -1;
        }
        int i = 0;
        for (Object obj : collection) {
            if ((obj instanceof NVObject) && isEqualsNotNull(((NVObject) obj).id(), str)) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public static <T extends NVObject> T searchForId(Collection<T> collection, String str) {
        for (T t : collection) {
            if (isEqualsNotNull(t.id(), str)) {
                return t;
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int removeId(java.util.Collection<?> r5, java.lang.String r6) {
        /*
            r0 = 0
            if (r5 != 0) goto L4
            return r0
        L4:
            java.util.Iterator r5 = r5.iterator()
        L8:
            boolean r1 = r5.hasNext()
            if (r1 == 0) goto L40
            java.lang.Object r1 = r5.next()
            boolean r2 = r1 instanceof com.narvii.model.Blog
            if (r2 == 0) goto L2a
            r2 = r1
            com.narvii.model.Blog r2 = (com.narvii.model.Blog) r2
            int r3 = r2.type
            r4 = 1
            if (r3 != r4) goto L2a
            java.lang.String r2 = r2.refObjectId
            boolean r2 = isEqualsNotNull(r2, r6)
            if (r2 == 0) goto L2a
            r5.remove()
            goto L3d
        L2a:
            boolean r2 = r1 instanceof com.narvii.model.NVObject
            if (r2 == 0) goto L8
            com.narvii.model.NVObject r1 = (com.narvii.model.NVObject) r1
            java.lang.String r1 = r1.id()
            boolean r1 = isEqualsNotNull(r1, r6)
            if (r1 == 0) goto L8
            r5.remove()
        L3d:
            int r0 = r0 + 1
            goto L8
        L40:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.util.Utils.removeId(java.util.Collection, java.lang.String):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x002b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int removeIdEqualsObject(java.util.Collection<?> r5, com.narvii.model.NVObject r6) {
        /*
            java.util.Iterator r5 = r5.iterator()
            r0 = 0
        L5:
            boolean r1 = r5.hasNext()
            if (r1 == 0) goto L3d
            java.lang.Object r1 = r5.next()
            boolean r2 = r1 instanceof com.narvii.model.Blog
            if (r2 == 0) goto L2b
            r2 = r1
            com.narvii.model.Blog r2 = (com.narvii.model.Blog) r2
            int r3 = r2.type
            r4 = 1
            if (r3 != r4) goto L2b
            java.lang.String r2 = r2.refObjectId
            java.lang.String r3 = r6.id()
            boolean r2 = isEqualsNotNull(r2, r3)
            if (r2 == 0) goto L2b
            r5.remove()
            goto L3a
        L2b:
            boolean r2 = r1 instanceof com.narvii.model.NVObject
            if (r2 == 0) goto L5
            com.narvii.model.NVObject r1 = (com.narvii.model.NVObject) r1
            boolean r1 = r1.isIdEquals(r6)
            if (r1 == 0) goto L5
            r5.remove()
        L3a:
            int r0 = r0 + 1
            goto L5
        L3d:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.util.Utils.removeIdEqualsObject(java.util.Collection, com.narvii.model.NVObject):int");
    }

    public static List filterDuplicated(List list, List<? extends NVObject> list2) {
        if (list == null) {
            return list2;
        }
        HashSet hashSet = new HashSet();
        for (Object obj : list) {
            if (obj instanceof NVObject) {
                hashSet.add(((NVObject) obj).id());
            }
        }
        ArrayList arrayList = new ArrayList(list2);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            if (hashSet.contains(((NVObject) it.next()).id())) {
                it.remove();
            }
        }
        return arrayList;
    }

    public static File uriToFile(String str) {
        if (str != null && str.startsWith("file:///")) {
            try {
                return new File(Uri.parse(str).getPath());
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public static boolean touch(File file) throws IOException {
        if (file.exists()) {
            return true;
        }
        try {
            new FileOutputStream(file).close();
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    public static boolean writeToFile(File file, byte[] bArr) {
        return writeToFile(file, bArr, false);
    }

    public static boolean writeToFile(File file, byte[] bArr, boolean z) {
        SafeFileOutputStream safeFileOutputStream;
        SafeFileOutputStream safeFileOutputStream2 = null;
        try {
            try {
                safeFileOutputStream = new SafeFileOutputStream(file);
            } catch (Throwable unused) {
            }
        } catch (Exception e) {
            e = e;
        }
        try {
            safeFileOutputStream.write(bArr);
            try {
                return true & safeFileOutputStream.close(true, z);
            } catch (Exception unused2) {
                return false;
            }
        } catch (Exception e2) {
            e = e2;
            safeFileOutputStream2 = safeFileOutputStream;
            Log.w("fail to write " + file, e);
            try {
                return safeFileOutputStream2.close(false, z) & false;
            } catch (Exception unused3) {
                return false;
            }
        } catch (Throwable unused4) {
            safeFileOutputStream2 = safeFileOutputStream;
            try {
                return safeFileOutputStream2.close(false, z) & false;
            } catch (Exception unused5) {
                return false;
            }
        }
    }

    public static boolean writeToFile(File file, String str) {
        return writeToFile(file, str.getBytes(UTF_8));
    }

    public static byte[] readDataFromFile(File file) throws Throwable {
        FileInputStream fileInputStream;
        try {
            fileInputStream = new FileInputStream(file);
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(Math.max(fileInputStream.available(), 64));
                byte[] bArr = new byte[4096];
                while (true) {
                    int i = fileInputStream.read(bArr);
                    if (i != -1) {
                        byteArrayOutputStream.write(bArr, 0, i);
                    } else {
                        fileInputStream.close();
                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                        safeClose(fileInputStream);
                        return byteArray;
                    }
                }
            } catch (Exception unused) {
                safeClose(fileInputStream);
                return null;
            } catch (Throwable th) {
                th = th;
                safeClose(fileInputStream);
                throw th;
            }
        } catch (Exception unused2) {
            fileInputStream = null;
        } catch (Throwable th2) {
            th = th2;
            fileInputStream = null;
        }
    }

    public static String readStringFromFile(File file) throws Throwable {
        byte[] dataFromFile = readDataFromFile(file);
        if (dataFromFile == null) {
            return null;
        }
        return new String(dataFromFile, UTF_8);
    }

    public static String readStringFromAssets(AssetManager assetManager, String str) throws IOException {
        StringBuilder sb = new StringBuilder();
        try {
            InputStream inputStreamOpen = assetManager.open(str);
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStreamOpen));
            for (String line = bufferedReader.readLine(); line != null; line = bufferedReader.readLine()) {
                sb.append(line);
                sb.append("\n");
            }
            bufferedReader.close();
            inputStreamOpen.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return sb.toString();
    }

    public static boolean appendToFile(File file, String str) throws Throwable {
        FileOutputStream fileOutputStream;
        try {
            fileOutputStream = new FileOutputStream(file, true);
            try {
                fileOutputStream.write(str.getBytes(UTF_8));
                try {
                    fileOutputStream.close();
                } catch (IOException unused) {
                }
                return true;
            } catch (IOException unused2) {
                if (fileOutputStream != null) {
                    try {
                        fileOutputStream.close();
                    } catch (IOException unused3) {
                    }
                }
                return false;
            } catch (Throwable th) {
                th = th;
                if (fileOutputStream != null) {
                    try {
                        fileOutputStream.close();
                    } catch (IOException unused4) {
                    }
                }
                throw th;
            }
        } catch (IOException unused5) {
            fileOutputStream = null;
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream = null;
        }
    }

    public static long getFolderSize(File file) {
        long length;
        long j = 0;
        if (file == null || !file.exists()) {
            return 0L;
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                if (file2.isDirectory()) {
                    length = getFolderSize(file2);
                } else {
                    length = file2.length();
                }
                j += length;
            }
        }
        return j;
    }

    public static void moveFolder(File file, File file2) {
        moveFolder(file, file2, false);
    }

    public static void moveFolder(File file, File file2, boolean z) {
        if (file == null || file2 == null || !file.exists()) {
            return;
        }
        if (file.isDirectory()) {
            if (!file2.exists()) {
                file2.mkdir();
            }
            String[] list = file.list();
            if (list != null) {
                for (String str : list) {
                    moveFolder(new File(file, str), new File(file2, str), z);
                }
            }
            file.delete();
            return;
        }
        moveFile(file, file2, z);
    }

    public static void moveFile(File file, File file2, boolean z) {
        if (file == null || file2 == null || !file.exists()) {
            return;
        }
        if (file2.exists()) {
            if (!z) {
                return;
            } else {
                file2.delete();
            }
        }
        Log.d("moveFile", "success=" + file.renameTo(file2));
    }

    public static void copyFolder(File file, File file2) throws Throwable {
        if (file.exists()) {
            if (file.isDirectory()) {
                if (!file2.exists()) {
                    file2.mkdir();
                }
                for (String str : file.list()) {
                    copyFolder(new File(file, str), new File(file2, str));
                }
                return;
            }
            copyFile(file, file2);
        }
    }

    public static void copyFile(File file, File file2) throws Throwable {
        FileChannel fileChannel;
        if (!file.exists()) {
            return;
        }
        if (!file2.exists()) {
            file2.createNewFile();
        }
        FileChannel fileChannel2 = null;
        try {
            FileChannel channel = new FileInputStream(file).getChannel();
            try {
                FileChannel channel2 = new FileOutputStream(file2).getChannel();
                try {
                    channel2.transferFrom(channel, 0L, channel.size());
                    if (channel2 != null) {
                        channel2.close();
                    }
                    if (channel != null) {
                        channel.close();
                    }
                } catch (Throwable th) {
                    fileChannel = channel;
                    th = th;
                    fileChannel2 = channel2;
                    if (fileChannel2 != null) {
                        fileChannel2.close();
                    }
                    if (fileChannel != null) {
                        fileChannel.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                fileChannel = channel;
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
            fileChannel = null;
        }
    }

    public static boolean deleteDir(File file) {
        boolean zDeleteDir;
        File[] fileArrListFiles;
        if (!file.isDirectory() || (fileArrListFiles = file.listFiles()) == null) {
            zDeleteDir = true;
        } else {
            zDeleteDir = true;
            for (File file2 : fileArrListFiles) {
                zDeleteDir &= deleteDir(file2);
            }
        }
        return file.delete() && zDeleteDir;
    }

    public static File getTmpDir(boolean z) {
        return new File(z ? NVApplication.instance().getFilesDir() : NVApplication.instance().getCacheDir(), "tmp");
    }

    public static File createTmpFile(boolean z) {
        return createTmpFile(z, "");
    }

    public static File createTmpFile(boolean z, String str) {
        File tmpDir = getTmpDir(z);
        tmpDir.mkdir();
        File file = null;
        for (int i = 0; i < 8; i++) {
            file = new File(tmpDir, Long.toHexString(UUID.randomUUID().getMostSignificantBits()) + str);
            file.exists();
        }
        return file;
    }

    public static File createTmpFile() {
        return createTmpFile(false);
    }

    public static void cleanTmpFiles() {
        File[] fileArrListFiles = getTmpDir(false).listFiles();
        if (fileArrListFiles != null) {
            for (File file : fileArrListFiles) {
                file.delete();
            }
        }
        File[] fileArrListFiles2 = getTmpDir(true).listFiles();
        if (fileArrListFiles2 != null) {
            for (File file2 : fileArrListFiles2) {
                file2.delete();
            }
        }
    }

    public static boolean isDestoryed(NVContext nVContext) {
        if (nVContext instanceof NVFragment) {
            return ((NVFragment) nVContext).isDestoryed();
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6 */
    public static NVContext getNVContext(Context context) {
        int i = 0;
        ContextWrapper contextWrapper = context;
        while (i < 6) {
            if (contextWrapper instanceof NVContext) {
                return (NVContext) contextWrapper;
            }
            if (contextWrapper instanceof ContextWrapper) {
                Context baseContext = contextWrapper.getBaseContext();
                if (baseContext == null || baseContext == contextWrapper) {
                    return null;
                }
                contextWrapper = baseContext;
            }
            i++;
            contextWrapper = contextWrapper;
        }
        return null;
    }

    public static boolean isGlobalInteractionScope(NVContext nVContext) {
        while (nVContext != null) {
            if (nVContext instanceof NVInteractionScope) {
                return ((NVInteractionScope) nVContext).isGlobalInteractionScope();
            }
            nVContext = nVContext.getParentContext();
        }
        return false;
    }

    public static int darkColor(int i) {
        float[] fArr = new float[3];
        Color.colorToHSV(i, fArr);
        fArr[1] = fArr[1] * 1.1f;
        fArr[2] = fArr[2] * 0.75f;
        return Color.HSVToColor(fArr);
    }

    public static int lightColor(int i) {
        float[] fArr = new float[3];
        Color.colorToHSV(i, fArr);
        fArr[1] = fArr[1] * 0.75f;
        fArr[2] = fArr[2] * 1.1f;
        return Color.HSVToColor(fArr);
    }

    public static Drawable tintDrawable(Drawable drawable, ColorStateList colorStateList) {
        Drawable drawableWrap = DrawableCompat.wrap(drawable.mutate());
        DrawableCompat.setTintList(drawableWrap, colorStateList);
        return drawableWrap;
    }

    public static float dpToPx(Context context, float f) {
        return TypedValue.applyDimension(1, f, context.getResources().getDisplayMetrics());
    }

    public static int dpToPxInt(Context context, float f) {
        return (int) dpToPx(context, f);
    }

    public static float spToPx(Context context, float f) {
        return TypedValue.applyDimension(2, f, context.getResources().getDisplayMetrics());
    }

    public static Point getScreenSize(Activity activity) {
        Display defaultDisplay = activity.getWindowManager().getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        return point;
    }

    public static int getScreenWidth(Context context) {
        return context.getResources().getDisplayMetrics().widthPixels;
    }

    public static int getScreenHeight(Context context) {
        return context.getResources().getDisplayMetrics().heightPixels;
    }

    public static float getScreenRatio(Context context) {
        int i = context.getResources().getDisplayMetrics().heightPixels;
        int i2 = context.getResources().getDisplayMetrics().widthPixels;
        if (i == 0) {
            return 0.0f;
        }
        return i2 / (i * 1.0f);
    }

    public static boolean isScreenRationOverThreshold(Context context) {
        float screenRatio = getScreenRatio(context);
        return screenRatio != 0.0f && screenRatio > 0.5625f;
    }

    public static int getStatusBarHeight(Context context) {
        int identifier = context.getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (identifier != 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return (int) dpToPx(context, 24.0f);
    }

    public static int getActionBarHeight(Context context) {
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(R.attr.actionBarSize, typedValue, true)) {
            return TypedValue.complexToDimensionPixelSize(typedValue.data, context.getResources().getDisplayMetrics());
        }
        return (int) dpToPx(context, 48.0f);
    }

    public static void post(Runnable runnable) {
        handler.post(runnable);
    }

    public static void postDelayed(Runnable runnable, long j) {
        handler.postDelayed(runnable, j);
    }

    public static void toastTODO(Context context) {
        if (NVApplication.DEBUG) {
            NVToast.makeText(context, "TODO", 0).show();
        }
    }

    public static long generateUniqueLongId() {
        return SystemClock.elapsedRealtime() + uniqueLongIdGen.incrementAndGet();
    }

    public static boolean isChinaTimezone() {
        String displayName;
        TimeZone timeZone = TimeZone.getDefault();
        if (timeZone.getRawOffset() != 28800000 || (displayName = timeZone.getDisplayName(Locale.US)) == null) {
            return false;
        }
        String lowerCase = displayName.toLowerCase(Locale.US);
        return lowerCase.contains("china") || lowerCase.contains("beijing");
    }

    public static int getTimeZoneInMin() {
        return (TimeZone.getDefault().getOffset(System.currentTimeMillis()) / 60) / 1000;
    }

    public static boolean isRtl() {
        return TextUtilsCompat.getLayoutDirectionFromLocale(Locale.getDefault()) == 1;
    }

    public static boolean shouldUpdateTimestamp(long j, long j2) {
        if (j == 0 || j >= j2) {
            return true;
        }
        if (j >= j2 - 604800000) {
            return false;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        return Math.abs(j - jCurrentTimeMillis) < Math.abs(j2 - jCurrentTimeMillis);
    }

    public static int getColor(int i, float f) {
        return ColorUtils.setAlphaComponent(i, (int) (f * 255.0f));
    }

    public static String getUrlParam(Map<String, String> map) {
        if (map == null) {
            return "";
        }
        boolean z = true;
        StringBuilder sb = new StringBuilder();
        for (String str : map.keySet()) {
            String str2 = map.get(str);
            if (!TextUtils.isEmpty(str2)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(z ? "?" : "&");
                sb2.append(str);
                sb2.append("=");
                sb2.append(URLEncoder.encode(str2));
                sb.append(sb2.toString());
                if (z) {
                    z = false;
                }
            }
        }
        return sb.toString();
    }

    public static String formatDeliveryTime(Date date) {
        return new SimpleDateFormat("MM/dd/yyyy hh:mm a", Locale.getDefault()).format(date);
    }

    public static boolean isNumeric(String str) {
        if (str == null) {
            return false;
        }
        int length = str.length();
        do {
            length--;
            if (length < 0) {
                return true;
            }
        } while (Character.isDigit(str.charAt(length)));
        return false;
    }

    public static String getValidUrl(String str) {
        if (TextUtils.isEmpty(str) || str.toLowerCase(Locale.US).startsWith("http://") || str.toLowerCase(Locale.US).startsWith("https://")) {
            return str;
        }
        return "http://" + str;
    }

    public static final boolean isValidEmail(String str) {
        return !TextUtils.isEmpty(str) && Patterns.EMAIL_ADDRESS.matcher(str).matches();
    }

    public static final boolean isValidPhone(String str) {
        return !TextUtils.isEmpty(str) && Patterns.PHONE.matcher(str).matches();
    }

    public static boolean isWebP(String str) {
        return urlJudger(str, ".webp");
    }

    public static boolean isGif(String str) {
        return urlJudger(str, ".gif");
    }

    public static boolean imageTypeJudgerBySuffix(String str, String[] strArr) {
        if (!TextUtils.isEmpty(str) && strArr != null && strArr.length != 0) {
            for (String str2 : strArr) {
                if (str.toLowerCase(Locale.US).endsWith("." + str2)) {
                    return true;
                }
            }
        }
        return false;
    }

    private static boolean urlJudger(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        int iIndexOf = str.indexOf(63);
        if (iIndexOf > 0) {
            str = str.substring(0, iIndexOf);
        }
        return str.toLowerCase(Locale.US).endsWith(str2);
    }

    public static String urlIgnoreQuery(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        int iIndexOf = str.indexOf(63);
        return iIndexOf > 0 ? str.substring(0, iIndexOf) : str;
    }

    public static String bytesToHexString(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        if (bArr == null || bArr.length <= 0) {
            return sb.toString();
        }
        for (byte b : bArr) {
            String hexString = Integer.toHexString(b & 255);
            if (hexString.length() < 2) {
                sb.append(0);
            }
            sb.append(hexString);
        }
        return sb.toString();
    }

    public static boolean isJPG(String str) {
        return TextUtils.equals(getImageType(str), "jpg");
    }

    public static boolean isPNG(String str) {
        return TextUtils.equals(getImageType(str), "png");
    }

    public static boolean isBMP(String str) {
        return TextUtils.equals(getImageType(str), "bmp");
    }

    public static String getImageType(String str) throws IOException {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        File file = new File(str);
        byte[] bArr = new byte[4];
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            fileInputStream.read(bArr, 0, bArr.length);
            String upperCase = bytesToHexString(bArr).toUpperCase();
            fileInputStream.close();
            if (upperCase.contains("FFD8FF")) {
                return "jpg";
            }
            if (upperCase.contains("89504E47")) {
                return "png";
            }
            if (upperCase.contains("47494638")) {
                return "gif";
            }
            if (upperCase.contains("424D")) {
                return "bmp";
            }
            return null;
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static boolean isGifInData(String str) throws IOException {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            FileInputStream fileInputStream = new FileInputStream(new File(str));
            byte[] bArr = new byte[4096];
            boolean z = true;
            if (fileInputStream.read(bArr) < 6 || bArr[0] != 71 || bArr[1] != 73 || bArr[2] != 70 || bArr[3] != 56 || ((bArr[4] != 55 && bArr[4] != 57) || bArr[5] != 97)) {
                z = false;
            }
            fileInputStream.close();
            return z;
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean isWebPInData(String str) throws IOException {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            FileInputStream fileInputStream = new FileInputStream(new File(str));
            byte[] bArr = new byte[12];
            boolean z = fileInputStream.read(bArr, 0, 12) == 12 && WEBP_FILE_HEADER_RIFF.equals(new String(bArr, 0, 4, C.ASCII_NAME)) && WEBP_FILE_HEADER_WEBP.equals(new String(bArr, 8, 4, C.ASCII_NAME));
            fileInputStream.close();
            return z;
        } catch (Exception unused) {
            return false;
        }
    }

    public static String getSuffix(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        int iIndexOf = str.indexOf(63);
        if (iIndexOf > 0) {
            str = str.substring(0, iIndexOf);
        }
        return str.substring(str.toLowerCase(Locale.US).lastIndexOf(46), str.length());
    }

    public static boolean safeClose(InputStream inputStream) throws IOException {
        if (inputStream == null) {
            return true;
        }
        try {
            inputStream.close();
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean safeClose(OutputStream outputStream) throws IOException {
        if (outputStream == null) {
            return true;
        }
        try {
            outputStream.close();
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean isLandscape(Context context) {
        return context.getResources().getConfiguration().orientation == 2;
    }

    public static int getCoreThreadCount() {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors() + 1;
        if (iAvailableProcessors > 2) {
            return iAvailableProcessors;
        }
        return 3;
    }

    public static boolean shouldShowLoginPage(NVContext nVContext) {
        if (nVContext == null || ((AccountService) nVContext.getService("account")).hasAccount()) {
            return false;
        }
        try {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("ndc://login"));
            intent.putExtra("promptType", "Required");
            intent.setFlags(C.ENCODING_PCM_MU_LAW);
            nVContext.startActivity(intent);
            NVToast.makeText(nVContext.getContext(), com.narvii.lib.R.string.login_first, 0).show();
            return true;
        } catch (Exception e) {
            Log.e("login", e);
            return true;
        }
    }

    private static class NamedThreadFactory implements ThreadFactory {
        final String name;
        final int priority;

        NamedThreadFactory(String str, int i) {
            this.name = str;
            this.priority = i;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable, this.name);
            int i = this.priority;
            if (i != 5) {
                thread.setPriority(i);
            }
            return thread;
        }
    }

    public static String getBadgeCount(int i) {
        return i > 9 ? "9+" : String.valueOf(i);
    }

    public static ThreadPoolExecutor createThreadPoolExecutor(int i, String str) {
        return createThreadPoolExecutor(i, str, 5);
    }

    public static ThreadPoolExecutor createThreadPoolExecutor(int i, String str, int i2) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(i, i, DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), new NamedThreadFactory(str, i2));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return threadPoolExecutor;
    }

    public static ThreadPoolExecutor createPriorityThreadPoolExecutor(int i, String str) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(i, i, DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new NamedThreadFactory(str, 5));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return threadPoolExecutor;
    }

    public static boolean applyCompat() {
        return Build.VERSION.SDK_INT < 21;
    }

    public static boolean isEligibleForSpeedDial() {
        return Build.VERSION.SDK_INT >= 19;
    }

    public static float getImageAspectRatioFromUrl(String str) {
        if (getImageSizeFromUrl(str, null) != null) {
            return Math.round((r2[1] / (r2[0] * 1.0f)) * 100.0f) / 100.0f;
        }
        return -1.0f;
    }

    public static int[] getImageSizeFromUrl(String str, ConfigService configService) {
        return getImageSizeFromUrl(str, configService, false);
    }

    public static int[] getImageSizeFromUrl(String str, ConfigService configService, boolean z) throws NumberFormatException {
        int iIndexOf;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String lastPathSegment = Uri.parse(str).getLastPathSegment();
        if (TextUtils.isEmpty(lastPathSegment) || (iIndexOf = lastPathSegment.indexOf(114)) < 0 || iIndexOf >= lastPathSegment.length() - 3) {
            return null;
        }
        String[] strArr = new String[3];
        int iIndexOf2 = lastPathSegment.indexOf(45);
        int i = iIndexOf + 1;
        if (iIndexOf2 <= i) {
            return null;
        }
        strArr[0] = lastPathSegment.substring(i, iIndexOf2);
        int iLastIndexOf = lastPathSegment.lastIndexOf(95);
        int iLastIndexOf2 = lastPathSegment.lastIndexOf(46);
        if (iLastIndexOf > 0 && iLastIndexOf2 > 0 && iLastIndexOf2 > iLastIndexOf) {
            String strSubstring = lastPathSegment.substring(iLastIndexOf2 + 1);
            if (!TextUtils.equals(strSubstring, "gif")) {
                strSubstring = z ? "videocover" : "default";
            }
            strArr[1] = strSubstring;
            strArr[2] = lastPathSegment.substring(iLastIndexOf + 1, iLastIndexOf2);
        }
        char cCharAt = lastPathSegment.charAt(i);
        int i2 = i;
        while (true) {
            if ((cCharAt != '-' && (cCharAt < '0' || cCharAt > '9')) || i2 == lastPathSegment.length()) {
                break;
            }
            int i3 = i2 + 1;
            char cCharAt2 = lastPathSegment.charAt(i2);
            i2 = i3;
            cCharAt = cCharAt2;
        }
        try {
            String[] strArrSplit = lastPathSegment.substring(i, i2 - 1).split("-");
            if (strArrSplit.length != 3) {
                return null;
            }
            int i4 = Integer.parseInt(strArrSplit[1]);
            int i5 = Integer.parseInt(strArrSplit[2]);
            if (configService != null) {
                float f = i5 / (i4 * 1.0f);
                JsonNode jsonNodeNodePath = JacksonUtils.nodePath(JacksonUtils.createObjectNode(configService.getImageResTargetJsonString()), strArr);
                if (jsonNodeNodePath != null) {
                    String strNodeString = JacksonUtils.nodeString(jsonNodeNodePath, "type");
                    int iNodeInt = JacksonUtils.nodeInt(jsonNodeNodePath, "width");
                    int iNodeInt2 = JacksonUtils.nodeInt(jsonNodeNodePath, "height");
                    if (!TextUtils.equals(strNodeString, "r")) {
                        if (TextUtils.equals(strNodeString, "c")) {
                            i5 = iNodeInt2;
                        } else if (i4 > i5) {
                            i5 = (int) ((iNodeInt * f) + 0.5f);
                        } else {
                            i4 = (int) ((iNodeInt2 / f) + 0.5f);
                            i5 = iNodeInt2;
                        }
                        i4 = iNodeInt;
                    }
                    return new int[]{i4, i5};
                }
            }
            return new int[]{i4, i5};
        } catch (NumberFormatException | StringIndexOutOfBoundsException unused) {
            return null;
        }
    }

    public static int[] retrieveResolutionFromUrl(String str) {
        int iIndexOf;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String lastPathSegment = Uri.parse(str).getLastPathSegment();
        if (!TextUtils.isEmpty(lastPathSegment) && (iIndexOf = lastPathSegment.indexOf(114)) >= 0 && iIndexOf < lastPathSegment.length() - 3) {
            int i = iIndexOf + 1;
            try {
                char cCharAt = lastPathSegment.charAt(i);
                int i2 = i;
                while (true) {
                    if ((cCharAt != '-' && (cCharAt < '0' || cCharAt > '9')) || i2 == lastPathSegment.length()) {
                        break;
                    }
                    int i3 = i2 + 1;
                    char cCharAt2 = lastPathSegment.charAt(i2);
                    i2 = i3;
                    cCharAt = cCharAt2;
                }
                String[] strArrSplit = lastPathSegment.substring(i, i2 - 1).split("-");
                if (strArrSplit.length != 3) {
                    return null;
                }
                return new int[]{Integer.parseInt(strArrSplit[1]), Integer.parseInt(strArrSplit[2])};
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    public static Uri getUriFromFile(Context context, File file) {
        if (Build.VERSION.SDK_INT >= 23) {
            return FileProvider.getUriForFile(context.getApplicationContext(), context.getApplicationContext().getApplicationContext().getPackageName() + ".provider", file);
        }
        return Uri.fromFile(file);
    }

    public static Intent getIntentWithUri(Context context, Intent intent, File file, String str) {
        if (intent == null) {
            intent = new Intent();
        }
        intent.putExtra(str, getUriFromFile(context, file));
        if (Build.VERSION.SDK_INT > 24) {
            intent.setFlags(3);
        }
        return intent;
    }

    public static File getAvailableCacheDir(Context context) {
        File externalCacheDir = context.getExternalCacheDir();
        return (externalCacheDir == null || !externalCacheDir.isDirectory()) ? context.getCacheDir() : externalCacheDir;
    }

    public static File getAvailableFileDir(Context context) {
        File externalFilesDir = context.getExternalFilesDir(null);
        return (externalFilesDir == null || !externalFilesDir.isDirectory()) ? context.getFilesDir() : externalFilesDir;
    }

    public static void playAudioEffect(Context context, int i) throws IllegalStateException {
        try {
            MediaPlayer mediaPlayerCreate = MediaPlayer.create(context, i);
            mediaPlayerCreate.setAudioStreamType(3);
            mediaPlayerCreate.start();
        } catch (Exception e) {
            Log.e(e.getMessage());
        }
    }

    public static int getDimenPixelSize(Context context, int i) {
        return context.getResources().getDimensionPixelSize(i);
    }

    public static int getOverlayPlaceholderHeight(Activity activity) {
        if (!(activity instanceof NVActivity)) {
            return 0;
        }
        NVActivity nVActivity = (NVActivity) activity;
        return nVActivity.getStatusBarOverlaySize() + nVActivity.getActionBarOverlaySize();
    }

    public static void copyToClipboard(Context context, String str) {
        copyToClipboard(context, str, 0);
    }

    public static void copyToClipboard(Context context, String str, int i) {
        try {
            ((ClipboardManager) context.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("", str));
            if (i == 0) {
                i = com.narvii.lib.R.string.copied_to_clipboard;
            }
            Toast.makeText(context, context.getString(i), 0).show();
        } catch (Exception e) {
            Log.e(e.getMessage());
        }
    }

    public static void showShortToast(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        NVToast.makeText(context, str, 0).show();
    }

    public static RectF getImageBounds(ImageView imageView) {
        RectF rectF = new RectF();
        Drawable drawable = imageView.getDrawable();
        if (drawable != null) {
            imageView.getImageMatrix().mapRect(rectF, new RectF(drawable.getBounds()));
        }
        return rectF;
    }

    public static void showNetworkError(String str, ApiResponse apiResponse, Context context) {
        boolean z;
        if (apiResponse != null && ApiService.shouldShowErrMessage(context) && (context instanceof Activity)) {
            ACMAlertDialog aCMAlertDialog = new ACMAlertDialog((Activity) context);
            aCMAlertDialog.setMessage(str);
            aCMAlertDialog.addButton(R.string.ok, null);
            try {
                aCMAlertDialog.show();
                z = true;
            } catch (Exception unused) {
            }
        } else {
            z = false;
        }
        if (z) {
            return;
        }
        NVToast.makeText(context, str, 1).show();
    }

    public static void deleteContents(File file) throws IOException {
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            throw new IOException("not a readable directory: " + file);
        }
        for (File file2 : fileArrListFiles) {
            if (file2.isDirectory()) {
                deleteContents(file2);
            }
            if (!file2.delete()) {
                throw new IOException("failed to delete file: " + file2);
            }
        }
    }

    public static int getNavigationBarHeight(Context context) {
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("navigation_bar_height", "dimen", "android");
        if (identifier > 0) {
            return resources.getDimensionPixelSize(identifier);
        }
        return 0;
    }

    public static String getResType(String str) {
        String str2;
        int iIndexOf;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String[] strArrSplit = getUrlWithoutQuery(str).split("_");
        if (strArrSplit.length <= 1 || (iIndexOf = (str2 = strArrSplit[strArrSplit.length - 1]).indexOf(".")) == -1) {
            return null;
        }
        return str2.substring(0, iIndexOf);
    }

    public static String getLowResVideoUrl(String str) {
        int iIndexOf;
        if (!videoSupportLowBitrate(str) || (iIndexOf = str.indexOf("_00.")) <= 0) {
            return str;
        }
        return str.substring(0, iIndexOf + 1) + NVExoPlayer.LOW_RES + str.substring(iIndexOf + 3);
    }

    public static String getHighResVideoUrl(String str) {
        int iIndexOf;
        if (TextUtils.isEmpty(str) || (iIndexOf = str.indexOf("_360p.")) <= 0) {
            return str;
        }
        return str.substring(0, iIndexOf + 1) + "00" + str.substring(iIndexOf + 5);
    }

    public static boolean videoSupportLowBitrate(String str) {
        String str2;
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(Uri.parse(str).getHost()) || !Uri.parse(str).getHost().contains(NVApplication.MAIN_HOST)) {
            return false;
        }
        String[] strArrSplit = getUrlWithoutQuery(str).split("-");
        if (strArrSplit.length != 3 || strArrSplit[2] == null) {
            return false;
        }
        String[] strArrSplit2 = strArrSplit[2].split("_");
        return strArrSplit2.length == 2 && (str2 = strArrSplit2[0]) != null && str2.endsWith("v2");
    }

    public static String getUrlWithoutQuery(String str) {
        try {
            URI uri = new URI(str);
            return new URI(uri.getScheme(), uri.getAuthority(), uri.getPath(), null, uri.getFragment()).toString();
        } catch (URISyntaxException unused) {
            return str;
        }
    }

    public static boolean isDarkTheme(NVContext nVContext) {
        NVContext parentContext = nVContext;
        for (int i = 0; i < 8 && parentContext != null; i++) {
            if (parentContext instanceof NVActivity) {
                return ((NVActivity) parentContext).isDarkTheme();
            }
            if (parentContext instanceof NVFragment) {
                return ((NVFragment) parentContext).isDarkTheme();
            }
            parentContext = parentContext.getParentContext();
        }
        return false;
    }

    public static String getRawVideoUrl(String str) {
        int iIndexOf;
        if (!videoSupportLowBitrate(str) || (iIndexOf = str.indexOf("_00.")) <= 0) {
            return str;
        }
        return str.substring(0, iIndexOf + 1) + "raw" + str.substring(iIndexOf + 3);
    }

    public static String decimalFormat(double d) {
        return decimalFormat(d, "#.0");
    }

    public static String decimalFormat(double d, String str) {
        DecimalFormatSymbols decimalFormatSymbols = new DecimalFormatSymbols(Locale.US);
        decimalFormatSymbols.setDecimalSeparator('.');
        return new DecimalFormat(str, decimalFormatSymbols).format(d);
    }

    public static <T> Function1<T, Unit> functionUnit(final Callback<T> callback) {
        return new Function1() { // from class: com.narvii.util.-$$Lambda$Utils$fZ4x1NwaijBTQQfKGNc9r0oguCk
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Utils.lambda$functionUnit$0(callback, obj);
            }
        };
    }

    static /* synthetic */ Unit lambda$functionUnit$0(Callback callback, Object obj) {
        callback.call(obj);
        return Unit.INSTANCE;
    }

    public static String safeFilename(String str) {
        int length = str.length();
        char[] cArr = new char[length];
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if ((cCharAt < '0' || cCharAt > '9') && ((cCharAt < 'a' || cCharAt > 'z') && ((cCharAt < 'A' || cCharAt > 'Z') && cCharAt != '.' && cCharAt != '-' && cCharAt != '_'))) {
                cCharAt = '_';
            }
            cArr[i] = cCharAt;
        }
        return new String(cArr);
    }

    public static ApiRequest.Builder getApiRequestFromPath(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        Uri uri = Uri.parse(str);
        String path = uri.getPath();
        ApiRequest.Builder builder = new ApiRequest.Builder();
        builder.path(path);
        for (String str2 : uri.getQueryParameterNames()) {
            builder.param(str2, uri.getQueryParameter(str2));
        }
        return builder;
    }

    public static int getAbTestType(String str) {
        return (com.narvii.util.text.TextUtils.isEmpty(str) || !Pattern.compile("^[a-fA-F8-9]$").matcher(String.valueOf(str.charAt(0))).matches()) ? 1 : 2;
    }

    public static String getErrorCodeMessage(Context context, int i, Object obj) {
        if (obj instanceof Integer) {
            return context.getString(i) + " (" + obj + ")";
        }
        return context.getString(i);
    }

    public static boolean isKotlinClass(Class cls) {
        if (cls == null) {
            return false;
        }
        for (Annotation annotation : cls.getDeclaredAnnotations()) {
            if (annotation.annotationType() == Metadata.class) {
                return true;
            }
        }
        return false;
    }

    public static void safeAddExtraInIntent(Intent intent, String str, String str2) {
        if (intent == null || str == null || str2 == null || (((str2.length() * 2) + 45) / 8) * 8 > 204800) {
            return;
        }
        intent.putExtra(str, str2);
    }

    public static boolean isListLenientEqual(List<? extends LenientObject> list, List<? extends LenientObject> list2, boolean z) {
        boolean z2;
        if (list == null || list.size() == 0) {
            return list2 == null || list2.size() == 0;
        }
        if (list2 == null || list2.size() != list.size()) {
            return false;
        }
        if (z) {
            ArrayList arrayList = new ArrayList(list2);
            int size = list.size();
            for (int i = 0; i < size; i++) {
                LenientObject lenientObject = list.get(i);
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    LenientObject lenientObject2 = (LenientObject) it.next();
                    if (lenientObject != null && lenientObject2 != null) {
                        if (lenientObject.checkEqual(lenientObject2) != 2) {
                            it.remove();
                            z2 = true;
                            break;
                        }
                    } else if (isEquals(lenientObject, lenientObject2)) {
                        it.remove();
                        z2 = true;
                        break;
                    }
                }
                z2 = false;
                if (!z2) {
                    return false;
                }
            }
            return true;
        }
        int size2 = list.size();
        for (int i2 = 0; i2 < size2; i2++) {
            LenientObject lenientObject3 = list.get(i2);
            LenientObject lenientObject4 = list2.get(i2);
            if (lenientObject3 != null && lenientObject4 != null) {
                if (lenientObject3.checkEqual(lenientObject4) == 2) {
                    return false;
                }
            } else if (!isEquals(lenientObject3, lenientObject4)) {
                return false;
            }
        }
        return true;
    }

    public static boolean isAndroidVersion8() {
        int i = Build.VERSION.SDK_INT;
        return i == 26 || i == 27;
    }

    public static void setActionBarTitle(String str, String str2, Activity activity) {
        if (activity instanceof NVActivity) {
            View viewFindViewById = activity.findViewById(com.narvii.lib.R.id.actionbar_title);
            if (viewFindViewById instanceof TextView) {
                TextView textView = (TextView) viewFindViewById;
                if (TextUtils.isEmpty(str2)) {
                    textView.setSingleLine(true);
                    textView.setGravity(8388627);
                    textView.setTypeface(null, 1);
                    activity.setTitle(str);
                    return;
                }
                textView.setSingleLine(false);
                textView.setGravity(17);
                int currentTextColor = textView.getCurrentTextColor();
                textView.setTypeface(null, 0);
                double dAlpha = Color.alpha(currentTextColor);
                Double.isNaN(dAlpha);
                int iArgb = Color.argb((int) (dAlpha * 0.6d), Color.red(currentTextColor), Color.green(currentTextColor), Color.blue(currentTextColor));
                int length = str.length() + 1;
                int length2 = str.length() + 1 + str2.length();
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str + "\n" + str2);
                spannableStringBuilder.setSpan(new StyleSpan(1), 0, str.length(), 17);
                spannableStringBuilder.setSpan(new RelativeSizeSpan(0.7f), length, length2, 33);
                spannableStringBuilder.setSpan(new ForegroundColorSpan(iArgb), length, length2, 33);
                activity.setTitle(spannableStringBuilder);
            }
        }
    }
}
