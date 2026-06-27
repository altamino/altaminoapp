package kotlin.text;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntProgression;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Strings.kt */
/* loaded from: classes4.dex */
public class StringsKt__StringsKt extends StringsKt__StringsJVMKt {
    public static final int getLastIndex(CharSequence lastIndex) {
        Intrinsics.checkParameterIsNotNull(lastIndex, "$this$lastIndex");
        return lastIndex.length() - 1;
    }

    public static final String substring(CharSequence substring, IntRange range) {
        Intrinsics.checkParameterIsNotNull(substring, "$this$substring");
        Intrinsics.checkParameterIsNotNull(range, "range");
        return substring.subSequence(range.getStart().intValue(), range.getEndInclusive().intValue() + 1).toString();
    }

    public static /* synthetic */ String substringBefore$default(String str, String str2, String str3, int i, Object obj) {
        if ((i & 2) != 0) {
            str3 = str;
        }
        return substringBefore(str, str2, str3);
    }

    public static final String substringBefore(String substringBefore, String delimiter, String missingDelimiterValue) {
        Intrinsics.checkParameterIsNotNull(substringBefore, "$this$substringBefore");
        Intrinsics.checkParameterIsNotNull(delimiter, "delimiter");
        Intrinsics.checkParameterIsNotNull(missingDelimiterValue, "missingDelimiterValue");
        int iIndexOf$default = indexOf$default((CharSequence) substringBefore, delimiter, 0, false, 6, (Object) null);
        if (iIndexOf$default == -1) {
            return missingDelimiterValue;
        }
        String strSubstring = substringBefore.substring(0, iIndexOf$default);
        Intrinsics.checkExpressionValueIsNotNull(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public static /* synthetic */ String substringBeforeLast$default(String str, String str2, String str3, int i, Object obj) {
        if ((i & 2) != 0) {
            str3 = str;
        }
        return substringBeforeLast(str, str2, str3);
    }

    public static final String substringBeforeLast(String substringBeforeLast, String delimiter, String missingDelimiterValue) {
        Intrinsics.checkParameterIsNotNull(substringBeforeLast, "$this$substringBeforeLast");
        Intrinsics.checkParameterIsNotNull(delimiter, "delimiter");
        Intrinsics.checkParameterIsNotNull(missingDelimiterValue, "missingDelimiterValue");
        int iLastIndexOf$default = lastIndexOf$default((CharSequence) substringBeforeLast, delimiter, 0, false, 6, (Object) null);
        if (iLastIndexOf$default == -1) {
            return missingDelimiterValue;
        }
        String strSubstring = substringBeforeLast.substring(0, iLastIndexOf$default);
        Intrinsics.checkExpressionValueIsNotNull(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public static String substringAfterLast(String substringAfterLast, char c, String missingDelimiterValue) {
        Intrinsics.checkParameterIsNotNull(substringAfterLast, "$this$substringAfterLast");
        Intrinsics.checkParameterIsNotNull(missingDelimiterValue, "missingDelimiterValue");
        int iLastIndexOf$default = lastIndexOf$default((CharSequence) substringAfterLast, c, 0, false, 6, (Object) null);
        if (iLastIndexOf$default == -1) {
            return missingDelimiterValue;
        }
        String strSubstring = substringAfterLast.substring(iLastIndexOf$default + 1, substringAfterLast.length());
        Intrinsics.checkExpressionValueIsNotNull(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public static /* synthetic */ String substringAfterLast$default(String str, String str2, String str3, int i, Object obj) {
        if ((i & 2) != 0) {
            str3 = str;
        }
        return substringAfterLast(str, str2, str3);
    }

    public static final String substringAfterLast(String substringAfterLast, String delimiter, String missingDelimiterValue) {
        Intrinsics.checkParameterIsNotNull(substringAfterLast, "$this$substringAfterLast");
        Intrinsics.checkParameterIsNotNull(delimiter, "delimiter");
        Intrinsics.checkParameterIsNotNull(missingDelimiterValue, "missingDelimiterValue");
        int iLastIndexOf$default = lastIndexOf$default((CharSequence) substringAfterLast, delimiter, 0, false, 6, (Object) null);
        if (iLastIndexOf$default == -1) {
            return missingDelimiterValue;
        }
        String strSubstring = substringAfterLast.substring(iLastIndexOf$default + delimiter.length(), substringAfterLast.length());
        Intrinsics.checkExpressionValueIsNotNull(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public static final boolean regionMatchesImpl(CharSequence regionMatchesImpl, int i, CharSequence other, int i2, int i3, boolean z) {
        Intrinsics.checkParameterIsNotNull(regionMatchesImpl, "$this$regionMatchesImpl");
        Intrinsics.checkParameterIsNotNull(other, "other");
        if (i2 < 0 || i < 0 || i > regionMatchesImpl.length() - i3 || i2 > other.length() - i3) {
            return false;
        }
        for (int i4 = 0; i4 < i3; i4++) {
            if (!CharsKt__CharKt.equals(regionMatchesImpl.charAt(i + i4), other.charAt(i2 + i4), z)) {
                return false;
            }
        }
        return true;
    }

    public static final int indexOfAny(CharSequence indexOfAny, char[] chars, int i, boolean z) {
        boolean z2;
        Intrinsics.checkParameterIsNotNull(indexOfAny, "$this$indexOfAny");
        Intrinsics.checkParameterIsNotNull(chars, "chars");
        if (!z && chars.length == 1 && (indexOfAny instanceof String)) {
            return ((String) indexOfAny).indexOf(ArraysKt___ArraysKt.single(chars), i);
        }
        int iCoerceAtLeast = RangesKt___RangesKt.coerceAtLeast(i, 0);
        int lastIndex = getLastIndex(indexOfAny);
        if (iCoerceAtLeast > lastIndex) {
            return -1;
        }
        while (true) {
            char cCharAt = indexOfAny.charAt(iCoerceAtLeast);
            int length = chars.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    z2 = false;
                    break;
                }
                if (CharsKt__CharKt.equals(chars[i2], cCharAt, z)) {
                    z2 = true;
                    break;
                }
                i2++;
            }
            if (z2) {
                return iCoerceAtLeast;
            }
            if (iCoerceAtLeast == lastIndex) {
                return -1;
            }
            iCoerceAtLeast++;
        }
    }

    public static final int lastIndexOfAny(CharSequence lastIndexOfAny, char[] chars, int i, boolean z) {
        Intrinsics.checkParameterIsNotNull(lastIndexOfAny, "$this$lastIndexOfAny");
        Intrinsics.checkParameterIsNotNull(chars, "chars");
        if (!z && chars.length == 1 && (lastIndexOfAny instanceof String)) {
            return ((String) lastIndexOfAny).lastIndexOf(ArraysKt___ArraysKt.single(chars), i);
        }
        for (int iCoerceAtMost = RangesKt___RangesKt.coerceAtMost(i, getLastIndex(lastIndexOfAny)); iCoerceAtMost >= 0; iCoerceAtMost--) {
            char cCharAt = lastIndexOfAny.charAt(iCoerceAtMost);
            int length = chars.length;
            boolean z2 = false;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    break;
                }
                if (CharsKt__CharKt.equals(chars[i2], cCharAt, z)) {
                    z2 = true;
                    break;
                }
                i2++;
            }
            if (z2) {
                return iCoerceAtMost;
            }
        }
        return -1;
    }

    static /* synthetic */ int indexOf$StringsKt__StringsKt$default(CharSequence charSequence, CharSequence charSequence2, int i, int i2, boolean z, boolean z2, int i3, Object obj) {
        return indexOf$StringsKt__StringsKt(charSequence, charSequence2, i, i2, z, (i3 & 16) != 0 ? false : z2);
    }

    private static final int indexOf$StringsKt__StringsKt(CharSequence charSequence, CharSequence charSequence2, int i, int i2, boolean z, boolean z2) {
        IntProgression intProgressionDownTo;
        if (!z2) {
            intProgressionDownTo = new IntRange(RangesKt___RangesKt.coerceAtLeast(i, 0), RangesKt___RangesKt.coerceAtMost(i2, charSequence.length()));
        } else {
            intProgressionDownTo = RangesKt___RangesKt.downTo(RangesKt___RangesKt.coerceAtMost(i, getLastIndex(charSequence)), RangesKt___RangesKt.coerceAtLeast(i2, 0));
        }
        if ((charSequence instanceof String) && (charSequence2 instanceof String)) {
            int first = intProgressionDownTo.getFirst();
            int last = intProgressionDownTo.getLast();
            int step = intProgressionDownTo.getStep();
            if (step >= 0) {
                if (first > last) {
                    return -1;
                }
            } else if (first < last) {
                return -1;
            }
            while (!StringsKt__StringsJVMKt.regionMatches((String) charSequence2, 0, (String) charSequence, first, charSequence2.length(), z)) {
                if (first == last) {
                    return -1;
                }
                first += step;
            }
            return first;
        }
        int first2 = intProgressionDownTo.getFirst();
        int last2 = intProgressionDownTo.getLast();
        int step2 = intProgressionDownTo.getStep();
        if (step2 >= 0) {
            if (first2 > last2) {
                return -1;
            }
        } else if (first2 < last2) {
            return -1;
        }
        while (!regionMatchesImpl(charSequence2, 0, charSequence, first2, charSequence2.length(), z)) {
            if (first2 == last2) {
                return -1;
            }
            first2 += step2;
        }
        return first2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Pair<Integer, String> findAnyOf$StringsKt__StringsKt(CharSequence charSequence, Collection<String> collection, int i, boolean z, boolean z2) {
        Object next;
        Object next2;
        if (!z && collection.size() == 1) {
            String str = (String) CollectionsKt.single(collection);
            int iIndexOf$default = !z2 ? indexOf$default(charSequence, str, i, false, 4, (Object) null) : lastIndexOf$default(charSequence, str, i, false, 4, (Object) null);
            if (iIndexOf$default < 0) {
                return null;
            }
            return TuplesKt.to(Integer.valueOf(iIndexOf$default), str);
        }
        IntProgression intRange = !z2 ? new IntRange(RangesKt___RangesKt.coerceAtLeast(i, 0), charSequence.length()) : RangesKt___RangesKt.downTo(RangesKt___RangesKt.coerceAtMost(i, getLastIndex(charSequence)), 0);
        if (charSequence instanceof String) {
            int first = intRange.getFirst();
            int last = intRange.getLast();
            int step = intRange.getStep();
            if (step < 0 ? first >= last : first <= last) {
                while (true) {
                    Iterator<T> it = collection.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            next2 = null;
                            break;
                        }
                        next2 = it.next();
                        String str2 = (String) next2;
                        if (StringsKt__StringsJVMKt.regionMatches(str2, 0, (String) charSequence, first, str2.length(), z)) {
                            break;
                        }
                    }
                    String str3 = (String) next2;
                    if (str3 == null) {
                        if (first == last) {
                            break;
                        }
                        first += step;
                    } else {
                        return TuplesKt.to(Integer.valueOf(first), str3);
                    }
                }
            }
        } else {
            int first2 = intRange.getFirst();
            int last2 = intRange.getLast();
            int step2 = intRange.getStep();
            if (step2 < 0 ? first2 >= last2 : first2 <= last2) {
                while (true) {
                    Iterator<T> it2 = collection.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it2.next();
                        String str4 = (String) next;
                        if (regionMatchesImpl(str4, 0, charSequence, first2, str4.length(), z)) {
                            break;
                        }
                    }
                    String str5 = (String) next;
                    if (str5 == null) {
                        if (first2 == last2) {
                            break;
                        }
                        first2 += step2;
                    } else {
                        return TuplesKt.to(Integer.valueOf(first2), str5);
                    }
                }
            }
        }
        return null;
    }

    public static /* synthetic */ int indexOf$default(CharSequence charSequence, char c, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return indexOf(charSequence, c, i, z);
    }

    public static final int indexOf(CharSequence indexOf, char c, int i, boolean z) {
        Intrinsics.checkParameterIsNotNull(indexOf, "$this$indexOf");
        if (z || !(indexOf instanceof String)) {
            return indexOfAny(indexOf, new char[]{c}, i, z);
        }
        return ((String) indexOf).indexOf(c, i);
    }

    public static /* synthetic */ int indexOf$default(CharSequence charSequence, String str, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return indexOf(charSequence, str, i, z);
    }

    public static int indexOf(CharSequence indexOf, String string, int i, boolean z) {
        Intrinsics.checkParameterIsNotNull(indexOf, "$this$indexOf");
        Intrinsics.checkParameterIsNotNull(string, "string");
        if (z || !(indexOf instanceof String)) {
            return indexOf$StringsKt__StringsKt$default(indexOf, string, i, indexOf.length(), z, false, 16, null);
        }
        return ((String) indexOf).indexOf(string, i);
    }

    public static /* synthetic */ int lastIndexOf$default(CharSequence charSequence, char c, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = getLastIndex(charSequence);
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return lastIndexOf(charSequence, c, i, z);
    }

    public static final int lastIndexOf(CharSequence lastIndexOf, char c, int i, boolean z) {
        Intrinsics.checkParameterIsNotNull(lastIndexOf, "$this$lastIndexOf");
        if (z || !(lastIndexOf instanceof String)) {
            return lastIndexOfAny(lastIndexOf, new char[]{c}, i, z);
        }
        return ((String) lastIndexOf).lastIndexOf(c, i);
    }

    public static /* synthetic */ int lastIndexOf$default(CharSequence charSequence, String str, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = getLastIndex(charSequence);
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return lastIndexOf(charSequence, str, i, z);
    }

    public static final int lastIndexOf(CharSequence lastIndexOf, String string, int i, boolean z) {
        Intrinsics.checkParameterIsNotNull(lastIndexOf, "$this$lastIndexOf");
        Intrinsics.checkParameterIsNotNull(string, "string");
        if (z || !(lastIndexOf instanceof String)) {
            return indexOf$StringsKt__StringsKt(lastIndexOf, string, i, 0, z, true);
        }
        return ((String) lastIndexOf).lastIndexOf(string, i);
    }

    public static /* synthetic */ boolean contains$default(CharSequence charSequence, CharSequence charSequence2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return contains(charSequence, charSequence2, z);
    }

    public static boolean contains(CharSequence contains, CharSequence other, boolean z) {
        Intrinsics.checkParameterIsNotNull(contains, "$this$contains");
        Intrinsics.checkParameterIsNotNull(other, "other");
        if (other instanceof String) {
            if (indexOf$default(contains, (String) other, 0, z, 2, (Object) null) >= 0) {
                return true;
            }
        } else if (indexOf$StringsKt__StringsKt$default(contains, other, 0, contains.length(), z, false, 16, null) >= 0) {
            return true;
        }
        return false;
    }

    static /* synthetic */ Sequence rangesDelimitedBy$StringsKt__StringsKt$default(CharSequence charSequence, String[] strArr, int i, boolean z, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            z = false;
        }
        if ((i3 & 8) != 0) {
            i2 = 0;
        }
        return rangesDelimitedBy$StringsKt__StringsKt(charSequence, strArr, i, z, i2);
    }

    private static final Sequence<IntRange> rangesDelimitedBy$StringsKt__StringsKt(CharSequence charSequence, String[] strArr, int i, final boolean z, int i2) {
        if (!(i2 >= 0)) {
            throw new IllegalArgumentException(("Limit must be non-negative, but was " + i2 + '.').toString());
        }
        final List listAsList = ArraysKt___ArraysJvmKt.asList(strArr);
        return new DelimitedRangesSequence(charSequence, i, i2, new Function2<CharSequence, Integer, Pair<? extends Integer, ? extends Integer>>() { // from class: kotlin.text.StringsKt__StringsKt$rangesDelimitedBy$4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Pair<? extends Integer, ? extends Integer> invoke(CharSequence charSequence2, Integer num) {
                return invoke(charSequence2, num.intValue());
            }

            public final Pair<Integer, Integer> invoke(CharSequence receiver, int i3) {
                Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
                Pair pairFindAnyOf$StringsKt__StringsKt = StringsKt__StringsKt.findAnyOf$StringsKt__StringsKt(receiver, listAsList, i3, z, false);
                if (pairFindAnyOf$StringsKt__StringsKt != null) {
                    return TuplesKt.to(pairFindAnyOf$StringsKt__StringsKt.getFirst(), Integer.valueOf(((String) pairFindAnyOf$StringsKt__StringsKt.getSecond()).length()));
                }
                return null;
            }
        });
    }

    public static /* synthetic */ Sequence splitToSequence$default(CharSequence charSequence, String[] strArr, boolean z, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        if ((i2 & 4) != 0) {
            i = 0;
        }
        return splitToSequence(charSequence, strArr, z, i);
    }

    public static final Sequence<String> splitToSequence(final CharSequence splitToSequence, String[] delimiters, boolean z, int i) {
        Intrinsics.checkParameterIsNotNull(splitToSequence, "$this$splitToSequence");
        Intrinsics.checkParameterIsNotNull(delimiters, "delimiters");
        return SequencesKt___SequencesKt.map(rangesDelimitedBy$StringsKt__StringsKt$default(splitToSequence, delimiters, 0, z, i, 2, null), new Function1<IntRange, String>() { // from class: kotlin.text.StringsKt__StringsKt.splitToSequence.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final String invoke(IntRange it) {
                Intrinsics.checkParameterIsNotNull(it, "it");
                return StringsKt__StringsKt.substring(splitToSequence, it);
            }
        });
    }

    public static /* synthetic */ List split$default(CharSequence charSequence, String[] strArr, boolean z, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        if ((i2 & 4) != 0) {
            i = 0;
        }
        return split(charSequence, strArr, z, i);
    }

    public static final List<String> split(CharSequence split, String[] delimiters, boolean z, int i) {
        Intrinsics.checkParameterIsNotNull(split, "$this$split");
        Intrinsics.checkParameterIsNotNull(delimiters, "delimiters");
        if (delimiters.length == 1) {
            String str = delimiters[0];
            if (!(str.length() == 0)) {
                return split$StringsKt__StringsKt(split, str, z, i);
            }
        }
        Iterable iterableAsIterable = SequencesKt___SequencesKt.asIterable(rangesDelimitedBy$StringsKt__StringsKt$default(split, delimiters, 0, z, i, 2, null));
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(iterableAsIterable, 10));
        Iterator it = iterableAsIterable.iterator();
        while (it.hasNext()) {
            arrayList.add(substring(split, (IntRange) it.next()));
        }
        return arrayList;
    }

    private static final List<String> split$StringsKt__StringsKt(CharSequence charSequence, String str, boolean z, int i) {
        int length = 0;
        if (!(i >= 0)) {
            throw new IllegalArgumentException(("Limit must be non-negative, but was " + i + '.').toString());
        }
        int iIndexOf = indexOf(charSequence, str, 0, z);
        if (iIndexOf == -1 || i == 1) {
            return CollectionsKt__CollectionsJVMKt.listOf(charSequence.toString());
        }
        boolean z2 = i > 0;
        ArrayList arrayList = new ArrayList(z2 ? RangesKt___RangesKt.coerceAtMost(i, 10) : 10);
        do {
            arrayList.add(charSequence.subSequence(length, iIndexOf).toString());
            length = str.length() + iIndexOf;
            if (z2 && arrayList.size() == i - 1) {
                break;
            }
            iIndexOf = indexOf(charSequence, str, length, z);
        } while (iIndexOf != -1);
        arrayList.add(charSequence.subSequence(length, charSequence.length()).toString());
        return arrayList;
    }

    public static CharSequence trim(CharSequence trim) {
        Intrinsics.checkParameterIsNotNull(trim, "$this$trim");
        int length = trim.length() - 1;
        int i = 0;
        boolean z = false;
        while (i <= length) {
            boolean zIsWhitespace = CharsKt__CharJVMKt.isWhitespace(trim.charAt(!z ? i : length));
            if (z) {
                if (!zIsWhitespace) {
                    break;
                }
                length--;
            } else if (zIsWhitespace) {
                i++;
            } else {
                z = true;
            }
        }
        return trim.subSequence(i, length + 1);
    }
}
