package androidx.compose.material.ripple;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
final class RippleHostMap {

    @NotNull
    private final Map<AndroidRippleIndicationInstance, RippleHostView> indicationToHostMap = new LinkedHashMap();

    @NotNull
    private final Map<RippleHostView, AndroidRippleIndicationInstance> hostToIndicationMap = new LinkedHashMap();

    @Nullable
    public final AndroidRippleIndicationInstance a(@NotNull RippleHostView rippleHostView) {
        t.j(rippleHostView, "rippleHostView");
        return this.hostToIndicationMap.get(rippleHostView);
    }

    @Nullable
    public final RippleHostView b(@NotNull AndroidRippleIndicationInstance indicationInstance) {
        t.j(indicationInstance, "indicationInstance");
        return this.indicationToHostMap.get(indicationInstance);
    }

    public final void c(@NotNull AndroidRippleIndicationInstance indicationInstance) {
        t.j(indicationInstance, "indicationInstance");
        RippleHostView rippleHostView = this.indicationToHostMap.get(indicationInstance);
        if (rippleHostView != null) {
            this.hostToIndicationMap.remove(rippleHostView);
        }
        this.indicationToHostMap.remove(indicationInstance);
    }

    public final void d(@NotNull AndroidRippleIndicationInstance indicationInstance, @NotNull RippleHostView rippleHostView) {
        t.j(indicationInstance, "indicationInstance");
        t.j(rippleHostView, "rippleHostView");
        this.indicationToHostMap.put(indicationInstance, rippleHostView);
        this.hostToIndicationMap.put(rippleHostView, indicationInstance);
    }
}
