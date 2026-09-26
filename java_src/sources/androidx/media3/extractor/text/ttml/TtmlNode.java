package androidx.media3.extractor.text.ttml;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.SpannableStringBuilder;
import android.util.Base64;
import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.media3.common.text.Cue;
import androidx.media3.common.util.Assertions;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes11.dex */
final class TtmlNode {
    public static final String ANNOTATION_POSITION_AFTER = "after";
    public static final String ANNOTATION_POSITION_BEFORE = "before";
    public static final String ANNOTATION_POSITION_OUTSIDE = "outside";
    public static final String ANONYMOUS_REGION_ID = "";
    public static final String ATTR_EBUTTS_MULTI_ROW_ALIGN = "multiRowAlign";
    public static final String ATTR_ID = "id";
    public static final String ATTR_TTS_BACKGROUND_COLOR = "backgroundColor";
    public static final String ATTR_TTS_COLOR = "color";
    public static final String ATTR_TTS_DISPLAY_ALIGN = "displayAlign";
    public static final String ATTR_TTS_EXTENT = "extent";
    public static final String ATTR_TTS_FONT_FAMILY = "fontFamily";
    public static final String ATTR_TTS_FONT_SIZE = "fontSize";
    public static final String ATTR_TTS_FONT_STYLE = "fontStyle";
    public static final String ATTR_TTS_FONT_WEIGHT = "fontWeight";
    public static final String ATTR_TTS_ORIGIN = "origin";
    public static final String ATTR_TTS_RUBY = "ruby";
    public static final String ATTR_TTS_RUBY_POSITION = "rubyPosition";
    public static final String ATTR_TTS_SHEAR = "shear";
    public static final String ATTR_TTS_TEXT_ALIGN = "textAlign";
    public static final String ATTR_TTS_TEXT_COMBINE = "textCombine";
    public static final String ATTR_TTS_TEXT_DECORATION = "textDecoration";
    public static final String ATTR_TTS_TEXT_EMPHASIS = "textEmphasis";
    public static final String ATTR_TTS_WRITING_MODE = "writingMode";
    public static final String BOLD = "bold";
    public static final String CENTER = "center";
    public static final String COMBINE_ALL = "all";
    public static final String COMBINE_NONE = "none";
    public static final String END = "end";
    public static final String ITALIC = "italic";
    public static final String LEFT = "left";
    public static final String LINETHROUGH = "linethrough";
    public static final String NO_LINETHROUGH = "nolinethrough";
    public static final String NO_UNDERLINE = "nounderline";
    public static final String RIGHT = "right";
    public static final String RUBY_BASE = "base";
    public static final String RUBY_BASE_CONTAINER = "baseContainer";
    public static final String RUBY_CONTAINER = "container";
    public static final String RUBY_DELIMITER = "delimiter";
    public static final String RUBY_TEXT = "text";
    public static final String RUBY_TEXT_CONTAINER = "textContainer";
    public static final String START = "start";
    public static final String TAG_BODY = "body";
    public static final String TAG_BR = "br";
    public static final String TAG_DATA = "data";
    public static final String TAG_DIV = "div";
    public static final String TAG_HEAD = "head";
    public static final String TAG_IMAGE = "image";
    public static final String TAG_INFORMATION = "information";
    public static final String TAG_LAYOUT = "layout";
    public static final String TAG_METADATA = "metadata";
    public static final String TAG_P = "p";
    public static final String TAG_REGION = "region";
    public static final String TAG_SPAN = "span";
    public static final String TAG_STYLE = "style";
    public static final String TAG_STYLING = "styling";
    public static final String TAG_TT = "tt";
    public static final String TEXT_EMPHASIS_AUTO = "auto";
    public static final String TEXT_EMPHASIS_MARK_CIRCLE = "circle";
    public static final String TEXT_EMPHASIS_MARK_DOT = "dot";
    public static final String TEXT_EMPHASIS_MARK_FILLED = "filled";
    public static final String TEXT_EMPHASIS_MARK_OPEN = "open";
    public static final String TEXT_EMPHASIS_MARK_SESAME = "sesame";
    public static final String TEXT_EMPHASIS_NONE = "none";
    public static final String UNDERLINE = "underline";
    public static final String VERTICAL = "tb";
    public static final String VERTICAL_LR = "tblr";
    public static final String VERTICAL_RL = "tbrl";
    private List<TtmlNode> children;
    public final long endTimeUs;

    @Nullable
    public final String imageId;
    public final boolean isTextNode;
    private final HashMap<String, Integer> nodeEndsByRegion;
    private final HashMap<String, Integer> nodeStartsByRegion;

    @Nullable
    public final TtmlNode parent;
    public final String regionId;
    public final long startTimeUs;

    @Nullable
    public final TtmlStyle style;

    @Nullable
    private final String[] styleIds;

    @Nullable
    public final String tag;

    @Nullable
    public final String text;

    @Nullable
    public String[] l() {
        return this.styleIds;
    }

    public boolean m(long j6) {
        long j10 = this.startTimeUs;
        return (j10 == -9223372036854775807L && this.endTimeUs == -9223372036854775807L) || (j10 <= j6 && this.endTimeUs == -9223372036854775807L) || ((j10 == -9223372036854775807L && j6 < this.endTimeUs) || (j10 <= j6 && j6 < this.endTimeUs));
    }

    private void b(Map<String, TtmlStyle> map, Cue.Builder builder, int i10, int i11, int i12) {
        TtmlStyle ttmlStyleF = TtmlRenderUtil.f(this.style, this.styleIds, map);
        SpannableStringBuilder spannableStringBuilder = (SpannableStringBuilder) builder.e();
        if (spannableStringBuilder == null) {
            spannableStringBuilder = new SpannableStringBuilder();
            builder.o(spannableStringBuilder);
        }
        SpannableStringBuilder spannableStringBuilder2 = spannableStringBuilder;
        if (ttmlStyleF != null) {
            TtmlRenderUtil.a(spannableStringBuilder2, i10, i11, ttmlStyleF, this.parent, map, i12);
            if ("p".equals(this.tag)) {
                if (ttmlStyleF.k() != Float.MAX_VALUE) {
                    builder.m((ttmlStyleF.k() * (-90.0f)) / 100.0f);
                }
                if (ttmlStyleF.m() != null) {
                    builder.p(ttmlStyleF.m());
                }
                if (ttmlStyleF.h() != null) {
                    builder.j(ttmlStyleF.h());
                }
            }
        }
    }

    public static TtmlNode c(@Nullable String str, long j6, long j10, @Nullable TtmlStyle ttmlStyle, @Nullable String[] strArr, String str2, @Nullable String str3, @Nullable TtmlNode ttmlNode) {
        return new TtmlNode(str, null, j6, j10, ttmlStyle, strArr, str2, str3, ttmlNode);
    }

    public static TtmlNode d(String str) {
        return new TtmlNode(null, TtmlRenderUtil.b(str), -9223372036854775807L, -9223372036854775807L, null, null, "", null, null);
    }

    private void n(long j6, String str, List<Pair<String, String>> list) {
        if (!"".equals(this.regionId)) {
            str = this.regionId;
        }
        if (m(j6) && "div".equals(this.tag) && this.imageId != null) {
            list.add(new Pair<>(str, this.imageId));
            return;
        }
        for (int i10 = 0; i10 < g(); i10++) {
            f(i10).n(j6, str, list);
        }
    }

    private void o(long j6, Map<String, TtmlStyle> map, Map<String, TtmlRegion> map2, String str, Map<String, Cue.Builder> map3) {
        int i10;
        if (m(j6)) {
            String str2 = "".equals(this.regionId) ? str : this.regionId;
            Iterator<Map.Entry<String, Integer>> it = this.nodeEndsByRegion.entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<String, Integer> next = it.next();
                String key = next.getKey();
                int iIntValue = this.nodeStartsByRegion.containsKey(key) ? this.nodeStartsByRegion.get(key).intValue() : 0;
                int iIntValue2 = next.getValue().intValue();
                if (iIntValue != iIntValue2) {
                    b(map, (Cue.Builder) Assertions.e(map3.get(key)), iIntValue, iIntValue2, ((TtmlRegion) Assertions.e(map2.get(str2))).verticalType);
                }
            }
            for (i10 = 0; i10 < g(); i10++) {
                f(i10).o(j6, map, map2, str2, map3);
            }
        }
    }

    private void p(long j6, boolean z6, String str, Map<String, Cue.Builder> map) {
        this.nodeStartsByRegion.clear();
        this.nodeEndsByRegion.clear();
        if ("metadata".equals(this.tag)) {
            return;
        }
        if (!"".equals(this.regionId)) {
            str = this.regionId;
        }
        if (this.isTextNode && z6) {
            k(str, map).append((CharSequence) Assertions.e(this.text));
            return;
        }
        if ("br".equals(this.tag) && z6) {
            k(str, map).append('\n');
            return;
        }
        if (m(j6)) {
            for (Map.Entry<String, Cue.Builder> entry : map.entrySet()) {
                this.nodeStartsByRegion.put(entry.getKey(), Integer.valueOf(((CharSequence) Assertions.e(entry.getValue().e())).length()));
            }
            boolean zEquals = "p".equals(this.tag);
            for (int i10 = 0; i10 < g(); i10++) {
                f(i10).p(j6, z6 || zEquals, str, map);
            }
            if (zEquals) {
                TtmlRenderUtil.c(k(str, map));
            }
            for (Map.Entry<String, Cue.Builder> entry2 : map.entrySet()) {
                this.nodeEndsByRegion.put(entry2.getKey(), Integer.valueOf(((CharSequence) Assertions.e(entry2.getValue().e())).length()));
            }
        }
    }

    public void a(TtmlNode ttmlNode) {
        if (this.children == null) {
            this.children = new ArrayList();
        }
        this.children.add(ttmlNode);
    }

    public TtmlNode f(int i10) {
        List<TtmlNode> list = this.children;
        if (list != null) {
            return list.get(i10);
        }
        throw new IndexOutOfBoundsException();
    }

    public int g() {
        List<TtmlNode> list = this.children;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public List<Cue> h(long j6, Map<String, TtmlStyle> map, Map<String, TtmlRegion> map2, Map<String, String> map3) {
        List<Pair<String, String>> arrayList = new ArrayList<>();
        n(j6, this.regionId, arrayList);
        TreeMap treeMap = new TreeMap();
        p(j6, false, this.regionId, treeMap);
        o(j6, map, map2, this.regionId, treeMap);
        ArrayList arrayList2 = new ArrayList();
        for (Pair<String, String> pair : arrayList) {
            String str = map3.get(pair.second);
            if (str != null) {
                byte[] bArrDecode = Base64.decode(str, 0);
                Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length);
                TtmlRegion ttmlRegion = (TtmlRegion) Assertions.e(map2.get(pair.first));
                arrayList2.add(new Cue.Builder().f(bitmapDecodeByteArray).k(ttmlRegion.position).l(0).h(ttmlRegion.line, 0).i(ttmlRegion.lineAnchor).n(ttmlRegion.width).g(ttmlRegion.height).r(ttmlRegion.verticalType).a());
            }
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            TtmlRegion ttmlRegion2 = (TtmlRegion) Assertions.e(map2.get(entry.getKey()));
            Cue.Builder builder = (Cue.Builder) entry.getValue();
            e((SpannableStringBuilder) Assertions.e(builder.e()));
            builder.h(ttmlRegion2.line, ttmlRegion2.lineType);
            builder.i(ttmlRegion2.lineAnchor);
            builder.k(ttmlRegion2.position);
            builder.n(ttmlRegion2.width);
            builder.q(ttmlRegion2.textSize, ttmlRegion2.textSizeType);
            builder.r(ttmlRegion2.verticalType);
            arrayList2.add(builder.a());
        }
        return arrayList2;
    }

    public long[] j() {
        TreeSet<Long> treeSet = new TreeSet<>();
        int i10 = 0;
        i(treeSet, false);
        long[] jArr = new long[treeSet.size()];
        Iterator<Long> it = treeSet.iterator();
        while (it.hasNext()) {
            jArr[i10] = it.next().longValue();
            i10++;
        }
        return jArr;
    }

    private TtmlNode(@Nullable String str, @Nullable String str2, long j6, long j10, @Nullable TtmlStyle ttmlStyle, @Nullable String[] strArr, String str3, @Nullable String str4, @Nullable TtmlNode ttmlNode) {
        boolean z6;
        this.tag = str;
        this.text = str2;
        this.imageId = str4;
        this.style = ttmlStyle;
        this.styleIds = strArr;
        if (str2 != null) {
            z6 = true;
        } else {
            z6 = false;
        }
        this.isTextNode = z6;
        this.startTimeUs = j6;
        this.endTimeUs = j10;
        this.regionId = (String) Assertions.e(str3);
        this.parent = ttmlNode;
        this.nodeStartsByRegion = new HashMap<>();
        this.nodeEndsByRegion = new HashMap<>();
    }

    private static void e(SpannableStringBuilder spannableStringBuilder) {
        for (DeleteTextSpan deleteTextSpan : (DeleteTextSpan[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), DeleteTextSpan.class)) {
            spannableStringBuilder.replace(spannableStringBuilder.getSpanStart(deleteTextSpan), spannableStringBuilder.getSpanEnd(deleteTextSpan), "");
        }
        for (int i10 = 0; i10 < spannableStringBuilder.length(); i10++) {
            if (spannableStringBuilder.charAt(i10) == ' ') {
                int i11 = i10 + 1;
                int i12 = i11;
                while (i12 < spannableStringBuilder.length() && spannableStringBuilder.charAt(i12) == ' ') {
                    i12++;
                }
                int i13 = i12 - i11;
                if (i13 > 0) {
                    spannableStringBuilder.delete(i10, i13 + i10);
                }
            }
        }
        if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(0) == ' ') {
            spannableStringBuilder.delete(0, 1);
        }
        for (int i14 = 0; i14 < spannableStringBuilder.length() - 1; i14++) {
            if (spannableStringBuilder.charAt(i14) == '\n') {
                int i15 = i14 + 1;
                if (spannableStringBuilder.charAt(i15) == ' ') {
                    spannableStringBuilder.delete(i15, i14 + 2);
                }
            }
        }
        if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(spannableStringBuilder.length() - 1) == ' ') {
            spannableStringBuilder.delete(spannableStringBuilder.length() - 1, spannableStringBuilder.length());
        }
        for (int i16 = 0; i16 < spannableStringBuilder.length() - 1; i16++) {
            if (spannableStringBuilder.charAt(i16) == ' ') {
                int i17 = i16 + 1;
                if (spannableStringBuilder.charAt(i17) == '\n') {
                    spannableStringBuilder.delete(i16, i17);
                }
            }
        }
        if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(spannableStringBuilder.length() - 1) == '\n') {
            spannableStringBuilder.delete(spannableStringBuilder.length() - 1, spannableStringBuilder.length());
        }
    }

    private void i(TreeSet<Long> treeSet, boolean z6) {
        boolean z10;
        boolean zEquals = "p".equals(this.tag);
        boolean zEquals2 = "div".equals(this.tag);
        if (z6 || zEquals || (zEquals2 && this.imageId != null)) {
            long j6 = this.startTimeUs;
            if (j6 != -9223372036854775807L) {
                treeSet.add(Long.valueOf(j6));
            }
            long j10 = this.endTimeUs;
            if (j10 != -9223372036854775807L) {
                treeSet.add(Long.valueOf(j10));
            }
        }
        if (this.children == null) {
            return;
        }
        for (int i10 = 0; i10 < this.children.size(); i10++) {
            TtmlNode ttmlNode = this.children.get(i10);
            if (!z6 && !zEquals) {
                z10 = false;
            } else {
                z10 = true;
            }
            ttmlNode.i(treeSet, z10);
        }
    }

    private static SpannableStringBuilder k(String str, Map<String, Cue.Builder> map) {
        if (!map.containsKey(str)) {
            Cue.Builder builder = new Cue.Builder();
            builder.o(new SpannableStringBuilder());
            map.put(str, builder);
        }
        return (SpannableStringBuilder) Assertions.e(map.get(str).e());
    }
}
