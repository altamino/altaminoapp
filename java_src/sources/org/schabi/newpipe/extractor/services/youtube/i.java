package org.schabi.newpipe.extractor.services.youtube;

import com.grack.nanojson.JsonObject;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Stack;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.ToIntFunction;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.jsoup.nodes.Entities;

/* JADX INFO: loaded from: classes9.dex */
public final class i {
    private static final String BOLD_CLOSE = "</b>";
    private static final String BOLD_OPEN = "<b>";
    private static final String ITALIC_CLOSE = "</i>";
    private static final String ITALIC_OPEN = "<i>";
    private static final String LINK_CLOSE = "</a>";
    private static final Pattern LINK_CONTENT_CLEANER_REGEX = Pattern.compile("(?s)^ +[/•] +(.*?) +$");
    private static final String STRIKETHROUGH_CLOSE = "</s>";
    private static final String STRIKETHROUGH_OPEN = "<s>";

    static final class a {
        final String close;
        final String open;
        int openPosInOutput;
        final int pos;
        final Function<String, String> transformContent;

        a(String str, String str2, int i10) {
            this(str, str2, i10, null);
        }

        a(String str, String str2, int i10, Function<String, String> function) {
            this.openPosInOutput = -1;
            this.open = str;
            this.close = str2;
            this.pos = i10;
            this.transformContent = function;
        }

        public boolean a(a aVar) {
            return this.open.equals(aVar.open);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String p(String str, String str2) {
        return str;
    }

    private static void g(JsonObject jsonObject, final List<a> list, final List<a> list2) {
        jsonObject.getArray("commandRuns").stream().filter(new org.schabi.newpipe.extractor.services.media_ccc.extractors.a(JsonObject.class)).map(new org.schabi.newpipe.extractor.services.media_ccc.extractors.d(JsonObject.class)).forEach(new Consumer() { // from class: org.schabi.newpipe.extractor.services.youtube.e
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                i.k(list, list2, (JsonObject) obj);
            }
        });
    }

    private static void h(JsonObject jsonObject, final List<a> list, final List<a> list2) {
        jsonObject.getArray("styleRuns").stream().filter(new org.schabi.newpipe.extractor.services.media_ccc.extractors.a(JsonObject.class)).map(new org.schabi.newpipe.extractor.services.media_ccc.extractors.d(JsonObject.class)).forEach(new Consumer() { // from class: org.schabi.newpipe.extractor.services.youtube.f
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                i.l(list, list2, (JsonObject) obj);
            }
        });
    }

    private static Function<String, String> j(JsonObject jsonObject) {
        final String strReplaceFirst = jsonObject.getObject("onTapOptions").getObject("accessibilityInfo").getString("accessibilityLabel", "").replaceFirst(" Channel Link", "");
        return (strReplaceFirst.isEmpty() || strReplaceFirst.startsWith("YouTube: ")) ? new Function() { // from class: org.schabi.newpipe.extractor.services.youtube.g
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return i.o((String) obj);
            }
        } : new Function() { // from class: org.schabi.newpipe.extractor.services.youtube.h
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return i.p(strReplaceFirst, (String) obj);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void k(List list, List list2, JsonObject jsonObject) {
        String strN;
        JsonObject object = jsonObject.getObject("onTap").getObject("innertubeCommand");
        int i10 = jsonObject.getInt("startIndex", -1);
        int i11 = jsonObject.getInt("length", 0);
        if (i10 < 0 || i11 < 1 || object == null || (strN = r0.N(object)) == null) {
            return;
        }
        String str = "<a href=\"" + Entities.escape(strN) + "\">";
        Function<String, String> functionJ = j(jsonObject);
        list.add(new a(str, LINK_CLOSE, i10, functionJ));
        list2.add(new a(str, LINK_CLOSE, i10 + i11, functionJ));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void l(List list, List list2, JsonObject jsonObject) {
        int i10 = jsonObject.getInt("startIndex", -1);
        int i11 = jsonObject.getInt("length", 0);
        if (i10 < 0 || i11 < 1) {
            return;
        }
        int i12 = i11 + i10;
        if (jsonObject.has("strikethrough")) {
            list.add(new a(STRIKETHROUGH_OPEN, STRIKETHROUGH_CLOSE, i10));
            list2.add(new a(STRIKETHROUGH_OPEN, STRIKETHROUGH_CLOSE, i12));
        }
        if (jsonObject.getBoolean("italic", Boolean.FALSE)) {
            list.add(new a(ITALIC_OPEN, ITALIC_CLOSE, i10));
            list2.add(new a(ITALIC_OPEN, ITALIC_CLOSE, i12));
        }
        if (!jsonObject.has("weightLabel") || "FONT_WEIGHT_NORMAL".equals(jsonObject.getString("weightLabel"))) {
            return;
        }
        list.add(new a(BOLD_OPEN, BOLD_CLOSE, i10));
        list2.add(new a(BOLD_OPEN, BOLD_CLOSE, i12));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String o(String str) {
        Matcher matcher = LINK_CONTENT_CLEANER_REGEX.matcher(str);
        return matcher.find() ? matcher.group(1) : str;
    }

    static String q(List<a> list, List<a> list2, String str) {
        int i10;
        String strReplace = str.replace((char) 160, ' ');
        Stack stack = new Stack();
        Stack stack2 = new Stack();
        StringBuilder sb = new StringBuilder();
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i11 < list2.size()) {
            int iMin = i13 < list.size() ? Math.min(list2.get(i11).pos, list.get(i13).pos) : list2.get(i11).pos;
            sb.append(Entities.escape(strReplace.substring(i12, iMin)));
            if (list2.get(i11).pos == iMin) {
                a aVar = list2.get(i11);
                i11++;
                while (!stack.empty()) {
                    a aVar2 = (a) stack.pop();
                    if (aVar2.a(aVar)) {
                        if (aVar2.transformContent != null && (i10 = aVar2.openPosInOutput) >= 0) {
                            sb.replace(i10, sb.length(), (String) aVar2.transformContent.apply(sb.substring(aVar2.openPosInOutput)));
                        }
                        sb.append(aVar2.close);
                        break;
                    }
                    sb.append(aVar2.close);
                    stack2.push(aVar2);
                }
                while (!stack2.empty()) {
                    a aVar3 = (a) stack2.pop();
                    sb.append(aVar3.open);
                    stack.push(aVar3);
                }
            } else {
                a aVar4 = list.get(i13);
                sb.append(aVar4.open);
                aVar4.openPosInOutput = sb.length();
                stack.push(aVar4);
                i13++;
            }
            i12 = iMin;
        }
        sb.append(Entities.escape(strReplace.substring(i12)));
        return sb.toString().replace("\n", "<br>").replace("  ", " &nbsp;");
    }

    public static String i(JsonObject jsonObject) {
        String string;
        if (qa.y.o(jsonObject) || (string = jsonObject.getString("content")) == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        g(jsonObject, arrayList, arrayList2);
        h(jsonObject, arrayList, arrayList2);
        Collections.sort(arrayList, Comparator.comparingInt(new ToIntFunction() { // from class: org.schabi.newpipe.extractor.services.youtube.c
            @Override // java.util.function.ToIntFunction
            public final int applyAsInt(Object obj) {
                return ((i.a) obj).pos;
            }
        }));
        Collections.sort(arrayList2, Comparator.comparingInt(new ToIntFunction() { // from class: org.schabi.newpipe.extractor.services.youtube.d
            @Override // java.util.function.ToIntFunction
            public final int applyAsInt(Object obj) {
                return ((i.a) obj).pos;
            }
        }));
        return q(arrayList, arrayList2, string);
    }
}
