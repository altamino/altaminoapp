package androidx.core.view.inputmethod;

import android.annotation.SuppressLint;
import android.os.Build;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.view.inputmethod.EditorInfo;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import androidx.core.util.Preconditions;
import org.apache.commons.compress.archivers.zip.UnixStat;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"PrivateConstructorForUtilityClass"})
public final class EditorInfoCompat {
    private static final String CONTENT_MIME_TYPES_INTEROP_KEY = "android.support.v13.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES";
    private static final String CONTENT_MIME_TYPES_KEY = "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES";
    private static final String CONTENT_SELECTION_END_KEY = "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_END";
    private static final String CONTENT_SELECTION_HEAD_KEY = "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_HEAD";
    private static final String CONTENT_SURROUNDING_TEXT_KEY = "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SURROUNDING_TEXT";
    private static final String[] EMPTY_STRING_ARRAY = new String[0];
    public static final int IME_FLAG_FORCE_ASCII = Integer.MIN_VALUE;
    public static final int IME_FLAG_NO_PERSONALIZED_LEARNING = 16777216;

    @VisibleForTesting
    static final int MAX_INITIAL_SELECTION_LENGTH = 1024;

    @VisibleForTesting
    static final int MEMORY_EFFICIENT_TEXT_LENGTH = 2048;

    private static boolean c(int i10) {
        int i11 = i10 & UnixStat.PERM_MASK;
        return i11 == 129 || i11 == 225 || i11 == 18;
    }

    @RequiresApi
    private static class Api30Impl {
        private Api30Impl() {
        }

        static void a(@NonNull EditorInfo editorInfo, CharSequence charSequence, int i10) {
            editorInfo.setInitialSurroundingSubText(charSequence, i10);
        }
    }

    @NonNull
    public static String[] a(@NonNull EditorInfo editorInfo) {
        if (Build.VERSION.SDK_INT >= 25) {
            String[] strArr = editorInfo.contentMimeTypes;
            return strArr != null ? strArr : EMPTY_STRING_ARRAY;
        }
        Bundle bundle = editorInfo.extras;
        if (bundle == null) {
            return EMPTY_STRING_ARRAY;
        }
        String[] stringArray = bundle.getStringArray(CONTENT_MIME_TYPES_KEY);
        if (stringArray == null) {
            stringArray = editorInfo.extras.getStringArray(CONTENT_MIME_TYPES_INTEROP_KEY);
        }
        return stringArray != null ? stringArray : EMPTY_STRING_ARRAY;
    }

    private static boolean b(CharSequence charSequence, int i10, int i11) {
        if (i11 == 0) {
            return Character.isLowSurrogate(charSequence.charAt(i10));
        }
        if (i11 != 1) {
            return false;
        }
        return Character.isHighSurrogate(charSequence.charAt(i10));
    }

    public static void d(@NonNull EditorInfo editorInfo, @Nullable String[] strArr) {
        if (Build.VERSION.SDK_INT >= 25) {
            editorInfo.contentMimeTypes = strArr;
            return;
        }
        if (editorInfo.extras == null) {
            editorInfo.extras = new Bundle();
        }
        editorInfo.extras.putStringArray(CONTENT_MIME_TYPES_KEY, strArr);
        editorInfo.extras.putStringArray(CONTENT_MIME_TYPES_INTEROP_KEY, strArr);
    }

    public static void f(@NonNull EditorInfo editorInfo, @NonNull CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 30) {
            Api30Impl.a(editorInfo, charSequence, 0);
        } else {
            e(editorInfo, charSequence, 0);
        }
    }

    private static void g(EditorInfo editorInfo, CharSequence charSequence, int i10, int i11) {
        if (editorInfo.extras == null) {
            editorInfo.extras = new Bundle();
        }
        editorInfo.extras.putCharSequence(CONTENT_SURROUNDING_TEXT_KEY, charSequence != null ? new SpannableStringBuilder(charSequence) : null);
        editorInfo.extras.putInt(CONTENT_SELECTION_HEAD_KEY, i10);
        editorInfo.extras.putInt(CONTENT_SELECTION_END_KEY, i11);
    }

    private static void h(EditorInfo editorInfo, CharSequence charSequence, int i10, int i11) {
        int i12 = i11 - i10;
        int i13 = i12 > 1024 ? 0 : i12;
        int i14 = 2048 - i13;
        int iMin = Math.min(charSequence.length() - i11, i14 - Math.min(i10, (int) (((double) i14) * 0.8d)));
        int iMin2 = Math.min(i10, i14 - iMin);
        int i15 = i10 - iMin2;
        if (b(charSequence, i15, 0)) {
            i15++;
            iMin2--;
        }
        if (b(charSequence, (i11 + iMin) - 1, 1)) {
            iMin--;
        }
        g(editorInfo, i13 != i12 ? TextUtils.concat(charSequence.subSequence(i15, i15 + iMin2), charSequence.subSequence(i11, iMin + i11)) : charSequence.subSequence(i15, iMin2 + i13 + iMin + i15), iMin2, i13 + iMin2);
    }

    @Deprecated
    public EditorInfoCompat() {
    }

    public static void e(@NonNull EditorInfo editorInfo, @NonNull CharSequence charSequence, int i10) {
        int i11;
        int i12;
        Preconditions.i(charSequence);
        if (Build.VERSION.SDK_INT >= 30) {
            Api30Impl.a(editorInfo, charSequence, i10);
            return;
        }
        int i13 = editorInfo.initialSelStart;
        int i14 = editorInfo.initialSelEnd;
        if (i13 > i14) {
            i11 = i14 - i10;
        } else {
            i11 = i13 - i10;
        }
        if (i13 > i14) {
            i12 = i13 - i10;
        } else {
            i12 = i14 - i10;
        }
        int length = charSequence.length();
        if (i10 >= 0 && i11 >= 0 && i12 <= length) {
            if (c(editorInfo.inputType)) {
                g(editorInfo, null, 0, 0);
                return;
            } else if (length <= 2048) {
                g(editorInfo, charSequence, i11, i12);
                return;
            } else {
                h(editorInfo, charSequence, i11, i12);
                return;
            }
        }
        g(editorInfo, null, 0, 0);
    }
}
