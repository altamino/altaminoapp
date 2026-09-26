package androidx.media3.extractor;

import androidx.media3.common.DataReader;
import androidx.media3.common.util.ParsableByteArray;
import java.io.IOException;

/* JADX INFO: loaded from: classes8.dex */
public final /* synthetic */ class f {
    public static int a(TrackOutput trackOutput, DataReader dataReader, int i10, boolean z6) throws IOException {
        return trackOutput.c(dataReader, i10, z6, 0);
    }

    public static void b(TrackOutput trackOutput, ParsableByteArray parsableByteArray, int i10) {
        trackOutput.a(parsableByteArray, i10, 0);
    }
}
