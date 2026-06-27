package pl.droidsonroids.gif;

import java.io.File;
import java.io.IOException;

/* loaded from: classes4.dex */
public class SafeGifDrawable extends GifDrawable {
    public SafeGifDrawable(File file) throws IOException {
        super(handle(file.getPath()), null, null, true);
    }

    private static GifInfoHandle handle(String str) throws IOException {
        GifInfoHandle gifInfoHandle = new GifInfoHandle(str);
        if (gifInfoHandle.getWidth() > 1280 || gifInfoHandle.getHeight() > 1280) {
            throw new IOException("gif resolution cannot exceed 1280x1280px");
        }
        return gifInfoHandle;
    }
}
