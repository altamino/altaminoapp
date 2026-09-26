package com.google.android.exoplayer2.text.ssa;

import android.graphics.PointF;
import android.text.Layout;
import android.text.SpannableString;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import androidx.annotation.Nullable;
import androidx.work.WorkRequest;
import com.google.android.exoplayer2.text.h;
import com.google.android.exoplayer2.text.i;
import com.google.android.exoplayer2.util.c0;
import com.google.android.exoplayer2.util.o0;
import com.google.android.exoplayer2.util.t;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes10.dex */
public final class a extends h {
    private static final float DEFAULT_MARGIN = 0.05f;
    private static final String DIALOGUE_LINE_PREFIX = "Dialogue:";
    static final String FORMAT_LINE_PREFIX = "Format:";
    private static final Pattern SSA_TIMECODE_PATTERN = Pattern.compile("(?:(\\d+):)?(\\d+):(\\d+)[:.](\\d+)");
    static final String STYLE_LINE_PREFIX = "Style:";
    private static final String TAG = "SsaDecoder";

    @Nullable
    private final b dialogueFormatFromInitializationData;
    private final boolean haveInitializationData;
    private float screenHeight;
    private float screenWidth;
    private Map<String, c> styles;

    public a() {
        this(null);
    }

    @Nullable
    private static Layout.Alignment I(int i10) {
        switch (i10) {
            case -1:
                return null;
            case 0:
            default:
                t.i(TAG, "Unknown alignment: " + i10);
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

    public a(@Nullable List<byte[]> list) {
        super(TAG);
        this.screenWidth = -3.4028235E38f;
        this.screenHeight = -3.4028235E38f;
        if (list == null || list.isEmpty()) {
            this.haveInitializationData = false;
            this.dialogueFormatFromInitializationData = null;
            return;
        }
        this.haveInitializationData = true;
        String strA = o0.A(list.get(0));
        com.google.android.exoplayer2.util.a.a(strA.startsWith(FORMAT_LINE_PREFIX));
        this.dialogueFormatFromInitializationData = (b) com.google.android.exoplayer2.util.a.e(b.a(strA));
        C(new c0(list.get(1)));
    }

    private void A(String str, b bVar, List<List<com.google.android.exoplayer2.text.b>> list, List<Long> list2) {
        int i10;
        com.google.android.exoplayer2.util.a.a(str.startsWith(DIALOGUE_LINE_PREFIX));
        String[] strArrSplit = str.substring(9).split(",", bVar.length);
        if (strArrSplit.length != bVar.length) {
            t.i(TAG, "Skipping dialogue line with fewer columns than format: " + str);
            return;
        }
        long jF = F(strArrSplit[bVar.startTimeIndex]);
        if (jF == -9223372036854775807L) {
            t.i(TAG, "Skipping invalid timing: " + str);
            return;
        }
        long jF2 = F(strArrSplit[bVar.endTimeIndex]);
        if (jF2 == -9223372036854775807L) {
            t.i(TAG, "Skipping invalid timing: " + str);
            return;
        }
        Map<String, c> map = this.styles;
        c cVar = (map == null || (i10 = bVar.styleIndex) == -1) ? null : map.get(strArrSplit[i10].trim());
        String str2 = strArrSplit[bVar.textIndex];
        com.google.android.exoplayer2.text.b bVarZ = z(c.b.d(str2).replace("\\N", "\n").replace("\\n", "\n").replace("\\h", " "), cVar, c.b.b(str2), this.screenWidth, this.screenHeight);
        int iX = x(jF2, list2, list);
        for (int iX2 = x(jF, list2, list); iX2 < iX; iX2++) {
            list.get(iX2).add(bVarZ);
        }
    }

    private void B(c0 c0Var, List<List<com.google.android.exoplayer2.text.b>> list, List<Long> list2) {
        b bVarA = this.haveInitializationData ? this.dialogueFormatFromInitializationData : null;
        while (true) {
            String strP = c0Var.p();
            if (strP == null) {
                return;
            }
            if (strP.startsWith(FORMAT_LINE_PREFIX)) {
                bVarA = b.a(strP);
            } else if (strP.startsWith(DIALOGUE_LINE_PREFIX)) {
                if (bVarA == null) {
                    t.i(TAG, "Skipping dialogue line before complete format: " + strP);
                } else {
                    A(strP, bVarA, list, list2);
                }
            }
        }
    }

    private static Map<String, c> E(c0 c0Var) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        c.a aVarA = null;
        while (true) {
            String strP = c0Var.p();
            if (strP == null || (c0Var.a() != 0 && c0Var.h() == 91)) {
                break;
            }
            if (strP.startsWith(FORMAT_LINE_PREFIX)) {
                aVarA = c.a.a(strP);
            } else if (strP.startsWith(STYLE_LINE_PREFIX)) {
                if (aVarA == null) {
                    t.i(TAG, "Skipping 'Style:' line before 'Format:' line: " + strP);
                } else {
                    c cVarB = c.b(strP, aVarA);
                    if (cVarB != null) {
                        linkedHashMap.put(cVarB.name, cVarB);
                    }
                }
            }
        }
        return linkedHashMap;
    }

    private static long F(String str) {
        Matcher matcher = SSA_TIMECODE_PATTERN.matcher(str.trim());
        if (matcher.matches()) {
            return (Long.parseLong((String) o0.j(matcher.group(1))) * 3600000000L) + (Long.parseLong((String) o0.j(matcher.group(2))) * 60000000) + (Long.parseLong((String) o0.j(matcher.group(3))) * 1000000) + (Long.parseLong((String) o0.j(matcher.group(4))) * WorkRequest.MIN_BACKOFF_MILLIS);
        }
        return -9223372036854775807L;
    }

    private static int G(int i10) {
        switch (i10) {
            case -1:
                return Integer.MIN_VALUE;
            case 0:
            default:
                t.i(TAG, "Unknown alignment: " + i10);
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

    private static int H(int i10) {
        switch (i10) {
            case -1:
                return Integer.MIN_VALUE;
            case 0:
            default:
                t.i(TAG, "Unknown alignment: " + i10);
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

    private static com.google.android.exoplayer2.text.b z(String str, @Nullable c cVar, c.b bVar, float f, float f6) {
        SpannableString spannableString = new SpannableString(str);
        com.google.android.exoplayer2.text.b.C0178b c0178bO = new com.google.android.exoplayer2.text.b.C0178b().o(spannableString);
        if (cVar != null) {
            if (cVar.primaryColor != null) {
                spannableString.setSpan(new ForegroundColorSpan(cVar.primaryColor.intValue()), 0, spannableString.length(), 33);
            }
            if (cVar.borderStyle == 3 && cVar.outlineColor != null) {
                spannableString.setSpan(new BackgroundColorSpan(cVar.outlineColor.intValue()), 0, spannableString.length(), 33);
            }
            float f7 = cVar.fontSize;
            if (f7 != -3.4028235E38f && f6 != -3.4028235E38f) {
                c0178bO.q(f7 / f6, 1);
            }
            boolean z6 = cVar.bold;
            if (z6 && cVar.italic) {
                spannableString.setSpan(new StyleSpan(3), 0, spannableString.length(), 33);
            } else if (z6) {
                spannableString.setSpan(new StyleSpan(1), 0, spannableString.length(), 33);
            } else if (cVar.italic) {
                spannableString.setSpan(new StyleSpan(2), 0, spannableString.length(), 33);
            }
            if (cVar.underline) {
                spannableString.setSpan(new UnderlineSpan(), 0, spannableString.length(), 33);
            }
            if (cVar.strikeout) {
                spannableString.setSpan(new StrikethroughSpan(), 0, spannableString.length(), 33);
            }
        }
        int i10 = bVar.alignment;
        if (i10 == -1) {
            i10 = cVar != null ? cVar.alignment : -1;
        }
        c0178bO.p(I(i10)).l(H(i10)).i(G(i10));
        PointF pointF = bVar.position;
        if (pointF == null || f6 == -3.4028235E38f || f == -3.4028235E38f) {
            c0178bO.k(y(c0178bO.d()));
            c0178bO.h(y(c0178bO.c()), 0);
        } else {
            c0178bO.k(pointF.x / f);
            c0178bO.h(bVar.position.y / f6, 0);
        }
        return c0178bO.a();
    }

    @Override // com.google.android.exoplayer2.text.h
    protected i v(byte[] bArr, int i10, boolean z6) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        c0 c0Var = new c0(bArr, i10);
        if (!this.haveInitializationData) {
            C(c0Var);
        }
        B(c0Var, arrayList, arrayList2);
        return new d(arrayList, arrayList2);
    }

    private void C(c0 c0Var) {
        while (true) {
            String strP = c0Var.p();
            if (strP != null) {
                if ("[Script Info]".equalsIgnoreCase(strP)) {
                    D(c0Var);
                } else if ("[V4+ Styles]".equalsIgnoreCase(strP)) {
                    this.styles = E(c0Var);
                } else if ("[V4 Styles]".equalsIgnoreCase(strP)) {
                    t.f(TAG, "[V4 Styles] are not supported");
                } else if ("[Events]".equalsIgnoreCase(strP)) {
                    return;
                }
            } else {
                return;
            }
        }
    }

    private void D(c0 c0Var) {
        while (true) {
            String strP = c0Var.p();
            if (strP != null) {
                if (c0Var.a() == 0 || c0Var.h() != 91) {
                    String[] strArrSplit = strP.split(":");
                    if (strArrSplit.length == 2) {
                        String strE = com.google.common.base.c.e(strArrSplit[0].trim());
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

    private static int x(long j6, List<Long> list, List<List<com.google.android.exoplayer2.text.b>> list2) {
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
