package androidx.compose.ui.semantics;

import androidx.compose.ui.state.ToggleableState;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.ImeAction;
import e8.a;
import e8.l;
import e8.p;
import e8.q;
import java.util.List;
import kotlin.collections.u;
import kotlin.jvm.internal.a0;
import kotlin.jvm.internal.q0;
import kotlin.jvm.internal.t;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
public final class SemanticsPropertiesKt {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {q0.e(new a0(SemanticsPropertiesKt.class, "stateDescription", "getStateDescription(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Ljava/lang/String;", 1)), q0.e(new a0(SemanticsPropertiesKt.class, "progressBarRangeInfo", "getProgressBarRangeInfo(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/semantics/ProgressBarRangeInfo;", 1)), q0.e(new a0(SemanticsPropertiesKt.class, "paneTitle", "getPaneTitle(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Ljava/lang/String;", 1)), q0.e(new a0(SemanticsPropertiesKt.class, "liveRegion", "getLiveRegion(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)I", 1)), q0.e(new a0(SemanticsPropertiesKt.class, "focused", "getFocused(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Z", 1)), q0.e(new a0(SemanticsPropertiesKt.class, "horizontalScrollAxisRange", "getHorizontalScrollAxisRange(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/semantics/ScrollAxisRange;", 1)), q0.e(new a0(SemanticsPropertiesKt.class, "verticalScrollAxisRange", "getVerticalScrollAxisRange(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/semantics/ScrollAxisRange;", 1)), q0.e(new a0(SemanticsPropertiesKt.class, "role", "getRole(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)I", 1)), q0.e(new a0(SemanticsPropertiesKt.class, "testTag", "getTestTag(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Ljava/lang/String;", 1)), q0.e(new a0(SemanticsPropertiesKt.class, "editableText", "getEditableText(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/text/AnnotatedString;", 1)), q0.e(new a0(SemanticsPropertiesKt.class, "textSelectionRange", "getTextSelectionRange(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)J", 1)), q0.e(new a0(SemanticsPropertiesKt.class, "imeAction", "getImeAction(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)I", 1)), q0.e(new a0(SemanticsPropertiesKt.class, "selected", "getSelected(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Z", 1)), q0.e(new a0(SemanticsPropertiesKt.class, "collectionInfo", "getCollectionInfo(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/semantics/CollectionInfo;", 1)), q0.e(new a0(SemanticsPropertiesKt.class, "collectionItemInfo", "getCollectionItemInfo(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/semantics/CollectionItemInfo;", 1)), q0.e(new a0(SemanticsPropertiesKt.class, "toggleableState", "getToggleableState(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/state/ToggleableState;", 1)), q0.e(new a0(SemanticsPropertiesKt.class, "customActions", "getCustomActions(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Ljava/util/List;", 1))};

    @NotNull
    private static final SemanticsPropertyKey collectionInfo$delegate;

    @NotNull
    private static final SemanticsPropertyKey collectionItemInfo$delegate;

    @NotNull
    private static final SemanticsPropertyKey customActions$delegate;

    @NotNull
    private static final SemanticsPropertyKey editableText$delegate;

    @NotNull
    private static final SemanticsPropertyKey focused$delegate;

    @NotNull
    private static final SemanticsPropertyKey horizontalScrollAxisRange$delegate;

    @NotNull
    private static final SemanticsPropertyKey imeAction$delegate;

    @NotNull
    private static final SemanticsPropertyKey liveRegion$delegate;

    @NotNull
    private static final SemanticsPropertyKey paneTitle$delegate;

    @NotNull
    private static final SemanticsPropertyKey progressBarRangeInfo$delegate;

    @NotNull
    private static final SemanticsPropertyKey role$delegate;

    @NotNull
    private static final SemanticsPropertyKey selected$delegate;

    @NotNull
    private static final SemanticsPropertyKey stateDescription$delegate;

    @NotNull
    private static final SemanticsPropertyKey testTag$delegate;

    @NotNull
    private static final SemanticsPropertyKey textSelectionRange$delegate;

    @NotNull
    private static final SemanticsPropertyKey toggleableState$delegate;

    @NotNull
    private static final SemanticsPropertyKey verticalScrollAxisRange$delegate;

    static {
        SemanticsProperties semanticsProperties = SemanticsProperties.INSTANCE;
        stateDescription$delegate = semanticsProperties.v();
        progressBarRangeInfo$delegate = semanticsProperties.r();
        paneTitle$delegate = semanticsProperties.p();
        liveRegion$delegate = semanticsProperties.o();
        focused$delegate = semanticsProperties.g();
        horizontalScrollAxisRange$delegate = semanticsProperties.i();
        verticalScrollAxisRange$delegate = semanticsProperties.A();
        role$delegate = semanticsProperties.s();
        testTag$delegate = semanticsProperties.w();
        editableText$delegate = semanticsProperties.e();
        textSelectionRange$delegate = semanticsProperties.y();
        imeAction$delegate = semanticsProperties.j();
        selected$delegate = semanticsProperties.u();
        collectionInfo$delegate = semanticsProperties.a();
        collectionItemInfo$delegate = semanticsProperties.b();
        toggleableState$delegate = semanticsProperties.z();
        customActions$delegate = SemanticsActions.INSTANCE.c();
    }

    public static final void A(@NotNull SemanticsPropertyReceiver semanticsPropertyReceiver, @Nullable String str, @Nullable p<? super Float, ? super Float, Boolean> pVar) {
        t.j(semanticsPropertyReceiver, "<this>");
        semanticsPropertyReceiver.a(SemanticsActions.INSTANCE.l(), new AccessibilityAction(str, pVar));
    }

    public static /* synthetic */ void B(SemanticsPropertyReceiver semanticsPropertyReceiver, String str, p pVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = null;
        }
        A(semanticsPropertyReceiver, str, pVar);
    }

    public static final void C(@NotNull SemanticsPropertyReceiver semanticsPropertyReceiver, @Nullable String str, @NotNull l<? super Integer, Boolean> action) {
        t.j(semanticsPropertyReceiver, "<this>");
        t.j(action, "action");
        semanticsPropertyReceiver.a(SemanticsActions.INSTANCE.m(), new AccessibilityAction(str, action));
    }

    public static /* synthetic */ void D(SemanticsPropertyReceiver semanticsPropertyReceiver, String str, l lVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = null;
        }
        C(semanticsPropertyReceiver, str, lVar);
    }

    public static final void E(@NotNull SemanticsPropertyReceiver semanticsPropertyReceiver) {
        t.j(semanticsPropertyReceiver, "<this>");
        semanticsPropertyReceiver.a(SemanticsProperties.INSTANCE.t(), l0.INSTANCE);
    }

    public static final void F(@NotNull SemanticsPropertyReceiver semanticsPropertyReceiver, @NotNull CollectionInfo collectionInfo) {
        t.j(semanticsPropertyReceiver, "<this>");
        t.j(collectionInfo, "<set-?>");
        collectionInfo$delegate.c(semanticsPropertyReceiver, $$delegatedProperties[13], collectionInfo);
    }

    public static final void G(@NotNull SemanticsPropertyReceiver semanticsPropertyReceiver, @NotNull String value) {
        t.j(semanticsPropertyReceiver, "<this>");
        t.j(value, "value");
        semanticsPropertyReceiver.a(SemanticsProperties.INSTANCE.c(), u.e(value));
    }

    public static final void H(@NotNull SemanticsPropertyReceiver semanticsPropertyReceiver, @NotNull AnnotatedString annotatedString) {
        t.j(semanticsPropertyReceiver, "<this>");
        t.j(annotatedString, "<set-?>");
        editableText$delegate.c(semanticsPropertyReceiver, $$delegatedProperties[9], annotatedString);
    }

    public static final void I(@NotNull SemanticsPropertyReceiver semanticsPropertyReceiver, boolean z6) {
        t.j(semanticsPropertyReceiver, "<this>");
        focused$delegate.c(semanticsPropertyReceiver, $$delegatedProperties[4], Boolean.valueOf(z6));
    }

    public static final void J(@NotNull SemanticsPropertyReceiver semanticsPropertyReceiver, @NotNull ScrollAxisRange scrollAxisRange) {
        t.j(semanticsPropertyReceiver, "<this>");
        t.j(scrollAxisRange, "<set-?>");
        horizontalScrollAxisRange$delegate.c(semanticsPropertyReceiver, $$delegatedProperties[5], scrollAxisRange);
    }

    public static final void K(@NotNull SemanticsPropertyReceiver imeAction, int i10) {
        t.j(imeAction, "$this$imeAction");
        imeAction$delegate.c(imeAction, $$delegatedProperties[11], ImeAction.i(i10));
    }

    public static final void L(@NotNull SemanticsPropertyReceiver liveRegion, int i10) {
        t.j(liveRegion, "$this$liveRegion");
        liveRegion$delegate.c(liveRegion, $$delegatedProperties[3], LiveRegionMode.c(i10));
    }

    public static final void M(@NotNull SemanticsPropertyReceiver semanticsPropertyReceiver, @NotNull String str) {
        t.j(semanticsPropertyReceiver, "<this>");
        t.j(str, "<set-?>");
        paneTitle$delegate.c(semanticsPropertyReceiver, $$delegatedProperties[2], str);
    }

    public static final void N(@NotNull SemanticsPropertyReceiver semanticsPropertyReceiver, @Nullable String str, @Nullable l<? super Float, Boolean> lVar) {
        t.j(semanticsPropertyReceiver, "<this>");
        semanticsPropertyReceiver.a(SemanticsActions.INSTANCE.n(), new AccessibilityAction(str, lVar));
    }

    public static /* synthetic */ void O(SemanticsPropertyReceiver semanticsPropertyReceiver, String str, l lVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = null;
        }
        N(semanticsPropertyReceiver, str, lVar);
    }

    public static final void P(@NotNull SemanticsPropertyReceiver semanticsPropertyReceiver, @NotNull ProgressBarRangeInfo progressBarRangeInfo) {
        t.j(semanticsPropertyReceiver, "<this>");
        t.j(progressBarRangeInfo, "<set-?>");
        progressBarRangeInfo$delegate.c(semanticsPropertyReceiver, $$delegatedProperties[1], progressBarRangeInfo);
    }

    public static final void Q(@NotNull SemanticsPropertyReceiver role, int i10) {
        t.j(role, "$this$role");
        role$delegate.c(role, $$delegatedProperties[7], Role.g(i10));
    }

    public static final void R(@NotNull SemanticsPropertyReceiver semanticsPropertyReceiver, boolean z6) {
        t.j(semanticsPropertyReceiver, "<this>");
        selected$delegate.c(semanticsPropertyReceiver, $$delegatedProperties[12], Boolean.valueOf(z6));
    }

    public static final void S(@NotNull SemanticsPropertyReceiver semanticsPropertyReceiver, @Nullable String str, @Nullable q<? super Integer, ? super Integer, ? super Boolean, Boolean> qVar) {
        t.j(semanticsPropertyReceiver, "<this>");
        semanticsPropertyReceiver.a(SemanticsActions.INSTANCE.o(), new AccessibilityAction(str, qVar));
    }

    public static /* synthetic */ void T(SemanticsPropertyReceiver semanticsPropertyReceiver, String str, q qVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = null;
        }
        S(semanticsPropertyReceiver, str, qVar);
    }

    public static final void U(@NotNull SemanticsPropertyReceiver semanticsPropertyReceiver, @NotNull String str) {
        t.j(semanticsPropertyReceiver, "<this>");
        t.j(str, "<set-?>");
        testTag$delegate.c(semanticsPropertyReceiver, $$delegatedProperties[8], str);
    }

    public static final void V(@NotNull SemanticsPropertyReceiver semanticsPropertyReceiver, @NotNull AnnotatedString value) {
        t.j(semanticsPropertyReceiver, "<this>");
        t.j(value, "value");
        semanticsPropertyReceiver.a(SemanticsProperties.INSTANCE.x(), u.e(value));
    }

    public static final void W(@NotNull SemanticsPropertyReceiver semanticsPropertyReceiver, @Nullable String str, @Nullable l<? super AnnotatedString, Boolean> lVar) {
        t.j(semanticsPropertyReceiver, "<this>");
        semanticsPropertyReceiver.a(SemanticsActions.INSTANCE.p(), new AccessibilityAction(str, lVar));
    }

    public static /* synthetic */ void X(SemanticsPropertyReceiver semanticsPropertyReceiver, String str, l lVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = null;
        }
        W(semanticsPropertyReceiver, str, lVar);
    }

    public static final void Y(@NotNull SemanticsPropertyReceiver textSelectionRange, long j6) {
        t.j(textSelectionRange, "$this$textSelectionRange");
        textSelectionRange$delegate.c(textSelectionRange, $$delegatedProperties[10], TextRange.b(j6));
    }

    public static final void Z(@NotNull SemanticsPropertyReceiver semanticsPropertyReceiver, @NotNull ToggleableState toggleableState) {
        t.j(semanticsPropertyReceiver, "<this>");
        t.j(toggleableState, "<set-?>");
        toggleableState$delegate.c(semanticsPropertyReceiver, $$delegatedProperties[15], toggleableState);
    }

    public static final void a(@NotNull SemanticsPropertyReceiver semanticsPropertyReceiver, @Nullable String str, @Nullable a<Boolean> aVar) {
        t.j(semanticsPropertyReceiver, "<this>");
        semanticsPropertyReceiver.a(SemanticsActions.INSTANCE.a(), new AccessibilityAction(str, aVar));
    }

    public static final void a0(@NotNull SemanticsPropertyReceiver semanticsPropertyReceiver, @NotNull ScrollAxisRange scrollAxisRange) {
        t.j(semanticsPropertyReceiver, "<this>");
        t.j(scrollAxisRange, "<set-?>");
        verticalScrollAxisRange$delegate.c(semanticsPropertyReceiver, $$delegatedProperties[6], scrollAxisRange);
    }

    public static /* synthetic */ void b(SemanticsPropertyReceiver semanticsPropertyReceiver, String str, a aVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = null;
        }
        a(semanticsPropertyReceiver, str, aVar);
    }

    public static final void c(@NotNull SemanticsPropertyReceiver semanticsPropertyReceiver, @Nullable String str, @Nullable a<Boolean> aVar) {
        t.j(semanticsPropertyReceiver, "<this>");
        semanticsPropertyReceiver.a(SemanticsActions.INSTANCE.b(), new AccessibilityAction(str, aVar));
    }

    public static /* synthetic */ void d(SemanticsPropertyReceiver semanticsPropertyReceiver, String str, a aVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = null;
        }
        c(semanticsPropertyReceiver, str, aVar);
    }

    public static final void e(@NotNull SemanticsPropertyReceiver semanticsPropertyReceiver, @Nullable String str, @Nullable a<Boolean> aVar) {
        t.j(semanticsPropertyReceiver, "<this>");
        semanticsPropertyReceiver.a(SemanticsActions.INSTANCE.d(), new AccessibilityAction(str, aVar));
    }

    public static /* synthetic */ void f(SemanticsPropertyReceiver semanticsPropertyReceiver, String str, a aVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = null;
        }
        e(semanticsPropertyReceiver, str, aVar);
    }

    public static final void g(@NotNull SemanticsPropertyReceiver semanticsPropertyReceiver) {
        t.j(semanticsPropertyReceiver, "<this>");
        semanticsPropertyReceiver.a(SemanticsProperties.INSTANCE.m(), l0.INSTANCE);
    }

    public static final void h(@NotNull SemanticsPropertyReceiver semanticsPropertyReceiver) {
        t.j(semanticsPropertyReceiver, "<this>");
        semanticsPropertyReceiver.a(SemanticsProperties.INSTANCE.d(), l0.INSTANCE);
    }

    public static final void i(@NotNull SemanticsPropertyReceiver semanticsPropertyReceiver, @Nullable String str, @Nullable a<Boolean> aVar) {
        t.j(semanticsPropertyReceiver, "<this>");
        semanticsPropertyReceiver.a(SemanticsActions.INSTANCE.e(), new AccessibilityAction(str, aVar));
    }

    public static /* synthetic */ void j(SemanticsPropertyReceiver semanticsPropertyReceiver, String str, a aVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = null;
        }
        i(semanticsPropertyReceiver, str, aVar);
    }

    public static final void k(@NotNull SemanticsPropertyReceiver semanticsPropertyReceiver, @NotNull String description) {
        t.j(semanticsPropertyReceiver, "<this>");
        t.j(description, "description");
        semanticsPropertyReceiver.a(SemanticsProperties.INSTANCE.f(), description);
    }

    public static final void l(@NotNull SemanticsPropertyReceiver semanticsPropertyReceiver, @Nullable String str, @Nullable a<Boolean> aVar) {
        t.j(semanticsPropertyReceiver, "<this>");
        semanticsPropertyReceiver.a(SemanticsActions.INSTANCE.f(), new AccessibilityAction(str, aVar));
    }

    public static /* synthetic */ void m(SemanticsPropertyReceiver semanticsPropertyReceiver, String str, a aVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = null;
        }
        l(semanticsPropertyReceiver, str, aVar);
    }

    public static final void n(@NotNull SemanticsPropertyReceiver semanticsPropertyReceiver, @Nullable String str, @Nullable l<? super List<TextLayoutResult>, Boolean> lVar) {
        t.j(semanticsPropertyReceiver, "<this>");
        semanticsPropertyReceiver.a(SemanticsActions.INSTANCE.g(), new AccessibilityAction(str, lVar));
    }

    public static /* synthetic */ void o(SemanticsPropertyReceiver semanticsPropertyReceiver, String str, l lVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = null;
        }
        n(semanticsPropertyReceiver, str, lVar);
    }

    public static final void p(@NotNull SemanticsPropertyReceiver semanticsPropertyReceiver, @NotNull l<Object, Integer> mapping) {
        t.j(semanticsPropertyReceiver, "<this>");
        t.j(mapping, "mapping");
        semanticsPropertyReceiver.a(SemanticsProperties.INSTANCE.k(), mapping);
    }

    public static final void q(@NotNull SemanticsPropertyReceiver semanticsPropertyReceiver, @Nullable String str, @Nullable a<Boolean> aVar) {
        t.j(semanticsPropertyReceiver, "<this>");
        semanticsPropertyReceiver.a(SemanticsActions.INSTANCE.h(), new AccessibilityAction(str, aVar));
    }

    public static /* synthetic */ void r(SemanticsPropertyReceiver semanticsPropertyReceiver, String str, a aVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = null;
        }
        q(semanticsPropertyReceiver, str, aVar);
    }

    public static final void s(@NotNull SemanticsPropertyReceiver semanticsPropertyReceiver, @Nullable String str, @Nullable a<Boolean> aVar) {
        t.j(semanticsPropertyReceiver, "<this>");
        semanticsPropertyReceiver.a(SemanticsActions.INSTANCE.i(), new AccessibilityAction(str, aVar));
    }

    public static /* synthetic */ void t(SemanticsPropertyReceiver semanticsPropertyReceiver, String str, a aVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = null;
        }
        s(semanticsPropertyReceiver, str, aVar);
    }

    public static final void u(@NotNull SemanticsPropertyReceiver semanticsPropertyReceiver) {
        t.j(semanticsPropertyReceiver, "<this>");
        semanticsPropertyReceiver.a(SemanticsProperties.INSTANCE.q(), l0.INSTANCE);
    }

    public static final void v(@NotNull SemanticsPropertyReceiver semanticsPropertyReceiver, @Nullable String str, @Nullable a<Boolean> aVar) {
        t.j(semanticsPropertyReceiver, "<this>");
        semanticsPropertyReceiver.a(SemanticsActions.INSTANCE.j(), new AccessibilityAction(str, aVar));
    }

    public static /* synthetic */ void w(SemanticsPropertyReceiver semanticsPropertyReceiver, String str, a aVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = null;
        }
        v(semanticsPropertyReceiver, str, aVar);
    }

    public static final void x(@NotNull SemanticsPropertyReceiver semanticsPropertyReceiver) {
        t.j(semanticsPropertyReceiver, "<this>");
        semanticsPropertyReceiver.a(SemanticsProperties.INSTANCE.n(), l0.INSTANCE);
    }

    public static final void y(@NotNull SemanticsPropertyReceiver semanticsPropertyReceiver, @Nullable String str, @Nullable a<Boolean> aVar) {
        t.j(semanticsPropertyReceiver, "<this>");
        semanticsPropertyReceiver.a(SemanticsActions.INSTANCE.k(), new AccessibilityAction(str, aVar));
    }

    public static /* synthetic */ void z(SemanticsPropertyReceiver semanticsPropertyReceiver, String str, a aVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = null;
        }
        y(semanticsPropertyReceiver, str, aVar);
    }
}
