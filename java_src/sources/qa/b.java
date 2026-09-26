package qa;

import java.io.Serializable;
import java.util.Objects;

/* JADX INFO: loaded from: classes9.dex */
public final class b implements Serializable {
    private final int height;
    private final x9.c.a resolutionLevel;
    private final String suffix;
    private final int width;

    public int a() {
        return this.height;
    }

    public x9.c.a b() {
        return this.resolutionLevel;
    }

    public String c() {
        return this.suffix;
    }

    public int d() {
        return this.width;
    }

    public String toString() {
        return "ImageSuffix {suffix=" + this.suffix + ", height=" + this.height + ", width=" + this.width + ", resolutionLevel=" + this.resolutionLevel + "}";
    }

    public b(String str, int i10, int i11, x9.c.a aVar) throws NullPointerException {
        this.suffix = str;
        this.height = i10;
        this.width = i11;
        Objects.requireNonNull(aVar, "estimatedResolutionLevel is null");
        this.resolutionLevel = aVar;
    }
}
