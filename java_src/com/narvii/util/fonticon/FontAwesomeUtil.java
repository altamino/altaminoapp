package com.narvii.util.fonticon;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes3.dex */
public class FontAwesomeUtil {
    private static final Map<String, NVTypeface> typefaceMap = new HashMap();

    static {
        addIconFontTypeface(new IonIconsTypeface());
        addIconFontTypeface(new FasTypeface());
    }

    public static void addIconFontTypeface(NVTypeface nVTypeface) {
        Iterator<Map.Entry<String, NVTypeface>> it = typefaceMap.entrySet().iterator();
        while (it.hasNext()) {
            if (it.next().getValue().getPrefixName().equals(nVTypeface.getPrefixName())) {
                return;
            }
        }
        typefaceMap.put(nVTypeface.getPrefixName(), nVTypeface);
    }

    public static NVTypeface getNvTypeface(String str) {
        int iIndexOf;
        String strTransforIconStr = transforIconStr(str);
        if (TextUtils.isEmpty(strTransforIconStr) || (iIndexOf = strTransforIconStr.indexOf("_")) == -1) {
            return null;
        }
        String strSubstring = strTransforIconStr.substring(0, iIndexOf);
        for (Map.Entry<String, NVTypeface> entry : typefaceMap.entrySet()) {
            if (entry.getValue().getPrefixName().equals(strSubstring)) {
                return entry.getValue();
            }
        }
        return null;
    }

    public static String transforIconStr(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return (str.indexOf("_") == -1 && str.contains("-")) ? str.replace("-", "_") : str;
    }
}
