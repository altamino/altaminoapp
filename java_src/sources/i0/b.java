package i0;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import androidx.annotation.Nullable;
import com.airbnb.lottie.c;
import com.airbnb.lottie.d;
import com.airbnb.lottie.g;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class b {
    private final Map<String, Bitmap> bitmaps = new HashMap();
    private final Context context;

    @Nullable
    private c delegate;
    private final Map<String, g> imageAssets;
    private String imagesFolder;

    public void d(@Nullable c cVar) {
    }

    @Nullable
    public Bitmap a(String str) {
        Bitmap bitmap = this.bitmaps.get(str);
        if (bitmap != null) {
            return bitmap;
        }
        g gVar = this.imageAssets.get(str);
        if (gVar == null) {
            return null;
        }
        try {
            if (TextUtils.isEmpty(this.imagesFolder)) {
                throw new IllegalStateException("You must set an images folder before loading an image. Set it with LottieComposition#setImagesFolder or LottieDrawable#setImagesFolder");
            }
            InputStream inputStreamOpen = this.context.getAssets().open(this.imagesFolder + gVar.a());
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inScaled = true;
            options.inDensity = 160;
            Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStreamOpen, null, options);
            this.bitmaps.put(str, bitmapDecodeStream);
            return bitmapDecodeStream;
        } catch (IOException e) {
            Log.w(d.TAG, "Unable to open asset.", e);
            return null;
        }
    }

    public boolean b(Context context) {
        return (context == null && this.context == null) || (context != null && this.context.equals(context));
    }

    public void c() {
        Iterator<Map.Entry<String, Bitmap>> it = this.bitmaps.entrySet().iterator();
        while (it.hasNext()) {
            it.next().getValue().recycle();
            it.remove();
        }
    }

    public b(Drawable.Callback callback, String str, c cVar, Map<String, g> map) {
        this.imagesFolder = str;
        if (!TextUtils.isEmpty(str)) {
            String str2 = this.imagesFolder;
            if (str2.charAt(str2.length() - 1) != '/') {
                this.imagesFolder += '/';
            }
        }
        if (!(callback instanceof View)) {
            Log.w(d.TAG, "LottieDrawable must be inside of a view for images to work.");
            this.imageAssets = new HashMap();
            this.context = null;
        } else {
            this.context = ((View) callback).getContext();
            this.imageAssets = map;
            d(cVar);
        }
    }
}
