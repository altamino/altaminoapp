package com.narvii.util;

import android.net.Uri;
import android.text.TextUtils;
import com.narvii.util.text.MyExtractor;
import com.twitter.a;
import java.net.URLEncoder;
import java.util.List;
import qa.y;

/* JADX INFO: loaded from: classes7.dex */
public class UriUtils {
    public static String extractUrl(String str) {
        String strD;
        if (str == null) {
            return null;
        }
        List<a.b> listExtractURLsWithIndices = new MyExtractor().extractURLsWithIndices(str);
        if (listExtractURLsWithIndices.size() <= 0 || (strD = listExtractURLsWithIndices.get(0).d()) == null) {
            return null;
        }
        if (!TextUtils.isEmpty(Uri.parse(strD).getScheme())) {
            return strD;
        }
        return y.HTTP + strD;
    }

    public static String encodeURIComponent(String str) {
        try {
            return URLEncoder.encode(str, "utf-8");
        } catch (Exception unused) {
            return str;
        }
    }
}
