package androidx.compose.ui.node;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.DrawModifier;
import androidx.compose.ui.input.pointer.PointerInputModifier;
import androidx.compose.ui.layout.OnPlacedModifier;
import androidx.compose.ui.layout.OnRemeasuredModifier;
import androidx.compose.ui.layout.ParentDataModifier;
import androidx.compose.ui.semantics.SemanticsEntity;
import androidx.compose.ui.semantics.SemanticsModifier;
import java.util.Arrays;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class EntityList {
    private static final int TypeCount = 6;

    @NotNull
    private final LayoutNodeEntity<?, ?>[] entities;

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int DrawEntityType = EntityType.a(0);
    private static final int PointerInputEntityType = EntityType.a(1);
    private static final int SemanticsEntityType = EntityType.a(2);
    private static final int ParentDataEntityType = EntityType.a(3);
    private static final int OnPlacedEntityType = EntityType.a(4);
    private static final int RemeasureEntityType = EntityType.a(5);

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        public final int a() {
            return EntityList.DrawEntityType;
        }

        public final int b() {
            return EntityList.OnPlacedEntityType;
        }

        public final int c() {
            return EntityList.ParentDataEntityType;
        }

        public final int d() {
            return EntityList.PointerInputEntityType;
        }

        public final int e() {
            return EntityList.RemeasureEntityType;
        }

        public final int f() {
            return EntityList.SemanticsEntityType;
        }
    }

    public static final class EntityType<T extends LayoutNodeEntity<T, M>, M extends Modifier> {
        private final int index;

        public static <T extends LayoutNodeEntity<T, M>, M extends Modifier> int a(int i10) {
            return i10;
        }

        public static boolean b(int i10, Object obj) {
            return (obj instanceof EntityType) && i10 == ((EntityType) obj).e();
        }

        public static int c(int i10) {
            return i10;
        }

        public static String d(int i10) {
            return "EntityType(index=" + i10 + ')';
        }

        public final /* synthetic */ int e() {
            return this.index;
        }

        public boolean equals(Object obj) {
            return b(this.index, obj);
        }

        public int hashCode() {
            return c(this.index);
        }

        public String toString() {
            return d(this.index);
        }
    }

    public static final void j(LayoutNodeEntity<?, ?>[] layoutNodeEntityArr) {
        for (LayoutNodeEntity<?, ?> layoutNodeEntityD : layoutNodeEntityArr) {
            for (; layoutNodeEntityD != null; layoutNodeEntityD = layoutNodeEntityD.d()) {
                if (layoutNodeEntityD.f()) {
                    layoutNodeEntityD.h();
                }
            }
        }
        int length = layoutNodeEntityArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            layoutNodeEntityArr[i10] = null;
        }
    }

    @NotNull
    public static LayoutNodeEntity<?, ?>[] k(@NotNull LayoutNodeEntity<?, ?>[] entities) {
        t.j(entities, "entities");
        return entities;
    }

    public static boolean m(LayoutNodeEntity<?, ?>[] layoutNodeEntityArr, Object obj) {
        return (obj instanceof EntityList) && t.e(layoutNodeEntityArr, ((EntityList) obj).r());
    }

    public static int o(LayoutNodeEntity<?, ?>[] layoutNodeEntityArr) {
        return Arrays.hashCode(layoutNodeEntityArr);
    }

    public static String q(LayoutNodeEntity<?, ?>[] layoutNodeEntityArr) {
        return "EntityList(entities=" + Arrays.toString(layoutNodeEntityArr) + ')';
    }

    public boolean equals(Object obj) {
        return m(this.entities, obj);
    }

    public int hashCode() {
        return o(this.entities);
    }

    public final /* synthetic */ LayoutNodeEntity[] r() {
        return this.entities;
    }

    public String toString() {
        return q(this.entities);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static final <T extends LayoutNodeEntity<T, ?>> void g(LayoutNodeEntity<?, ?>[] layoutNodeEntityArr, T t5, int i10) {
        t5.i(layoutNodeEntityArr[i10]);
        layoutNodeEntityArr[i10] = t5;
    }

    public static final void h(LayoutNodeEntity<?, ?>[] layoutNodeEntityArr, @NotNull LayoutNodeWrapper layoutNodeWrapper, @NotNull Modifier modifier) {
        t.j(layoutNodeWrapper, "layoutNodeWrapper");
        t.j(modifier, "modifier");
        if (modifier instanceof OnPlacedModifier) {
            g(layoutNodeEntityArr, new SimpleEntity(layoutNodeWrapper, modifier), OnPlacedEntityType);
        }
        if (modifier instanceof OnRemeasuredModifier) {
            g(layoutNodeEntityArr, new SimpleEntity(layoutNodeWrapper, modifier), RemeasureEntityType);
        }
    }

    public static final void i(LayoutNodeEntity<?, ?>[] layoutNodeEntityArr, @NotNull LayoutNodeWrapper layoutNodeWrapper, @NotNull Modifier modifier) {
        t.j(layoutNodeWrapper, "layoutNodeWrapper");
        t.j(modifier, "modifier");
        if (modifier instanceof DrawModifier) {
            g(layoutNodeEntityArr, new DrawEntity(layoutNodeWrapper, (DrawModifier) modifier), DrawEntityType);
        }
        if (modifier instanceof PointerInputModifier) {
            g(layoutNodeEntityArr, new PointerInputEntity(layoutNodeWrapper, (PointerInputModifier) modifier), PointerInputEntityType);
        }
        if (modifier instanceof SemanticsModifier) {
            g(layoutNodeEntityArr, new SemanticsEntity(layoutNodeWrapper, (SemanticsModifier) modifier), SemanticsEntityType);
        }
        if (modifier instanceof ParentDataModifier) {
            g(layoutNodeEntityArr, new SimpleEntity(layoutNodeWrapper, modifier), ParentDataEntityType);
        }
    }

    public static /* synthetic */ LayoutNodeEntity[] l(LayoutNodeEntity[] layoutNodeEntityArr, int i10, k kVar) {
        if ((i10 & 1) != 0) {
            layoutNodeEntityArr = new LayoutNodeEntity[6];
        }
        return k(layoutNodeEntityArr);
    }

    public static final boolean n(LayoutNodeEntity<?, ?>[] layoutNodeEntityArr, int i10) {
        return layoutNodeEntityArr[i10] != null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    public static final <T extends LayoutNodeEntity<T, M>, M extends Modifier> T p(LayoutNodeEntity<?, ?>[] layoutNodeEntityArr, int i10) {
        return (T) layoutNodeEntityArr[i10];
    }
}
