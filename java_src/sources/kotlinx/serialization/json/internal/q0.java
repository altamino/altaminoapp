package kotlinx.serialization.json.internal;

import java.lang.annotation.Annotation;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.JsonPrimitive;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class q0 {
    public static final void b(@NotNull kotlinx.serialization.descriptors.i kind) {
        kotlin.jvm.internal.t.j(kind, "kind");
        if (kind instanceof kotlinx.serialization.descriptors.i.b) {
            throw new IllegalStateException("Enums cannot be serialized polymorphically with 'type' parameter. You can use 'JsonBuilder.useArrayPolymorphism' instead".toString());
        }
        if (kind instanceof kotlinx.serialization.descriptors.e) {
            throw new IllegalStateException("Primitives cannot be serialized polymorphically with 'type' parameter. You can use 'JsonBuilder.useArrayPolymorphism' instead".toString());
        }
        if (kind instanceof kotlinx.serialization.descriptors.d) {
            throw new IllegalStateException("Actual serializer for polymorphic cannot be polymorphic itself".toString());
        }
    }

    @NotNull
    public static final String c(@NotNull SerialDescriptor serialDescriptor, @NotNull kotlinx.serialization.json.a json) {
        kotlin.jvm.internal.t.j(serialDescriptor, "<this>");
        kotlin.jvm.internal.t.j(json, "json");
        for (Annotation annotation : serialDescriptor.getAnnotations()) {
            if (annotation instanceof kotlinx.serialization.json.d) {
                return ((kotlinx.serialization.json.d) annotation).discriminator();
            }
        }
        return json.e().c();
    }

    public static final <T> T d(@NotNull kotlinx.serialization.json.f fVar, @NotNull kotlinx.serialization.b<T> deserializer) {
        JsonPrimitive jsonPrimitiveL;
        kotlin.jvm.internal.t.j(fVar, "<this>");
        kotlin.jvm.internal.t.j(deserializer, "deserializer");
        if (!(deserializer instanceof kotlinx.serialization.internal.b) || fVar.d().e().k()) {
            return deserializer.deserialize(fVar);
        }
        String strC = c(deserializer.getDescriptor(), fVar.d());
        JsonElement jsonElementT = fVar.t();
        SerialDescriptor descriptor = deserializer.getDescriptor();
        if (jsonElementT instanceof JsonObject) {
            JsonObject jsonObject = (JsonObject) jsonElementT;
            JsonElement jsonElement = (JsonElement) jsonObject.get(strC);
            String strE = (jsonElement == null || (jsonPrimitiveL = kotlinx.serialization.json.h.l(jsonElement)) == null) ? null : jsonPrimitiveL.e();
            kotlinx.serialization.b<? extends T> bVarC = ((kotlinx.serialization.internal.b) deserializer).c(fVar, strE);
            if (bVarC != null) {
                return (T) x0.b(fVar.d(), strC, jsonObject, bVarC);
            }
            e(strE, jsonObject);
            throw new w7.i();
        }
        throw b0.e(-1, "Expected " + kotlin.jvm.internal.q0.b(JsonObject.class) + " as the serialized body of " + descriptor.h() + ", but had " + kotlin.jvm.internal.q0.b(jsonElementT.getClass()));
    }

    @NotNull
    public static final Void e(@Nullable String str, @NotNull JsonObject jsonTree) {
        String str2;
        kotlin.jvm.internal.t.j(jsonTree, "jsonTree");
        if (str == null) {
            str2 = "missing class discriminator ('null')";
        } else {
            str2 = "class discriminator '" + str + '\'';
        }
        throw b0.f(-1, "Polymorphic serializer was not found for " + str2, jsonTree.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(kotlinx.serialization.k<?> kVar, kotlinx.serialization.k<Object> kVar2, String str) {
        if ((kVar instanceof kotlinx.serialization.g) && kotlinx.serialization.internal.u0.a(kVar2.getDescriptor()).contains(str)) {
            String strH = kVar.getDescriptor().h();
            throw new IllegalStateException(("Sealed class '" + kVar2.getDescriptor().h() + "' cannot be serialized as base class '" + strH + "' because it has property name that conflicts with JSON class discriminator '" + str + "'. You can either change class discriminator in JsonConfiguration, rename property with @SerialName annotation or fall back to array polymorphism").toString());
        }
    }
}
