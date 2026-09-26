package androidx.window.layout;

import android.app.Activity;
import android.graphics.Rect;
import androidx.window.core.Bounds;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class ExtensionsWindowLayoutInfoAdapter {

    @NotNull
    public static final ExtensionsWindowLayoutInfoAdapter INSTANCE = new ExtensionsWindowLayoutInfoAdapter();

    private final boolean c(Activity activity, Bounds bounds) {
        Rect rectA = WindowMetricsCalculatorCompat.INSTANCE.a(activity).a();
        if (bounds.e()) {
            return false;
        }
        if (bounds.d() != rectA.width() && bounds.a() != rectA.height()) {
            return false;
        }
        if (bounds.d() >= rectA.width() || bounds.a() >= rectA.height()) {
            return (bounds.d() == rectA.width() && bounds.a() == rectA.height()) ? false : true;
        }
        return false;
    }

    @Nullable
    public final FoldingFeature a(@NotNull Activity activity, @NotNull androidx.window.extensions.layout.FoldingFeature oemFeature) {
        HardwareFoldingFeature.Type typeA;
        FoldingFeature.State state;
        t.j(activity, "activity");
        t.j(oemFeature, "oemFeature");
        int type = oemFeature.getType();
        if (type == 1) {
            typeA = HardwareFoldingFeature.Type.Companion.a();
        } else {
            if (type != 2) {
                return null;
            }
            typeA = HardwareFoldingFeature.Type.Companion.b();
        }
        int state2 = oemFeature.getState();
        if (state2 == 1) {
            state = FoldingFeature.State.FLAT;
        } else {
            if (state2 != 2) {
                return null;
            }
            state = FoldingFeature.State.HALF_OPENED;
        }
        Rect bounds = oemFeature.getBounds();
        t.i(bounds, "oemFeature.bounds");
        if (!c(activity, new Bounds(bounds))) {
            return null;
        }
        Rect bounds2 = oemFeature.getBounds();
        t.i(bounds2, "oemFeature.bounds");
        return new HardwareFoldingFeature(new Bounds(bounds2), typeA, state);
    }

    @NotNull
    public final WindowLayoutInfo b(@NotNull Activity activity, @NotNull androidx.window.extensions.layout.WindowLayoutInfo info) {
        FoldingFeature foldingFeatureA;
        t.j(activity, "activity");
        t.j(info, "info");
        List<androidx.window.extensions.layout.FoldingFeature> displayFeatures = info.getDisplayFeatures();
        t.i(displayFeatures, "info.displayFeatures");
        ArrayList arrayList = new ArrayList();
        for (androidx.window.extensions.layout.FoldingFeature feature : displayFeatures) {
            if (feature instanceof androidx.window.extensions.layout.FoldingFeature) {
                ExtensionsWindowLayoutInfoAdapter extensionsWindowLayoutInfoAdapter = INSTANCE;
                t.i(feature, "feature");
                foldingFeatureA = extensionsWindowLayoutInfoAdapter.a(activity, feature);
            } else {
                foldingFeatureA = null;
            }
            if (foldingFeatureA != null) {
                arrayList.add(foldingFeatureA);
            }
        }
        return new WindowLayoutInfo(arrayList);
    }

    private ExtensionsWindowLayoutInfoAdapter() {
    }
}
