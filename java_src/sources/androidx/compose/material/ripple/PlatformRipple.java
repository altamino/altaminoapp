package androidx.compose.material.ripple;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Stable;
import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
@Stable
public final class PlatformRipple extends Ripple {
    public /* synthetic */ PlatformRipple(boolean z6, float f, State state, k kVar) {
        this(z6, f, state);
    }

    @Override // androidx.compose.material.ripple.Ripple
    @Composable
    @NotNull
    public RippleIndicationInstance b(@NotNull InteractionSource interactionSource, boolean z6, float f, @NotNull State<Color> color, @NotNull State<RippleAlpha> rippleAlpha, @Nullable Composer composer, int i10) {
        View rippleContainer;
        t.j(interactionSource, "interactionSource");
        t.j(color, "color");
        t.j(rippleAlpha, "rippleAlpha");
        composer.G(331259447);
        ViewGroup viewGroupC = c(composer, (i10 >> 15) & 14);
        composer.G(1643267286);
        if (viewGroupC.isInEditMode()) {
            composer.G(-3686552);
            boolean zK = composer.k(interactionSource) | composer.k(this);
            Object objH = composer.H();
            if (zK || objH == Composer.Companion.a()) {
                objH = new CommonRippleIndicationInstance(z6, f, color, rippleAlpha, null);
                composer.z(objH);
            }
            composer.Q();
            CommonRippleIndicationInstance commonRippleIndicationInstance = (CommonRippleIndicationInstance) objH;
            composer.Q();
            composer.Q();
            return commonRippleIndicationInstance;
        }
        composer.Q();
        int childCount = viewGroupC.getChildCount();
        int i11 = 0;
        while (true) {
            if (i11 >= childCount) {
                rippleContainer = null;
                break;
            }
            rippleContainer = viewGroupC.getChildAt(i11);
            if (rippleContainer instanceof RippleContainer) {
                break;
            }
            i11++;
        }
        if (rippleContainer == null) {
            Context context = viewGroupC.getContext();
            t.i(context, "view.context");
            rippleContainer = new RippleContainer(context);
            viewGroupC.addView(rippleContainer);
        }
        composer.G(-3686095);
        boolean zK2 = composer.k(interactionSource) | composer.k(this) | composer.k(rippleContainer);
        Object objH2 = composer.H();
        if (zK2 || objH2 == Composer.Companion.a()) {
            objH2 = new AndroidRippleIndicationInstance(z6, f, color, rippleAlpha, (RippleContainer) rippleContainer, null);
            composer.z(objH2);
        }
        composer.Q();
        AndroidRippleIndicationInstance androidRippleIndicationInstance = (AndroidRippleIndicationInstance) objH2;
        composer.Q();
        return androidRippleIndicationInstance;
    }

    private PlatformRipple(boolean z6, float f, State<Color> state) {
        super(z6, f, state, null);
    }

    @Composable
    private final ViewGroup c(Composer composer, int i10) {
        composer.G(-1737891121);
        Object objX = composer.x(AndroidCompositionLocals_androidKt.k());
        while (!(objX instanceof ViewGroup)) {
            ViewParent parent = ((View) objX).getParent();
            if (parent instanceof View) {
                t.i(parent, "parent");
                objX = parent;
            } else {
                throw new IllegalArgumentException(("Couldn't find a valid parent for " + objX + ". Are you overriding LocalView and providing a View that is not attached to the view hierarchy?").toString());
            }
        }
        ViewGroup viewGroup = (ViewGroup) objX;
        composer.Q();
        return viewGroup;
    }
}
