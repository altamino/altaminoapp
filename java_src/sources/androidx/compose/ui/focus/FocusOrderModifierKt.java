package androidx.compose.ui.focus;

import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.s;

/* JADX INFO: loaded from: classes8.dex */
public final class FocusOrderModifierKt {

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LayoutDirection.values().length];
            iArr[LayoutDirection.Ltr.ordinal()] = 1;
            iArr[LayoutDirection.Rtl.ordinal()] = 2;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @NotNull
    public static final FocusRequester a(@NotNull FocusModifier customFocusSearch, int i10, @NotNull LayoutDirection layoutDirection) {
        FocusRequester end;
        t.j(customFocusSearch, "$this$customFocusSearch");
        t.j(layoutDirection, "layoutDirection");
        FocusDirection.Companion companion = FocusDirection.Companion;
        if (FocusDirection.l(i10, companion.d())) {
            return customFocusSearch.f().k();
        }
        if (FocusDirection.l(i10, companion.f())) {
            return customFocusSearch.f().j();
        }
        if (FocusDirection.l(i10, companion.h())) {
            return customFocusSearch.f().d();
        }
        if (FocusDirection.l(i10, companion.a())) {
            return customFocusSearch.f().f();
        }
        if (FocusDirection.l(i10, companion.c())) {
            int i11 = WhenMappings.$EnumSwitchMapping$0[layoutDirection.ordinal()];
            if (i11 == 1) {
                end = customFocusSearch.f().getStart();
            } else {
                if (i11 != 2) {
                    throw new s();
                }
                end = customFocusSearch.f().getEnd();
            }
            if (t.e(end, FocusRequester.Companion.a())) {
                end = null;
            }
            if (end == null) {
                return customFocusSearch.f().c();
            }
        } else {
            if (!FocusDirection.l(i10, companion.g())) {
                if (FocusDirection.l(i10, companion.b())) {
                    return FocusRequester.Companion.a();
                }
                if (FocusDirection.l(i10, companion.e())) {
                    return FocusRequester.Companion.a();
                }
                throw new IllegalStateException("invalid FocusDirection".toString());
            }
            int i12 = WhenMappings.$EnumSwitchMapping$0[layoutDirection.ordinal()];
            if (i12 == 1) {
                end = customFocusSearch.f().getEnd();
            } else {
                if (i12 != 2) {
                    throw new s();
                }
                end = customFocusSearch.f().getStart();
            }
            if (t.e(end, FocusRequester.Companion.a())) {
                end = null;
            }
            if (end == null) {
                return customFocusSearch.f().a();
            }
        }
        return end;
    }
}
