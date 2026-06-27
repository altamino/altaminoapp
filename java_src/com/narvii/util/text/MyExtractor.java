package com.narvii.util.text;

import com.twitter.Extractor;
import com.twitter.Regex;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.regex.Matcher;

/* loaded from: classes3.dex */
public class MyExtractor extends Extractor {
    private static final Comparator<Extractor.Entity> ecp = new Comparator<Extractor.Entity>() { // from class: com.narvii.util.text.MyExtractor.1
        @Override // java.util.Comparator
        public int compare(Extractor.Entity entity, Extractor.Entity entity2) {
            return entity.getStart().intValue() - entity2.getStart().intValue();
        }
    };

    @Override // com.twitter.Extractor
    public List<Extractor.Entity> extractURLsWithIndices(String str) {
        List<Extractor.Entity> listExtractURLsWithIndices = super.extractURLsWithIndices(str);
        Matcher matcher = Regex.VALID_NDC_URL.matcher(str);
        List<Extractor.Entity> arrayList = null;
        while (matcher.find()) {
            String strGroup = matcher.group(3);
            int iStart = matcher.start(3);
            int iEnd = matcher.end(3);
            if (arrayList == null) {
                arrayList = listExtractURLsWithIndices instanceof ArrayList ? listExtractURLsWithIndices : new ArrayList<>(listExtractURLsWithIndices);
            }
            arrayList.add(new Extractor.Entity(iStart, iEnd, strGroup, Extractor.Entity.Type.URL));
        }
        if (arrayList == null) {
            return listExtractURLsWithIndices;
        }
        Collections.sort(arrayList, ecp);
        return arrayList;
    }
}
