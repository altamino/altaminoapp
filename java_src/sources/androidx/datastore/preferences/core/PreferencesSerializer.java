package androidx.datastore.preferences.core;

import androidx.datastore.core.CorruptionException;
import androidx.datastore.core.Serializer;
import androidx.datastore.preferences.PreferencesMapCompat;
import androidx.datastore.preferences.PreferencesProto;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.collections.d0;
import kotlin.coroutines.d;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.s;

/* JADX INFO: loaded from: classes8.dex */
public final class PreferencesSerializer implements Serializer<Preferences> {

    @NotNull
    public static final PreferencesSerializer INSTANCE = new PreferencesSerializer();

    @NotNull
    private static final String fileExtension = "preferences_pb";

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[PreferencesProto.Value.ValueCase.values().length];
            iArr[PreferencesProto.Value.ValueCase.BOOLEAN.ordinal()] = 1;
            iArr[PreferencesProto.Value.ValueCase.FLOAT.ordinal()] = 2;
            iArr[PreferencesProto.Value.ValueCase.DOUBLE.ordinal()] = 3;
            iArr[PreferencesProto.Value.ValueCase.INTEGER.ordinal()] = 4;
            iArr[PreferencesProto.Value.ValueCase.LONG.ordinal()] = 5;
            iArr[PreferencesProto.Value.ValueCase.STRING.ordinal()] = 6;
            iArr[PreferencesProto.Value.ValueCase.STRING_SET.ordinal()] = 7;
            iArr[PreferencesProto.Value.ValueCase.VALUE_NOT_SET.ordinal()] = 8;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @NotNull
    public final String c() {
        return fileExtension;
    }

    private final PreferencesProto.Value d(Object obj) {
        if (obj instanceof Boolean) {
            PreferencesProto.Value valueBuild = PreferencesProto.Value.T().y(((Boolean) obj).booleanValue()).build();
            t.i(valueBuild, "newBuilder().setBoolean(value).build()");
            return valueBuild;
        }
        if (obj instanceof Float) {
            PreferencesProto.Value valueBuild2 = PreferencesProto.Value.T().A(((Number) obj).floatValue()).build();
            t.i(valueBuild2, "newBuilder().setFloat(value).build()");
            return valueBuild2;
        }
        if (obj instanceof Double) {
            PreferencesProto.Value valueBuild3 = PreferencesProto.Value.T().z(((Number) obj).doubleValue()).build();
            t.i(valueBuild3, "newBuilder().setDouble(value).build()");
            return valueBuild3;
        }
        if (obj instanceof Integer) {
            PreferencesProto.Value valueBuild4 = PreferencesProto.Value.T().B(((Number) obj).intValue()).build();
            t.i(valueBuild4, "newBuilder().setInteger(value).build()");
            return valueBuild4;
        }
        if (obj instanceof Long) {
            PreferencesProto.Value valueBuild5 = PreferencesProto.Value.T().C(((Number) obj).longValue()).build();
            t.i(valueBuild5, "newBuilder().setLong(value).build()");
            return valueBuild5;
        }
        if (obj instanceof String) {
            PreferencesProto.Value valueBuild6 = PreferencesProto.Value.T().D((String) obj).build();
            t.i(valueBuild6, "newBuilder().setString(value).build()");
            return valueBuild6;
        }
        if (!(obj instanceof Set)) {
            throw new IllegalStateException(t.s("PreferencesSerializer does not support type: ", obj.getClass().getName()));
        }
        PreferencesProto.Value valueBuild7 = PreferencesProto.Value.T().E(PreferencesProto.StringSet.I().y((Set) obj)).build();
        t.i(valueBuild7, "newBuilder().setStringSet(\n                    StringSet.newBuilder().addAllStrings(value as Set<String>)\n                ).build()");
        return valueBuild7;
    }

    @Override // androidx.datastore.core.Serializer
    @Nullable
    public Object readFrom(@NotNull InputStream inputStream, @NotNull d<? super Preferences> dVar) throws IOException {
        PreferencesProto.PreferenceMap preferenceMapA = PreferencesMapCompat.Companion.a(inputStream);
        MutablePreferences mutablePreferencesB = PreferencesFactory.b(new Preferences.Pair[0]);
        Map<String, PreferencesProto.Value> mapF = preferenceMapA.F();
        t.i(mapF, "preferencesProto.preferencesMap");
        for (Map.Entry<String, PreferencesProto.Value> entry : mapF.entrySet()) {
            String name = entry.getKey();
            PreferencesProto.Value value = entry.getValue();
            PreferencesSerializer preferencesSerializer = INSTANCE;
            t.i(name, "name");
            t.i(value, "value");
            preferencesSerializer.a(name, value, mutablePreferencesB);
        }
        return mutablePreferencesB.d();
    }

    private PreferencesSerializer() {
    }

    private final void a(String str, PreferencesProto.Value value, MutablePreferences mutablePreferences) throws CorruptionException {
        int i10;
        PreferencesProto.Value.ValueCase valueCaseS = value.S();
        if (valueCaseS == null) {
            i10 = -1;
        } else {
            i10 = WhenMappings.$EnumSwitchMapping$0[valueCaseS.ordinal()];
        }
        switch (i10) {
            case -1:
                throw new CorruptionException("Value case is null.", null, 2, null);
            case 0:
            default:
                throw new s();
            case 1:
                mutablePreferences.i(PreferencesKeys.a(str), Boolean.valueOf(value.K()));
                return;
            case 2:
                mutablePreferences.i(PreferencesKeys.c(str), Float.valueOf(value.N()));
                return;
            case 3:
                mutablePreferences.i(PreferencesKeys.b(str), Double.valueOf(value.M()));
                return;
            case 4:
                mutablePreferences.i(PreferencesKeys.d(str), Integer.valueOf(value.O()));
                return;
            case 5:
                mutablePreferences.i(PreferencesKeys.e(str), Long.valueOf(value.P()));
                return;
            case 6:
                Preferences.Key<String> keyF = PreferencesKeys.f(str);
                String strQ = value.Q();
                t.i(strQ, "value.string");
                mutablePreferences.i(keyF, strQ);
                return;
            case 7:
                Preferences.Key<Set<String>> keyG = PreferencesKeys.g(str);
                List<String> listH = value.R().H();
                t.i(listH, "value.stringSet.stringsList");
                mutablePreferences.i(keyG, d0.Y0(listH));
                return;
            case 8:
                throw new CorruptionException("Value not set.", null, 2, null);
        }
    }

    @Override // androidx.datastore.core.Serializer
    @NotNull
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public Preferences getDefaultValue() {
        return PreferencesFactory.a();
    }

    @Override // androidx.datastore.core.Serializer
    @Nullable
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public Object writeTo(@NotNull Preferences preferences, @NotNull OutputStream outputStream, @NotNull d<? super l0> dVar) throws IOException {
        Map<Preferences.Key<?>, Object> mapA = preferences.a();
        PreferencesProto.PreferenceMap.Builder builderI = PreferencesProto.PreferenceMap.I();
        for (Map.Entry<Preferences.Key<?>, Object> entry : mapA.entrySet()) {
            builderI.y(entry.getKey().a(), d(entry.getValue()));
        }
        builderI.build().i(outputStream);
        return l0.INSTANCE;
    }
}
