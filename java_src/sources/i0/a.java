package i0;

import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.View;
import androidx.annotation.Nullable;
import com.airbnb.lottie.d;
import com.airbnb.lottie.model.i;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class a {
    private final AssetManager assetManager;

    @Nullable
    private com.airbnb.lottie.b delegate;
    private final i<String> tempPair = new i<>();
    private final Map<i<String>, Typeface> fontMap = new HashMap();
    private final Map<String, Typeface> fontFamilies = new HashMap();
    private String defaultFontFileExtension = ".ttf";

    public void c(@Nullable com.airbnb.lottie.b bVar) {
        this.delegate = bVar;
    }

    private Typeface a(String str) {
        String strB;
        Typeface typeface = this.fontFamilies.get(str);
        if (typeface != null) {
            return typeface;
        }
        com.airbnb.lottie.b bVar = this.delegate;
        Typeface typefaceA = bVar != null ? bVar.a(str) : null;
        com.airbnb.lottie.b bVar2 = this.delegate;
        if (bVar2 != null && typefaceA == null && (strB = bVar2.b(str)) != null) {
            typefaceA = Typeface.createFromAsset(this.assetManager, strB);
        }
        if (typefaceA == null) {
            typefaceA = Typeface.createFromAsset(this.assetManager, "fonts/" + str + this.defaultFontFileExtension);
        }
        this.fontFamilies.put(str, typefaceA);
        return typefaceA;
    }

    private Typeface d(Typeface typeface, String str) {
        int i10;
        boolean zContains = str.contains("Italic");
        boolean zContains2 = str.contains("Bold");
        if (zContains && zContains2) {
            i10 = 3;
        } else if (zContains) {
            i10 = 2;
        } else {
            i10 = zContains2 ? 1 : 0;
        }
        return typeface.getStyle() == i10 ? typeface : Typeface.create(typeface, i10);
    }

    public Typeface b(String str, String str2) {
        this.tempPair.b(str, str2);
        Typeface typeface = this.fontMap.get(this.tempPair);
        if (typeface != null) {
            return typeface;
        }
        Typeface typefaceD = d(a(str), str2);
        this.fontMap.put(this.tempPair, typefaceD);
        return typefaceD;
    }

    public a(Drawable.Callback callback, @Nullable com.airbnb.lottie.b bVar) {
        this.delegate = bVar;
        if (!(callback instanceof View)) {
            Log.w(d.TAG, "LottieDrawable must be inside of a view for images to work.");
            this.assetManager = null;
        } else {
            this.assetManager = ((View) callback).getContext().getAssets();
        }
    }
}
