package com.narvii.util.text;

import android.text.Editable;
import android.widget.EditText;
import android.widget.TextView;
import com.narvii.model.Media;
import com.narvii.util.StringUtils;
import com.twitter.Extractor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public class IMGUtils extends Extractor {
    private static final Pattern IMG = Pattern.compile("\\[IMG=(.{1,10})\\]", 2);

    public static List<Extractor.Entity> extractIMGsWithIndices(String str) {
        if (str == null || str.length() == 0 || str.indexOf("[IMG=") == -1) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        Matcher matcher = IMG.matcher(str);
        while (matcher.find()) {
            String strGroup = matcher.group(1);
            if (strGroup != null && strGroup.length() > 0) {
                arrayList.add(new Extractor.Entity(matcher.start(), matcher.end(), strGroup, Extractor.Entity.Type.CASHTAG));
            }
        }
        return arrayList;
    }

    public static List<String> extractRefIds(String str) {
        List<Extractor.Entity> listExtractIMGsWithIndices = extractIMGsWithIndices(str);
        if (listExtractIMGsWithIndices.isEmpty()) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        Iterator<Extractor.Entity> it = listExtractIMGsWithIndices.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getValue());
        }
        return arrayList;
    }

    public static boolean filterRefIds(Editable editable, List<Media> list) {
        HashSet hashSet = new HashSet();
        if (list != null) {
            for (Media media : list) {
                if (!android.text.TextUtils.isEmpty(media.refId)) {
                    hashSet.add(media.refId);
                }
            }
        }
        int i = 0;
        boolean z = false;
        while (i < 100) {
            Extractor.Entity entity = null;
            Iterator<Extractor.Entity> it = extractIMGsWithIndices(editable.toString()).iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Extractor.Entity next = it.next();
                if (!hashSet.contains(next.getValue())) {
                    entity = next;
                    break;
                }
            }
            if (entity == null) {
                break;
            }
            editable.delete(entity.getStart().intValue(), entity.getEnd().intValue());
            i++;
            z = true;
        }
        return z;
    }

    public static boolean isSelectionInTag(TextView textView) {
        return isSelectionInTag(textView.getText().toString(), textView.getSelectionStart(), textView.getSelectionEnd());
    }

    public static boolean isSelectionInTag(String str, int i, int i2) {
        for (Extractor.Entity entity : extractIMGsWithIndices(str)) {
            if (i > entity.getStart().intValue() && i < entity.getEnd().intValue()) {
                return true;
            }
            if (i2 > entity.getStart().intValue() && i2 < entity.getEnd().intValue()) {
                return true;
            }
        }
        return false;
    }

    static String removeIMGs(String str) {
        if (str == null || str.length() == 0 || str.indexOf("[IMG=") == -1) {
            return str;
        }
        StringBuffer stringBuffer = new StringBuffer();
        int iEnd = 0;
        Matcher matcher = IMG.matcher(str);
        while (matcher.find()) {
            stringBuffer.append(str.substring(iEnd, matcher.start()));
            iEnd = matcher.end();
        }
        stringBuffer.append(str.substring(iEnd));
        return stringBuffer.toString();
    }

    public static void insertEditText(EditText editText, String str) {
        if (android.text.TextUtils.isEmpty(str)) {
            return;
        }
        ArrayList<String> arrayListSplit = StringUtils.split(str, ",");
        StringBuilder sb = new StringBuilder();
        Iterator<String> it = arrayListSplit.iterator();
        while (it.hasNext()) {
            String next = it.next();
            if (sb.length() > 0) {
                sb.append("\n\n");
            }
            sb.append("[IMG=");
            sb.append(next);
            sb.append(']');
        }
        editText.getEditableText().insert(Math.max(editText.getSelectionStart(), 0), sb.toString());
    }
}
