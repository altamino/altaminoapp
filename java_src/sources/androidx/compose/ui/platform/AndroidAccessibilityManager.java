package androidx.compose.ui.platform;

import android.content.Context;
import android.os.Build;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public final class AndroidAccessibilityManager implements AccessibilityManager {

    @NotNull
    private static final Companion Companion = new Companion(null);

    @Deprecated
    public static final int FlagContentControls = 4;

    @Deprecated
    public static final int FlagContentIcons = 1;

    @Deprecated
    public static final int FlagContentText = 2;

    @NotNull
    private final android.view.accessibility.AccessibilityManager accessibilityManager;

    private static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public AndroidAccessibilityManager(@NotNull Context context) {
        kotlin.jvm.internal.t.j(context, "context");
        Object systemService = context.getSystemService("accessibility");
        if (systemService == null) {
            throw new NullPointerException("null cannot be cast to non-null type android.view.accessibility.AccessibilityManager");
        }
        this.accessibilityManager = (android.view.accessibility.AccessibilityManager) systemService;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // androidx.compose.ui.platform.AccessibilityManager
    public long a(long j6, boolean z6, boolean z10, boolean z11) {
        int i10;
        int i11 = z6;
        if (j6 >= 2147483647L) {
            return j6;
        }
        if (z10) {
            i10 = (z6 ? 1 : 0) | 2;
        }
        if (z11) {
            i11 = i10;
            i11 = (i11 == true ? 1 : 0) | 4;
        }
        i11 = i10;
        if (Build.VERSION.SDK_INT >= 29) {
            int iA = Api29Impl.INSTANCE.a(this.accessibilityManager, (int) j6, i11);
            if (iA != Integer.MAX_VALUE) {
                return iA;
            }
        } else if (!z11 || !this.accessibilityManager.isTouchExplorationEnabled()) {
            return j6;
        }
        return Long.MAX_VALUE;
    }
}
