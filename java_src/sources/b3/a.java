package b3;

import android.text.Html;
import android.text.Spanned;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.text.h;
import com.google.android.exoplayer2.text.i;
import com.google.android.exoplayer2.util.c0;
import com.google.android.exoplayer2.util.t;
import com.google.android.exoplayer2.util.u;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes11.dex */
public final class a extends h {
    private static final String ALIGN_BOTTOM_LEFT = "{\\an1}";
    private static final String ALIGN_BOTTOM_MID = "{\\an2}";
    private static final String ALIGN_BOTTOM_RIGHT = "{\\an3}";
    private static final String ALIGN_MID_LEFT = "{\\an4}";
    private static final String ALIGN_MID_MID = "{\\an5}";
    private static final String ALIGN_MID_RIGHT = "{\\an6}";
    private static final String ALIGN_TOP_LEFT = "{\\an7}";
    private static final String ALIGN_TOP_MID = "{\\an8}";
    private static final String ALIGN_TOP_RIGHT = "{\\an9}";
    private static final float END_FRACTION = 0.92f;
    private static final float MID_FRACTION = 0.5f;
    private static final float START_FRACTION = 0.08f;
    private static final String SUBRIP_ALIGNMENT_TAG = "\\{\\\\an[1-9]\\}";
    private static final String SUBRIP_TIMECODE = "(?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?";
    private static final String TAG = "SubripDecoder";
    private final ArrayList<String> tags;
    private final StringBuilder textBuilder;
    private static final Pattern SUBRIP_TIMING_LINE = Pattern.compile("\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?)\\s*-->\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?)\\s*");
    private static final Pattern SUBRIP_TAG_PATTERN = Pattern.compile("\\{\\\\.*?\\}");

    public a() {
        super(TAG);
        this.textBuilder = new StringBuilder();
        this.tags = new ArrayList<>();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:36:0x007b  */
    /* JADX WARN: Code duplicated, block: B:77:0x00e6  */
    private com.google.android.exoplayer2.text.b x(Spanned spanned, @Nullable String str) {
        byte b7;
        byte b10;
        com.google.android.exoplayer2.text.b.C0178b c0178bO = new com.google.android.exoplayer2.text.b.C0178b().o(spanned);
        if (str == null) {
            return c0178bO.a();
        }
        switch (str) {
            case "{\an1}":
                b7 = 0;
                break;
            case "{\an2}":
                b7 = 6;
                break;
            case "{\an3}":
                b7 = 3;
                break;
            case "{\an4}":
                b7 = 1;
                break;
            case "{\an5}":
                b7 = 7;
                break;
            case "{\an6}":
                b7 = 4;
                break;
            case "{\an7}":
                b7 = 2;
                break;
            case "{\an8}":
                b7 = 8;
                break;
            case "{\an9}":
                b7 = 5;
                break;
            default:
                b7 = -1;
                break;
        }
        if (b7 == 0 || b7 == 1 || b7 == 2) {
            c0178bO.l(0);
        } else if (b7 == 3 || b7 == 4 || b7 == 5) {
            c0178bO.l(2);
        } else {
            c0178bO.l(1);
        }
        switch (str) {
            case "{\an1}":
                b10 = 0;
                break;
            case "{\an2}":
                b10 = 1;
                break;
            case "{\an3}":
                b10 = 2;
                break;
            case "{\an4}":
                b10 = 6;
                break;
            case "{\an5}":
                b10 = 7;
                break;
            case "{\an6}":
                b10 = 8;
                break;
            case "{\an7}":
                b10 = 3;
                break;
            case "{\an8}":
                b10 = 4;
                break;
            case "{\an9}":
                b10 = 5;
                break;
            default:
                b10 = -1;
                break;
        }
        if (b10 == 0 || b10 == 1 || b10 == 2) {
            c0178bO.i(2);
        } else if (b10 == 3 || b10 == 4 || b10 == 5) {
            c0178bO.i(0);
        } else {
            c0178bO.i(1);
        }
        return c0178bO.k(y(c0178bO.d())).h(y(c0178bO.c()), 0).a();
    }

    static float y(int i10) {
        if (i10 == 0) {
            return 0.08f;
        }
        if (i10 == 1) {
            return 0.5f;
        }
        if (i10 == 2) {
            return END_FRACTION;
        }
        throw new IllegalArgumentException();
    }

    private static long z(Matcher matcher, int i10) {
        String strGroup = matcher.group(i10 + 1);
        long j6 = (strGroup != null ? Long.parseLong(strGroup) * 3600000 : 0L) + (Long.parseLong((String) com.google.android.exoplayer2.util.a.e(matcher.group(i10 + 2))) * 60000) + (Long.parseLong((String) com.google.android.exoplayer2.util.a.e(matcher.group(i10 + 3))) * 1000);
        String strGroup2 = matcher.group(i10 + 4);
        if (strGroup2 != null) {
            j6 += Long.parseLong(strGroup2);
        }
        return j6 * 1000;
    }

    @Override // com.google.android.exoplayer2.text.h
    protected i v(byte[] bArr, int i10, boolean z6) {
        String str;
        ArrayList arrayList = new ArrayList();
        u uVar = new u();
        c0 c0Var = new c0(bArr, i10);
        while (true) {
            String strP = c0Var.p();
            int i11 = 0;
            if (strP == null) {
                break;
            }
            if (strP.length() != 0) {
                try {
                    Integer.parseInt(strP);
                    String strP2 = c0Var.p();
                    if (strP2 == null) {
                        t.i(TAG, "Unexpected end");
                        break;
                    }
                    Matcher matcher = SUBRIP_TIMING_LINE.matcher(strP2);
                    if (matcher.matches()) {
                        uVar.a(z(matcher, 1));
                        uVar.a(z(matcher, 6));
                        this.textBuilder.setLength(0);
                        this.tags.clear();
                        for (String strP3 = c0Var.p(); !TextUtils.isEmpty(strP3); strP3 = c0Var.p()) {
                            if (this.textBuilder.length() > 0) {
                                this.textBuilder.append("<br>");
                            }
                            this.textBuilder.append(A(strP3, this.tags));
                        }
                        Spanned spannedFromHtml = Html.fromHtml(this.textBuilder.toString());
                        while (true) {
                            if (i11 >= this.tags.size()) {
                                str = null;
                                break;
                            }
                            str = this.tags.get(i11);
                            if (str.matches(SUBRIP_ALIGNMENT_TAG)) {
                                break;
                            }
                            i11++;
                        }
                        arrayList.add(x(spannedFromHtml, str));
                        arrayList.add(com.google.android.exoplayer2.text.b.EMPTY);
                    } else {
                        t.i(TAG, "Skipping invalid timing: " + strP2);
                    }
                } catch (NumberFormatException unused) {
                    t.i(TAG, "Skipping invalid index: " + strP);
                }
            }
        }
        return new b((com.google.android.exoplayer2.text.b[]) arrayList.toArray(new com.google.android.exoplayer2.text.b[0]), uVar.d());
    }

    private String A(String str, ArrayList<String> arrayList) {
        String strTrim = str.trim();
        StringBuilder sb = new StringBuilder(strTrim);
        Matcher matcher = SUBRIP_TAG_PATTERN.matcher(strTrim);
        int i10 = 0;
        while (matcher.find()) {
            String strGroup = matcher.group();
            arrayList.add(strGroup);
            int iStart = matcher.start() - i10;
            int length = strGroup.length();
            sb.replace(iStart, iStart + length, "");
            i10 += length;
        }
        return sb.toString();
    }
}
