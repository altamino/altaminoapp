package androidx.preference;

import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import java.lang.reflect.Constructor;
import java.util.HashMap;

/* JADX INFO: loaded from: classes9.dex */
class PreferenceInflater {
    private static final String EXTRA_TAG_NAME = "extra";
    private static final String INTENT_TAG_NAME = "intent";
    private final Object[] mConstructorArgs = new Object[2];

    @NonNull
    private final Context mContext;
    private String[] mDefaultPackages;
    private PreferenceManager mPreferenceManager;
    private static final Class<?>[] CONSTRUCTOR_SIGNATURE = {Context.class, AttributeSet.class};
    private static final HashMap<String, Constructor<?>> CONSTRUCTOR_MAP = new HashMap<>();

    public void b(String[] strArr) {
        this.mDefaultPackages = strArr;
    }

    private void a(PreferenceManager preferenceManager) {
        this.mPreferenceManager = preferenceManager;
        b(new String[]{Preference.class.getPackage().getName() + ".", SwitchPreference.class.getPackage().getName() + "."});
    }

    public PreferenceInflater(@NonNull Context context, PreferenceManager preferenceManager) {
        this.mContext = context;
        a(preferenceManager);
    }
}
