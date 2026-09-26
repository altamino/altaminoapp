package com.twitter;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;

/* JADX INFO: loaded from: classes6.dex */
public class a {
    protected boolean extractURLWithoutProtocol = true;

    /* JADX INFO: renamed from: com.twitter.a$a, reason: collision with other inner class name */
    class C0375a implements Comparator<b> {
        C0375a() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(b bVar, b bVar2) {
            return bVar.start - bVar2.start;
        }
    }

    public static class b {
        protected String displayURL;
        protected int end;
        protected String expandedURL;
        protected final String listSlug;
        protected int start;
        protected final EnumC0376a type;
        protected final String value;

        /* JADX INFO: renamed from: com.twitter.a$b$a, reason: collision with other inner class name */
        public enum EnumC0376a {
            URL,
            HASHTAG,
            MENTION,
            CASHTAG
        }

        public b(int i10, int i11, String str, String str2, EnumC0376a enumC0376a) {
            this.displayURL = null;
            this.expandedURL = null;
            this.start = i10;
            this.end = i11;
            this.value = str;
            this.listSlug = str2;
            this.type = enumC0376a;
        }

        public EnumC0376a c() {
            return this.type;
        }

        public String d() {
            return this.value;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.type.equals(bVar.type) && this.start == bVar.start && this.end == bVar.end && this.value.equals(bVar.value);
        }

        public b(int i10, int i11, String str, EnumC0376a enumC0376a) {
            this(i10, i11, str, null, enumC0376a);
        }

        public Integer a() {
            return Integer.valueOf(this.end);
        }

        public Integer b() {
            return Integer.valueOf(this.start);
        }

        public int hashCode() {
            return this.type.hashCode() + this.value.hashCode() + this.start + this.end;
        }

        public String toString() {
            return this.value + "(" + this.type + ") [" + this.start + "," + this.end + "]";
        }

        public b(Matcher matcher, EnumC0376a enumC0376a, int i10) {
            this(matcher, enumC0376a, i10, -1);
        }

        public b(Matcher matcher, EnumC0376a enumC0376a, int i10, int i11) {
            this(matcher.start(i10) + i11, matcher.end(i10), matcher.group(i10), enumC0376a);
        }
    }

    private static final class c {
        protected final String text;
        protected int codePointIndex = 0;
        protected int charIndex = 0;

        int a(int i10) {
            int iOffsetByCodePoints = this.text.offsetByCodePoints(this.charIndex, i10 - this.codePointIndex);
            this.charIndex = iOffsetByCodePoints;
            this.codePointIndex = i10;
            return iOffsetByCodePoints;
        }

        int b(int i10) {
            int i11 = this.charIndex;
            if (i10 < i11) {
                this.codePointIndex -= this.text.codePointCount(i10, i11);
            } else {
                this.codePointIndex += this.text.codePointCount(i11, i10);
            }
            this.charIndex = i10;
            if (i10 > 0 && Character.isSupplementaryCodePoint(this.text.codePointAt(i10 - 1))) {
                this.charIndex--;
            }
            return this.codePointIndex;
        }

        c(String str) {
            this.text = str;
        }
    }

    public List<b> extractHashtagsWithIndices(String str) {
        return extractHashtagsWithIndices(str, true);
    }

    public String extractReplyScreenname(String str) {
        if (str == null) {
            return null;
        }
        Matcher matcher = com.twitter.b.VALID_REPLY.matcher(str);
        if (!matcher.find()) {
            return null;
        }
        if (com.twitter.b.INVALID_MENTION_MATCH_END.matcher(str.substring(matcher.end())).find()) {
            return null;
        }
        return matcher.group(1);
    }

    public boolean isExtractURLWithoutProtocol() {
        return this.extractURLWithoutProtocol;
    }

    public void setExtractURLWithoutProtocol(boolean z6) {
        this.extractURLWithoutProtocol = z6;
    }

    private List<b> extractHashtagsWithIndices(String str, boolean z6) {
        if (str == null || str.length() == 0) {
            return Collections.emptyList();
        }
        for (char c7 : str.toCharArray()) {
            if (c7 == '#' || c7 == 65283) {
                ArrayList arrayList = new ArrayList();
                Matcher matcher = com.twitter.b.VALID_HASHTAG.matcher(str);
                while (matcher.find()) {
                    if (!com.twitter.b.INVALID_HASHTAG_MATCH_END.matcher(str.substring(matcher.end())).find()) {
                        arrayList.add(new b(matcher, b.EnumC0376a.HASHTAG, 3));
                    }
                }
                if (z6) {
                    List<b> listExtractURLsWithIndices = extractURLsWithIndices(str);
                    if (!listExtractURLsWithIndices.isEmpty()) {
                        arrayList.addAll(listExtractURLsWithIndices);
                        removeOverlappingEntities(arrayList);
                        Iterator<b> it = arrayList.iterator();
                        while (it.hasNext()) {
                            if (it.next().c() != b.EnumC0376a.HASHTAG) {
                                it.remove();
                            }
                        }
                    }
                }
                return arrayList;
            }
        }
        return Collections.emptyList();
    }

    private void removeOverlappingEntities(List<b> list) {
        Collections.sort(list, new C0375a());
        if (list.isEmpty()) {
            return;
        }
        Iterator<b> it = list.iterator();
        b next = it.next();
        while (it.hasNext()) {
            b next2 = it.next();
            if (next.a().intValue() > next2.b().intValue()) {
                it.remove();
            } else {
                next = next2;
            }
        }
    }

    public List<String> extractCashtags(String str) {
        if (str == null || str.length() == 0) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        Iterator<b> it = extractCashtagsWithIndices(str).iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().value);
        }
        return arrayList;
    }

    public List<b> extractCashtagsWithIndices(String str) {
        if (str == null || str.length() == 0) {
            return Collections.emptyList();
        }
        if (str.indexOf(36) == -1) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        Matcher matcher = com.twitter.b.VALID_CASHTAG.matcher(str);
        while (matcher.find()) {
            arrayList.add(new b(matcher, b.EnumC0376a.CASHTAG, 3));
        }
        return arrayList;
    }

    public List<b> extractEntitiesWithIndices(String str) {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(extractURLsWithIndices(str));
        arrayList.addAll(extractHashtagsWithIndices(str, false));
        arrayList.addAll(extractMentionsOrListsWithIndices(str));
        arrayList.addAll(extractCashtagsWithIndices(str));
        removeOverlappingEntities(arrayList);
        return arrayList;
    }

    public List<String> extractHashtags(String str) {
        if (str == null || str.length() == 0) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        Iterator<b> it = extractHashtagsWithIndices(str).iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().value);
        }
        return arrayList;
    }

    public List<String> extractMentionedScreennames(String str) {
        if (str == null || str.length() == 0) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        Iterator<b> it = extractMentionedScreennamesWithIndices(str).iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().value);
        }
        return arrayList;
    }

    public List<b> extractMentionedScreennamesWithIndices(String str) {
        ArrayList arrayList = new ArrayList();
        for (b bVar : extractMentionsOrListsWithIndices(str)) {
            if (bVar.listSlug == null) {
                arrayList.add(bVar);
            }
        }
        return arrayList;
    }

    public List<b> extractMentionsOrListsWithIndices(String str) {
        if (str == null || str.length() == 0) {
            return Collections.emptyList();
        }
        for (char c7 : str.toCharArray()) {
            if (c7 == '@' || c7 == 65312) {
                ArrayList arrayList = new ArrayList();
                Matcher matcher = com.twitter.b.VALID_MENTION_OR_LIST.matcher(str);
                while (matcher.find()) {
                    if (!com.twitter.b.INVALID_MENTION_MATCH_END.matcher(str.substring(matcher.end())).find()) {
                        if (matcher.group(4) == null) {
                            arrayList.add(new b(matcher, b.EnumC0376a.MENTION, 3));
                        } else {
                            arrayList.add(new b(matcher.start(3) - 1, matcher.end(4), matcher.group(3), matcher.group(4), b.EnumC0376a.MENTION));
                        }
                    }
                }
                return arrayList;
            }
        }
        return Collections.emptyList();
    }

    public List<String> extractURLs(String str) {
        if (str == null || str.length() == 0) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        Iterator<b> it = extractURLsWithIndices(str).iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().value);
        }
        return arrayList;
    }

    public List<b> extractURLsWithIndices(String str) {
        if (str != null && str.length() != 0) {
            if (str.indexOf(this.extractURLWithoutProtocol ? 46 : 58) != -1) {
                ArrayList arrayList = new ArrayList();
                Matcher matcher = com.twitter.b.VALID_URL.matcher(str);
                while (matcher.find()) {
                    if (matcher.group(4) != null || (this.extractURLWithoutProtocol && !com.twitter.b.INVALID_URL_WITHOUT_PROTOCOL_MATCH_BEGIN.matcher(matcher.group(2)).matches())) {
                        String strGroup = matcher.group(3);
                        int iStart = matcher.start(3);
                        int iEnd = matcher.end(3);
                        Matcher matcher2 = com.twitter.b.VALID_TCO_URL.matcher(strGroup);
                        if (matcher2.find()) {
                            strGroup = matcher2.group();
                            iEnd = strGroup.length() + iStart;
                        }
                        arrayList.add(new b(iStart, iEnd, strGroup, b.EnumC0376a.URL));
                    }
                }
                return arrayList;
            }
        }
        return Collections.emptyList();
    }

    public void modifyIndicesFromUTF16ToToUnicode(String str, List<b> list) {
        c cVar = new c(str);
        for (b bVar : list) {
            bVar.start = cVar.b(bVar.start);
            bVar.end = cVar.b(bVar.end);
        }
    }

    public void modifyIndicesFromUnicodeToUTF16(String str, List<b> list) {
        c cVar = new c(str);
        for (b bVar : list) {
            bVar.start = cVar.a(bVar.start);
            bVar.end = cVar.a(bVar.end);
        }
    }
}
