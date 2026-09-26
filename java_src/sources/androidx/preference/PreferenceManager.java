package androidx.preference;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.content.ContextCompat;

/* JADX INFO: loaded from: classes5.dex */
public class PreferenceManager {
    public static final String KEY_HAS_SET_DEFAULT_VALUES = "_has_set_default_values";
    private static final int STORAGE_DEFAULT = 0;
    private static final int STORAGE_DEVICE_PROTECTED = 1;
    private final Context mContext;

    @Nullable
    private SharedPreferences.Editor mEditor;
    private boolean mNoCommit;
    private OnDisplayPreferenceDialogListener mOnDisplayPreferenceDialogListener;
    private OnNavigateToScreenListener mOnNavigateToScreenListener;
    private OnPreferenceTreeClickListener mOnPreferenceTreeClickListener;
    private PreferenceComparisonCallback mPreferenceComparisonCallback;

    @Nullable
    private PreferenceDataStore mPreferenceDataStore;
    private PreferenceScreen mPreferenceScreen;

    @Nullable
    private SharedPreferences mSharedPreferences;
    private int mSharedPreferencesMode;
    private String mSharedPreferencesName;
    private long mNextId = 0;
    private int mStorage = 0;

    public interface OnDisplayPreferenceDialogListener {
        void c(@NonNull Preference preference);
    }

    public interface OnNavigateToScreenListener {
        void e(@NonNull PreferenceScreen preferenceScreen);
    }

    public interface OnPreferenceTreeClickListener {
        boolean d(@NonNull Preference preference);
    }

    public static abstract class PreferenceComparisonCallback {
        public abstract boolean a(@NonNull Preference preference, @NonNull Preference preference2);

        public abstract boolean b(@NonNull Preference preference, @NonNull Preference preference2);
    }

    private static int c() {
        return 0;
    }

    @Nullable
    public OnNavigateToScreenListener f() {
        return this.mOnNavigateToScreenListener;
    }

    @Nullable
    public OnPreferenceTreeClickListener g() {
        return this.mOnPreferenceTreeClickListener;
    }

    @Nullable
    public PreferenceComparisonCallback h() {
        return this.mPreferenceComparisonCallback;
    }

    @Nullable
    public PreferenceDataStore i() {
        return this.mPreferenceDataStore;
    }

    public PreferenceScreen j() {
        return this.mPreferenceScreen;
    }

    public void l(@Nullable OnDisplayPreferenceDialogListener onDisplayPreferenceDialogListener) {
        this.mOnDisplayPreferenceDialogListener = onDisplayPreferenceDialogListener;
    }

    public void m(@Nullable OnNavigateToScreenListener onNavigateToScreenListener) {
        this.mOnNavigateToScreenListener = onNavigateToScreenListener;
    }

    public void n(@Nullable OnPreferenceTreeClickListener onPreferenceTreeClickListener) {
        this.mOnPreferenceTreeClickListener = onPreferenceTreeClickListener;
    }

    public void o(String str) {
        this.mSharedPreferencesName = str;
        this.mSharedPreferences = null;
    }

    boolean p() {
        return !this.mNoCommit;
    }

    public static class SimplePreferenceComparisonCallback extends PreferenceComparisonCallback {
        @Override // androidx.preference.PreferenceManager.PreferenceComparisonCallback
        public boolean a(@NonNull Preference preference, @NonNull Preference preference2) {
            if (preference.getClass() != preference2.getClass()) {
                return false;
            }
            if ((preference == preference2 && preference.x0()) || !TextUtils.equals(preference.B(), preference2.B()) || !TextUtils.equals(preference.z(), preference2.z())) {
                return false;
            }
            Drawable drawableN = preference.n();
            Drawable drawableN2 = preference2.n();
            if ((drawableN != drawableN2 && (drawableN == null || !drawableN.equals(drawableN2))) || preference.F() != preference2.F() || preference.H() != preference2.H()) {
                return false;
            }
            if ((preference instanceof TwoStatePreference) && ((TwoStatePreference) preference).y0() != ((TwoStatePreference) preference2).y0()) {
                return false;
            }
            if ((preference instanceof DropDownPreference) && preference != preference2) {
                return false;
            }
            return true;
        }

        @Override // androidx.preference.PreferenceManager.PreferenceComparisonCallback
        public boolean b(@NonNull Preference preference, @NonNull Preference preference2) {
            if (preference.o() == preference2.o()) {
                return true;
            }
            return false;
        }
    }

    private static String d(Context context) {
        return context.getPackageName() + "_preferences";
    }

    @Nullable
    public <T extends Preference> T a(@NonNull CharSequence charSequence) {
        PreferenceScreen preferenceScreen = this.mPreferenceScreen;
        if (preferenceScreen == null) {
            return null;
        }
        return (T) preferenceScreen.y0(charSequence);
    }

    @Nullable
    SharedPreferences.Editor e() {
        if (this.mPreferenceDataStore != null) {
            return null;
        }
        if (!this.mNoCommit) {
            return k().edit();
        }
        if (this.mEditor == null) {
            this.mEditor = k().edit();
        }
        return this.mEditor;
    }

    public void q(@NonNull Preference preference) {
        OnDisplayPreferenceDialogListener onDisplayPreferenceDialogListener = this.mOnDisplayPreferenceDialogListener;
        if (onDisplayPreferenceDialogListener != null) {
            onDisplayPreferenceDialogListener.c(preference);
        }
    }

    @RestrictTo
    public PreferenceManager(@NonNull Context context) {
        this.mContext = context;
        o(d(context));
    }

    public static SharedPreferences b(@NonNull Context context) {
        return context.getSharedPreferences(d(context), c());
    }

    @Nullable
    public SharedPreferences k() {
        Context contextCreateDeviceProtectedStorageContext;
        if (i() != null) {
            return null;
        }
        if (this.mSharedPreferences == null) {
            if (this.mStorage != 1) {
                contextCreateDeviceProtectedStorageContext = this.mContext;
            } else {
                contextCreateDeviceProtectedStorageContext = ContextCompat.createDeviceProtectedStorageContext(this.mContext);
            }
            this.mSharedPreferences = contextCreateDeviceProtectedStorageContext.getSharedPreferences(this.mSharedPreferencesName, this.mSharedPreferencesMode);
        }
        return this.mSharedPreferences;
    }
}
