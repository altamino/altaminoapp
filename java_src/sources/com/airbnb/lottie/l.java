package com.airbnb.lottie;

import androidx.annotation.Nullable;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public class l {

    @Nullable
    private final LottieAnimationView animationView;
    private boolean cacheText;

    @Nullable
    private final f drawable;
    private final Map<String, String> stringMap;

    public l(LottieAnimationView lottieAnimationView) {
        this.stringMap = new HashMap();
        this.cacheText = true;
        this.animationView = lottieAnimationView;
        this.drawable = null;
    }

    public String a(String str) {
        return str;
    }

    public final String b(String str) {
        if (this.cacheText && this.stringMap.containsKey(str)) {
            return this.stringMap.get(str);
        }
        String strA = a(str);
        if (this.cacheText) {
            this.stringMap.put(str, strA);
        }
        return strA;
    }

    public l(f fVar) {
        this.stringMap = new HashMap();
        this.cacheText = true;
        this.drawable = fVar;
        this.animationView = null;
    }
}
