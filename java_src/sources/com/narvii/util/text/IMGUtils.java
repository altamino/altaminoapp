package com.narvii.util.text;

import android.text.Editable;
import android.widget.EditText;
import android.widget.TextView;
import com.narvii.model.Media;
import com.narvii.util.StringUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes6.dex */
public class IMGUtils extends com.twitter.a {
    private static final Pattern IMG = Pattern.compile("\\[IMG=(.{1,10})\\]", 2);

    public static boolean isSelectionInTag(TextView textView) {
        return isSelectionInTag(textView.getText().toString(), textView.getSelectionStart(), textView.getSelectionEnd());
    }

    public static List<com.twitter.a.b> extractIMGsWithIndices(String str) {
        if (str == null || str.length() == 0 || str.indexOf("[IMG=") == -1) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        Matcher matcher = IMG.matcher(str);
        while (matcher.find()) {
            String strGroup = matcher.group(1);
            if (strGroup != null && strGroup.length() > 0) {
                arrayList.add(new com.twitter.a.b(matcher.start(), matcher.end(), strGroup, com.twitter.a.b.EnumC0376a.CASHTAG));
            }
        }
        return arrayList;
    }

    public static boolean filterRefIds(Editable editable, List<Media> list) {
        com.twitter.a.b next;
        HashSet hashSet = new HashSet();
        if (list != null) {
            for (Media media : list) {
                if (!android.text.TextUtils.isEmpty(media.refId)) {
                    hashSet.add(media.refId);
                }
            }
        }
        int i10 = 0;
        boolean z6 = false;
        while (i10 < 100) {
            Iterator<com.twitter.a.b> it = extractIMGsWithIndices(editable.toString()).iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (hashSet.contains(next.d()));
            if (next == null) {
                break;
            }
            editable.delete(next.b().intValue(), next.a().intValue());
            i10++;
            z6 = true;
        }
        return z6;
    }

    static String removeIMGs(String str) {
        if (str == null || str.length() == 0 || str.indexOf("[IMG=") == -1) {
            return str;
        }
        StringBuffer stringBuffer = new StringBuffer();
        Matcher matcher = IMG.matcher(str);
        int iEnd = 0;
        while (matcher.find()) {
            stringBuffer.append(str.substring(iEnd, matcher.start()));
            iEnd = matcher.end();
        }
        stringBuffer.append(str.substring(iEnd));
        return stringBuffer.toString();
    }

    public static List<String> extractRefIds(String str) {
        List<com.twitter.a.b> listExtractIMGsWithIndices = extractIMGsWithIndices(str);
        if (listExtractIMGsWithIndices.isEmpty()) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        Iterator<com.twitter.a.b> it = listExtractIMGsWithIndices.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().d());
        }
        return arrayList;
    }

    public static void insertEditText(EditText editText, String str) {
        if (android.text.TextUtils.isEmpty(str)) {
            return;
        }
        ArrayList<String> arrayListSplit = StringUtils.split(str, ",");
        StringBuilder sb = new StringBuilder();
        for (String str2 : arrayListSplit) {
            if (sb.length() > 0) {
                sb.append("\n\n");
            }
            sb.append("[IMG=");
            sb.append(str2);
            sb.append(kotlinx.serialization.json.internal.b.END_LIST);
        }
        editText.getEditableText().insert(Math.max(editText.getSelectionStart(), 0), sb.toString());
    }

    public static boolean isSelectionInTag(String str, int i10, int i11) {
        for (com.twitter.a.b bVar : extractIMGsWithIndices(str)) {
            if (i10 > bVar.b().intValue() && i10 < bVar.a().intValue()) {
                return true;
            }
            if (i11 > bVar.b().intValue() && i11 < bVar.a().intValue()) {
                return true;
            }
        }
        return false;
    }
}
