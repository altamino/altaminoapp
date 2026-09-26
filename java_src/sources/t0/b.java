package t0;

import android.net.Uri;

/* JADX INFO: loaded from: classes9.dex */
public final class b {
    private static final int MINI_THUMB_HEIGHT = 384;
    private static final int MINI_THUMB_WIDTH = 512;

    public static boolean d(int i10, int i11) {
        return i10 != Integer.MIN_VALUE && i11 != Integer.MIN_VALUE && i10 <= 512 && i11 <= 384;
    }

    public static boolean b(Uri uri) {
        return uri != null && "content".equals(uri.getScheme()) && "media".equals(uri.getAuthority());
    }

    public static boolean a(Uri uri) {
        if (b(uri) && !e(uri)) {
            return true;
        }
        return false;
    }

    public static boolean c(Uri uri) {
        if (b(uri) && e(uri)) {
            return true;
        }
        return false;
    }

    private static boolean e(Uri uri) {
        return uri.getPathSegments().contains("video");
    }
}
