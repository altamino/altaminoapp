package androidx.media3.extractor;

import androidx.annotation.Nullable;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.UnstableApi;
import java.io.EOFException;
import java.io.IOException;

/* JADX INFO: loaded from: classes8.dex */
@UnstableApi
public final class ExtractorUtil {
    public static int c(ExtractorInput extractorInput, byte[] bArr, int i10, int i11) throws IOException {
        int i12 = 0;
        while (i12 < i11) {
            int iA = extractorInput.a(bArr, i10 + i12, i11 - i12);
            if (iA == -1) {
                break;
            }
            i12 += iA;
        }
        return i12;
    }

    public static void a(boolean z6, @Nullable String str) throws ParserException {
        if (!z6) {
            throw ParserException.a(str, null);
        }
    }

    private ExtractorUtil() {
    }

    public static boolean b(ExtractorInput extractorInput, byte[] bArr, int i10, int i11, boolean z6) throws IOException {
        try {
            return extractorInput.peekFully(bArr, i10, i11, z6);
        } catch (EOFException e) {
            if (z6) {
                return false;
            }
            throw e;
        }
    }

    public static boolean d(ExtractorInput extractorInput, byte[] bArr, int i10, int i11) throws IOException {
        try {
            extractorInput.readFully(bArr, i10, i11);
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }

    public static boolean e(ExtractorInput extractorInput, int i10) throws IOException {
        try {
            extractorInput.skipFully(i10);
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }
}
