package androidx.compose.ui.autofill;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.ExperimentalComposeUiApi;
import androidx.compose.ui.geometry.Rect;
import e8.l;
import java.util.List;
import kotlin.collections.v;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
@StabilityInferred
@ExperimentalComposeUiApi
public final class AutofillNode {
    private static int previousId;

    @NotNull
    private final List<AutofillType> autofillTypes;

    @Nullable
    private Rect boundingBox;
    private final int id;

    @Nullable
    private final l<String, l0> onFill;

    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int $stable = 8;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final int b() {
            int i10;
            synchronized (this) {
                AutofillNode.previousId++;
                i10 = AutofillNode.previousId;
            }
            return i10;
        }

        private Companion() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public AutofillNode(@NotNull List<? extends AutofillType> autofillTypes, @Nullable Rect rect, @Nullable l<? super String, l0> lVar) {
        t.j(autofillTypes, "autofillTypes");
        this.autofillTypes = autofillTypes;
        this.boundingBox = rect;
        this.onFill = lVar;
        this.id = Companion.b();
    }

    @NotNull
    public final List<AutofillType> c() {
        return this.autofillTypes;
    }

    @Nullable
    public final Rect d() {
        return this.boundingBox;
    }

    @Nullable
    public final l<String, l0> e() {
        return this.onFill;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AutofillNode)) {
            return false;
        }
        AutofillNode autofillNode = (AutofillNode) obj;
        return t.e(this.autofillTypes, autofillNode.autofillTypes) && t.e(this.boundingBox, autofillNode.boundingBox) && t.e(this.onFill, autofillNode.onFill);
    }

    public int hashCode() {
        int iHashCode = this.autofillTypes.hashCode() * 31;
        Rect rect = this.boundingBox;
        int iHashCode2 = (iHashCode + (rect != null ? rect.hashCode() : 0)) * 31;
        l<String, l0> lVar = this.onFill;
        return iHashCode2 + (lVar != null ? lVar.hashCode() : 0);
    }

    public /* synthetic */ AutofillNode(List list, Rect rect, l lVar, int i10, k kVar) {
        this((i10 & 1) != 0 ? v.m() : list, (i10 & 2) != 0 ? null : rect, lVar);
    }
}
