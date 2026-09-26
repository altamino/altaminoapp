package androidx.compose.foundation.text;

import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import androidx.compose.ui.text.input.ImeOptions;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.TransformedText;
import e8.a;
import e8.l;
import e8.q;
import j8.o;
import java.util.List;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class CoreTextFieldKt$CoreTextField$semanticsModifier$1 extends v implements l<SemanticsPropertyReceiver, l0> {
    final /* synthetic */ boolean $enabled;
    final /* synthetic */ FocusRequester $focusRequester;
    final /* synthetic */ ImeOptions $imeOptions;
    final /* synthetic */ boolean $isPassword;
    final /* synthetic */ TextFieldSelectionManager $manager;
    final /* synthetic */ OffsetMapping $offsetMapping;
    final /* synthetic */ boolean $readOnly;
    final /* synthetic */ TextFieldState $state;
    final /* synthetic */ TransformedText $transformedText;
    final /* synthetic */ TextFieldValue $value;

    /* JADX INFO: renamed from: androidx.compose.foundation.text.CoreTextFieldKt$CoreTextField$semanticsModifier$1$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements l<List<TextLayoutResult>, Boolean> {
        final /* synthetic */ TextFieldState $state;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(TextFieldState textFieldState) {
            super(1);
            this.$state = textFieldState;
        }

        @Override // e8.l
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke(@NotNull List<TextLayoutResult> it) {
            boolean z6;
            t.j(it, "it");
            if (this.$state.g() != null) {
                TextLayoutResultProxy textLayoutResultProxyG = this.$state.g();
                t.g(textLayoutResultProxyG);
                it.add(textLayoutResultProxyG.i());
                z6 = true;
            } else {
                z6 = false;
            }
            return Boolean.valueOf(z6);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.CoreTextFieldKt$CoreTextField$semanticsModifier$1$2, reason: invalid class name */
    static final class AnonymousClass2 extends v implements l<AnnotatedString, Boolean> {
        final /* synthetic */ TextFieldState $state;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(TextFieldState textFieldState) {
            super(1);
            this.$state = textFieldState;
        }

        @Override // e8.l
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke(@NotNull AnnotatedString it) {
            t.j(it, "it");
            this.$state.i().invoke(new TextFieldValue(it.g(), TextRangeKt.a(it.g().length()), (TextRange) null, 4, (k) null));
            return Boolean.TRUE;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.CoreTextFieldKt$CoreTextField$semanticsModifier$1$3, reason: invalid class name */
    static final class AnonymousClass3 extends v implements q<Integer, Integer, Boolean, Boolean> {
        final /* synthetic */ boolean $enabled;
        final /* synthetic */ TextFieldSelectionManager $manager;
        final /* synthetic */ OffsetMapping $offsetMapping;
        final /* synthetic */ TextFieldState $state;
        final /* synthetic */ TextFieldValue $value;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass3(OffsetMapping offsetMapping, boolean z6, TextFieldValue textFieldValue, TextFieldSelectionManager textFieldSelectionManager, TextFieldState textFieldState) {
            super(3);
            this.$offsetMapping = offsetMapping;
            this.$enabled = z6;
            this.$value = textFieldValue;
            this.$manager = textFieldSelectionManager;
            this.$state = textFieldState;
        }

        @NotNull
        public final Boolean a(int i10, int i11, boolean z6) {
            if (!z6) {
                i10 = this.$offsetMapping.a(i10);
            }
            if (!z6) {
                i11 = this.$offsetMapping.a(i11);
            }
            boolean z10 = false;
            if (this.$enabled && (i10 != TextRange.n(this.$value.g()) || i11 != TextRange.i(this.$value.g()))) {
                if (o.j(i10, i11) < 0 || o.e(i10, i11) > this.$value.e().length()) {
                    this.$manager.s();
                } else {
                    if (z6 || i10 == i11) {
                        this.$manager.s();
                    } else {
                        this.$manager.r();
                    }
                    this.$state.i().invoke(new TextFieldValue(this.$value.e(), TextRangeKt.b(i10, i11), (TextRange) null, 4, (k) null));
                    z10 = true;
                }
            }
            return Boolean.valueOf(z10);
        }

        @Override // e8.q
        public /* bridge */ /* synthetic */ Boolean invoke(Integer num, Integer num2, Boolean bool) {
            return a(num.intValue(), num2.intValue(), bool.booleanValue());
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.CoreTextFieldKt$CoreTextField$semanticsModifier$1$4, reason: invalid class name */
    static final class AnonymousClass4 extends v implements a<Boolean> {
        final /* synthetic */ FocusRequester $focusRequester;
        final /* synthetic */ boolean $readOnly;
        final /* synthetic */ TextFieldState $state;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass4(TextFieldState textFieldState, FocusRequester focusRequester, boolean z6) {
            super(0);
            this.$state = textFieldState;
            this.$focusRequester = focusRequester;
            this.$readOnly = z6;
        }

        @Override // e8.a
        @NotNull
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke() {
            CoreTextFieldKt.n(this.$state, this.$focusRequester, !this.$readOnly);
            return Boolean.TRUE;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.CoreTextFieldKt$CoreTextField$semanticsModifier$1$5, reason: invalid class name */
    static final class AnonymousClass5 extends v implements a<Boolean> {
        final /* synthetic */ TextFieldSelectionManager $manager;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass5(TextFieldSelectionManager textFieldSelectionManager) {
            super(0);
            this.$manager = textFieldSelectionManager;
        }

        @Override // e8.a
        @NotNull
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke() {
            this.$manager.r();
            return Boolean.TRUE;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.CoreTextFieldKt$CoreTextField$semanticsModifier$1$6, reason: invalid class name */
    static final class AnonymousClass6 extends v implements a<Boolean> {
        final /* synthetic */ TextFieldSelectionManager $manager;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass6(TextFieldSelectionManager textFieldSelectionManager) {
            super(0);
            this.$manager = textFieldSelectionManager;
        }

        @Override // e8.a
        @NotNull
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke() {
            TextFieldSelectionManager.l(this.$manager, false, 1, null);
            return Boolean.TRUE;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.CoreTextFieldKt$CoreTextField$semanticsModifier$1$7, reason: invalid class name */
    static final class AnonymousClass7 extends v implements a<Boolean> {
        final /* synthetic */ TextFieldSelectionManager $manager;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass7(TextFieldSelectionManager textFieldSelectionManager) {
            super(0);
            this.$manager = textFieldSelectionManager;
        }

        @Override // e8.a
        @NotNull
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke() {
            this.$manager.o();
            return Boolean.TRUE;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.CoreTextFieldKt$CoreTextField$semanticsModifier$1$8, reason: invalid class name */
    static final class AnonymousClass8 extends v implements a<Boolean> {
        final /* synthetic */ TextFieldSelectionManager $manager;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass8(TextFieldSelectionManager textFieldSelectionManager) {
            super(0);
            this.$manager = textFieldSelectionManager;
        }

        @Override // e8.a
        @NotNull
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke() {
            this.$manager.L();
            return Boolean.TRUE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CoreTextFieldKt$CoreTextField$semanticsModifier$1(ImeOptions imeOptions, TransformedText transformedText, TextFieldValue textFieldValue, boolean z6, boolean z10, boolean z11, TextFieldState textFieldState, OffsetMapping offsetMapping, TextFieldSelectionManager textFieldSelectionManager, FocusRequester focusRequester) {
        super(1);
        this.$imeOptions = imeOptions;
        this.$transformedText = transformedText;
        this.$value = textFieldValue;
        this.$enabled = z6;
        this.$isPassword = z10;
        this.$readOnly = z11;
        this.$state = textFieldState;
        this.$offsetMapping = offsetMapping;
        this.$manager = textFieldSelectionManager;
        this.$focusRequester = focusRequester;
    }

    public final void a(@NotNull SemanticsPropertyReceiver semantics) {
        t.j(semantics, "$this$semantics");
        SemanticsPropertiesKt.K(semantics, this.$imeOptions.d());
        SemanticsPropertiesKt.H(semantics, this.$transformedText.b());
        SemanticsPropertiesKt.Y(semantics, this.$value.g());
        if (!this.$enabled) {
            SemanticsPropertiesKt.h(semantics);
        }
        if (this.$isPassword) {
            SemanticsPropertiesKt.u(semantics);
        }
        SemanticsPropertiesKt.o(semantics, null, new AnonymousClass1(this.$state), 1, null);
        SemanticsPropertiesKt.X(semantics, null, new AnonymousClass2(this.$state), 1, null);
        SemanticsPropertiesKt.T(semantics, null, new AnonymousClass3(this.$offsetMapping, this.$enabled, this.$value, this.$manager, this.$state), 1, null);
        SemanticsPropertiesKt.r(semantics, null, new AnonymousClass4(this.$state, this.$focusRequester, this.$readOnly), 1, null);
        SemanticsPropertiesKt.t(semantics, null, new AnonymousClass5(this.$manager), 1, null);
        if (!TextRange.h(this.$value.g()) && !this.$isPassword) {
            SemanticsPropertiesKt.d(semantics, null, new AnonymousClass6(this.$manager), 1, null);
            if (this.$enabled && !this.$readOnly) {
                SemanticsPropertiesKt.f(semantics, null, new AnonymousClass7(this.$manager), 1, null);
            }
        }
        if (!this.$enabled || this.$readOnly) {
            return;
        }
        SemanticsPropertiesKt.w(semantics, null, new AnonymousClass8(this.$manager), 1, null);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        a(semanticsPropertyReceiver);
        return l0.INSTANCE;
    }
}
