package androidx.window.layout;

import android.annotation.SuppressLint;
import android.graphics.Rect;
import androidx.annotation.VisibleForTesting;
import androidx.window.core.Bounds;
import androidx.window.core.SpecificationComputer;
import androidx.window.sidecar.SidecarDeviceState;
import androidx.window.sidecar.SidecarDisplayFeature;
import androidx.window.sidecar.SidecarWindowLayoutInfo;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.v;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class SidecarAdapter {

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final String TAG = SidecarAdapter.class.getSimpleName();

    @NotNull
    private final SpecificationComputer.VerificationMode verificationMode;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        @SuppressLint({"BanUncheckedReflection"})
        @VisibleForTesting
        @NotNull
        public final List<SidecarDisplayFeature> c(@NotNull SidecarWindowLayoutInfo info) {
            t.j(info, "info");
            try {
                try {
                    List<SidecarDisplayFeature> list = info.displayFeatures;
                    return list == null ? v.m() : list;
                } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
                    return v.m();
                }
            } catch (NoSuchFieldError unused2) {
                Object objInvoke = SidecarWindowLayoutInfo.class.getMethod("getDisplayFeatures", new Class[0]).invoke(info, new Object[0]);
                if (objInvoke != null) {
                    return (List) objInvoke;
                }
                throw new NullPointerException("null cannot be cast to non-null type kotlin.collections.List<androidx.window.sidecar.SidecarDisplayFeature>");
            }
        }

        @SuppressLint({"BanUncheckedReflection"})
        @VisibleForTesting
        public final int a(@NotNull SidecarDeviceState sidecarDeviceState) {
            t.j(sidecarDeviceState, "sidecarDeviceState");
            try {
                return sidecarDeviceState.posture;
            } catch (NoSuchFieldError unused) {
                try {
                    Object objInvoke = SidecarDeviceState.class.getMethod("getPosture", new Class[0]).invoke(sidecarDeviceState, new Object[0]);
                    if (objInvoke != null) {
                        return ((Integer) objInvoke).intValue();
                    }
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Int");
                } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused2) {
                    return 0;
                }
            }
        }

        public final int b(@NotNull SidecarDeviceState sidecarDeviceState) {
            t.j(sidecarDeviceState, "sidecarDeviceState");
            int iA = a(sidecarDeviceState);
            if (iA < 0 || iA > 4) {
                return 0;
            }
            return iA;
        }

        @SuppressLint({"BanUncheckedReflection"})
        @VisibleForTesting
        public final void d(@NotNull SidecarDeviceState sidecarDeviceState, int i10) {
            t.j(sidecarDeviceState, "sidecarDeviceState");
            try {
                try {
                    sidecarDeviceState.posture = i10;
                } catch (NoSuchFieldError unused) {
                    SidecarDeviceState.class.getMethod("setPosture", Integer.TYPE).invoke(sidecarDeviceState, Integer.valueOf(i10));
                }
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused2) {
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SidecarAdapter() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    private final boolean c(List<SidecarDisplayFeature> list, List<SidecarDisplayFeature> list2) {
        if (list == list2) {
            return true;
        }
        if (list == null || list2 == null || list.size() != list2.size()) {
            return false;
        }
        int size = list.size();
        int i10 = 0;
        while (i10 < size) {
            int i11 = i10 + 1;
            if (!b(list.get(i10), list2.get(i10))) {
                return false;
            }
            i10 = i11;
        }
        return true;
    }

    public SidecarAdapter(@NotNull SpecificationComputer.VerificationMode verificationMode) {
        t.j(verificationMode, "verificationMode");
        this.verificationMode = verificationMode;
    }

    @Nullable
    public final DisplayFeature g(@NotNull SidecarDisplayFeature feature, @NotNull SidecarDeviceState deviceState) {
        HardwareFoldingFeature.Type typeA;
        FoldingFeature.State state;
        t.j(feature, "feature");
        t.j(deviceState, "deviceState");
        SpecificationComputer.Companion companion = SpecificationComputer.Companion;
        String TAG2 = TAG;
        t.i(TAG2, "TAG");
        SidecarDisplayFeature sidecarDisplayFeature = (SidecarDisplayFeature) SpecificationComputer.Companion.b(companion, feature, TAG2, this.verificationMode, null, 4, null).c("Type must be either TYPE_FOLD or TYPE_HINGE", SidecarAdapter$translate$checkedFeature$1.INSTANCE).c("Feature bounds must not be 0", SidecarAdapter$translate$checkedFeature$2.INSTANCE).c("TYPE_FOLD must have 0 area", SidecarAdapter$translate$checkedFeature$3.INSTANCE).c("Feature be pinned to either left or top", SidecarAdapter$translate$checkedFeature$4.INSTANCE).a();
        if (sidecarDisplayFeature == null) {
            return null;
        }
        int type = sidecarDisplayFeature.getType();
        if (type == 1) {
            typeA = HardwareFoldingFeature.Type.Companion.a();
        } else {
            if (type != 2) {
                return null;
            }
            typeA = HardwareFoldingFeature.Type.Companion.b();
        }
        int iB = Companion.b(deviceState);
        if (iB == 0 || iB == 1) {
            return null;
        }
        if (iB == 2) {
            state = FoldingFeature.State.HALF_OPENED;
        } else {
            if (iB != 3 && iB == 4) {
                return null;
            }
            state = FoldingFeature.State.FLAT;
        }
        Rect rect = feature.getRect();
        t.i(rect, "feature.rect");
        return new HardwareFoldingFeature(new Bounds(rect), typeA, state);
    }

    public /* synthetic */ SidecarAdapter(SpecificationComputer.VerificationMode verificationMode, int i10, k kVar) {
        this((i10 & 1) != 0 ? SpecificationComputer.VerificationMode.QUIET : verificationMode);
    }

    private final boolean b(SidecarDisplayFeature sidecarDisplayFeature, SidecarDisplayFeature sidecarDisplayFeature2) {
        if (t.e(sidecarDisplayFeature, sidecarDisplayFeature2)) {
            return true;
        }
        if (sidecarDisplayFeature == null || sidecarDisplayFeature2 == null || sidecarDisplayFeature.getType() != sidecarDisplayFeature2.getType()) {
            return false;
        }
        return t.e(sidecarDisplayFeature.getRect(), sidecarDisplayFeature2.getRect());
    }

    public final boolean a(@Nullable SidecarDeviceState sidecarDeviceState, @Nullable SidecarDeviceState sidecarDeviceState2) {
        if (t.e(sidecarDeviceState, sidecarDeviceState2)) {
            return true;
        }
        if (sidecarDeviceState == null || sidecarDeviceState2 == null) {
            return false;
        }
        Companion companion = Companion;
        if (companion.b(sidecarDeviceState) == companion.b(sidecarDeviceState2)) {
            return true;
        }
        return false;
    }

    public final boolean d(@Nullable SidecarWindowLayoutInfo sidecarWindowLayoutInfo, @Nullable SidecarWindowLayoutInfo sidecarWindowLayoutInfo2) {
        if (t.e(sidecarWindowLayoutInfo, sidecarWindowLayoutInfo2)) {
            return true;
        }
        if (sidecarWindowLayoutInfo == null || sidecarWindowLayoutInfo2 == null) {
            return false;
        }
        Companion companion = Companion;
        return c(companion.c(sidecarWindowLayoutInfo), companion.c(sidecarWindowLayoutInfo2));
    }

    @NotNull
    public final WindowLayoutInfo e(@Nullable SidecarWindowLayoutInfo sidecarWindowLayoutInfo, @NotNull SidecarDeviceState state) {
        t.j(state, "state");
        if (sidecarWindowLayoutInfo == null) {
            return new WindowLayoutInfo(v.m());
        }
        SidecarDeviceState sidecarDeviceState = new SidecarDeviceState();
        Companion companion = Companion;
        companion.d(sidecarDeviceState, companion.b(state));
        return new WindowLayoutInfo(f(companion.c(sidecarWindowLayoutInfo), sidecarDeviceState));
    }

    @NotNull
    public final List<DisplayFeature> f(@NotNull List<SidecarDisplayFeature> sidecarDisplayFeatures, @NotNull SidecarDeviceState deviceState) {
        t.j(sidecarDisplayFeatures, "sidecarDisplayFeatures");
        t.j(deviceState, "deviceState");
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = sidecarDisplayFeatures.iterator();
        while (it.hasNext()) {
            DisplayFeature displayFeatureG = g((SidecarDisplayFeature) it.next(), deviceState);
            if (displayFeatureG != null) {
                arrayList.add(displayFeatureG);
            }
        }
        return arrayList;
    }
}
