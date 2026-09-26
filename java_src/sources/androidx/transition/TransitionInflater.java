package androidx.transition;

import android.content.Context;
import android.util.AttributeSet;
import androidx.collection.ArrayMap;
import java.lang.reflect.Constructor;

/* JADX INFO: loaded from: classes4.dex */
public class TransitionInflater {
    private final Context mContext;
    private static final Class<?>[] CONSTRUCTOR_SIGNATURE = {Context.class, AttributeSet.class};
    private static final ArrayMap<String, Constructor<?>> CONSTRUCTORS = new ArrayMap<>();
}
