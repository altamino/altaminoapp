package androidx.webkit.internal;

import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.util.TypedValue;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.GZIPInputStream;

/* JADX INFO: loaded from: classes8.dex */
public class AssetHelper {
    public static final String DEFAULT_MIME_TYPE = "text/plain";

    @NonNull
    private Context mContext;

    @NonNull
    public static File c(@NonNull Context context) {
        return Build.VERSION.SDK_INT >= 24 ? ApiHelperForN.e(context) : context.getCacheDir().getParentFile();
    }

    private int d(@NonNull String str, @NonNull String str2) {
        return this.mContext.getResources().getIdentifier(str2, str, this.mContext.getPackageName());
    }

    private int e(int i10) {
        TypedValue typedValue = new TypedValue();
        this.mContext.getResources().getValue(i10, typedValue, true);
        return typedValue.type;
    }

    @NonNull
    private static InputStream g(@NonNull String str, @NonNull InputStream inputStream) throws IOException {
        return str.endsWith(".svgz") ? new GZIPInputStream(inputStream) : inputStream;
    }

    @NonNull
    public static InputStream i(@NonNull File file) throws IOException {
        return g(file.getPath(), new FileInputStream(file));
    }

    public AssetHelper(@NonNull Context context) {
        this.mContext = context;
    }

    @NonNull
    public static String a(@NonNull File file) throws IOException {
        String canonicalPath = file.getCanonicalPath();
        if (!canonicalPath.endsWith(com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING)) {
            return canonicalPath + com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING;
        }
        return canonicalPath;
    }

    @Nullable
    public static File b(@NonNull File file, @NonNull String str) throws IOException {
        String strA = a(file);
        String canonicalPath = new File(file, str).getCanonicalPath();
        if (canonicalPath.startsWith(strA)) {
            return new File(canonicalPath);
        }
        return null;
    }

    @NonNull
    public static String f(@NonNull String str) {
        String strA = MimeUtil.a(str);
        if (strA == null) {
            return DEFAULT_MIME_TYPE;
        }
        return strA;
    }

    @NonNull
    private static String k(@NonNull String str) {
        if (str.length() > 1 && str.charAt(0) == '/') {
            return str.substring(1);
        }
        return str;
    }

    @NonNull
    public InputStream h(@NonNull String str) throws IOException {
        String strK = k(str);
        return g(strK, this.mContext.getAssets().open(strK, 2));
    }

    @NonNull
    public InputStream j(@NonNull String str) throws Resources.NotFoundException, IOException {
        String strK = k(str);
        String[] strArrSplit = strK.split(com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING, -1);
        if (strArrSplit.length == 2) {
            String str2 = strArrSplit[0];
            String strSubstring = strArrSplit[1];
            int iLastIndexOf = strSubstring.lastIndexOf(46);
            if (iLastIndexOf != -1) {
                strSubstring = strSubstring.substring(0, iLastIndexOf);
            }
            int iD = d(str2, strSubstring);
            int iE = e(iD);
            if (iE == 3) {
                return g(strK, this.mContext.getResources().openRawResource(iD));
            }
            throw new IOException(String.format("Expected %s resource to be of TYPE_STRING but was %d", strK, Integer.valueOf(iE)));
        }
        throw new IllegalArgumentException("Incorrect resource path: " + strK);
    }
}
