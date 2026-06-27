package pl.droidsonroids.gif;

import android.graphics.Canvas;
import java.io.File;
import java.io.IOException;

/* loaded from: classes4.dex */
public class LGifDrawable extends SafeGifDrawable {
    public AnimationListener dListener;
    final long initLength;
    final int numFrames;
    int stopFrame;

    public LGifDrawable(File file) throws IOException {
        super(file);
        this.stopFrame = -1;
        this.initLength = file.length();
        this.numFrames = getNumberOfFrames();
        this.mNativeInfoHandle.reset();
    }

    @Override // pl.droidsonroids.gif.GifDrawable, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        super.draw(canvas);
        int currentFrameIndex = getCurrentFrameIndex();
        if (currentFrameIndex < this.numFrames - 2 || this.stopFrame != -1) {
            return;
        }
        this.stopFrame = currentFrameIndex;
        stop();
        AnimationListener animationListener = this.dListener;
        if (animationListener != null) {
            animationListener.onAnimationCompleted(0);
        }
    }

    public static int getNumberOfFrames(File file) {
        try {
            return new GifInfoHandle(file.getAbsolutePath()).getNumberOfFrames();
        } catch (Exception unused) {
            return 0;
        }
    }

    public LGifDrawable recreate(File file) throws IOException {
        if (file.length() <= this.initLength) {
            return null;
        }
        if (getNumberOfFrames(file) <= getNumberOfFrames() + 2) {
            return null;
        }
        LGifDrawable lGifDrawable = new LGifDrawable(file);
        int i = this.stopFrame;
        if (i > 0) {
            lGifDrawable.mNativeInfoHandle.seekToFrame(i - 1, lGifDrawable.mBuffer);
        }
        return lGifDrawable;
    }

    public GifDrawable recreateFinal(File file) throws IOException {
        GifInfoHandle gifInfoHandle = new GifInfoHandle(file.getAbsolutePath());
        GifDrawable gifDrawable = new GifDrawable(gifInfoHandle, this, null, true);
        int i = this.stopFrame;
        if (i > 0) {
            gifInfoHandle.seekToFrame(i - 1, gifDrawable.mBuffer);
        }
        return gifDrawable;
    }
}
