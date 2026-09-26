package androidx.compose.foundation.text;

import androidx.compose.runtime.Applier;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.c;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.Placeholder;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import e8.a;
import e8.q;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.collections.v;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.u;

/* JADX INFO: loaded from: classes4.dex */
public final class CoreTextKt {

    @NotNull
    private static final u<List<AnnotatedString.Range<Placeholder>>, List<AnnotatedString.Range<q<String, Composer, Integer, l0>>>> EmptyInlineContent = new u<>(v.m(), v.m());

    @NotNull
    public static final TextDelegate c(@NotNull TextDelegate current, @NotNull AnnotatedString text, @NotNull TextStyle style, @NotNull Density density, @NotNull FontFamily.Resolver fontFamilyResolver, boolean z6, int i10, int i11, @NotNull List<AnnotatedString.Range<Placeholder>> placeholders) {
        t.j(current, "current");
        t.j(text, "text");
        t.j(style, "style");
        t.j(density, "density");
        t.j(fontFamilyResolver, "fontFamilyResolver");
        t.j(placeholders, "placeholders");
        if (t.e(current.k(), text) && t.e(current.j(), style)) {
            if (current.i() == z6) {
                if (TextOverflow.e(current.g(), i10)) {
                    if (current.d() == i11 && t.e(current.a(), density) && t.e(current.h(), placeholders) && current.b() == fontFamilyResolver) {
                        return current;
                    }
                }
                return new TextDelegate(text, style, i11, z6, i10, density, fontFamilyResolver, placeholders, null);
            }
            return new TextDelegate(text, style, i11, z6, i10, density, fontFamilyResolver, placeholders, null);
        }
        return new TextDelegate(text, style, i11, z6, i10, density, fontFamilyResolver, placeholders, null);
    }

    @Composable
    @ComposableInferredTarget
    public static final void a(@NotNull AnnotatedString text, @NotNull List<AnnotatedString.Range<q<String, Composer, Integer, l0>>> inlineContents, @Nullable Composer composer, int i10) {
        t.j(text, "text");
        t.j(inlineContents, "inlineContents");
        Composer composerS = composer.s(-110905764);
        int size = inlineContents.size();
        int i11 = 0;
        while (i11 < size) {
            AnnotatedString.Range<q<String, Composer, Integer, l0>> range = inlineContents.get(i11);
            q<String, Composer, Integer, l0> qVarA = range.a();
            int iB = range.b();
            int iC = range.c();
            CoreTextKt$InlineChildren$1$2 coreTextKt$InlineChildren$1$2 = new MeasurePolicy() { // from class: androidx.compose.foundation.text.CoreTextKt$InlineChildren$1$2
                @Override // androidx.compose.ui.layout.MeasurePolicy
                public /* synthetic */ int b(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i12) {
                    return c.c(this, intrinsicMeasureScope, list, i12);
                }

                @Override // androidx.compose.ui.layout.MeasurePolicy
                public /* synthetic */ int c(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i12) {
                    return c.d(this, intrinsicMeasureScope, list, i12);
                }

                @Override // androidx.compose.ui.layout.MeasurePolicy
                public /* synthetic */ int d(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i12) {
                    return c.a(this, intrinsicMeasureScope, list, i12);
                }

                @Override // androidx.compose.ui.layout.MeasurePolicy
                public /* synthetic */ int e(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i12) {
                    return c.b(this, intrinsicMeasureScope, list, i12);
                }

                @Override // androidx.compose.ui.layout.MeasurePolicy
                @NotNull
                public final MeasureResult a(@NotNull MeasureScope Layout, @NotNull List<? extends Measurable> children, long j6) {
                    t.j(Layout, "$this$Layout");
                    t.j(children, "children");
                    ArrayList arrayList = new ArrayList(children.size());
                    int size2 = children.size();
                    for (int i12 = 0; i12 < size2; i12++) {
                        arrayList.add(children.get(i12).b0(j6));
                    }
                    return MeasureScope.CC.b(Layout, Constraints.n(j6), Constraints.m(j6), null, new CoreTextKt$InlineChildren$1$2$measure$1(arrayList), 4, null);
                }
            };
            composerS.G(-1323940314);
            Modifier.Companion companion = Modifier.Companion;
            Density density = (Density) composerS.x(CompositionLocalsKt.e());
            LayoutDirection layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
            ViewConfiguration viewConfiguration = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
            ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
            a<ComposeUiNode> aVarA = companion2.a();
            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC = LayoutKt.c(companion);
            int i12 = size;
            if (!(composerS.t() instanceof Applier)) {
                ComposablesKt.c();
            }
            composerS.e();
            if (composerS.r()) {
                composerS.w(aVarA);
            } else {
                composerS.c();
            }
            composerS.L();
            Composer composerA = Updater.a(composerS);
            Updater.e(composerA, coreTextKt$InlineChildren$1$2, companion2.d());
            Updater.e(composerA, density, companion2.b());
            Updater.e(composerA, layoutDirection, companion2.c());
            Updater.e(composerA, viewConfiguration, companion2.f());
            composerS.o();
            qVarC.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
            composerS.G(2058660585);
            composerS.G(-72427749);
            qVarA.invoke(text.subSequence(iB, iC).g(), composerS, 0);
            composerS.Q();
            composerS.Q();
            composerS.d();
            composerS.Q();
            i11++;
            size = i12;
        }
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new CoreTextKt$InlineChildren$2(text, inlineContents, i10));
    }

    @NotNull
    public static final u<List<AnnotatedString.Range<Placeholder>>, List<AnnotatedString.Range<q<String, Composer, Integer, l0>>>> b(@NotNull AnnotatedString text, @NotNull Map<String, InlineTextContent> inlineContent) {
        t.j(text, "text");
        t.j(inlineContent, "inlineContent");
        if (inlineContent.isEmpty()) {
            return EmptyInlineContent;
        }
        List<AnnotatedString.Range<String>> listF = text.f(InlineTextContentKt.INLINE_CONTENT_TAG, 0, text.length());
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int size = listF.size();
        for (int i10 = 0; i10 < size; i10++) {
            AnnotatedString.Range<String> range = listF.get(i10);
            InlineTextContent inlineTextContent = inlineContent.get(range.e());
            if (inlineTextContent != null) {
                arrayList.add(new AnnotatedString.Range(inlineTextContent.b(), range.f(), range.d()));
                arrayList2.add(new AnnotatedString.Range(inlineTextContent.a(), range.f(), range.d()));
            }
        }
        return new u<>(arrayList, arrayList2);
    }

    @NotNull
    public static final TextDelegate e(@NotNull TextDelegate current, @NotNull String text, @NotNull TextStyle style, @NotNull Density density, @NotNull FontFamily.Resolver fontFamilyResolver, boolean z6, int i10, int i11) {
        t.j(current, "current");
        t.j(text, "text");
        t.j(style, "style");
        t.j(density, "density");
        t.j(fontFamilyResolver, "fontFamilyResolver");
        if (t.e(current.k().g(), text) && t.e(current.j(), style)) {
            if (current.i() == z6) {
                if (TextOverflow.e(current.g(), i10)) {
                    if (current.d() == i11 && t.e(current.a(), density) && current.b() == fontFamilyResolver) {
                        return current;
                    }
                }
                return new TextDelegate(new AnnotatedString(text, null, null, 6, null), style, i11, z6, i10, density, fontFamilyResolver, null, 128, null);
            }
            return new TextDelegate(new AnnotatedString(text, null, null, 6, null), style, i11, z6, i10, density, fontFamilyResolver, null, 128, null);
        }
        return new TextDelegate(new AnnotatedString(text, null, null, 6, null), style, i11, z6, i10, density, fontFamilyResolver, null, 128, null);
    }
}
