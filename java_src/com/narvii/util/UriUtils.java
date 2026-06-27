package com.narvii.util;

import android.net.Uri;
import android.text.TextUtils;
import com.narvii.util.text.MyExtractor;
import com.twitter.Extractor;
import java.net.URLEncoder;
import java.util.List;

/* loaded from: classes3.dex */
public class UriUtils {
    public static String encodeURIComponent(String str) {
        try {
            return URLEncoder.encode(str, "utf-8");
        } catch (Exception unused) {
            return str;
        }
    }

    public static String extractUrl(String str) {
        String value;
        if (str == null) {
            return null;
        }
        List<Extractor.Entity> listExtractURLsWithIndices = new MyExtractor().extractURLsWithIndices(str);
        if (listExtractURLsWithIndices.size() <= 0 || (value = listExtractURLsWithIndices.get(0).getValue()) == null) {
            return null;
        }
        if (!TextUtils.isEmpty(Uri.parse(value).getScheme())) {
            return value;
        }
        return "http://" + value;
    }
}
