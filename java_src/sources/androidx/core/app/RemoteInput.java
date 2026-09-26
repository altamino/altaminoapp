package androidx.core.app;

import android.content.ClipData;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public final class RemoteInput {
    public static final int EDIT_CHOICES_BEFORE_SENDING_AUTO = 0;
    public static final int EDIT_CHOICES_BEFORE_SENDING_DISABLED = 1;
    public static final int EDIT_CHOICES_BEFORE_SENDING_ENABLED = 2;
    private static final String EXTRA_DATA_TYPE_RESULTS_DATA = "android.remoteinput.dataTypeResultsData";
    public static final String EXTRA_RESULTS_DATA = "android.remoteinput.resultsData";
    private static final String EXTRA_RESULTS_SOURCE = "android.remoteinput.resultsSource";
    public static final String RESULTS_CLIP_LABEL = "android.remoteinput.results";
    public static final int SOURCE_CHOICE = 1;
    public static final int SOURCE_FREE_FORM_INPUT = 0;
    private final boolean mAllowFreeFormTextInput;
    private final Set<String> mAllowedDataTypes;
    private final CharSequence[] mChoices;
    private final int mEditChoicesBeforeSending;
    private final Bundle mExtras;
    private final CharSequence mLabel;
    private final String mResultKey;

    @RequiresApi
    static class Api20Impl {
        @DoNotInline
        static void a(Object obj, Intent intent, Bundle bundle) {
            android.app.RemoteInput.addResultsToIntent((android.app.RemoteInput[]) obj, intent, bundle);
        }

        public static android.app.RemoteInput b(RemoteInput remoteInput) {
            Set<String> setE;
            android.app.RemoteInput.Builder builderAddExtras = new android.app.RemoteInput.Builder(remoteInput.j()).setLabel(remoteInput.i()).setChoices(remoteInput.f()).setAllowFreeFormInput(remoteInput.d()).addExtras(remoteInput.h());
            if (Build.VERSION.SDK_INT >= 26 && (setE = remoteInput.e()) != null) {
                Iterator<String> it = setE.iterator();
                while (it.hasNext()) {
                    Api26Impl.d(builderAddExtras, it.next(), true);
                }
            }
            if (Build.VERSION.SDK_INT >= 29) {
                Api29Impl.b(builderAddExtras, remoteInput.g());
            }
            return builderAddExtras.build();
        }

        static RemoteInput c(Object obj) {
            Set<String> setB;
            android.app.RemoteInput remoteInput = (android.app.RemoteInput) obj;
            Builder builderA = new Builder(remoteInput.getResultKey()).g(remoteInput.getLabel()).e(remoteInput.getChoices()).d(remoteInput.getAllowFreeFormInput()).a(remoteInput.getExtras());
            if (Build.VERSION.SDK_INT >= 26 && (setB = Api26Impl.b(remoteInput)) != null) {
                Iterator<String> it = setB.iterator();
                while (it.hasNext()) {
                    builderA.c(it.next(), true);
                }
            }
            if (Build.VERSION.SDK_INT >= 29) {
                builderA.f(Api29Impl.a(remoteInput));
            }
            return builderA.b();
        }

        private Api20Impl() {
        }

        @DoNotInline
        static Bundle d(Intent intent) {
            return android.app.RemoteInput.getResultsFromIntent(intent);
        }
    }

    @RequiresApi
    static class Api26Impl {
        @DoNotInline
        static Set<String> b(Object obj) {
            return ((android.app.RemoteInput) obj).getAllowedDataTypes();
        }

        private Api26Impl() {
        }

        @DoNotInline
        static void a(RemoteInput remoteInput, Intent intent, Map<String, Uri> map) {
            android.app.RemoteInput.addDataResultToIntent(RemoteInput.a(remoteInput), intent, map);
        }

        @DoNotInline
        static Map<String, Uri> c(Intent intent, String str) {
            return android.app.RemoteInput.getDataResultsFromIntent(intent, str);
        }

        @DoNotInline
        static android.app.RemoteInput.Builder d(android.app.RemoteInput.Builder builder, String str, boolean z6) {
            return builder.setAllowDataType(str, z6);
        }
    }

    @RequiresApi
    static class Api29Impl {
        @DoNotInline
        static int a(Object obj) {
            return ((android.app.RemoteInput) obj).getEditChoicesBeforeSending();
        }

        private Api29Impl() {
        }

        @DoNotInline
        static android.app.RemoteInput.Builder b(android.app.RemoteInput.Builder builder, int i10) {
            return builder.setEditChoicesBeforeSending(i10);
        }
    }

    public static final class Builder {
        private CharSequence[] mChoices;
        private CharSequence mLabel;
        private final String mResultKey;
        private final Set<String> mAllowedDataTypes = new HashSet();
        private final Bundle mExtras = new Bundle();
        private boolean mAllowFreeFormTextInput = true;
        private int mEditChoicesBeforeSending = 0;

        @NonNull
        public Builder d(boolean z6) {
            this.mAllowFreeFormTextInput = z6;
            return this;
        }

        @NonNull
        public Builder e(@Nullable CharSequence[] charSequenceArr) {
            this.mChoices = charSequenceArr;
            return this;
        }

        @NonNull
        public Builder f(int i10) {
            this.mEditChoicesBeforeSending = i10;
            return this;
        }

        @NonNull
        public Builder g(@Nullable CharSequence charSequence) {
            this.mLabel = charSequence;
            return this;
        }

        @NonNull
        public Builder a(@NonNull Bundle bundle) {
            if (bundle != null) {
                this.mExtras.putAll(bundle);
            }
            return this;
        }

        @NonNull
        public RemoteInput b() {
            return new RemoteInput(this.mResultKey, this.mLabel, this.mChoices, this.mAllowFreeFormTextInput, this.mEditChoicesBeforeSending, this.mExtras, this.mAllowedDataTypes);
        }

        @NonNull
        public Builder c(@NonNull String str, boolean z6) {
            if (z6) {
                this.mAllowedDataTypes.add(str);
            } else {
                this.mAllowedDataTypes.remove(str);
            }
            return this;
        }

        public Builder(@NonNull String str) {
            if (str != null) {
                this.mResultKey = str;
                return;
            }
            throw new IllegalArgumentException("Result key can't be null");
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    public @interface EditChoicesBeforeSending {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    public @interface Source {
    }

    public boolean d() {
        return this.mAllowFreeFormTextInput;
    }

    @Nullable
    public Set<String> e() {
        return this.mAllowedDataTypes;
    }

    @Nullable
    public CharSequence[] f() {
        return this.mChoices;
    }

    public int g() {
        return this.mEditChoicesBeforeSending;
    }

    @NonNull
    public Bundle h() {
        return this.mExtras;
    }

    @Nullable
    public CharSequence i() {
        return this.mLabel;
    }

    @NonNull
    public String j() {
        return this.mResultKey;
    }

    @RequiresApi
    static class Api16Impl {
        private Api16Impl() {
        }

        @DoNotInline
        static ClipData a(Intent intent) {
            return intent.getClipData();
        }

        @DoNotInline
        static void b(Intent intent, ClipData clipData) {
            intent.setClipData(clipData);
        }
    }

    @RequiresApi
    static class Api28Impl {
        private Api28Impl() {
        }

        @DoNotInline
        static int a(Intent intent) {
            return android.app.RemoteInput.getResultsSource(intent);
        }

        @DoNotInline
        static void b(Intent intent, int i10) {
            android.app.RemoteInput.setResultsSource(intent, i10);
        }
    }

    @RequiresApi
    static android.app.RemoteInput[] b(RemoteInput[] remoteInputArr) {
        if (remoteInputArr == null) {
            return null;
        }
        android.app.RemoteInput[] remoteInputArr2 = new android.app.RemoteInput[remoteInputArr.length];
        for (int i10 = 0; i10 < remoteInputArr.length; i10++) {
            remoteInputArr2[i10] = a(remoteInputArr[i10]);
        }
        return remoteInputArr2;
    }

    RemoteInput(String str, CharSequence charSequence, CharSequence[] charSequenceArr, boolean z6, int i10, Bundle bundle, Set<String> set) {
        this.mResultKey = str;
        this.mLabel = charSequence;
        this.mChoices = charSequenceArr;
        this.mAllowFreeFormTextInput = z6;
        this.mEditChoicesBeforeSending = i10;
        this.mExtras = bundle;
        this.mAllowedDataTypes = set;
        if (g() == 2 && !d()) {
            throw new IllegalArgumentException("setEditChoicesBeforeSending requires setAllowFreeFormInput");
        }
    }

    @RequiresApi
    static android.app.RemoteInput a(RemoteInput remoteInput) {
        return Api20Impl.b(remoteInput);
    }

    @RequiresApi
    static RemoteInput c(android.app.RemoteInput remoteInput) {
        return Api20Impl.c(remoteInput);
    }

    public boolean k() {
        if (!d() && ((f() == null || f().length == 0) && e() != null && !e().isEmpty())) {
            return true;
        }
        return false;
    }
}
