package com.narvii.util;

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
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StyleSpan;
import android.util.Patterns;
import android.util.TypedValue;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.NonNull;
import androidx.core.content.FileProvider;
import androidx.core.graphics.ColorUtils;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.text.TextUtilsCompat;
import com.android.volley.VolleyError;
import com.fasterxml.jackson.databind.JsonNode;
import com.narvii.account.AccountService;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.app.NVInteractionScope;
import com.narvii.config.ConfigService;
import com.narvii.lib.R;
import com.narvii.model.Blog;
import com.narvii.model.NVObject;
import com.narvii.model.api.ApiResponse;
import com.narvii.nvplayer.exoplayer.NVExoPlayer;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import com.narvii.widget.ACMAlertDialog;
import com.safedk.android.utils.Logger;
import e8.l;
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
import java.util.Calendar;
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
import org.apache.commons.compress.archivers.tar.TarConstants;
import qa.y;
import w7.l0;
import w7.r;

/* JADX INFO: loaded from: classes.dex */
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
        public void onClick(DialogInterface dialogInterface, int i10) {
            dialogInterface.cancel();
        }
    };
    public static final Charset UTF_8 = Charset.forName("UTF-8");
    public static final Handler handler = new Handler(Looper.getMainLooper());

    @Retention(RetentionPolicy.SOURCE)
    public @interface EqualCompareResult {
    }

    private static class NamedThreadFactory implements ThreadFactory {
        final String name;
        final int priority;

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(@NonNull Runnable runnable) {
            Thread thread = new Thread(runnable, this.name);
            int i10 = this.priority;
            if (i10 != 5) {
                thread.setPriority(i10);
            }
            return thread;
        }

        NamedThreadFactory(String str, int i10) {
            this.name = str;
            this.priority = i10;
        }
    }

    public static boolean appendToFile(File file, String str) throws Throwable {
        FileOutputStream fileOutputStream = null;
        try {
            FileOutputStream fileOutputStream2 = new FileOutputStream(file, true);
            try {
                fileOutputStream2.write(str.getBytes(UTF_8));
                try {
                    fileOutputStream2.close();
                } catch (IOException unused) {
                }
                return true;
            } catch (IOException unused2) {
                fileOutputStream = fileOutputStream2;
                if (fileOutputStream == null) {
                    return false;
                }
                try {
                    fileOutputStream.close();
                    return false;
                } catch (IOException unused3) {
                    return false;
                }
            } catch (Throwable th) {
                th = th;
                fileOutputStream = fileOutputStream2;
                if (fileOutputStream != null) {
                    try {
                        fileOutputStream.close();
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

    public static boolean applyCompat() {
        return false;
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

    public static int compareLenientObject(LenientObject lenientObject, LenientObject lenientObject2) {
        if (lenientObject == null) {
            return lenientObject2 == null ? 0 : 2;
        }
        if (lenientObject2 == null) {
            return 2;
        }
        return lenientObject.checkEqual(lenientObject2);
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
        for (int i10 = 0; i10 < size; i10++) {
            Object obj = list.get(i10);
            Object obj2 = list2.get(i10);
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

    public static void copyToClipboard(Context context, String str) {
        copyToClipboard(context, str, 0);
    }

    public static ThreadPoolExecutor createThreadPoolExecutor(int i10, String str) {
        return createThreadPoolExecutor(i10, str, 5);
    }

    public static File createTmpFile(boolean z6) {
        return createTmpFile(z6, "");
    }

    public static int darkColor(int i10) {
        float[] fArr = new float[3];
        Color.colorToHSV(i10, fArr);
        fArr[1] = fArr[1] * 1.1f;
        fArr[2] = fArr[2] * 0.75f;
        return Color.HSVToColor(fArr);
    }

    public static String decimalFormat(double d) {
        return decimalFormat(d, "#.0");
    }

    public static File getAvailableFileDir(Context context) {
        File externalFilesDir = context.getExternalFilesDir(null);
        return (externalFilesDir == null || !externalFilesDir.isDirectory()) ? context.getFilesDir() : externalFilesDir;
    }

    public static float getImageAspectRatioFromUrl(String str) {
        int[] imageSizeFromUrl = getImageSizeFromUrl(str, null);
        if (imageSizeFromUrl != null) {
            return Math.round((imageSizeFromUrl[1] / (imageSizeFromUrl[0] * 1.0f)) * 100.0f) / 100.0f;
        }
        return -1.0f;
    }

    public static int[] getImageSizeFromUrl(String str, ConfigService configService) {
        return getImageSizeFromUrl(str, configService, false);
    }

    public static NVContext getNVContext(Context context) {
        int i10 = 0;
        Object obj = context;
        while (i10 < 6) {
            if (obj instanceof NVContext) {
                return (NVContext) obj;
            }
            if (obj instanceof ContextWrapper) {
                Context baseContext = ((ContextWrapper) obj).getBaseContext();
                if (baseContext == null || baseContext == obj) {
                    return null;
                }
                obj = baseContext;
            }
            i10++;
            obj = obj;
        }
        return null;
    }

    public static int indexOfId(Collection<?> collection, String str) {
        if (collection == null) {
            return -1;
        }
        int i10 = 0;
        for (Object obj : collection) {
            if ((obj instanceof NVObject) && isEqualsNotNull(((NVObject) obj).id(), str)) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    public static boolean isAndroidVersion8() {
        int i10 = Build.VERSION.SDK_INT;
        return i10 == 26 || i10 == 27;
    }

    public static boolean isDarkTheme(NVContext nVContext) {
        for (int i10 = 0; i10 < 8 && nVContext != null; i10++) {
            if (nVContext instanceof NVActivity) {
                return ((NVActivity) nVContext).isDarkTheme();
            }
            if (nVContext instanceof NVFragment) {
                return ((NVFragment) nVContext).isDarkTheme();
            }
            nVContext = nVContext.getParentContext();
        }
        return false;
    }

    public static boolean isDeviceOffline(Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            return activeNetworkInfo == null || !activeNetworkInfo.isConnected();
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean isEligibleForSpeedDial() {
        return true;
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

    public static boolean isKotlinClass(Class cls) {
        if (cls == null) {
            return false;
        }
        for (Annotation annotation : cls.getDeclaredAnnotations()) {
            if (annotation.annotationType() == r.class) {
                return true;
            }
        }
        return false;
    }

    public static boolean isListEquals(List<?> list, List<?> list2) {
        if (list == null || list.size() == 0) {
            return list2 == null || list2.size() == 0;
        }
        if (list2 == null || list2.size() != list.size()) {
            return false;
        }
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            Object obj = list.get(i10);
            Object obj2 = list2.get(i10);
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

    public static boolean isListLenientEqual(List<? extends LenientObject> list, List<? extends LenientObject> list2, boolean z6) {
        if (list == null || list.size() == 0) {
            return list2 == null || list2.size() == 0;
        }
        if (list2 == null || list2.size() != list.size()) {
            return false;
        }
        if (!z6) {
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                LenientObject lenientObject = list.get(i10);
                LenientObject lenientObject2 = list2.get(i10);
                if (lenientObject == null || lenientObject2 == null) {
                    if (!isEquals(lenientObject, lenientObject2)) {
                        return false;
                    }
                } else if (lenientObject.checkEqual(lenientObject2) == 2) {
                    return false;
                }
            }
            return true;
        }
        ArrayList arrayList = new ArrayList(list2);
        int size2 = list.size();
        for (int i11 = 0; i11 < size2; i11++) {
            LenientObject lenientObject3 = list.get(i11);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                LenientObject lenientObject4 = (LenientObject) it.next();
                if (lenientObject3 == null || lenientObject4 == null) {
                    if (isEquals(lenientObject3, lenientObject4)) {
                        it.remove();
                    }
                } else if (lenientObject3.checkEqual(lenientObject4) != 2) {
                    it.remove();
                }
            }
            return false;
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
        for (int i10 = 0; i10 < size; i10++) {
            if (!isEquals(list.get(i10), list2.get(i10))) {
                return false;
            }
        }
        return true;
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

    public static int lightColor(int i10) {
        float[] fArr = new float[3];
        Color.colorToHSV(i10, fArr);
        fArr[1] = fArr[1] * 0.75f;
        fArr[2] = fArr[2] * 1.1f;
        return Color.HSVToColor(fArr);
    }

    public static void moveFolder(File file, File file2) {
        moveFolder(file, file2, false);
    }

    public static byte[] readDataFromFile(File file) throws Throwable {
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2 = null;
        try {
            fileInputStream = new FileInputStream(file);
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(Math.max(fileInputStream.available(), 64));
                byte[] bArr = new byte[4096];
                while (true) {
                    int i10 = fileInputStream.read(bArr);
                    if (i10 == -1) {
                        fileInputStream.close();
                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                        safeClose(fileInputStream);
                        return byteArray;
                    }
                    byteArrayOutputStream.write(bArr, 0, i10);
                }
            } catch (Exception unused) {
                safeClose(fileInputStream);
                return null;
            } catch (Throwable th) {
                th = th;
                fileInputStream2 = fileInputStream;
                safeClose(fileInputStream2);
                throw th;
            }
        } catch (Exception unused2) {
            fileInputStream = null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x002c  */
    public static int removeId(Collection<?> collection, String str) {
        int i10 = 0;
        if (collection == null) {
            return 0;
        }
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            Object next = it.next();
            if (next instanceof Blog) {
                Blog blog = (Blog) next;
                if (blog.type == 1 && isEqualsNotNull(blog.refObjectId, str)) {
                    it.remove();
                } else if (!(next instanceof NVObject) && isEqualsNotNull(((NVObject) next).id(), str)) {
                    it.remove();
                }
                i10++;
            } else if (!(next instanceof NVObject)) {
            }
        }
        return i10;
    }

    public static boolean safeClose(InputStream inputStream) {
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

    public static void safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(NVContext p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    public static boolean shouldShowLoginPage(NVContext nVContext) {
        if (nVContext == null || ((AccountService) nVContext.getService("account")).hasAccount()) {
            return false;
        }
        try {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("ndc://login"));
            intent.putExtra("promptType", "Required");
            intent.setFlags(268435456);
            safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(nVContext, intent);
            NVToast.makeText(nVContext.getContext(), R.string.login_first, 0).show();
            return true;
        } catch (Exception e) {
            Log.e("login", e);
            return true;
        }
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

    public static boolean writeToFile(File file, byte[] bArr) {
        return writeToFile(file, bArr, false);
    }

    @NonNull
    public static String bytesToHexString(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        if (bArr == null || bArr.length <= 0) {
            return sb.toString();
        }
        for (byte b7 : bArr) {
            String hexString = Integer.toHexString(b7 & 255);
            if (hexString.length() < 2) {
                sb.append(0);
            }
            sb.append(hexString);
        }
        return sb.toString();
    }

    public static int compareLenientObject(String str, String str2) {
        if (isStringEquals(str, str2)) {
            return 0;
        }
        return isStringEquals(urlIgnoreQuery(str), urlIgnoreQuery(str2)) ? 1 : 2;
    }

    public static void copyToClipboard(Context context, String str, int i10) {
        try {
            ((ClipboardManager) context.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("", str));
            if (i10 == 0) {
                i10 = R.string.copied_to_clipboard;
            }
            Toast.makeText(context, context.getString(i10), 0).show();
        } catch (Exception e) {
            Log.e(e.getMessage());
        }
    }

    public static ThreadPoolExecutor createPriorityThreadPoolExecutor(int i10, String str) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(i10, i10, 5000L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new NamedThreadFactory(str, 5));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return threadPoolExecutor;
    }

    public static ThreadPoolExecutor createThreadPoolExecutor(int i10, String str, int i11) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(i10, i10, 5000L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), new NamedThreadFactory(str, i11));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return threadPoolExecutor;
    }

    public static File createTmpFile(boolean z6, String str) {
        File tmpDir = getTmpDir(z6);
        tmpDir.mkdir();
        File file = null;
        for (int i10 = 0; i10 < 8; i10++) {
            file = new File(tmpDir, Long.toHexString(UUID.randomUUID().getMostSignificantBits()) + str);
            file.exists();
        }
        return file;
    }

    public static String decimalFormat(double d, String str) {
        DecimalFormatSymbols decimalFormatSymbols = new DecimalFormatSymbols(Locale.US);
        decimalFormatSymbols.setDecimalSeparator('.');
        return new DecimalFormat(str, decimalFormatSymbols).format(d);
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

    public static String formatDeliveryTime(Date date) {
        return new SimpleDateFormat("MM/dd/yyyy hh:mm a", Locale.getDefault()).format(date);
    }

    public static <T> l<T, l0> functionUnit(final Callback<T> callback) {
        return new l() { // from class: com.narvii.util.f
            @Override // e8.l
            public final Object invoke(Object obj) {
                return Utils.lambda$functionUnit$0(callback, obj);
            }
        };
    }

    public static int getActionBarHeight(Context context) {
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(android.R.attr.actionBarSize, typedValue, true)) {
            return (int) dpToPx(context, 48.0f);
        }
        return TypedValue.complexToDimensionPixelSize(typedValue.data, context.getResources().getDisplayMetrics());
    }

    public static String getBadgeCount(int i10) {
        return i10 > 9 ? "9+" : String.valueOf(i10);
    }

    public static int getColor(int i10, float f) {
        return ColorUtils.o(i10, (int) (f * 255.0f));
    }

    public static String getErrorCodeMessage(Context context, int i10, Object obj) {
        if (!(obj instanceof Integer)) {
            return context.getString(i10);
        }
        return context.getString(i10) + " (" + obj + ")";
    }

    public static long getFolderSize(File file) {
        long folderSize = 0;
        if (file == null || !file.exists()) {
            return 0L;
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                folderSize += file2.isDirectory() ? getFolderSize(file2) : file2.length();
            }
        }
        return folderSize;
    }

    public static int getHttpCode(Throwable th) {
        if (th == null || !(th instanceof VolleyError)) {
            return 0;
        }
        return ((VolleyError) th).networkResponse.statusCode;
    }

    public static RectF getImageBounds(ImageView imageView) {
        RectF rectF = new RectF();
        Drawable drawable = imageView.getDrawable();
        if (drawable != null) {
            imageView.getImageMatrix().mapRect(rectF, new RectF(drawable.getBounds()));
        }
        return rectF;
    }

    public static int[] getImageSizeFromUrl(String str, ConfigService configService, boolean z6) {
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
        int i10 = iIndexOf + 1;
        if (iIndexOf2 <= i10) {
            return null;
        }
        strArr[0] = lastPathSegment.substring(i10, iIndexOf2);
        int iLastIndexOf = lastPathSegment.lastIndexOf(95);
        int iLastIndexOf2 = lastPathSegment.lastIndexOf(46);
        if (iLastIndexOf > 0 && iLastIndexOf2 > 0 && iLastIndexOf2 > iLastIndexOf) {
            String strSubstring = lastPathSegment.substring(iLastIndexOf2 + 1);
            if (!TextUtils.equals(strSubstring, "gif")) {
                strSubstring = z6 ? "videocover" : "default";
            }
            strArr[1] = strSubstring;
            strArr[2] = lastPathSegment.substring(iLastIndexOf + 1, iLastIndexOf2);
        }
        char cCharAt = lastPathSegment.charAt(i10);
        int i11 = i10;
        while (true) {
            if ((cCharAt != '-' && (cCharAt < '0' || cCharAt > '9')) || i11 == lastPathSegment.length()) {
                break;
            }
            int i12 = i11 + 1;
            char cCharAt2 = lastPathSegment.charAt(i11);
            i11 = i12;
            cCharAt = cCharAt2;
        }
        try {
            String[] strArrSplit = lastPathSegment.substring(i10, i11 - 1).split("-");
            if (strArrSplit.length != 3) {
                return null;
            }
            int i13 = Integer.parseInt(strArrSplit[1]);
            int i14 = Integer.parseInt(strArrSplit[2]);
            if (configService != null) {
                float f = i14 / (i13 * 1.0f);
                JsonNode jsonNodeNodePath = JacksonUtils.nodePath(JacksonUtils.createObjectNode(configService.getImageResTargetJsonString()), strArr);
                if (jsonNodeNodePath != null) {
                    String strNodeString = JacksonUtils.nodeString(jsonNodeNodePath, "type");
                    int iNodeInt = JacksonUtils.nodeInt(jsonNodeNodePath, "width");
                    int iNodeInt2 = JacksonUtils.nodeInt(jsonNodeNodePath, "height");
                    if (!TextUtils.equals(strNodeString, "r")) {
                        if (TextUtils.equals(strNodeString, "c")) {
                            i14 = iNodeInt2;
                        } else if (i13 > i14) {
                            i14 = (int) ((iNodeInt * f) + 0.5f);
                        } else {
                            i13 = (int) ((iNodeInt2 / f) + 0.5f);
                            i14 = iNodeInt2;
                        }
                        i13 = iNodeInt;
                    }
                    return new int[]{i13, i14};
                }
            }
            return new int[]{i13, i14};
        } catch (NumberFormatException | StringIndexOutOfBoundsException unused) {
            return null;
        }
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

    public static int getOverlayPlaceholderHeight(Activity activity) {
        if (!(activity instanceof NVActivity)) {
            return 0;
        }
        NVActivity nVActivity = (NVActivity) activity;
        return nVActivity.getStatusBarOverlaySize() + nVActivity.getActionBarOverlaySize();
    }

    public static File getTmpDir(boolean z6) {
        return new File(z6 ? NVApplication.instance().getFilesDir() : NVApplication.instance().getCacheDir(), "tmp");
    }

    public static String getUrlParam(Map<String, String> map) {
        if (map == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        boolean z6 = true;
        for (String str : map.keySet()) {
            String str2 = map.get(str);
            if (!TextUtils.isEmpty(str2)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(z6 ? "?" : "&");
                sb2.append(str);
                sb2.append("=");
                sb2.append(URLEncoder.encode(str2));
                sb.append(sb2.toString());
                if (z6) {
                    z6 = false;
                }
            }
        }
        return sb.toString();
    }

    public static String getUrlWithoutQuery(String str) {
        try {
            URI uri = new URI(str);
            return new URI(uri.getScheme(), uri.getAuthority(), uri.getPath(), null, uri.getFragment()).toString();
        } catch (URISyntaxException unused) {
            return str;
        }
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

    public static boolean isDestoryed(NVContext nVContext) {
        if (nVContext instanceof NVFragment) {
            return ((NVFragment) nVContext).isDestoryed();
        }
        return false;
    }

    public static boolean isGif(String str) {
        return urlJudger(str, ".gif");
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

    public static boolean isIdEquals(NVObject nVObject, NVObject nVObject2) {
        return (nVObject == null || nVObject2 == null || !isEqualsNotNull(nVObject.id(), nVObject2.id())) ? false : true;
    }

    public static boolean isWebP(String str) {
        return urlJudger(str, ".webp");
    }

    public static boolean isWebPInData(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            FileInputStream fileInputStream = new FileInputStream(new File(str));
            byte[] bArr = new byte[12];
            boolean z6 = fileInputStream.read(bArr, 0, 12) == 12 && WEBP_FILE_HEADER_RIFF.equals(new String(bArr, 0, 4, "US-ASCII")) && WEBP_FILE_HEADER_WEBP.equals(new String(bArr, 8, 4, "US-ASCII"));
            fileInputStream.close();
            return z6;
        } catch (Exception unused) {
            return false;
        }
    }

    public static void moveFile(File file, File file2, boolean z6) {
        if (file == null || file2 == null || !file.exists()) {
            return;
        }
        if (file2.exists()) {
            if (!z6) {
                return;
            } else {
                file2.delete();
            }
        }
        Log.d("moveFile", "success=" + file.renameTo(file2));
    }

    public static void moveFolder(File file, File file2, boolean z6) {
        if (file == null || file2 == null || !file.exists()) {
            return;
        }
        if (!file.isDirectory()) {
            moveFile(file, file2, z6);
            return;
        }
        if (!file2.exists()) {
            file2.mkdir();
        }
        String[] list = file.list();
        if (list != null) {
            for (String str : list) {
                moveFolder(new File(file, str), new File(file2, str), z6);
            }
        }
        file.delete();
    }

    public static void post(Runnable runnable) {
        handler.post(runnable);
    }

    public static void postDelayed(Runnable runnable, long j6) {
        handler.postDelayed(runnable, j6);
    }

    public static String readStringFromAssets(AssetManager assetManager, String str) {
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

    public static void safeAddExtraInIntent(Intent intent, String str, String str2) {
        if (intent == null || str == null || str2 == null || (((str2.length() * 2) + 45) / 8) * 8 > 204800) {
            return;
        }
        intent.putExtra(str, str2);
    }

    public static boolean safeClose(OutputStream outputStream) {
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

    public static void setActionBarTitle(String str, String str2, Activity activity) {
        if (activity instanceof NVActivity) {
            View viewFindViewById = activity.findViewById(R.id.actionbar_title);
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
                int iArgb = Color.argb((int) (((double) Color.alpha(currentTextColor)) * 0.6d), Color.red(currentTextColor), Color.green(currentTextColor), Color.blue(currentTextColor));
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

    public static boolean shouldUpdateTimestamp(long j6, long j10) {
        if (j6 == 0 || j6 >= j10) {
            return true;
        }
        if (j6 >= j10 - 604800000) {
            return false;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        return Math.abs(j6 - jCurrentTimeMillis) < Math.abs(j10 - jCurrentTimeMillis);
    }

    public static void showNetworkError(String str, ApiResponse apiResponse, Context context) {
        if (apiResponse != null && ApiService.shouldShowErrMessage(context) && (context instanceof Activity)) {
            ACMAlertDialog aCMAlertDialog = new ACMAlertDialog((Activity) context);
            aCMAlertDialog.setMessage(str);
            aCMAlertDialog.addButton(android.R.string.ok, null);
            try {
                aCMAlertDialog.show();
                return;
            } catch (Exception unused) {
            }
        }
        NVToast.makeText(context, str, 1).show();
    }

    public static void toastTODO(Context context) {
        if (NVApplication.DEBUG) {
            NVToast.makeText(context, "TODO", 0).show();
        }
    }

    public static boolean writeToFile(File file, byte[] bArr, boolean z6) {
        SafeFileOutputStream safeFileOutputStream = null;
        try {
            SafeFileOutputStream safeFileOutputStream2 = new SafeFileOutputStream(file);
            try {
                safeFileOutputStream2.write(bArr);
                try {
                    return true & safeFileOutputStream2.close(true, z6);
                } catch (Exception unused) {
                    return false;
                }
            } catch (Exception e) {
                e = e;
                safeFileOutputStream = safeFileOutputStream2;
                Log.w("fail to write " + file, e);
                try {
                    safeFileOutputStream.close(false, z6);
                } catch (Exception unused2) {
                }
                return false;
            } catch (Throwable unused3) {
                safeFileOutputStream = safeFileOutputStream2;
                try {
                    safeFileOutputStream.close(false, z6);
                } catch (Exception unused4) {
                }
                return false;
            }
        } catch (Exception e2) {
            e = e2;
        }
    }

    public static void copyFile(File file, File file2) throws Throwable {
        FileChannel channel;
        if (!file.exists()) {
            return;
        }
        if (!file2.exists()) {
            file2.createNewFile();
        }
        FileChannel channel2 = null;
        try {
            channel = new FileInputStream(file).getChannel();
            try {
                channel2 = new FileOutputStream(file2).getChannel();
                channel2.transferFrom(channel, 0L, channel.size());
                channel2.close();
                channel.close();
            } catch (Throwable th) {
                th = th;
                if (channel2 != null) {
                    channel2.close();
                }
                if (channel != null) {
                    channel.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            channel = null;
        }
    }

    public static void copyFolder(File file, File file2) throws Throwable {
        if (!file.exists()) {
            return;
        }
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

    public static void deleteContents(File file) throws IOException {
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                if (file2.isDirectory()) {
                    deleteContents(file2);
                }
                if (!file2.delete()) {
                    throw new IOException("failed to delete file: " + file2);
                }
            }
            return;
        }
        throw new IOException("not a readable directory: " + file);
    }

    public static boolean deleteDir(File file) {
        boolean zDeleteDir;
        File[] fileArrListFiles;
        if (file.isDirectory() && (fileArrListFiles = file.listFiles()) != null) {
            zDeleteDir = true;
            for (File file2 : fileArrListFiles) {
                zDeleteDir &= deleteDir(file2);
            }
        } else {
            zDeleteDir = true;
        }
        if (!file.delete() || !zDeleteDir) {
            return false;
        }
        return true;
    }

    public static float dpToPx(Context context, float f) {
        return TypedValue.applyDimension(1, f, context.getResources().getDisplayMetrics());
    }

    public static int dpToPxInt(Context context, float f) {
        return (int) dpToPx(context, f);
    }

    public static long generateUniqueLongId() {
        return SystemClock.elapsedRealtime() + uniqueLongIdGen.incrementAndGet();
    }

    public static int getAbTestType(String str) {
        if (!com.narvii.util.text.TextUtils.isEmpty(str) && Pattern.compile("^[a-fA-F8-9]$").matcher(String.valueOf(str.charAt(0))).matches()) {
            return 2;
        }
        return 1;
    }

    public static int getAge(Date date) {
        Calendar calendar = Calendar.getInstance();
        Calendar calendar2 = Calendar.getInstance();
        calendar.setTime(date);
        int i10 = calendar2.get(1) - calendar.get(1);
        if (calendar2.get(6) < calendar.get(6)) {
            return i10 - 1;
        }
        return i10;
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

    public static File getAvailableCacheDir(Context context) {
        File externalCacheDir = context.getExternalCacheDir();
        if (externalCacheDir == null || !externalCacheDir.isDirectory()) {
            return context.getCacheDir();
        }
        return externalCacheDir;
    }

    public static int getCoreThreadCount() {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors() + 1;
        if (iAvailableProcessors <= 2) {
            return 3;
        }
        return iAvailableProcessors;
    }

    public static int getDimenPixelSize(Context context, int i10) {
        return context.getResources().getDimensionPixelSize(i10);
    }

    public static String getHighResVideoUrl(String str) {
        int iIndexOf;
        if (!TextUtils.isEmpty(str) && (iIndexOf = str.indexOf("_360p.")) > 0) {
            return str.substring(0, iIndexOf + 1) + TarConstants.VERSION_POSIX + str.substring(iIndexOf + 5);
        }
        return str;
    }

    public static String getImageType(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        byte[] bArr = new byte[4];
        try {
            FileInputStream fileInputStream = new FileInputStream(new File(str));
            fileInputStream.read(bArr, 0, 4);
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
            if (!upperCase.contains("424D")) {
                return null;
            }
            return "bmp";
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String getLowResVideoUrl(String str) {
        int iIndexOf;
        if (videoSupportLowBitrate(str) && (iIndexOf = str.indexOf("_00.")) > 0) {
            return str.substring(0, iIndexOf + 1) + NVExoPlayer.LOW_RES + str.substring(iIndexOf + 3);
        }
        return str;
    }

    public static int getNavigationBarHeight(Context context) {
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("navigation_bar_height", "dimen", "android");
        if (identifier > 0) {
            return resources.getDimensionPixelSize(identifier);
        }
        return 0;
    }

    public static String getRawVideoUrl(String str) {
        int iIndexOf;
        if (videoSupportLowBitrate(str) && (iIndexOf = str.indexOf("_00.")) > 0) {
            return str.substring(0, iIndexOf + 1) + "raw" + str.substring(iIndexOf + 3);
        }
        return str;
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

    public static int getScreenHeight(Context context) {
        return context.getResources().getDisplayMetrics().heightPixels;
    }

    public static float getScreenRatio(Context context) {
        int i10 = context.getResources().getDisplayMetrics().heightPixels;
        int i11 = context.getResources().getDisplayMetrics().widthPixels;
        if (i10 == 0) {
            return 0.0f;
        }
        return i11 / (i10 * 1.0f);
    }

    public static Point getScreenSize(Activity activity) {
        Display defaultDisplay = ((WindowManager) activity.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        return point;
    }

    public static int getScreenWidth(Context context) {
        return context.getResources().getDisplayMetrics().widthPixels;
    }

    public static int getStatusBarHeight(Context context) {
        int identifier = context.getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (identifier != 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return (int) dpToPx(context, 24.0f);
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

    public static int getTimeZoneInMin() {
        return (TimeZone.getDefault().getOffset(System.currentTimeMillis()) / 60) / 1000;
    }

    public static Uri getUriFromFile(Context context, File file) {
        return FileProvider.getUriForFile(context.getApplicationContext(), context.getApplicationContext().getApplicationContext().getPackageName() + ".provider", file);
    }

    public static String getValidUrl(String str) {
        if (!TextUtils.isEmpty(str)) {
            Locale locale = Locale.US;
            if (!str.toLowerCase(locale).startsWith(y.HTTP) && !str.toLowerCase(locale).startsWith(y.HTTPS)) {
                return y.HTTP + str;
            }
            return str;
        }
        return str;
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

    public static boolean isBMP(String str) {
        return TextUtils.equals(getImageType(str), "bmp");
    }

    public static boolean isChinaTimezone() {
        Locale locale;
        String displayName;
        TimeZone timeZone = TimeZone.getDefault();
        if (timeZone.getRawOffset() != 28800000 || (displayName = timeZone.getDisplayName((locale = Locale.US))) == null) {
            return false;
        }
        String lowerCase = displayName.toLowerCase(locale);
        if (!lowerCase.contains("china") && !lowerCase.contains("beijing")) {
            return false;
        }
        return true;
    }

    public static boolean isEqualsContent(Object obj, Object obj2) {
        return isEquals(JacksonUtils.writeAsString(obj), JacksonUtils.writeAsString(obj2));
    }

    /* JADX WARN: Code duplicated, block: B:22:0x004b  */
    public static boolean isGifInData(String str) {
        boolean z6;
        byte b7;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            FileInputStream fileInputStream = new FileInputStream(new File(str));
            byte[] bArr = new byte[4096];
            if (fileInputStream.read(bArr) >= 6 && bArr[0] == 71) {
                z6 = true;
                if (bArr[1] != 73 || bArr[2] != 70 || bArr[3] != 56 || (((b7 = bArr[4]) != 55 && b7 != 57) || bArr[5] != 97)) {
                    z6 = false;
                }
            } else {
                z6 = false;
            }
            fileInputStream.close();
            return z6;
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean isJPG(String str) {
        return TextUtils.equals(getImageType(str), "jpg");
    }

    public static boolean isLandscape(Context context) {
        if (context.getResources().getConfiguration().orientation == 2) {
            return true;
        }
        return false;
    }

    public static boolean isPNG(String str) {
        return TextUtils.equals(getImageType(str), "png");
    }

    public static boolean isRtl() {
        if (TextUtilsCompat.a(Locale.getDefault()) == 1) {
            return true;
        }
        return false;
    }

    public static boolean isScreenRationOverThreshold(Context context) {
        float screenRatio = getScreenRatio(context);
        if (screenRatio != 0.0f && screenRatio > 0.5625f) {
            return true;
        }
        return false;
    }

    public static boolean isStringEquals(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return TextUtils.isEmpty(str2);
        }
        return str.equals(str2);
    }

    public static final boolean isValidEmail(String str) {
        if (!TextUtils.isEmpty(str) && Patterns.EMAIL_ADDRESS.matcher(str).matches()) {
            return true;
        }
        return false;
    }

    public static final boolean isValidPhone(String str) {
        if (!TextUtils.isEmpty(str) && Patterns.PHONE.matcher(str).matches()) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ l0 lambda$functionUnit$0(Callback callback, Object obj) {
        callback.call(obj);
        return l0.INSTANCE;
    }

    public static void playAudioEffect(Context context, int i10) {
        try {
            MediaPlayer mediaPlayerCreate = MediaPlayer.create(context, i10);
            mediaPlayerCreate.setAudioStreamType(3);
            mediaPlayerCreate.start();
        } catch (Exception e) {
            Log.e(e.getMessage());
        }
    }

    public static String readStringFromFile(File file) throws Throwable {
        byte[] dataFromFile = readDataFromFile(file);
        if (dataFromFile == null) {
            return null;
        }
        return new String(dataFromFile, UTF_8);
    }

    /* JADX WARN: Code duplicated, block: B:13:0x002d  */
    public static int removeIdEqualsObject(Collection<?> collection, NVObject nVObject) {
        Iterator<?> it = collection.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            Object next = it.next();
            if (next instanceof Blog) {
                Blog blog = (Blog) next;
                if (blog.type == 1 && isEqualsNotNull(blog.refObjectId, nVObject.id())) {
                    it.remove();
                } else if (!(next instanceof NVObject) && ((NVObject) next).isIdEquals(nVObject)) {
                    it.remove();
                }
                i10++;
            } else if (!(next instanceof NVObject)) {
            }
        }
        return i10;
    }

    public static int[] retrieveResolutionFromUrl(String str) {
        int iIndexOf;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String lastPathSegment = Uri.parse(str).getLastPathSegment();
        if (!TextUtils.isEmpty(lastPathSegment) && (iIndexOf = lastPathSegment.indexOf(114)) >= 0 && iIndexOf < lastPathSegment.length() - 3) {
            int i10 = iIndexOf + 1;
            try {
                char cCharAt = lastPathSegment.charAt(i10);
                int i11 = i10;
                while (true) {
                    if ((cCharAt != '-' && (cCharAt < '0' || cCharAt > '9')) || i11 == lastPathSegment.length()) {
                        break;
                    }
                    int i12 = i11 + 1;
                    char cCharAt2 = lastPathSegment.charAt(i11);
                    i11 = i12;
                    cCharAt = cCharAt2;
                }
                String[] strArrSplit = lastPathSegment.substring(i10, i11 - 1).split("-");
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

    public static String safeFilename(String str) {
        int length = str.length();
        char[] cArr = new char[length];
        for (int i10 = 0; i10 < length; i10++) {
            char cCharAt = str.charAt(i10);
            if ((cCharAt < '0' || cCharAt > '9') && ((cCharAt < 'a' || cCharAt > 'z') && ((cCharAt < 'A' || cCharAt > 'Z') && cCharAt != '.' && cCharAt != '-' && cCharAt != '_'))) {
                cCharAt = '_';
            }
            cArr[i10] = cCharAt;
        }
        return new String(cArr);
    }

    public static <T extends NVObject> T searchForId(Collection<T> collection, String str) {
        for (T t5 : collection) {
            if (isEqualsNotNull(t5.id(), str)) {
                return t5;
            }
        }
        return null;
    }

    public static void showShortToast(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        NVToast.makeText(context, str, 0).show();
    }

    public static float spToPx(Context context, float f) {
        return TypedValue.applyDimension(2, f, context.getResources().getDisplayMetrics());
    }

    public static Drawable tintDrawable(Drawable drawable, ColorStateList colorStateList) {
        Drawable drawableR = DrawableCompat.r(drawable.mutate());
        DrawableCompat.o(drawableR, colorStateList);
        return drawableR;
    }

    public static boolean touch(File file) {
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

    public static String urlIgnoreQuery(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        int iIndexOf = str.indexOf(63);
        if (iIndexOf > 0) {
            return str.substring(0, iIndexOf);
        }
        return str;
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

    public static boolean videoSupportLowBitrate(String str) {
        String str2;
        String str3;
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(Uri.parse(str).getHost()) || !Uri.parse(str).getHost().contains(NVApplication.mainHost)) {
            return false;
        }
        String[] strArrSplit = getUrlWithoutQuery(str).split("-");
        if (strArrSplit.length != 3 || (str2 = strArrSplit[2]) == null) {
            return false;
        }
        String[] strArrSplit2 = str2.split("_");
        if (strArrSplit2.length != 2 || (str3 = strArrSplit2[0]) == null || !str3.endsWith("v2")) {
            return false;
        }
        return true;
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

    public static File createTmpFile() {
        return createTmpFile(false);
    }

    public static boolean writeToFile(File file, String str) {
        return writeToFile(file, str.getBytes(UTF_8));
    }
}
