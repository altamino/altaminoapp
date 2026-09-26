package androidx.media3.extractor.text.subrip;

import android.text.Html;
import android.text.Spanned;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.media3.common.text.Cue;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.LongArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.extractor.text.SimpleSubtitleDecoder;
import androidx.media3.extractor.text.Subtitle;
import com.google.common.base.e;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes9.dex */
@UnstableApi
public final class SubripDecoder extends SimpleSubtitleDecoder {
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

    public SubripDecoder() {
        super(TAG);
        this.textBuilder = new StringBuilder();
        this.tags = new ArrayList<>();
    }

    private static long A(Matcher matcher, int i10) {
        String strGroup = matcher.group(i10 + 1);
        long j6 = (strGroup != null ? Long.parseLong(strGroup) * 3600000 : 0L) + (Long.parseLong((String) Assertions.e(matcher.group(i10 + 2))) * 60000) + (Long.parseLong((String) Assertions.e(matcher.group(i10 + 3))) * 1000);
        String strGroup2 = matcher.group(i10 + 4);
        if (strGroup2 != null) {
            j6 += Long.parseLong(strGroup2);
        }
        return j6 * 1000;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:36:0x0084  */
    /* JADX WARN: Code duplicated, block: B:77:0x00ef  */
    private Cue x(Spanned spanned, @Nullable String str) {
        byte b7;
        byte b10;
        Cue.Builder builderO = new Cue.Builder().o(spanned);
        if (str == null) {
            return builderO.a();
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
            builderO.l(0);
        } else if (b7 == 3 || b7 == 4 || b7 == 5) {
            builderO.l(2);
        } else {
            builderO.l(1);
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
            builderO.i(2);
        } else if (b10 == 3 || b10 == 4 || b10 == 5) {
            builderO.i(0);
        } else {
            builderO.i(1);
        }
        return builderO.k(z(builderO.d())).h(z(builderO.c()), 0).a();
    }

    static float z(int i10) {
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

    @Override // androidx.media3.extractor.text.SimpleSubtitleDecoder
    protected Subtitle v(byte[] bArr, int i10, boolean z6) {
        String str;
        ArrayList arrayList = new ArrayList();
        LongArray longArray = new LongArray();
        ParsableByteArray parsableByteArray = new ParsableByteArray(bArr, i10);
        Charset charsetY = y(parsableByteArray);
        while (true) {
            String strT = parsableByteArray.t(charsetY);
            int i11 = 0;
            if (strT == null) {
                break;
            }
            if (strT.length() != 0) {
                try {
                    Integer.parseInt(strT);
                    String strT2 = parsableByteArray.t(charsetY);
                    if (strT2 == null) {
                        Log.i(TAG, "Unexpected end");
                        break;
                    }
                    Matcher matcher = SUBRIP_TIMING_LINE.matcher(strT2);
                    if (matcher.matches()) {
                        longArray.a(A(matcher, 1));
                        longArray.a(A(matcher, 6));
                        this.textBuilder.setLength(0);
                        this.tags.clear();
                        for (String strT3 = parsableByteArray.t(charsetY); !TextUtils.isEmpty(strT3); strT3 = parsableByteArray.t(charsetY)) {
                            if (this.textBuilder.length() > 0) {
                                this.textBuilder.append("<br>");
                            }
                            this.textBuilder.append(B(strT3, this.tags));
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
                        arrayList.add(Cue.EMPTY);
                    } else {
                        Log.i(TAG, "Skipping invalid timing: " + strT2);
                    }
                } catch (NumberFormatException unused) {
                    Log.i(TAG, "Skipping invalid index: " + strT);
                }
            }
        }
        return new SubripSubtitle((Cue[]) arrayList.toArray(new Cue[0]), longArray.d());
    }

    private String B(String str, ArrayList<String> arrayList) {
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

    private Charset y(ParsableByteArray parsableByteArray) {
        Charset charsetP = parsableByteArray.P();
        if (charsetP == null) {
            return e.UTF_8;
        }
        return charsetP;
    }
}
