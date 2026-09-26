package k8;

import androidx.media3.exoplayer.upstream.CmcdHeadersFactory;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
class g extends f {
    @NotNull
    public static final e d(char c7, boolean z6) {
        if (!z6) {
            if (c7 == 'D') {
                return e.DAYS;
            }
            throw new IllegalArgumentException("Invalid or unsupported duration ISO non-time unit: " + c7);
        }
        if (c7 == 'H') {
            return e.HOURS;
        }
        if (c7 == 'M') {
            return e.MINUTES;
        }
        if (c7 == 'S') {
            return e.SECONDS;
        }
        throw new IllegalArgumentException("Invalid duration ISO time unit: " + c7);
    }

    @NotNull
    public static final e e(@NotNull String shortName) {
        t.j(shortName, "shortName");
        int iHashCode = shortName.hashCode();
        if (iHashCode != 100) {
            if (iHashCode != 104) {
                if (iHashCode != 109) {
                    if (iHashCode != 115) {
                        if (iHashCode != 3494) {
                            if (iHashCode != 3525) {
                                if (iHashCode == 3742 && shortName.equals("us")) {
                                    return e.MICROSECONDS;
                                }
                            } else if (shortName.equals("ns")) {
                                return e.NANOSECONDS;
                            }
                        } else if (shortName.equals("ms")) {
                            return e.MILLISECONDS;
                        }
                    } else if (shortName.equals(CmcdHeadersFactory.STREAMING_FORMAT_SS)) {
                        return e.SECONDS;
                    }
                } else if (shortName.equals("m")) {
                    return e.MINUTES;
                }
            } else if (shortName.equals(CmcdHeadersFactory.STREAMING_FORMAT_HLS)) {
                return e.HOURS;
            }
        } else if (shortName.equals("d")) {
            return e.DAYS;
        }
        throw new IllegalArgumentException("Unknown duration unit short name: " + shortName);
    }
}
