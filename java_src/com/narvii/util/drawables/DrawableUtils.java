package com.narvii.util.drawables;

import android.graphics.drawable.Drawable;
import android.support.v4.graphics.drawable.DrawableCompat;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import java.io.File;
import java.security.MessageDigest;

/* loaded from: classes3.dex */
public class DrawableUtils {
    private static final String[] hexDigits = {"0", IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE, "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f"};

    public static File getOriginalFile(File file) {
        String name = file.getName();
        if (!name.endsWith(".w")) {
            return file;
        }
        return new File(file.getParentFile(), name.substring(0, name.length() - 2));
    }

    public static File getWritingFile(File file) {
        String name = file.getName();
        if (name.endsWith(".w")) {
            return file;
        }
        return new File(file.getParentFile(), name + ".w");
    }

    public static String getFileName(String str) {
        return MD5(str);
    }

    public static String byteArrayToHexString(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (int i : bArr) {
            if (i < 0) {
                i += 256;
            }
            sb.append(hexDigits[i >> 4]);
            sb.append(hexDigits[i & 15]);
        }
        return sb.toString();
    }

    public static String MD5(String str) {
        try {
            String str2 = new String(str);
            try {
                return byteArrayToHexString(MessageDigest.getInstance("MD5").digest(str2.getBytes()));
            } catch (Exception unused) {
                return str2;
            }
        } catch (Exception unused2) {
            return null;
        }
    }

    public static Drawable tintDrawable(Drawable drawable, int i) {
        Drawable drawableWrap = DrawableCompat.wrap(drawable);
        DrawableCompat.setTint(drawableWrap, i);
        return drawableWrap;
    }
}
