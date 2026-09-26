package androidx.compose.material.ripple;

import android.content.Context;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.a0;
import kotlin.collections.v;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class RippleContainer extends ViewGroup {
    private final int MaxRippleHosts;
    private int nextHostIndex;

    @NotNull
    private final RippleHostMap rippleHostMap;

    @NotNull
    private final List<RippleHostView> rippleHosts;

    @NotNull
    private final List<RippleHostView> unusedRippleHosts;

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        setMeasuredDimension(0, 0);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RippleContainer(@NotNull Context context) {
        super(context);
        t.j(context, "context");
        this.MaxRippleHosts = 5;
        ArrayList arrayList = new ArrayList();
        this.rippleHosts = arrayList;
        ArrayList arrayList2 = new ArrayList();
        this.unusedRippleHosts = arrayList2;
        this.rippleHostMap = new RippleHostMap();
        setClipChildren(false);
        RippleHostView rippleHostView = new RippleHostView(context);
        addView(rippleHostView);
        arrayList.add(rippleHostView);
        arrayList2.add(rippleHostView);
        this.nextHostIndex = 1;
        setTag(androidx.compose.ui.R.id.hide_in_inspector_tag, Boolean.TRUE);
    }

    public final void a(@NotNull AndroidRippleIndicationInstance androidRippleIndicationInstance) {
        t.j(androidRippleIndicationInstance, "<this>");
        androidRippleIndicationInstance.n();
        RippleHostView rippleHostViewB = this.rippleHostMap.b(androidRippleIndicationInstance);
        if (rippleHostViewB != null) {
            rippleHostViewB.d();
            this.rippleHostMap.c(androidRippleIndicationInstance);
            this.unusedRippleHosts.add(rippleHostViewB);
        }
    }

    @NotNull
    public final RippleHostView b(@NotNull AndroidRippleIndicationInstance androidRippleIndicationInstance) {
        t.j(androidRippleIndicationInstance, "<this>");
        RippleHostView rippleHostViewB = this.rippleHostMap.b(androidRippleIndicationInstance);
        if (rippleHostViewB != null) {
            return rippleHostViewB;
        }
        RippleHostView rippleHostView = (RippleHostView) a0.L(this.unusedRippleHosts);
        if (rippleHostView == null) {
            if (this.nextHostIndex > v.o(this.rippleHosts)) {
                Context context = getContext();
                t.i(context, "context");
                rippleHostView = new RippleHostView(context);
                addView(rippleHostView);
                this.rippleHosts.add(rippleHostView);
            } else {
                rippleHostView = this.rippleHosts.get(this.nextHostIndex);
                AndroidRippleIndicationInstance androidRippleIndicationInstanceA = this.rippleHostMap.a(rippleHostView);
                if (androidRippleIndicationInstanceA != null) {
                    androidRippleIndicationInstanceA.n();
                    this.rippleHostMap.c(androidRippleIndicationInstanceA);
                    rippleHostView.d();
                }
            }
            int i10 = this.nextHostIndex;
            if (i10 < this.MaxRippleHosts - 1) {
                this.nextHostIndex = i10 + 1;
            } else {
                this.nextHostIndex = 0;
            }
        }
        this.rippleHostMap.d(androidRippleIndicationInstance, rippleHostView);
        return rippleHostView;
    }
}
