package androidx.media3.extractor.text.ssa;

import android.graphics.PointF;
import android.text.Layout;
import android.text.SpannableString;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import androidx.annotation.Nullable;
import androidx.media3.common.text.Cue;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.text.SimpleSubtitleDecoder;
import androidx.media3.extractor.text.Subtitle;
import androidx.work.WorkRequest;
import com.google.common.base.c;
import com.google.common.base.e;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes7.dex */
@UnstableApi
public final class SsaDecoder extends SimpleSubtitleDecoder {
    private static final float DEFAULT_MARGIN = 0.05f;
    private static final String DIALOGUE_LINE_PREFIX = "Dialogue:";
    static final String FORMAT_LINE_PREFIX = "Format:";
    private static final Pattern SSA_TIMECODE_PATTERN = Pattern.compile("(?:(\\d+):)?(\\d+):(\\d+)[:.](\\d+)");
    static final String STYLE_LINE_PREFIX = "Style:";
    private static final String TAG = "SsaDecoder";

    @Nullable
    private final SsaDialogueFormat dialogueFormatFromInitializationData;
    private final boolean haveInitializationData;
    private float screenHeight;
    private float screenWidth;
    private Map<String, SsaStyle> styles;

    public SsaDecoder() {
        this(null);
    }

    @Nullable
    private static Layout.Alignment J(int i10) {
        switch (i10) {
            case -1:
                return null;
            case 0:
            default:
                Log.i(TAG, "Unknown alignment: " + i10);
                return null;
            case 1:
            case 4:
            case 7:
                return Layout.Alignment.ALIGN_NORMAL;
            case 2:
            case 5:
            case 8:
                return Layout.Alignment.ALIGN_CENTER;
            case 3:
            case 6:
            case 9:
                return Layout.Alignment.ALIGN_OPPOSITE;
        }
    }

    private static float y(int i10) {
        if (i10 == 0) {
            return DEFAULT_MARGIN;
        }
        if (i10 != 1) {
            return i10 != 2 ? -3.4028235E38f : 0.95f;
        }
        return 0.5f;
    }

    public SsaDecoder(@Nullable List<byte[]> list) {
        super(TAG);
        this.screenWidth = -3.4028235E38f;
        this.screenHeight = -3.4028235E38f;
        if (list == null || list.isEmpty()) {
            this.haveInitializationData = false;
            this.dialogueFormatFromInitializationData = null;
            return;
        }
        this.haveInitializationData = true;
        String strE = Util.E(list.get(0));
        Assertions.a(strE.startsWith(FORMAT_LINE_PREFIX));
        this.dialogueFormatFromInitializationData = (SsaDialogueFormat) Assertions.e(SsaDialogueFormat.a(strE));
        D(new ParsableByteArray(list.get(1)), e.UTF_8);
    }

    private void B(String str, SsaDialogueFormat ssaDialogueFormat, List<List<Cue>> list, List<Long> list2) {
        int i10;
        Assertions.a(str.startsWith(DIALOGUE_LINE_PREFIX));
        String[] strArrSplit = str.substring(9).split(",", ssaDialogueFormat.length);
        if (strArrSplit.length != ssaDialogueFormat.length) {
            Log.i(TAG, "Skipping dialogue line with fewer columns than format: " + str);
            return;
        }
        long jG = G(strArrSplit[ssaDialogueFormat.startTimeIndex]);
        if (jG == -9223372036854775807L) {
            Log.i(TAG, "Skipping invalid timing: " + str);
            return;
        }
        long jG2 = G(strArrSplit[ssaDialogueFormat.endTimeIndex]);
        if (jG2 == -9223372036854775807L) {
            Log.i(TAG, "Skipping invalid timing: " + str);
            return;
        }
        Map<String, SsaStyle> map = this.styles;
        SsaStyle ssaStyle = (map == null || (i10 = ssaDialogueFormat.styleIndex) == -1) ? null : map.get(strArrSplit[i10].trim());
        String str2 = strArrSplit[ssaDialogueFormat.textIndex];
        Cue cueZ = z(SsaStyle.Overrides.d(str2).replace("\\N", "\n").replace("\\n", "\n").replace("\\h", " "), ssaStyle, SsaStyle.Overrides.b(str2), this.screenWidth, this.screenHeight);
        int iX = x(jG2, list2, list);
        for (int iX2 = x(jG, list2, list); iX2 < iX; iX2++) {
            list.get(iX2).add(cueZ);
        }
    }

    private void C(ParsableByteArray parsableByteArray, List<List<Cue>> list, List<Long> list2, Charset charset) {
        SsaDialogueFormat ssaDialogueFormatA = this.haveInitializationData ? this.dialogueFormatFromInitializationData : null;
        while (true) {
            String strT = parsableByteArray.t(charset);
            if (strT == null) {
                return;
            }
            if (strT.startsWith(FORMAT_LINE_PREFIX)) {
                ssaDialogueFormatA = SsaDialogueFormat.a(strT);
            } else if (strT.startsWith(DIALOGUE_LINE_PREFIX)) {
                if (ssaDialogueFormatA == null) {
                    Log.i(TAG, "Skipping dialogue line before complete format: " + strT);
                } else {
                    B(strT, ssaDialogueFormatA, list, list2);
                }
            }
        }
    }

    private static Map<String, SsaStyle> F(ParsableByteArray parsableByteArray, Charset charset) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        SsaStyle.Format formatA = null;
        while (true) {
            String strT = parsableByteArray.t(charset);
            if (strT == null || (parsableByteArray.a() != 0 && parsableByteArray.h(charset) == '[')) {
                break;
            }
            if (strT.startsWith(FORMAT_LINE_PREFIX)) {
                formatA = SsaStyle.Format.a(strT);
            } else if (strT.startsWith(STYLE_LINE_PREFIX)) {
                if (formatA == null) {
                    Log.i(TAG, "Skipping 'Style:' line before 'Format:' line: " + strT);
                } else {
                    SsaStyle ssaStyleB = SsaStyle.b(strT, formatA);
                    if (ssaStyleB != null) {
                        linkedHashMap.put(ssaStyleB.name, ssaStyleB);
                    }
                }
            }
        }
        return linkedHashMap;
    }

    private static long G(String str) {
        Matcher matcher = SSA_TIMECODE_PATTERN.matcher(str.trim());
        if (matcher.matches()) {
            return (Long.parseLong((String) Util.j(matcher.group(1))) * 3600000000L) + (Long.parseLong((String) Util.j(matcher.group(2))) * 60000000) + (Long.parseLong((String) Util.j(matcher.group(3))) * 1000000) + (Long.parseLong((String) Util.j(matcher.group(4))) * WorkRequest.MIN_BACKOFF_MILLIS);
        }
        return -9223372036854775807L;
    }

    private static int H(int i10) {
        switch (i10) {
            case -1:
                return Integer.MIN_VALUE;
            case 0:
            default:
                Log.i(TAG, "Unknown alignment: " + i10);
                return Integer.MIN_VALUE;
            case 1:
            case 2:
            case 3:
                return 2;
            case 4:
            case 5:
            case 6:
                return 1;
            case 7:
            case 8:
            case 9:
                return 0;
        }
    }

    private static int I(int i10) {
        switch (i10) {
            case -1:
                return Integer.MIN_VALUE;
            case 0:
            default:
                Log.i(TAG, "Unknown alignment: " + i10);
                return Integer.MIN_VALUE;
            case 1:
            case 4:
            case 7:
                return 0;
            case 2:
            case 5:
            case 8:
                return 1;
            case 3:
            case 6:
            case 9:
                return 2;
        }
    }

    private static Cue z(String str, @Nullable SsaStyle ssaStyle, SsaStyle.Overrides overrides, float f, float f6) {
        SpannableString spannableString = new SpannableString(str);
        Cue.Builder builderO = new Cue.Builder().o(spannableString);
        if (ssaStyle != null) {
            if (ssaStyle.primaryColor != null) {
                spannableString.setSpan(new ForegroundColorSpan(ssaStyle.primaryColor.intValue()), 0, spannableString.length(), 33);
            }
            if (ssaStyle.borderStyle == 3 && ssaStyle.outlineColor != null) {
                spannableString.setSpan(new BackgroundColorSpan(ssaStyle.outlineColor.intValue()), 0, spannableString.length(), 33);
            }
            float f7 = ssaStyle.fontSize;
            if (f7 != -3.4028235E38f && f6 != -3.4028235E38f) {
                builderO.q(f7 / f6, 1);
            }
            boolean z6 = ssaStyle.bold;
            if (z6 && ssaStyle.italic) {
                spannableString.setSpan(new StyleSpan(3), 0, spannableString.length(), 33);
            } else if (z6) {
                spannableString.setSpan(new StyleSpan(1), 0, spannableString.length(), 33);
            } else if (ssaStyle.italic) {
                spannableString.setSpan(new StyleSpan(2), 0, spannableString.length(), 33);
            }
            if (ssaStyle.underline) {
                spannableString.setSpan(new UnderlineSpan(), 0, spannableString.length(), 33);
            }
            if (ssaStyle.strikeout) {
                spannableString.setSpan(new StrikethroughSpan(), 0, spannableString.length(), 33);
            }
        }
        int i10 = overrides.alignment;
        if (i10 == -1) {
            i10 = ssaStyle != null ? ssaStyle.alignment : -1;
        }
        builderO.p(J(i10)).l(I(i10)).i(H(i10));
        PointF pointF = overrides.position;
        if (pointF == null || f6 == -3.4028235E38f || f == -3.4028235E38f) {
            builderO.k(y(builderO.d()));
            builderO.h(y(builderO.c()), 0);
        } else {
            builderO.k(pointF.x / f);
            builderO.h(overrides.position.y / f6, 0);
        }
        return builderO.a();
    }

    @Override // androidx.media3.extractor.text.SimpleSubtitleDecoder
    protected Subtitle v(byte[] bArr, int i10, boolean z6) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ParsableByteArray parsableByteArray = new ParsableByteArray(bArr, i10);
        Charset charsetA = A(parsableByteArray);
        if (!this.haveInitializationData) {
            D(parsableByteArray, charsetA);
        }
        C(parsableByteArray, arrayList, arrayList2, charsetA);
        return new SsaSubtitle(arrayList, arrayList2);
    }

    private Charset A(ParsableByteArray parsableByteArray) {
        Charset charsetP = parsableByteArray.P();
        if (charsetP == null) {
            return e.UTF_8;
        }
        return charsetP;
    }

    private void D(ParsableByteArray parsableByteArray, Charset charset) {
        while (true) {
            String strT = parsableByteArray.t(charset);
            if (strT != null) {
                if ("[Script Info]".equalsIgnoreCase(strT)) {
                    E(parsableByteArray, charset);
                } else if ("[V4+ Styles]".equalsIgnoreCase(strT)) {
                    this.styles = F(parsableByteArray, charset);
                } else if ("[V4 Styles]".equalsIgnoreCase(strT)) {
                    Log.f(TAG, "[V4 Styles] are not supported");
                } else if ("[Events]".equalsIgnoreCase(strT)) {
                    return;
                }
            } else {
                return;
            }
        }
    }

    private void E(ParsableByteArray parsableByteArray, Charset charset) {
        while (true) {
            String strT = parsableByteArray.t(charset);
            if (strT != null) {
                if (parsableByteArray.a() == 0 || parsableByteArray.h(charset) != '[') {
                    String[] strArrSplit = strT.split(":");
                    if (strArrSplit.length == 2) {
                        String strE = c.e(strArrSplit[0].trim());
                        strE.hashCode();
                        if (!strE.equals("playresx")) {
                            if (strE.equals("playresy")) {
                                try {
                                    this.screenHeight = Float.parseFloat(strArrSplit[1].trim());
                                } catch (NumberFormatException unused) {
                                }
                            }
                        } else {
                            this.screenWidth = Float.parseFloat(strArrSplit[1].trim());
                        }
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        }
    }

    private static int x(long j6, List<Long> list, List<List<Cue>> list2) {
        int i10;
        ArrayList arrayList;
        int size = list.size() - 1;
        while (true) {
            if (size >= 0) {
                if (list.get(size).longValue() == j6) {
                    return size;
                }
                if (list.get(size).longValue() < j6) {
                    i10 = size + 1;
                    break;
                }
                size--;
            } else {
                i10 = 0;
                break;
            }
        }
        list.add(i10, Long.valueOf(j6));
        if (i10 == 0) {
            arrayList = new ArrayList();
        } else {
            arrayList = new ArrayList(list2.get(i10 - 1));
        }
        list2.add(i10, arrayList);
        return i10;
    }
}
