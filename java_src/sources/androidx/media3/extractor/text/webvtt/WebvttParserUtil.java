package androidx.media3.extractor.text.webvtt;

import androidx.annotation.Nullable;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes7.dex */
@UnstableApi
public final class WebvttParserUtil {
    private static final Pattern COMMENT = Pattern.compile("^NOTE([ \t].*)?$");
    private static final String WEBVTT_HEADER = "WEBVTT";

    public static float c(String str) throws NumberFormatException {
        if (str.endsWith("%")) {
            return Float.parseFloat(str.substring(0, str.length() - 1)) / 100.0f;
        }
        throw new NumberFormatException("Percentages must end with %");
    }

    public static long d(String str) throws NumberFormatException {
        String[] strArrE1 = Util.e1(str, "\\.");
        long j6 = 0;
        for (String str2 : Util.d1(strArrE1[0], ":")) {
            j6 = (j6 * 60) + Long.parseLong(str2);
        }
        long j10 = j6 * 1000;
        if (strArrE1.length == 2) {
            j10 += Long.parseLong(strArrE1[1]);
        }
        return j10 * 1000;
    }

    private WebvttParserUtil() {
    }

    @Nullable
    public static Matcher a(ParsableByteArray parsableByteArray) {
        String strS;
        while (true) {
            String strS2 = parsableByteArray.s();
            if (strS2 != null) {
                if (COMMENT.matcher(strS2).matches()) {
                    do {
                        strS = parsableByteArray.s();
                        if (strS == null) {
                            break;
                        }
                    } while (!strS.isEmpty());
                } else {
                    Matcher matcher = WebvttCueParser.CUE_HEADER_PATTERN.matcher(strS2);
                    if (matcher.matches()) {
                        return matcher;
                    }
                }
            } else {
                return null;
            }
        }
    }

    public static boolean b(ParsableByteArray parsableByteArray) {
        String strS = parsableByteArray.s();
        if (strS != null && strS.startsWith(WEBVTT_HEADER)) {
            return true;
        }
        return false;
    }

    public static void e(ParsableByteArray parsableByteArray) throws ParserException {
        int iF = parsableByteArray.f();
        if (b(parsableByteArray)) {
            return;
        }
        parsableByteArray.U(iF);
        throw ParserException.a("Expected WEBVTT. Got " + parsableByteArray.s(), null);
    }
}
