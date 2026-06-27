package com.narvii.util.crawler;

import com.twitter.Extractor;
import java.net.URL;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class SearchUrls {
    public static final int ALL = 0;
    public static final int FIRST = 1;

    public static ArrayList<String> matches(String str) {
        return matches(str, 0);
    }

    public static ArrayList<String> matches(String str, int i) {
        ArrayList<String> arrayList = new ArrayList<>();
        String[] strArrSplit = str.split("\\s+");
        for (String str2 : strArrSplit) {
            try {
                arrayList.add(new URL(str2).toString());
            } catch (Exception unused) {
            }
            if (i == 1 && arrayList.size() > 0) {
                break;
            }
        }
        if (arrayList.size() == 0) {
            for (String str3 : strArrSplit) {
                if (str3.endsWith(".com") || str3.endsWith(".cn")) {
                    arrayList.add("http://" + str3);
                }
            }
        }
        if (arrayList.size() == 0) {
            arrayList.addAll(new Extractor().extractURLs(str));
        }
        return arrayList;
    }
}
