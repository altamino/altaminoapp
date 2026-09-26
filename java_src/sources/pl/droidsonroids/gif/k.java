package pl.droidsonroids.gif;

import androidx.annotation.NonNull;
import java.io.File;
import java.io.IOException;

/* JADX INFO: loaded from: classes8.dex */
public class k extends b {
    private static GifInfoHandle m(String str) throws IOException {
        GifInfoHandle gifInfoHandle = new GifInfoHandle(str);
        if (gifInfoHandle.j() > 1280 || gifInfoHandle.e() > 1280) {
            throw new IOException("gif resolution cannot exceed 1280x1280px");
        }
        return gifInfoHandle;
    }

    public k(@NonNull File file) throws IOException {
        super(m(file.getPath()), null, null, true);
    }
}
