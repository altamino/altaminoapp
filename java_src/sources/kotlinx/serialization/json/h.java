package kotlinx.serialization.json;

import kotlin.jvm.internal.q0;
import kotlinx.serialization.json.internal.w0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class h {
    @NotNull
    public static final JsonPrimitive a(@Nullable Boolean bool) {
        return bool == null ? JsonNull.INSTANCE : new n(bool, false);
    }

    @NotNull
    public static final JsonPrimitive b(@Nullable Number number) {
        return number == null ? JsonNull.INSTANCE : new n(number, false);
    }

    @NotNull
    public static final JsonPrimitive c(@Nullable String str) {
        return str == null ? JsonNull.INSTANCE : new n(str, true);
    }

    private static final Void d(JsonElement jsonElement, String str) {
        throw new IllegalArgumentException("Element " + q0.b(jsonElement.getClass()) + " is not a " + str);
    }

    @Nullable
    public static final Boolean e(@NotNull JsonPrimitive jsonPrimitive) {
        kotlin.jvm.internal.t.j(jsonPrimitive, "<this>");
        return w0.d(jsonPrimitive.e());
    }

    @Nullable
    public static final String f(@NotNull JsonPrimitive jsonPrimitive) {
        kotlin.jvm.internal.t.j(jsonPrimitive, "<this>");
        if (jsonPrimitive instanceof JsonNull) {
            return null;
        }
        return jsonPrimitive.e();
    }

    public static final double g(@NotNull JsonPrimitive jsonPrimitive) {
        kotlin.jvm.internal.t.j(jsonPrimitive, "<this>");
        return Double.parseDouble(jsonPrimitive.e());
    }

    @Nullable
    public static final Double h(@NotNull JsonPrimitive jsonPrimitive) {
        kotlin.jvm.internal.t.j(jsonPrimitive, "<this>");
        return kotlin.text.r.j(jsonPrimitive.e());
    }

    public static final float i(@NotNull JsonPrimitive jsonPrimitive) {
        kotlin.jvm.internal.t.j(jsonPrimitive, "<this>");
        return Float.parseFloat(jsonPrimitive.e());
    }

    public static final int j(@NotNull JsonPrimitive jsonPrimitive) {
        kotlin.jvm.internal.t.j(jsonPrimitive, "<this>");
        return Integer.parseInt(jsonPrimitive.e());
    }

    @NotNull
    public static final JsonObject k(@NotNull JsonElement jsonElement) {
        kotlin.jvm.internal.t.j(jsonElement, "<this>");
        JsonObject jsonObject = jsonElement instanceof JsonObject ? (JsonObject) jsonElement : null;
        if (jsonObject != null) {
            return jsonObject;
        }
        d(jsonElement, "JsonObject");
        throw new w7.i();
    }

    @NotNull
    public static final JsonPrimitive l(@NotNull JsonElement jsonElement) {
        kotlin.jvm.internal.t.j(jsonElement, "<this>");
        JsonPrimitive jsonPrimitive = jsonElement instanceof JsonPrimitive ? (JsonPrimitive) jsonElement : null;
        if (jsonPrimitive != null) {
            return jsonPrimitive;
        }
        d(jsonElement, "JsonPrimitive");
        throw new w7.i();
    }

    public static final long m(@NotNull JsonPrimitive jsonPrimitive) {
        kotlin.jvm.internal.t.j(jsonPrimitive, "<this>");
        return Long.parseLong(jsonPrimitive.e());
    }

    @Nullable
    public static final Long n(@NotNull JsonPrimitive jsonPrimitive) {
        kotlin.jvm.internal.t.j(jsonPrimitive, "<this>");
        return kotlin.text.s.o(jsonPrimitive.e());
    }
}
