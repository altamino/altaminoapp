package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.text.Handle;
import androidx.compose.foundation.text.HandleState;
import androidx.compose.foundation.text.TextDragObserver;
import androidx.compose.foundation.text.TextFieldCursorKt;
import androidx.compose.foundation.text.TextFieldState;
import androidx.compose.foundation.text.TextLayoutResultProxy;
import androidx.compose.foundation.text.UndoManager;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.hapticfeedback.HapticFeedbackType;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.platform.ClipboardManager;
import androidx.compose.ui.platform.TextToolbar;
import androidx.compose.ui.platform.TextToolbarStatus;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.PasswordVisualTransformation;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.TextFieldValueKt;
import androidx.compose.ui.text.input.VisualTransformation;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import e8.l;
import j8.o;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
public final class TextFieldSelectionManager {

    @Nullable
    private ClipboardManager clipboardManager;

    @NotNull
    private final MutableState currentDragPosition$delegate;

    @Nullable
    private Integer dragBeginOffsetInText;
    private long dragBeginPosition;
    private long dragTotalDistance;

    @NotNull
    private final MutableState draggingHandle$delegate;

    @NotNull
    private final MutableState editable$delegate;

    @Nullable
    private FocusRequester focusRequester;

    @Nullable
    private HapticFeedback hapticFeedBack;

    @NotNull
    private final MouseSelectionObserver mouseSelectionObserver;

    @NotNull
    private OffsetMapping offsetMapping;

    @NotNull
    private TextFieldValue oldValue;

    @NotNull
    private l<? super TextFieldValue, l0> onValueChange;

    @Nullable
    private TextFieldState state;

    @Nullable
    private TextToolbar textToolbar;

    @NotNull
    private final TextDragObserver touchSelectionObserver;

    @Nullable
    private final UndoManager undoManager;

    @NotNull
    private final MutableState value$delegate;

    @NotNull
    private VisualTransformation visualTransformation;

    /* JADX WARN: Multi-variable type inference failed */
    public TextFieldSelectionManager() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public static /* synthetic */ void l(TextFieldSelectionManager textFieldSelectionManager, boolean z6, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z6 = true;
        }
        textFieldSelectionManager.k(z6);
    }

    @Nullable
    public final HapticFeedback A() {
        return this.hapticFeedBack;
    }

    @NotNull
    public final MouseSelectionObserver B() {
        return this.mouseSelectionObserver;
    }

    @NotNull
    public final OffsetMapping C() {
        return this.offsetMapping;
    }

    @NotNull
    public final l<TextFieldValue, l0> D() {
        return this.onValueChange;
    }

    @Nullable
    public final TextFieldState E() {
        return this.state;
    }

    @Nullable
    public final TextToolbar F() {
        return this.textToolbar;
    }

    @NotNull
    public final TextDragObserver G() {
        return this.touchSelectionObserver;
    }

    public final void N(@Nullable ClipboardManager clipboardManager) {
        this.clipboardManager = clipboardManager;
    }

    public final void R(@Nullable FocusRequester focusRequester) {
        this.focusRequester = focusRequester;
    }

    public final void T(@Nullable HapticFeedback hapticFeedback) {
        this.hapticFeedBack = hapticFeedback;
    }

    public final void U(@NotNull OffsetMapping offsetMapping) {
        t.j(offsetMapping, "<set-?>");
        this.offsetMapping = offsetMapping;
    }

    public final void V(@NotNull l<? super TextFieldValue, l0> lVar) {
        t.j(lVar, "<set-?>");
        this.onValueChange = lVar;
    }

    public final void W(@Nullable TextFieldState textFieldState) {
        this.state = textFieldState;
    }

    public final void X(@Nullable TextToolbar textToolbar) {
        this.textToolbar = textToolbar;
    }

    public final void Z(@NotNull VisualTransformation visualTransformation) {
        t.j(visualTransformation, "<set-?>");
        this.visualTransformation = visualTransformation;
    }

    @Nullable
    public final FocusRequester y() {
        return this.focusRequester;
    }

    public TextFieldSelectionManager(@Nullable UndoManager undoManager) {
        this.undoManager = undoManager;
        this.offsetMapping = OffsetMapping.Companion.a();
        this.onValueChange = TextFieldSelectionManager$onValueChange$1.INSTANCE;
        this.value$delegate = SnapshotStateKt__SnapshotStateKt.e(new TextFieldValue((String) null, 0L, (TextRange) null, 7, (k) null), null, 2, null);
        this.visualTransformation = VisualTransformation.Companion.c();
        this.editable$delegate = SnapshotStateKt__SnapshotStateKt.e(Boolean.TRUE, null, 2, null);
        Offset.Companion companion = Offset.Companion;
        this.dragBeginPosition = companion.c();
        this.dragTotalDistance = companion.c();
        this.draggingHandle$delegate = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
        this.currentDragPosition$delegate = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
        this.oldValue = new TextFieldValue((String) null, 0L, (TextRange) null, 7, (k) null);
        this.touchSelectionObserver = new TextDragObserver() { // from class: androidx.compose.foundation.text.selection.TextFieldSelectionManager$touchSelectionObserver$1
            @Override // androidx.compose.foundation.text.TextDragObserver
            public void a(long j6) {
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            public void d() {
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            public void onCancel() {
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            public void b(long j6) {
                TextLayoutResultProxy textLayoutResultProxyG;
                if (this.this$0.H().h().length() == 0) {
                    return;
                }
                TextFieldSelectionManager textFieldSelectionManager = this.this$0;
                textFieldSelectionManager.dragTotalDistance = Offset.r(textFieldSelectionManager.dragTotalDistance, j6);
                TextFieldState textFieldStateE = this.this$0.E();
                if (textFieldStateE != null && (textLayoutResultProxyG = textFieldStateE.g()) != null) {
                    TextFieldSelectionManager textFieldSelectionManager2 = this.this$0;
                    textFieldSelectionManager2.O(Offset.d(Offset.r(textFieldSelectionManager2.dragBeginPosition, textFieldSelectionManager2.dragTotalDistance)));
                    Integer num = textFieldSelectionManager2.dragBeginOffsetInText;
                    int iIntValue = num != null ? num.intValue() : textLayoutResultProxyG.g(textFieldSelectionManager2.dragBeginPosition, false);
                    Offset offsetU = textFieldSelectionManager2.u();
                    t.g(offsetU);
                    textFieldSelectionManager2.b0(textFieldSelectionManager2.H(), iIntValue, textLayoutResultProxyG.g(offsetU.u(), false), false, SelectionAdjustment.Companion.g());
                }
                TextFieldState textFieldStateE2 = this.this$0.E();
                if (textFieldStateE2 == null) {
                    return;
                }
                textFieldStateE2.x(false);
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            public void c(long j6) {
                TextFieldState textFieldStateE;
                TextLayoutResultProxy textLayoutResultProxyG;
                TextLayoutResultProxy textLayoutResultProxyG2;
                TextLayoutResultProxy textLayoutResultProxyG3;
                if (this.this$0.w() != null) {
                    return;
                }
                this.this$0.P(Handle.SelectionEnd);
                this.this$0.J();
                TextFieldState textFieldStateE2 = this.this$0.E();
                if ((textFieldStateE2 == null || (textLayoutResultProxyG3 = textFieldStateE2.g()) == null || !textLayoutResultProxyG3.j(j6)) && (textFieldStateE = this.this$0.E()) != null && (textLayoutResultProxyG = textFieldStateE.g()) != null) {
                    TextFieldSelectionManager textFieldSelectionManager = this.this$0;
                    int iA = textFieldSelectionManager.C().a(TextLayoutResultProxy.e(textLayoutResultProxyG, textLayoutResultProxyG.f(Offset.n(j6)), false, 2, null));
                    HapticFeedback hapticFeedbackA = textFieldSelectionManager.A();
                    if (hapticFeedbackA != null) {
                        hapticFeedbackA.a(HapticFeedbackType.Companion.b());
                    }
                    TextFieldValue textFieldValueM = textFieldSelectionManager.m(textFieldSelectionManager.H().e(), TextRangeKt.b(iA, iA));
                    textFieldSelectionManager.r();
                    textFieldSelectionManager.D().invoke(textFieldValueM);
                    return;
                }
                if (this.this$0.H().h().length() == 0) {
                    return;
                }
                this.this$0.r();
                TextFieldState textFieldStateE3 = this.this$0.E();
                if (textFieldStateE3 != null && (textLayoutResultProxyG2 = textFieldStateE3.g()) != null) {
                    TextFieldSelectionManager textFieldSelectionManager2 = this.this$0;
                    int iH = TextLayoutResultProxy.h(textLayoutResultProxyG2, j6, false, 2, null);
                    textFieldSelectionManager2.b0(textFieldSelectionManager2.H(), iH, iH, false, SelectionAdjustment.Companion.g());
                    textFieldSelectionManager2.dragBeginOffsetInText = Integer.valueOf(iH);
                }
                this.this$0.dragBeginPosition = j6;
                TextFieldSelectionManager textFieldSelectionManager3 = this.this$0;
                textFieldSelectionManager3.O(Offset.d(textFieldSelectionManager3.dragBeginPosition));
                this.this$0.dragTotalDistance = Offset.Companion.c();
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            public void onStop() {
                this.this$0.P(null);
                this.this$0.O(null);
                TextFieldState textFieldStateE = this.this$0.E();
                if (textFieldStateE != null) {
                    textFieldStateE.x(true);
                }
                TextToolbar textToolbarF = this.this$0.F();
                if ((textToolbarF != null ? textToolbarF.getStatus() : null) == TextToolbarStatus.Hidden) {
                    this.this$0.a0();
                }
                this.this$0.dragBeginOffsetInText = null;
            }
        };
        this.mouseSelectionObserver = new MouseSelectionObserver() { // from class: androidx.compose.foundation.text.selection.TextFieldSelectionManager$mouseSelectionObserver$1
            @Override // androidx.compose.foundation.text.selection.MouseSelectionObserver
            public boolean a(long j6, @NotNull SelectionAdjustment adjustment) {
                TextFieldState textFieldStateE;
                TextLayoutResultProxy textLayoutResultProxyG;
                t.j(adjustment, "adjustment");
                if (this.this$0.H().h().length() == 0 || (textFieldStateE = this.this$0.E()) == null || (textLayoutResultProxyG = textFieldStateE.g()) == null) {
                    return false;
                }
                TextFieldSelectionManager textFieldSelectionManager = this.this$0;
                int iG = textLayoutResultProxyG.g(j6, false);
                TextFieldValue textFieldValueH = textFieldSelectionManager.H();
                Integer num = textFieldSelectionManager.dragBeginOffsetInText;
                t.g(num);
                textFieldSelectionManager.b0(textFieldValueH, num.intValue(), iG, false, adjustment);
                return true;
            }

            @Override // androidx.compose.foundation.text.selection.MouseSelectionObserver
            public boolean b(long j6) {
                TextFieldState textFieldStateE;
                TextLayoutResultProxy textLayoutResultProxyG;
                if (this.this$0.H().h().length() == 0 || (textFieldStateE = this.this$0.E()) == null || (textLayoutResultProxyG = textFieldStateE.g()) == null) {
                    return false;
                }
                TextFieldSelectionManager textFieldSelectionManager = this.this$0;
                textFieldSelectionManager.b0(textFieldSelectionManager.H(), textFieldSelectionManager.C().b(TextRange.n(textFieldSelectionManager.H().g())), textLayoutResultProxyG.g(j6, false), false, SelectionAdjustment.Companion.e());
                return true;
            }

            @Override // androidx.compose.foundation.text.selection.MouseSelectionObserver
            public boolean c(long j6, @NotNull SelectionAdjustment adjustment) {
                TextLayoutResultProxy textLayoutResultProxyG;
                t.j(adjustment, "adjustment");
                FocusRequester focusRequesterY = this.this$0.y();
                if (focusRequesterY != null) {
                    focusRequesterY.c();
                }
                this.this$0.dragBeginPosition = j6;
                TextFieldState textFieldStateE = this.this$0.E();
                if (textFieldStateE == null || (textLayoutResultProxyG = textFieldStateE.g()) == null) {
                    return false;
                }
                TextFieldSelectionManager textFieldSelectionManager = this.this$0;
                textFieldSelectionManager.dragBeginOffsetInText = Integer.valueOf(TextLayoutResultProxy.h(textLayoutResultProxyG, j6, false, 2, null));
                int iH = TextLayoutResultProxy.h(textLayoutResultProxyG, textFieldSelectionManager.dragBeginPosition, false, 2, null);
                textFieldSelectionManager.b0(textFieldSelectionManager.H(), iH, iH, false, adjustment);
                return true;
            }

            @Override // androidx.compose.foundation.text.selection.MouseSelectionObserver
            public boolean d(long j6) {
                TextLayoutResultProxy textLayoutResultProxyG;
                TextFieldState textFieldStateE = this.this$0.E();
                if (textFieldStateE == null || (textLayoutResultProxyG = textFieldStateE.g()) == null) {
                    return false;
                }
                TextFieldSelectionManager textFieldSelectionManager = this.this$0;
                textFieldSelectionManager.b0(textFieldSelectionManager.H(), textFieldSelectionManager.C().b(TextRange.n(textFieldSelectionManager.H().g())), TextLayoutResultProxy.h(textLayoutResultProxyG, j6, false, 2, null), false, SelectionAdjustment.Companion.e());
                return true;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void O(Offset offset) {
        this.currentDragPosition$delegate.setValue(offset);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void P(Handle handle) {
        this.draggingHandle$delegate.setValue(handle);
    }

    private final void S(HandleState handleState) {
        TextFieldState textFieldState = this.state;
        if (textFieldState != null) {
            textFieldState.r(handleState);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b0(TextFieldValue textFieldValue, int i10, int i11, boolean z6, SelectionAdjustment selectionAdjustment) {
        TextLayoutResultProxy textLayoutResultProxyG;
        long jB = TextRangeKt.b(this.offsetMapping.b(TextRange.n(textFieldValue.g())), this.offsetMapping.b(TextRange.i(textFieldValue.g())));
        TextFieldState textFieldState = this.state;
        long jA = TextFieldSelectionDelegateKt.a((textFieldState == null || (textLayoutResultProxyG = textFieldState.g()) == null) ? null : textLayoutResultProxyG.i(), i10, i11, TextRange.h(jB) ? null : TextRange.b(jB), z6, selectionAdjustment);
        long jB2 = TextRangeKt.b(this.offsetMapping.a(TextRange.n(jA)), this.offsetMapping.a(TextRange.i(jA)));
        if (TextRange.g(jB2, textFieldValue.g())) {
            return;
        }
        HapticFeedback hapticFeedback = this.hapticFeedBack;
        if (hapticFeedback != null) {
            hapticFeedback.a(HapticFeedbackType.Companion.b());
        }
        this.onValueChange.invoke(m(textFieldValue.e(), jB2));
        TextFieldState textFieldState2 = this.state;
        if (textFieldState2 != null) {
            textFieldState2.z(TextFieldSelectionManagerKt.c(this, true));
        }
        TextFieldState textFieldState3 = this.state;
        if (textFieldState3 == null) {
            return;
        }
        textFieldState3.y(TextFieldSelectionManagerKt.c(this, false));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TextFieldValue m(AnnotatedString annotatedString, long j6) {
        return new TextFieldValue(annotatedString, j6, (TextRange) null, 4, (k) null);
    }

    public static /* synthetic */ void q(TextFieldSelectionManager textFieldSelectionManager, Offset offset, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            offset = null;
        }
        textFieldSelectionManager.p(offset);
    }

    private final Rect t() {
        float fN;
        LayoutCoordinates layoutCoordinatesF;
        TextLayoutResult textLayoutResultI;
        Rect rectD;
        LayoutCoordinates layoutCoordinatesF2;
        TextLayoutResult textLayoutResultI2;
        Rect rectD2;
        LayoutCoordinates layoutCoordinatesF3;
        LayoutCoordinates layoutCoordinatesF4;
        TextFieldState textFieldState = this.state;
        if (textFieldState == null) {
            return Rect.Companion.a();
        }
        long jC = (textFieldState == null || (layoutCoordinatesF4 = textFieldState.f()) == null) ? Offset.Companion.c() : layoutCoordinatesF4.K(z(true));
        TextFieldState textFieldState2 = this.state;
        long jC2 = (textFieldState2 == null || (layoutCoordinatesF3 = textFieldState2.f()) == null) ? Offset.Companion.c() : layoutCoordinatesF3.K(z(false));
        TextFieldState textFieldState3 = this.state;
        float fN2 = 0.0f;
        if (textFieldState3 == null || (layoutCoordinatesF2 = textFieldState3.f()) == null) {
            fN = 0.0f;
        } else {
            TextLayoutResultProxy textLayoutResultProxyG = textFieldState.g();
            fN = Offset.n(layoutCoordinatesF2.K(OffsetKt.a(0.0f, (textLayoutResultProxyG == null || (textLayoutResultI2 = textLayoutResultProxyG.i()) == null || (rectD2 = textLayoutResultI2.d(o.n(TextRange.n(H().g()), 0, Math.max(0, H().h().length() - 1)))) == null) ? 0.0f : rectD2.m())));
        }
        TextFieldState textFieldState4 = this.state;
        if (textFieldState4 != null && (layoutCoordinatesF = textFieldState4.f()) != null) {
            TextLayoutResultProxy textLayoutResultProxyG2 = textFieldState.g();
            fN2 = Offset.n(layoutCoordinatesF.K(OffsetKt.a(0.0f, (textLayoutResultProxyG2 == null || (textLayoutResultI = textLayoutResultProxyG2.i()) == null || (rectD = textLayoutResultI.d(o.n(TextRange.i(H().g()), 0, Math.max(0, H().h().length() - 1)))) == null) ? 0.0f : rectD.m())));
        }
        return new Rect(Math.min(Offset.m(jC), Offset.m(jC2)), Math.min(fN, fN2), Math.max(Offset.m(jC), Offset.m(jC2)), Math.max(Offset.n(jC), Offset.n(jC2)) + (Dp.f(25) * textFieldState.q().a().getDensity()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public final TextFieldValue H() {
        return (TextFieldValue) this.value$delegate.getValue();
    }

    @NotNull
    public final TextDragObserver I(final boolean z6) {
        return new TextDragObserver() { // from class: androidx.compose.foundation.text.selection.TextFieldSelectionManager$handleDragObserver$1
            @Override // androidx.compose.foundation.text.TextDragObserver
            public void onCancel() {
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            public void a(long j6) {
                this.this$0.P(z6 ? Handle.SelectionStart : Handle.SelectionEnd);
                TextFieldSelectionManager textFieldSelectionManager = this.this$0;
                textFieldSelectionManager.O(Offset.d(SelectionHandlesKt.a(textFieldSelectionManager.z(z6))));
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            public void b(long j6) {
                TextLayoutResultProxy textLayoutResultProxyG;
                TextLayoutResult textLayoutResultI;
                int iB;
                int iW;
                TextFieldSelectionManager textFieldSelectionManager = this.this$0;
                textFieldSelectionManager.dragTotalDistance = Offset.r(textFieldSelectionManager.dragTotalDistance, j6);
                TextFieldState textFieldStateE = this.this$0.E();
                if (textFieldStateE != null && (textLayoutResultProxyG = textFieldStateE.g()) != null && (textLayoutResultI = textLayoutResultProxyG.i()) != null) {
                    TextFieldSelectionManager textFieldSelectionManager2 = this.this$0;
                    boolean z10 = z6;
                    textFieldSelectionManager2.O(Offset.d(Offset.r(textFieldSelectionManager2.dragBeginPosition, textFieldSelectionManager2.dragTotalDistance)));
                    if (z10) {
                        Offset offsetU = textFieldSelectionManager2.u();
                        t.g(offsetU);
                        iB = textLayoutResultI.w(offsetU.u());
                    } else {
                        iB = textFieldSelectionManager2.C().b(TextRange.n(textFieldSelectionManager2.H().g()));
                    }
                    int i10 = iB;
                    if (z10) {
                        iW = textFieldSelectionManager2.C().b(TextRange.i(textFieldSelectionManager2.H().g()));
                    } else {
                        Offset offsetU2 = textFieldSelectionManager2.u();
                        t.g(offsetU2);
                        iW = textLayoutResultI.w(offsetU2.u());
                    }
                    textFieldSelectionManager2.b0(textFieldSelectionManager2.H(), i10, iW, z10, SelectionAdjustment.Companion.c());
                }
                TextFieldState textFieldStateE2 = this.this$0.E();
                if (textFieldStateE2 == null) {
                    return;
                }
                textFieldStateE2.x(false);
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            public void c(long j6) {
                TextFieldSelectionManager textFieldSelectionManager = this.this$0;
                textFieldSelectionManager.dragBeginPosition = SelectionHandlesKt.a(textFieldSelectionManager.z(z6));
                TextFieldSelectionManager textFieldSelectionManager2 = this.this$0;
                textFieldSelectionManager2.O(Offset.d(textFieldSelectionManager2.dragBeginPosition));
                this.this$0.dragTotalDistance = Offset.Companion.c();
                this.this$0.P(z6 ? Handle.SelectionStart : Handle.SelectionEnd);
                TextFieldState textFieldStateE = this.this$0.E();
                if (textFieldStateE == null) {
                    return;
                }
                textFieldStateE.x(false);
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            public void d() {
                this.this$0.P(null);
                this.this$0.O(null);
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            public void onStop() {
                this.this$0.P(null);
                this.this$0.O(null);
                TextFieldState textFieldStateE = this.this$0.E();
                if (textFieldStateE != null) {
                    textFieldStateE.x(true);
                }
                TextToolbar textToolbarF = this.this$0.F();
                if ((textToolbarF != null ? textToolbarF.getStatus() : null) == TextToolbarStatus.Hidden) {
                    this.this$0.a0();
                }
            }
        };
    }

    public final void J() {
        TextToolbar textToolbar;
        TextToolbar textToolbar2 = this.textToolbar;
        if ((textToolbar2 != null ? textToolbar2.getStatus() : null) != TextToolbarStatus.Shown || (textToolbar = this.textToolbar) == null) {
            return;
        }
        textToolbar.hide();
    }

    public final boolean K() {
        return !t.e(this.oldValue.h(), H().h());
    }

    public final void L() {
        AnnotatedString annotatedStringA;
        ClipboardManager clipboardManager = this.clipboardManager;
        if (clipboardManager == null || (annotatedStringA = clipboardManager.a()) == null) {
            return;
        }
        AnnotatedString annotatedStringI = TextFieldValueKt.c(H(), H().h().length()).i(annotatedStringA).i(TextFieldValueKt.b(H(), H().h().length()));
        int iL = TextRange.l(H().g()) + annotatedStringA.length();
        this.onValueChange.invoke(m(annotatedStringI, TextRangeKt.b(iL, iL)));
        S(HandleState.None);
        UndoManager undoManager = this.undoManager;
        if (undoManager != null) {
            undoManager.a();
        }
    }

    public final void Q(boolean z6) {
        this.editable$delegate.setValue(Boolean.valueOf(z6));
    }

    public final void Y(@NotNull TextFieldValue textFieldValue) {
        t.j(textFieldValue, "<set-?>");
        this.value$delegate.setValue(textFieldValue);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0054  */
    public final void a0() {
        TextFieldSelectionManager$showSelectionToolbar$paste$1 textFieldSelectionManager$showSelectionToolbar$paste$1;
        boolean z6 = this.visualTransformation instanceof PasswordVisualTransformation;
        TextFieldSelectionManager$showSelectionToolbar$copy$1 textFieldSelectionManager$showSelectionToolbar$copy$1 = (TextRange.h(H().g()) || z6) ? null : new TextFieldSelectionManager$showSelectionToolbar$copy$1(this);
        TextFieldSelectionManager$showSelectionToolbar$cut$1 textFieldSelectionManager$showSelectionToolbar$cut$1 = (TextRange.h(H().g()) || !x() || z6) ? null : new TextFieldSelectionManager$showSelectionToolbar$cut$1(this);
        if (x()) {
            ClipboardManager clipboardManager = this.clipboardManager;
            if ((clipboardManager != null ? clipboardManager.a() : null) != null) {
                textFieldSelectionManager$showSelectionToolbar$paste$1 = new TextFieldSelectionManager$showSelectionToolbar$paste$1(this);
            } else {
                textFieldSelectionManager$showSelectionToolbar$paste$1 = null;
            }
        } else {
            textFieldSelectionManager$showSelectionToolbar$paste$1 = null;
        }
        TextFieldSelectionManager$showSelectionToolbar$selectAll$1 textFieldSelectionManager$showSelectionToolbar$selectAll$1 = TextRange.j(H().g()) != H().h().length() ? new TextFieldSelectionManager$showSelectionToolbar$selectAll$1(this) : null;
        TextToolbar textToolbar = this.textToolbar;
        if (textToolbar != null) {
            textToolbar.a(t(), textFieldSelectionManager$showSelectionToolbar$copy$1, textFieldSelectionManager$showSelectionToolbar$paste$1, textFieldSelectionManager$showSelectionToolbar$cut$1, textFieldSelectionManager$showSelectionToolbar$selectAll$1);
        }
    }

    @NotNull
    public final TextDragObserver n() {
        return new TextDragObserver() { // from class: androidx.compose.foundation.text.selection.TextFieldSelectionManager$cursorDragObserver$1
            @Override // androidx.compose.foundation.text.TextDragObserver
            public void onCancel() {
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            public void a(long j6) {
                this.this$0.P(Handle.Cursor);
                TextFieldSelectionManager textFieldSelectionManager = this.this$0;
                textFieldSelectionManager.O(Offset.d(SelectionHandlesKt.a(textFieldSelectionManager.z(true))));
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            public void b(long j6) {
                TextLayoutResultProxy textLayoutResultProxyG;
                TextLayoutResult textLayoutResultI;
                TextFieldSelectionManager textFieldSelectionManager = this.this$0;
                textFieldSelectionManager.dragTotalDistance = Offset.r(textFieldSelectionManager.dragTotalDistance, j6);
                TextFieldState textFieldStateE = this.this$0.E();
                if (textFieldStateE == null || (textLayoutResultProxyG = textFieldStateE.g()) == null || (textLayoutResultI = textLayoutResultProxyG.i()) == null) {
                    return;
                }
                TextFieldSelectionManager textFieldSelectionManager2 = this.this$0;
                textFieldSelectionManager2.O(Offset.d(Offset.r(textFieldSelectionManager2.dragBeginPosition, textFieldSelectionManager2.dragTotalDistance)));
                Offset offsetU = textFieldSelectionManager2.u();
                t.g(offsetU);
                int iW = textLayoutResultI.w(offsetU.u());
                long jB = TextRangeKt.b(iW, iW);
                if (TextRange.g(jB, textFieldSelectionManager2.H().g())) {
                    return;
                }
                HapticFeedback hapticFeedbackA = textFieldSelectionManager2.A();
                if (hapticFeedbackA != null) {
                    hapticFeedbackA.a(HapticFeedbackType.Companion.b());
                }
                textFieldSelectionManager2.D().invoke(textFieldSelectionManager2.m(textFieldSelectionManager2.H().e(), jB));
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            public void c(long j6) {
                TextFieldSelectionManager textFieldSelectionManager = this.this$0;
                textFieldSelectionManager.dragBeginPosition = SelectionHandlesKt.a(textFieldSelectionManager.z(true));
                TextFieldSelectionManager textFieldSelectionManager2 = this.this$0;
                textFieldSelectionManager2.O(Offset.d(textFieldSelectionManager2.dragBeginPosition));
                this.this$0.dragTotalDistance = Offset.Companion.c();
                this.this$0.P(Handle.Cursor);
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            public void d() {
                this.this$0.P(null);
                this.this$0.O(null);
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            public void onStop() {
                this.this$0.P(null);
                this.this$0.O(null);
            }
        };
    }

    public final void r() {
        FocusRequester focusRequester;
        TextFieldState textFieldState = this.state;
        if (textFieldState != null && !textFieldState.d() && (focusRequester = this.focusRequester) != null) {
            focusRequester.c();
        }
        this.oldValue = H();
        TextFieldState textFieldState2 = this.state;
        if (textFieldState2 != null) {
            textFieldState2.x(true);
        }
        S(HandleState.Selection);
    }

    public final void s() {
        TextFieldState textFieldState = this.state;
        if (textFieldState != null) {
            textFieldState.x(false);
        }
        S(HandleState.None);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    public final Offset u() {
        return (Offset) this.currentDragPosition$delegate.getValue();
    }

    public final long v(@NotNull Density density) {
        t.j(density, "density");
        int iB = this.offsetMapping.b(TextRange.n(H().g()));
        TextFieldState textFieldState = this.state;
        TextLayoutResultProxy textLayoutResultProxyG = textFieldState != null ? textFieldState.g() : null;
        t.g(textLayoutResultProxyG);
        TextLayoutResult textLayoutResultI = textLayoutResultProxyG.i();
        Rect rectD = textLayoutResultI.d(o.n(iB, 0, textLayoutResultI.k().j().length()));
        return OffsetKt.a(rectD.j() + (density.H0(TextFieldCursorKt.d()) / 2), rectD.e());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    public final Handle w() {
        return (Handle) this.draggingHandle$delegate.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean x() {
        return ((Boolean) this.editable$delegate.getValue()).booleanValue();
    }

    /* JADX WARN: Failed to analyze thrown exceptions
    java.util.ConcurrentModificationException
    	at java.base/java.util.ArrayList$Itr.checkForComodification(ArrayList.java:1013)
    	at java.base/java.util.ArrayList$Itr.next(ArrayList.java:967)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.processInstructions(MethodThrowsVisitor.java:130)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.visit(MethodThrowsVisitor.java:68)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.checkInsn(MethodThrowsVisitor.java:178)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.processInstructions(MethodThrowsVisitor.java:131)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.visit(MethodThrowsVisitor.java:68)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.checkInsn(MethodThrowsVisitor.java:178)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.processInstructions(MethodThrowsVisitor.java:131)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.visit(MethodThrowsVisitor.java:68)
     */
    public final void M() {
        TextFieldValue textFieldValueM = m(H().e(), TextRangeKt.b(0, H().h().length()));
        this.onValueChange.invoke(textFieldValueM);
        this.oldValue = TextFieldValue.c(this.oldValue, null, textFieldValueM.g(), null, 5, null);
        TextFieldState textFieldState = this.state;
        if (textFieldState != null) {
            textFieldState.x(true);
        }
    }

    public final void k(boolean z6) {
        if (TextRange.h(H().g())) {
            return;
        }
        ClipboardManager clipboardManager = this.clipboardManager;
        if (clipboardManager != null) {
            clipboardManager.b(TextFieldValueKt.a(H()));
        }
        if (!z6) {
            return;
        }
        int iK = TextRange.k(H().g());
        this.onValueChange.invoke(m(H().e(), TextRangeKt.b(iK, iK)));
        S(HandleState.None);
    }

    public final void o() {
        if (TextRange.h(H().g())) {
            return;
        }
        ClipboardManager clipboardManager = this.clipboardManager;
        if (clipboardManager != null) {
            clipboardManager.b(TextFieldValueKt.a(H()));
        }
        AnnotatedString annotatedStringI = TextFieldValueKt.c(H(), H().h().length()).i(TextFieldValueKt.b(H(), H().h().length()));
        int iL = TextRange.l(H().g());
        this.onValueChange.invoke(m(annotatedStringI, TextRangeKt.b(iL, iL)));
        S(HandleState.None);
        UndoManager undoManager = this.undoManager;
        if (undoManager != null) {
            undoManager.a();
        }
    }

    public final void p(@Nullable Offset offset) {
        HandleState handleState;
        TextLayoutResultProxy textLayoutResultProxyG;
        int iK;
        if (!TextRange.h(H().g())) {
            TextFieldState textFieldState = this.state;
            if (textFieldState != null) {
                textLayoutResultProxyG = textFieldState.g();
            } else {
                textLayoutResultProxyG = null;
            }
            TextLayoutResultProxy textLayoutResultProxy = textLayoutResultProxyG;
            if (offset != null && textLayoutResultProxy != null) {
                iK = this.offsetMapping.a(TextLayoutResultProxy.h(textLayoutResultProxy, offset.u(), false, 2, null));
            } else {
                iK = TextRange.k(H().g());
            }
            this.onValueChange.invoke(TextFieldValue.c(H(), null, TextRangeKt.a(iK), null, 5, null));
        }
        if (offset != null && H().h().length() > 0) {
            handleState = HandleState.Cursor;
        } else {
            handleState = HandleState.None;
        }
        S(handleState);
        J();
    }

    public final long z(boolean z6) {
        int i10;
        TextLayoutResultProxy textLayoutResultProxyG;
        long jG = H().g();
        if (z6) {
            i10 = TextRange.n(jG);
        } else {
            i10 = TextRange.i(jG);
        }
        TextFieldState textFieldState = this.state;
        if (textFieldState != null) {
            textLayoutResultProxyG = textFieldState.g();
        } else {
            textLayoutResultProxyG = null;
        }
        t.g(textLayoutResultProxyG);
        return TextSelectionDelegateKt.b(textLayoutResultProxyG.i(), this.offsetMapping.b(i10), z6, TextRange.m(H().g()));
    }

    public /* synthetic */ TextFieldSelectionManager(UndoManager undoManager, int i10, k kVar) {
        this((i10 & 1) != 0 ? null : undoManager);
    }
}
