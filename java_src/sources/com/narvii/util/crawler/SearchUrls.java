package com.narvii.util.crawler;

import com.twitter.a;
import java.net.URL;
import java.util.ArrayList;
import qa.y;

/* JADX INFO: loaded from: classes11.dex */
public class SearchUrls {
    public static final int ALL = 0;
    public static final int FIRST = 1;

    public static ArrayList<String> matches(String str) {
        return matches(str, 0);
    }

    public static ArrayList<String> matches(String str, int i10) {
        ArrayList<String> arrayList = new ArrayList<>();
        String[] strArrSplit = str.split("\\s+");
        for (String str2 : strArrSplit) {
            try {
                arrayList.add(new URL(str2).toString());
            } catch (Exception unused) {
            }
            if (i10 == 1 && arrayList.size() > 0) {
                break;
            }
        }
        if (arrayList.size() == 0) {
            for (String str3 : strArrSplit) {
                if (str3.endsWith(".com") || str3.endsWith(".cn")) {
                    arrayList.add(y.HTTP + str3);
                }
            }
        }
        if (arrayList.size() == 0) {
            arrayList.addAll(new a().extractURLs(str));
        }
        return arrayList;
    }
}
