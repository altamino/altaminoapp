package com.narvii.util.text;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.regex.Matcher;

/* JADX INFO: loaded from: classes7.dex */
public class MyExtractor extends com.twitter.a {
    private static final Comparator<com.twitter.a.b> ecp = new Comparator<com.twitter.a.b>() { // from class: com.narvii.util.text.MyExtractor.1
        @Override // java.util.Comparator
        public int compare(com.twitter.a.b bVar, com.twitter.a.b bVar2) {
            return bVar.b().intValue() - bVar2.b().intValue();
        }
    };

    @Override // com.twitter.a
    public List<com.twitter.a.b> extractURLsWithIndices(String str) {
        List<com.twitter.a.b> listExtractURLsWithIndices = super.extractURLsWithIndices(str);
        Matcher matcher = com.twitter.b.VALID_NDC_URL.matcher(str);
        List<com.twitter.a.b> arrayList = null;
        while (matcher.find()) {
            String strGroup = matcher.group(3);
            int iStart = matcher.start(3);
            int iEnd = matcher.end(3);
            if (arrayList == null) {
                if (listExtractURLsWithIndices instanceof ArrayList) {
                    arrayList = listExtractURLsWithIndices;
                } else {
                    arrayList = new ArrayList<>(listExtractURLsWithIndices);
                }
            }
            arrayList.add(new com.twitter.a.b(iStart, iEnd, strGroup, com.twitter.a.b.EnumC0376a.URL));
        }
        if (arrayList == null) {
            return listExtractURLsWithIndices;
        }
        Collections.sort(arrayList, ecp);
        return arrayList;
    }
}
