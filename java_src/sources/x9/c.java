package x9;

import java.io.Serializable;
import java.util.Objects;

/* JADX INFO: loaded from: classes9.dex */
public final class c implements Serializable {
    public static final int HEIGHT_UNKNOWN = -1;
    public static final int WIDTH_UNKNOWN = -1;
    private final a estimatedResolutionLevel;
    private final int height;
    private final String url;
    private final int width;

    public enum a {
        HIGH,
        MEDIUM,
        LOW,
        UNKNOWN;

        public static a a(int i10) {
            if (i10 <= 0) {
                return UNKNOWN;
            }
            if (i10 < 175) {
                return LOW;
            }
            return i10 < 720 ? MEDIUM : HIGH;
        }
    }

    public String toString() {
        return "Image {url=" + this.url + ", height=" + this.height + ", width=" + this.width + ", estimatedResolutionLevel=" + this.estimatedResolutionLevel + "}";
    }

    public c(String str, int i10, int i11, a aVar) throws NullPointerException {
        this.url = str;
        this.height = i10;
        this.width = i11;
        Objects.requireNonNull(aVar, "estimatedResolutionLevel is null");
        this.estimatedResolutionLevel = aVar;
    }
}
