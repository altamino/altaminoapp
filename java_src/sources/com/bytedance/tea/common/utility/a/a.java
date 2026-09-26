package com.bytedance.tea.common.utility.a;

import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Pair;
import com.bytedance.tea.common.utility.c;
import com.bytedance.tea.common.utility.d;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes9.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Comparator<C0142a> f903a = new Comparator<C0142a>() { // from class: com.bytedance.tea.common.utility.a.a.1
        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(C0142a c0142a, C0142a c0142a2) {
            if (c0142a == null) {
                return 1;
            }
            if (c0142a2 == null) {
                return -1;
            }
            return c0142a.f905a.compareTo(c0142a2.f905a);
        }
    };

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Pattern f904b = Pattern.compile("[^+0-9]");

    /* JADX INFO: renamed from: com.bytedance.tea.common.utility.a.a$a, reason: collision with other inner class name */
    public static class C0142a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f905a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public List<String> f906b = new ArrayList();
    }

    public static String a(TelephonyManager telephonyManager) {
        String line1Number = telephonyManager.getLine1Number();
        if (TextUtils.isEmpty(line1Number)) {
            return "";
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(Pair.create(Pattern.compile("^(\\+86)?(1\\d{10})$"), "$2"));
        return !TextUtils.isEmpty(a(line1Number, arrayList)) ? c.a(line1Number) : "";
    }

    private static String a(String str, List<Pair<Pattern, String>> list) {
        if (list != null && list.size() != 0 && !d.a(str)) {
            String strReplaceAll = f904b.matcher(str).replaceAll("");
            for (Pair<Pattern, String> pair : list) {
                Matcher matcher = ((Pattern) pair.first).matcher(strReplaceAll);
                if (matcher.matches()) {
                    return matcher.replaceAll((String) pair.second);
                }
            }
        }
        return null;
    }
}
