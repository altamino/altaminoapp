package com.narvii.util.drawables;

import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.exoplayer.upstream.CmcdHeadersFactory;
import java.io.File;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes10.dex */
public class DrawableUtils {
    private static final String[] hexDigits = {"0", "1", ExifInterface.GPS_MEASUREMENT_2D, ExifInterface.GPS_MEASUREMENT_3D, "4", "5", "6", "7", "8", "9", CmcdHeadersFactory.OBJECT_TYPE_AUDIO_ONLY, "b", "c", "d", "e", "f"};

    public static String MD5(String str) {
        String str2 = null;
        try {
            String str3 = new String(str);
            try {
                return byteArrayToHexString(MessageDigest.getInstance("MD5").digest(str3.getBytes()));
            } catch (Exception unused) {
                str2 = str3;
                return str2;
            }
        } catch (Exception unused2) {
        }
    }

    public static String byteArrayToHexString(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (int i10 : bArr) {
            if (i10 < 0) {
                i10 += 256;
            }
            String[] strArr = hexDigits;
            sb.append(strArr[i10 >> 4]);
            sb.append(strArr[i10 & 15]);
        }
        return sb.toString();
    }

    public static String getFileName(String str) {
        return MD5(str);
    }

    public static File getOriginalFile(File file) {
        String name = file.getName();
        if (name.endsWith(".w")) {
            return new File(file.getParentFile(), name.substring(0, name.length() - 2));
        }
        return file;
    }

    public static File getWritingFile(File file) {
        String name = file.getName();
        if (name.endsWith(".w")) {
            return file;
        }
        return new File(file.getParentFile(), name + ".w");
    }

    public static Drawable tintDrawable(@NonNull Drawable drawable, int i10) {
        Drawable drawableR = DrawableCompat.r(drawable);
        DrawableCompat.n(drawableR, i10);
        return drawableR;
    }
}
