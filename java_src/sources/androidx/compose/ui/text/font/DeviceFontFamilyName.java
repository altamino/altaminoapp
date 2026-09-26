package androidx.compose.ui.text.font;

import androidx.compose.ui.text.ExperimentalTextApi;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
@ExperimentalTextApi
public final class DeviceFontFamilyName {

    @NotNull
    private final String name;

    public static boolean a(String str, Object obj) {
        return (obj instanceof DeviceFontFamilyName) && t.e(str, ((DeviceFontFamilyName) obj).e());
    }

    public static final boolean b(String str, String str2) {
        return t.e(str, str2);
    }

    public static int c(String str) {
        return str.hashCode();
    }

    public static String d(String str) {
        return "DeviceFontFamilyName(name=" + str + ')';
    }

    public final /* synthetic */ String e() {
        return this.name;
    }

    public boolean equals(Object obj) {
        return a(this.name, obj);
    }

    public int hashCode() {
        return c(this.name);
    }

    public String toString() {
        return d(this.name);
    }
}
