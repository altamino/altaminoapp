package pl.droidsonroids.gif;

import android.graphics.Canvas;
import androidx.annotation.NonNull;
import java.io.File;
import java.io.IOException;

/* JADX INFO: loaded from: classes8.dex */
public class g extends k {
    public a dListener;
    final long initLength;
    final int numFrames;
    int stopFrame;

    public static int n(File file) {
        try {
            return new GifInfoHandle(file.getAbsolutePath()).i();
        } catch (Exception unused) {
            return 0;
        }
    }

    public b p(File file) throws IOException {
        GifInfoHandle gifInfoHandle = new GifInfoHandle(file.getAbsolutePath());
        b bVar = new b(gifInfoHandle, this, null, true);
        int i10 = this.stopFrame;
        if (i10 > 0) {
            gifInfoHandle.t(i10 - 1, bVar.mBuffer);
        }
        return bVar;
    }

    public g(@NonNull File file) throws IOException {
        super(file);
        this.stopFrame = -1;
        this.initLength = file.length();
        this.numFrames = d();
        this.mNativeInfoHandle.q();
    }

    @Override // pl.droidsonroids.gif.b, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        super.draw(canvas);
        int iB = b();
        if (iB >= this.numFrames - 2 && this.stopFrame == -1) {
            this.stopFrame = iB;
            stop();
            a aVar = this.dListener;
            if (aVar != null) {
                aVar.onAnimationCompleted(0);
            }
        }
    }

    public g o(File file) throws IOException {
        if (file.length() <= this.initLength) {
            return null;
        }
        if (n(file) <= d() + 2) {
            return null;
        }
        g gVar = new g(file);
        int i10 = this.stopFrame;
        if (i10 > 0) {
            gVar.mNativeInfoHandle.t(i10 - 1, gVar.mBuffer);
        }
        return gVar;
    }
}
