package com.bumptech.glide.load.resource;

import android.annotation.SuppressLint;
import android.graphics.ColorSpace;
import android.graphics.ImageDecoder;
import android.graphics.ImageDecoder$OnHeaderDecodedListener;
import android.graphics.ImageDecoder$OnPartialImageListener;
import android.os.Build;
import android.util.Log;
import android.util.Size;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.bumptech.glide.load.engine.v;
import com.bumptech.glide.load.resource.bitmap.p;
import com.bumptech.glide.load.resource.bitmap.u;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
@RequiresApi
public abstract class j<T> implements com.bumptech.glide.load.k<ImageDecoder.Source, T> {
    private static final String TAG = "ImageDecoder";
    final u hardwareConfigState = u.a();

    class a implements ImageDecoder$OnHeaderDecodedListener {
        final /* synthetic */ com.bumptech.glide.load.b val$decodeFormat;
        final /* synthetic */ boolean val$isHardwareConfigAllowed;
        final /* synthetic */ com.bumptech.glide.load.j val$preferredColorSpace;
        final /* synthetic */ int val$requestedHeight;
        final /* synthetic */ int val$requestedWidth;
        final /* synthetic */ com.bumptech.glide.load.resource.bitmap.l val$strategy;

        /* JADX INFO: renamed from: com.bumptech.glide.load.resource.j$a$a, reason: collision with other inner class name */
        class C0135a implements ImageDecoder$OnPartialImageListener {
            public boolean onPartialImage(@NonNull ImageDecoder.DecodeException decodeException) {
                return false;
            }

            C0135a() {
            }
        }

        a(int i10, int i11, boolean z6, com.bumptech.glide.load.b bVar, com.bumptech.glide.load.resource.bitmap.l lVar, com.bumptech.glide.load.j jVar) {
            this.val$requestedWidth = i10;
            this.val$requestedHeight = i11;
            this.val$isHardwareConfigAllowed = z6;
            this.val$decodeFormat = bVar;
            this.val$strategy = lVar;
            this.val$preferredColorSpace = jVar;
        }

        @SuppressLint({"Override"})
        public void onHeaderDecoded(ImageDecoder imageDecoder, ImageDecoder.ImageInfo imageInfo, ImageDecoder.Source source) {
            if (j.this.hardwareConfigState.c(this.val$requestedWidth, this.val$requestedHeight, this.val$isHardwareConfigAllowed, false)) {
                imageDecoder.setAllocator(3);
            } else {
                imageDecoder.setAllocator(1);
            }
            if (this.val$decodeFormat == com.bumptech.glide.load.b.PREFER_RGB_565) {
                imageDecoder.setMemorySizePolicy(0);
            }
            imageDecoder.setOnPartialImageListener(new C0135a());
            Size size = imageInfo.getSize();
            int width = this.val$requestedWidth;
            if (width == Integer.MIN_VALUE) {
                width = size.getWidth();
            }
            int height = this.val$requestedHeight;
            if (height == Integer.MIN_VALUE) {
                height = size.getHeight();
            }
            float fB = this.val$strategy.b(size.getWidth(), size.getHeight(), width, height);
            int iRound = Math.round(size.getWidth() * fB);
            int iRound2 = Math.round(size.getHeight() * fB);
            if (Log.isLoggable(j.TAG, 2)) {
                Log.v(j.TAG, "Resizing from [" + size.getWidth() + "x" + size.getHeight() + "] to [" + iRound + "x" + iRound2 + "] scaleFactor: " + fB);
            }
            imageDecoder.setTargetSize(iRound, iRound2);
            int i10 = Build.VERSION.SDK_INT;
            if (i10 >= 28) {
                imageDecoder.setTargetColorSpace(ColorSpace.get((this.val$preferredColorSpace == com.bumptech.glide.load.j.DISPLAY_P3 && imageInfo.getColorSpace() != null && imageInfo.getColorSpace().isWideGamut()) ? ColorSpace.Named.DISPLAY_P3 : ColorSpace.Named.SRGB));
            } else if (i10 >= 26) {
                imageDecoder.setTargetColorSpace(ColorSpace.get(ColorSpace.Named.SRGB));
            }
        }
    }

    protected abstract v<T> c(ImageDecoder.Source source, int i10, int i11, ImageDecoder$OnHeaderDecodedListener imageDecoder$OnHeaderDecodedListener) throws IOException;

    public final boolean e(@NonNull ImageDecoder.Source source, @NonNull com.bumptech.glide.load.i iVar) {
        return true;
    }

    @Nullable
    public final v<T> d(@NonNull ImageDecoder.Source source, int i10, int i11, @NonNull com.bumptech.glide.load.i iVar) throws IOException {
        com.bumptech.glide.load.b bVar = (com.bumptech.glide.load.b) iVar.c(p.DECODE_FORMAT);
        com.bumptech.glide.load.resource.bitmap.l lVar = (com.bumptech.glide.load.resource.bitmap.l) iVar.c(com.bumptech.glide.load.resource.bitmap.l.OPTION);
        com.bumptech.glide.load.h<Boolean> hVar = p.ALLOW_HARDWARE_CONFIG;
        return c(source, i10, i11, new a(i10, i11, iVar.c(hVar) != null && ((Boolean) iVar.c(hVar)).booleanValue(), bVar, lVar, (com.bumptech.glide.load.j) iVar.c(p.PREFERRED_COLOR_SPACE)));
    }

    @Override // com.bumptech.glide.load.k
    public /* bridge */ /* synthetic */ boolean a(@NonNull ImageDecoder.Source source, @NonNull com.bumptech.glide.load.i iVar) throws IOException {
        return e(com.bumptech.glide.load.resource.a.a(source), iVar);
    }

    @Override // com.bumptech.glide.load.k
    @Nullable
    public /* bridge */ /* synthetic */ v b(@NonNull ImageDecoder.Source source, int i10, int i11, @NonNull com.bumptech.glide.load.i iVar) throws IOException {
        return d(com.bumptech.glide.load.resource.a.a(source), i10, i11, iVar);
    }
}
