package x9;

import androidx.media3.datasource.cache.CacheDataSink;
import java.util.Arrays;
import java.util.function.Predicate;
import org.apache.commons.compress.archivers.cpio.CpioConstants;

/* JADX INFO: loaded from: classes10.dex */
public enum m {
    MPEG_4(0, "MPEG-4", "mp4", "video/mp4"),
    v3GPP(16, "3GPP", "3gp", "video/3gpp"),
    WEBM(32, "WebM", "webm", "video/webm"),
    M4A(256, "m4a", "m4a", "audio/mp4"),
    WEBMA(512, "WebM", "webm", "audio/webm"),
    MP3(768, "MP3", "mp3", "audio/mpeg"),
    MP2(784, "MP2", "mp2", "audio/mpeg"),
    OPUS(1024, "opus", "opus", "audio/opus"),
    OGG(1280, "ogg", "ogg", "audio/ogg"),
    WEBMA_OPUS(512, "WebM Opus", "webm", "audio/webm"),
    AIFF(1536, "AIFF", "aiff", "audio/aiff"),
    AIF(1536, "AIFF", "aif", "audio/aiff"),
    WAV(1792, "WAV", "wav", "audio/wav"),
    FLAC(2048, "FLAC", "flac", "audio/flac"),
    ALAC(2304, "ALAC", "alac", "audio/alac"),
    VTT(4096, "WebVTT", "vtt", "text/vtt"),
    TTML(8192, "Timed Text Markup Language", "ttml", "application/ttml+xml"),
    TRANSCRIPT1(12288, "TranScript v1", "srv1", "text/xml"),
    TRANSCRIPT2(16384, "TranScript v2", "srv2", "text/xml"),
    TRANSCRIPT3(CacheDataSink.DEFAULT_BUFFER_SIZE, "TranScript v3", "srv3", "text/xml"),
    SRT(CpioConstants.C_ISBLK, "SubRip file format", "srt", "text/srt");

    public final int id;
    public final String mimeType;
    public final String name;
    public final String suffix;

    public String c() {
        return this.suffix;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean d(String str, m mVar) {
        return mVar.suffix.equals(str);
    }

    m(int i10, String str, String str2, String str3) {
        this.id = i10;
        this.name = str;
        this.suffix = str2;
        this.mimeType = str3;
    }

    public static m b(final String str) {
        return (m) Arrays.stream(values()).filter(new Predicate() { // from class: x9.l
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return m.d(str, (m) obj);
            }
        }).findFirst().orElse(null);
    }
}
