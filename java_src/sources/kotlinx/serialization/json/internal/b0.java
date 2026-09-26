package kotlinx.serialization.json.internal;

import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public final class b0 {
    @NotNull
    public static final x a(@NotNull Number value, @NotNull String key, @NotNull String output) {
        kotlin.jvm.internal.t.j(value, "value");
        kotlin.jvm.internal.t.j(key, "key");
        kotlin.jvm.internal.t.j(output, "output");
        return e(-1, k(value, key, output));
    }

    @NotNull
    public static final z b(@NotNull Number value, @NotNull String output) {
        kotlin.jvm.internal.t.j(value, "value");
        kotlin.jvm.internal.t.j(output, "output");
        return new z("Unexpected special floating-point value " + value + ". By default, non-finite floating point values are prohibited because they do not conform JSON specification. It is possible to deserialize them using 'JsonBuilder.allowSpecialFloatingPointValues = true'\nCurrent output: " + ((Object) i(output, 0, 1, null)));
    }

    @NotNull
    public static final z c(@NotNull Number value, @NotNull String key, @NotNull String output) {
        kotlin.jvm.internal.t.j(value, "value");
        kotlin.jvm.internal.t.j(key, "key");
        kotlin.jvm.internal.t.j(output, "output");
        return new z(k(value, key, output));
    }

    @NotNull
    public static final z d(@NotNull SerialDescriptor keyDescriptor) {
        kotlin.jvm.internal.t.j(keyDescriptor, "keyDescriptor");
        return new z("Value of type '" + keyDescriptor.h() + "' can't be used in JSON as a key in the map. It should have either primitive or enum kind, but its kind is '" + keyDescriptor.getKind() + "'.\nUse 'allowStructuredMapKeys = true' in 'Json {}' builder to convert such maps to [key1, value1, key2, value2,...] arrays.");
    }

    @NotNull
    public static final x e(int i10, @NotNull String message) {
        kotlin.jvm.internal.t.j(message, "message");
        if (i10 >= 0) {
            message = "Unexpected JSON token at offset " + i10 + ": " + message;
        }
        return new x(message);
    }

    @NotNull
    public static final x f(int i10, @NotNull String message, @NotNull CharSequence input) {
        kotlin.jvm.internal.t.j(message, "message");
        kotlin.jvm.internal.t.j(input, "input");
        return e(i10, message + "\nJSON input: " + ((Object) h(input, i10)));
    }

    @NotNull
    public static final x g(@NotNull String key, @NotNull String input) {
        kotlin.jvm.internal.t.j(key, "key");
        kotlin.jvm.internal.t.j(input, "input");
        return e(-1, "Encountered unknown key '" + key + "'.\nUse 'ignoreUnknownKeys = true' in 'Json {}' builder to ignore unknown keys.\nCurrent input: " + ((Object) i(input, 0, 1, null)));
    }

    static /* synthetic */ CharSequence i(CharSequence charSequence, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = -1;
        }
        return h(charSequence, i10);
    }

    @NotNull
    public static final Void j(@NotNull a aVar, @NotNull Number result) {
        kotlin.jvm.internal.t.j(aVar, "<this>");
        kotlin.jvm.internal.t.j(result, "result");
        a.y(aVar, "Unexpected special floating-point value " + result + ". By default, non-finite floating point values are prohibited because they do not conform JSON specification", 0, b.specialFlowingValuesHint, 2, null);
        throw new w7.i();
    }

    private static final String k(Number number, String str, String str2) {
        return "Unexpected special floating-point value " + number + " with key " + str + ". By default, non-finite floating point values are prohibited because they do not conform JSON specification. It is possible to deserialize them using 'JsonBuilder.allowSpecialFloatingPointValues = true'\nCurrent output: " + ((Object) i(str2, 0, 1, null));
    }

    private static final CharSequence h(CharSequence charSequence, int i10) {
        String str;
        if (charSequence.length() < 200) {
            return charSequence;
        }
        String str2 = ".....";
        if (i10 == -1) {
            int length = charSequence.length() - 60;
            if (length <= 0) {
                return charSequence;
            }
            return "....." + charSequence.subSequence(length, charSequence.length()).toString();
        }
        int i11 = i10 - 30;
        int i12 = i10 + 30;
        if (i11 > 0) {
            str = ".....";
        } else {
            str = "";
        }
        if (i12 >= charSequence.length()) {
            str2 = "";
        }
        return str + charSequence.subSequence(j8.o.e(i11, 0), j8.o.j(i12, charSequence.length())).toString() + str2;
    }
}
