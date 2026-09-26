package androidx.compose.material;

import androidx.compose.runtime.Immutable;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DpOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.window.PopupPositionProvider;
import e8.p;
import java.util.Iterator;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import kotlin.sequences.g;
import kotlin.sequences.m;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes10.dex */
@Immutable
public final class DropdownMenuPositionProvider implements PopupPositionProvider {
    private final long contentOffset;

    @NotNull
    private final Density density;

    @NotNull
    private final p<IntRect, IntRect, l0> onPositionCalculated;

    /* JADX INFO: renamed from: androidx.compose.material.DropdownMenuPositionProvider$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements p<IntRect, IntRect, l0> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        AnonymousClass1() {
            super(2);
        }

        public final void a(@NotNull IntRect intRect, @NotNull IntRect intRect2) {
            t.j(intRect, "<anonymous parameter 0>");
            t.j(intRect2, "<anonymous parameter 1>");
        }

        @Override // e8.p
        public /* bridge */ /* synthetic */ l0 invoke(IntRect intRect, IntRect intRect2) {
            a(intRect, intRect2);
            return l0.INSTANCE;
        }
    }

    public /* synthetic */ DropdownMenuPositionProvider(long j6, Density density, p pVar, k kVar) {
        this(j6, density, pVar);
    }

    @Override // androidx.compose.ui.window.PopupPositionProvider
    public long a(@NotNull IntRect anchorBounds, long j6, @NotNull LayoutDirection layoutDirection, long j10) {
        g gVarG;
        Object obj;
        Object next;
        t.j(anchorBounds, "anchorBounds");
        t.j(layoutDirection, "layoutDirection");
        int iJ0 = this.density.j0(MenuKt.j());
        int iJ1 = this.density.j0(DpOffset.g(this.contentOffset));
        int iJ2 = this.density.j0(DpOffset.h(this.contentOffset));
        int iC = anchorBounds.c() + iJ1;
        int iD = (anchorBounds.d() - iJ1) - IntSize.g(j10);
        int iG = IntSize.g(j6) - IntSize.g(j10);
        if (layoutDirection == LayoutDirection.Ltr) {
            Integer[] numArr = new Integer[3];
            numArr[0] = Integer.valueOf(iC);
            numArr[1] = Integer.valueOf(iD);
            if (anchorBounds.c() < 0) {
                iG = 0;
            }
            numArr[2] = Integer.valueOf(iG);
            gVarG = m.g(numArr);
        } else {
            Integer[] numArr2 = new Integer[3];
            numArr2[0] = Integer.valueOf(iD);
            numArr2[1] = Integer.valueOf(iC);
            if (anchorBounds.d() <= IntSize.g(j6)) {
                iG = 0;
            }
            numArr2[2] = Integer.valueOf(iG);
            gVarG = m.g(numArr2);
        }
        Iterator it = gVarG.iterator();
        while (true) {
            obj = null;
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            int iIntValue = ((Number) next).intValue();
            if (iIntValue >= 0 && iIntValue + IntSize.g(j10) <= IntSize.g(j6)) {
                break;
            }
        }
        Integer num = (Integer) next;
        if (num != null) {
            iD = num.intValue();
        }
        int iMax = Math.max(anchorBounds.a() + iJ2, iJ0);
        int iE = (anchorBounds.e() - iJ2) - IntSize.f(j10);
        for (Object obj2 : m.g(Integer.valueOf(iMax), Integer.valueOf(iE), Integer.valueOf(anchorBounds.e() - (IntSize.f(j10) / 2)), Integer.valueOf((IntSize.f(j6) - IntSize.f(j10)) - iJ0))) {
            int iIntValue2 = ((Number) obj2).intValue();
            if (iIntValue2 >= iJ0 && iIntValue2 + IntSize.f(j10) <= IntSize.f(j6) - iJ0) {
                obj = obj2;
                break;
            }
        }
        Integer num2 = (Integer) obj;
        if (num2 != null) {
            iE = num2.intValue();
        }
        this.onPositionCalculated.invoke(anchorBounds, new IntRect(iD, iE, IntSize.g(j10) + iD, IntSize.f(j10) + iE));
        return IntOffsetKt.a(iD, iE);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DropdownMenuPositionProvider)) {
            return false;
        }
        DropdownMenuPositionProvider dropdownMenuPositionProvider = (DropdownMenuPositionProvider) obj;
        return DpOffset.f(this.contentOffset, dropdownMenuPositionProvider.contentOffset) && t.e(this.density, dropdownMenuPositionProvider.density) && t.e(this.onPositionCalculated, dropdownMenuPositionProvider.onPositionCalculated);
    }

    public int hashCode() {
        return (((DpOffset.i(this.contentOffset) * 31) + this.density.hashCode()) * 31) + this.onPositionCalculated.hashCode();
    }

    @NotNull
    public String toString() {
        return "DropdownMenuPositionProvider(contentOffset=" + ((Object) DpOffset.j(this.contentOffset)) + ", density=" + this.density + ", onPositionCalculated=" + this.onPositionCalculated + ')';
    }

    /* JADX WARN: Multi-variable type inference failed */
    private DropdownMenuPositionProvider(long j6, Density density, p<? super IntRect, ? super IntRect, l0> pVar) {
        this.contentOffset = j6;
        this.density = density;
        this.onPositionCalculated = pVar;
    }

    public /* synthetic */ DropdownMenuPositionProvider(long j6, Density density, p pVar, int i10, k kVar) {
        this(j6, density, (i10 & 4) != 0 ? AnonymousClass1.INSTANCE : pVar, null);
    }
}
