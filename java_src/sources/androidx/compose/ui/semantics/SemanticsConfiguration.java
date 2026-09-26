package androidx.compose.ui.semantics;

import androidx.compose.foundation.c;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.platform.JvmActuals_jvmKt;
import f8.a;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.g;

/* JADX INFO: loaded from: classes3.dex */
@StabilityInferred
public final class SemanticsConfiguration implements SemanticsPropertyReceiver, Iterable<Map.Entry<? extends SemanticsPropertyKey<?>, ? extends Object>>, a {
    public static final int $stable = 8;
    private boolean isClearingSemantics;
    private boolean isMergingSemanticsOfDescendants;

    @NotNull
    private final Map<SemanticsPropertyKey<?>, Object> props = new LinkedHashMap();

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SemanticsConfiguration)) {
            return false;
        }
        SemanticsConfiguration semanticsConfiguration = (SemanticsConfiguration) obj;
        return t.e(this.props, semanticsConfiguration.props) && this.isMergingSemanticsOfDescendants == semanticsConfiguration.isMergingSemanticsOfDescendants && this.isClearingSemantics == semanticsConfiguration.isClearingSemantics;
    }

    public final boolean m() {
        return this.isClearingSemantics;
    }

    public final boolean p() {
        return this.isMergingSemanticsOfDescendants;
    }

    public final void r(boolean z6) {
        this.isClearingSemantics = z6;
    }

    public final void s(boolean z6) {
        this.isMergingSemanticsOfDescendants = z6;
    }

    @Override // androidx.compose.ui.semantics.SemanticsPropertyReceiver
    public <T> void a(@NotNull SemanticsPropertyKey<T> key, T t5) {
        t.j(key, "key");
        this.props.put(key, t5);
    }

    public final void b(@NotNull SemanticsConfiguration peer) {
        t.j(peer, "peer");
        if (peer.isMergingSemanticsOfDescendants) {
            this.isMergingSemanticsOfDescendants = true;
        }
        if (peer.isClearingSemantics) {
            this.isClearingSemantics = true;
        }
        for (Map.Entry<SemanticsPropertyKey<?>, Object> entry : peer.props.entrySet()) {
            SemanticsPropertyKey<?> key = entry.getKey();
            Object value = entry.getValue();
            if (!this.props.containsKey(key)) {
                this.props.put(key, value);
            } else if (value instanceof AccessibilityAction) {
                Object obj = this.props.get(key);
                if (obj == null) {
                    throw new NullPointerException("null cannot be cast to non-null type androidx.compose.ui.semantics.AccessibilityAction<*>");
                }
                AccessibilityAction accessibilityAction = (AccessibilityAction) obj;
                Map<SemanticsPropertyKey<?>, Object> map = this.props;
                String strB = accessibilityAction.b();
                if (strB == null) {
                    strB = ((AccessibilityAction) value).b();
                }
                g gVarA = accessibilityAction.a();
                if (gVarA == null) {
                    gVarA = ((AccessibilityAction) value).a();
                }
                map.put(key, new AccessibilityAction(strB, gVarA));
            } else {
                continue;
            }
        }
    }

    public final <T> boolean c(@NotNull SemanticsPropertyKey<T> key) {
        t.j(key, "key");
        return this.props.containsKey(key);
    }

    @NotNull
    public final SemanticsConfiguration e() {
        SemanticsConfiguration semanticsConfiguration = new SemanticsConfiguration();
        semanticsConfiguration.isMergingSemanticsOfDescendants = this.isMergingSemanticsOfDescendants;
        semanticsConfiguration.isClearingSemantics = this.isClearingSemantics;
        semanticsConfiguration.props.putAll(this.props);
        return semanticsConfiguration;
    }

    public final <T> T f(@NotNull SemanticsPropertyKey<T> key) {
        t.j(key, "key");
        T t5 = (T) this.props.get(key);
        if (t5 != null) {
            return t5;
        }
        throw new IllegalStateException("Key not present: " + key + " - consider getOrElse or getOrNull");
    }

    public final <T> T g(@NotNull SemanticsPropertyKey<T> key, @NotNull e8.a<? extends T> defaultValue) {
        t.j(key, "key");
        t.j(defaultValue, "defaultValue");
        T t5 = (T) this.props.get(key);
        return t5 == null ? defaultValue.invoke() : t5;
    }

    public int hashCode() {
        return (((this.props.hashCode() * 31) + c.a(this.isMergingSemanticsOfDescendants)) * 31) + c.a(this.isClearingSemantics);
    }

    @Override // java.lang.Iterable
    @NotNull
    public Iterator<Map.Entry<? extends SemanticsPropertyKey<?>, ? extends Object>> iterator() {
        return this.props.entrySet().iterator();
    }

    @Nullable
    public final <T> T j(@NotNull SemanticsPropertyKey<T> key, @NotNull e8.a<? extends T> defaultValue) {
        t.j(key, "key");
        t.j(defaultValue, "defaultValue");
        T t5 = (T) this.props.get(key);
        return t5 == null ? defaultValue.invoke() : t5;
    }

    public final void q(@NotNull SemanticsConfiguration child) {
        t.j(child, "child");
        for (Map.Entry<SemanticsPropertyKey<?>, Object> entry : child.props.entrySet()) {
            SemanticsPropertyKey<?> key = entry.getKey();
            Object objB = key.b(this.props.get(key), entry.getValue());
            if (objB != null) {
                this.props.put(key, objB);
            }
        }
    }

    @NotNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        String str = "";
        if (this.isMergingSemanticsOfDescendants) {
            sb.append("");
            sb.append("mergeDescendants=true");
            str = ", ";
        }
        if (this.isClearingSemantics) {
            sb.append(str);
            sb.append("isClearingSemantics=true");
            str = ", ";
        }
        for (Map.Entry<SemanticsPropertyKey<?>, Object> entry : this.props.entrySet()) {
            SemanticsPropertyKey<?> key = entry.getKey();
            Object value = entry.getValue();
            sb.append(str);
            sb.append(key.a());
            sb.append(" : ");
            sb.append(value);
            str = ", ";
        }
        return JvmActuals_jvmKt.a(this, null) + "{ " + ((Object) sb) + " }";
    }
}
