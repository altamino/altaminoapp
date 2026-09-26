package kotlinx.serialization.json.internal;

import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public final class c0 {

    @NotNull
    private static final v.a<Map<String, Integer>> JsonAlternativeNamesKey = new v.a<>();

    /* synthetic */ class a extends kotlin.jvm.internal.q implements e8.a<Map<String, ? extends Integer>> {
        a(Object obj) {
            super(0, obj, c0.class, "buildAlternativeNamesMap", "buildAlternativeNamesMap(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ljava/util/Map;", 1);
        }

        @Override // e8.a
        @NotNull
        public final Map<String, ? extends Integer> invoke() {
            return c0.a((SerialDescriptor) this.receiver);
        }
    }

    @NotNull
    public static final v.a<Map<String, Integer>> c() {
        return JsonAlternativeNamesKey;
    }

    @NotNull
    public static final Map<String, Integer> a(@NotNull SerialDescriptor serialDescriptor) {
        String[] strArrNames;
        kotlin.jvm.internal.t.j(serialDescriptor, "<this>");
        int iE = serialDescriptor.e();
        Map<String, Integer> mapA = null;
        for (int i10 = 0; i10 < iE; i10++) {
            List<Annotation> listG = serialDescriptor.g(i10);
            ArrayList arrayList = new ArrayList();
            for (Object obj : listG) {
                if (obj instanceof kotlinx.serialization.json.p) {
                    arrayList.add(obj);
                }
            }
            kotlinx.serialization.json.p pVar = (kotlinx.serialization.json.p) kotlin.collections.d0.J0(arrayList);
            if (pVar != null && (strArrNames = pVar.names()) != null) {
                for (String str : strArrNames) {
                    if (mapA == null) {
                        mapA = u.a(serialDescriptor.e());
                    }
                    kotlin.jvm.internal.t.g(mapA);
                    b(mapA, serialDescriptor, str, i10);
                }
            }
        }
        return mapA == null ? kotlin.collections.s0.h() : mapA;
    }

    public static final int d(@NotNull SerialDescriptor serialDescriptor, @NotNull kotlinx.serialization.json.a json, @NotNull String name) {
        kotlin.jvm.internal.t.j(serialDescriptor, "<this>");
        kotlin.jvm.internal.t.j(json, "json");
        kotlin.jvm.internal.t.j(name, "name");
        int iC = serialDescriptor.c(name);
        if (iC != -3 || !json.e().j()) {
            return iC;
        }
        Integer num = (Integer) ((Map) kotlinx.serialization.json.u.a(json).b(serialDescriptor, JsonAlternativeNamesKey, new a(serialDescriptor))).get(name);
        if (num != null) {
            return num.intValue();
        }
        return -3;
    }

    public static final int e(@NotNull SerialDescriptor serialDescriptor, @NotNull kotlinx.serialization.json.a json, @NotNull String name, @NotNull String suffix) {
        kotlin.jvm.internal.t.j(serialDescriptor, "<this>");
        kotlin.jvm.internal.t.j(json, "json");
        kotlin.jvm.internal.t.j(name, "name");
        kotlin.jvm.internal.t.j(suffix, "suffix");
        int iD = d(serialDescriptor, json, name);
        if (iD != -3) {
            return iD;
        }
        throw new kotlinx.serialization.j(serialDescriptor.h() + " does not contain element with name '" + name + '\'' + suffix);
    }

    public static /* synthetic */ int f(SerialDescriptor serialDescriptor, kotlinx.serialization.json.a aVar, String str, String str2, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            str2 = "";
        }
        return e(serialDescriptor, aVar, str, str2);
    }

    private static final void b(Map<String, Integer> map, SerialDescriptor serialDescriptor, String str, int i10) {
        if (!map.containsKey(str)) {
            map.put(str, Integer.valueOf(i10));
            return;
        }
        throw new a0("The suggested name '" + str + "' for property " + serialDescriptor.f(i10) + " is already one of the names for property " + serialDescriptor.f(((Number) kotlin.collections.s0.i(map, str)).intValue()) + " in " + serialDescriptor);
    }
}
