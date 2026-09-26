package androidx.media3.extractor.text.webvtt;

import android.text.TextUtils;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.extractor.text.SimpleSubtitleDecoder;
import androidx.media3.extractor.text.Subtitle;
import androidx.media3.extractor.text.SubtitleDecoderException;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
@UnstableApi
public final class WebvttDecoder extends SimpleSubtitleDecoder {
    private static final String COMMENT_START = "NOTE";
    private static final int EVENT_COMMENT = 1;
    private static final int EVENT_CUE = 3;
    private static final int EVENT_END_OF_FILE = 0;
    private static final int EVENT_NONE = -1;
    private static final int EVENT_STYLE_BLOCK = 2;
    private static final String STYLE_START = "STYLE";
    private final WebvttCssParser cssParser;
    private final ParsableByteArray parsableWebvttData;

    private static int x(ParsableByteArray parsableByteArray) {
        int i10 = -1;
        int iF = 0;
        while (i10 == -1) {
            iF = parsableByteArray.f();
            String strS = parsableByteArray.s();
            if (strS == null) {
                i10 = 0;
            } else if (STYLE_START.equals(strS)) {
                i10 = 2;
            } else {
                i10 = strS.startsWith(COMMENT_START) ? 1 : 3;
            }
        }
        parsableByteArray.U(iF);
        return i10;
    }

    public WebvttDecoder() {
        super("WebvttDecoder");
        this.parsableWebvttData = new ParsableByteArray();
        this.cssParser = new WebvttCssParser();
    }

    @Override // androidx.media3.extractor.text.SimpleSubtitleDecoder
    protected Subtitle v(byte[] bArr, int i10, boolean z6) throws SubtitleDecoderException {
        WebvttCueInfo webvttCueInfoM;
        this.parsableWebvttData.S(bArr, i10);
        ArrayList arrayList = new ArrayList();
        try {
            WebvttParserUtil.e(this.parsableWebvttData);
            while (!TextUtils.isEmpty(this.parsableWebvttData.s())) {
            }
            ArrayList arrayList2 = new ArrayList();
            while (true) {
                int iX = x(this.parsableWebvttData);
                if (iX == 0) {
                    return new WebvttSubtitle(arrayList2);
                }
                if (iX == 1) {
                    y(this.parsableWebvttData);
                } else if (iX == 2) {
                    if (!arrayList2.isEmpty()) {
                        throw new SubtitleDecoderException("A style block was found after the first cue.");
                    }
                    this.parsableWebvttData.s();
                    arrayList.addAll(this.cssParser.d(this.parsableWebvttData));
                } else if (iX == 3 && (webvttCueInfoM = WebvttCueParser.m(this.parsableWebvttData, arrayList)) != null) {
                    arrayList2.add(webvttCueInfoM);
                }
            }
        } catch (ParserException e) {
            throw new SubtitleDecoderException(e);
        }
    }

    private static void y(ParsableByteArray parsableByteArray) {
        while (!TextUtils.isEmpty(parsableByteArray.s())) {
        }
    }
}
