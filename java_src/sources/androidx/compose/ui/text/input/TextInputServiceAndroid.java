package androidx.compose.ui.text.input;

import android.content.Context;
import android.graphics.Rect;
import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.BaseInputConnection;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import androidx.compose.ui.text.TextRange;
import e8.l;
import java.util.List;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.p0;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.channels.d;
import kotlinx.coroutines.channels.g;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.m;
import w7.o;
import w7.q;

/* JADX INFO: loaded from: classes.dex */
public final class TextInputServiceAndroid implements PlatformTextInputService {

    @NotNull
    private final m baseInputConnection$delegate;
    private boolean editorHasFocus;

    @Nullable
    private Rect focusedRect;

    @Nullable
    private RecordingInputConnection ic;

    @NotNull
    private ImeOptions imeOptions;

    @NotNull
    private final InputMethodManager inputMethodManager;

    @NotNull
    private l<? super List<? extends EditCommand>, l0> onEditCommand;

    @NotNull
    private l<? super ImeAction, l0> onImeActionPerformed;

    @NotNull
    private TextFieldValue state;

    @NotNull
    private final d<TextInputCommand> textInputCommandChannel;

    @NotNull
    private final View view;

    private enum TextInputCommand {
        StartInput,
        StopInput,
        ShowKeyboard,
        HideKeyboard
    }

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[TextInputCommand.values().length];
            iArr[TextInputCommand.StartInput.ordinal()] = 1;
            iArr[TextInputCommand.StopInput.ordinal()] = 2;
            iArr[TextInputCommand.ShowKeyboard.ordinal()] = 3;
            iArr[TextInputCommand.HideKeyboard.ordinal()] = 4;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public TextInputServiceAndroid(@NotNull View view, @NotNull InputMethodManager inputMethodManager) {
        t.j(view, "view");
        t.j(inputMethodManager, "inputMethodManager");
        this.view = view;
        this.inputMethodManager = inputMethodManager;
        this.onEditCommand = TextInputServiceAndroid$onEditCommand$1.INSTANCE;
        this.onImeActionPerformed = TextInputServiceAndroid$onImeActionPerformed$1.INSTANCE;
        this.state = new TextFieldValue("", TextRange.Companion.a(), (TextRange) null, 4, (k) null);
        this.imeOptions = ImeOptions.Companion.a();
        this.baseInputConnection$delegate = o.b(q.NONE, new TextInputServiceAndroid$baseInputConnection$2(this));
        this.textInputCommandChannel = g.b(Integer.MAX_VALUE, null, null, 6, null);
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public void a() {
        this.editorHasFocus = false;
        this.onEditCommand = TextInputServiceAndroid$stopInput$1.INSTANCE;
        this.onImeActionPerformed = TextInputServiceAndroid$stopInput$2.INSTANCE;
        this.focusedRect = null;
        this.textInputCommandChannel.p(TextInputCommand.StopInput);
    }

    @NotNull
    public final View j() {
        return this.view;
    }

    public final boolean k() {
        return this.editorHasFocus;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final BaseInputConnection i() {
        return (BaseInputConnection) this.baseInputConnection$delegate.getValue();
    }

    private final void l() {
        this.inputMethodManager.e(this.view);
    }

    private final void m(boolean z6) {
        if (z6) {
            this.inputMethodManager.a(this.view);
        } else {
            this.inputMethodManager.b(this.view.getWindowToken());
        }
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [T, java.lang.Boolean] */
    /* JADX WARN: Type inference failed for: r3v2, types: [T, java.lang.Boolean] */
    /* JADX WARN: Type inference failed for: r3v3, types: [T, java.lang.Boolean] */
    private static final void o(TextInputCommand textInputCommand, p0<Boolean> p0Var, p0<Boolean> p0Var2) {
        int i10 = WhenMappings.$EnumSwitchMapping$0[textInputCommand.ordinal()];
        if (i10 == 1) {
            ?? r5 = Boolean.TRUE;
            p0Var.element = r5;
            p0Var2.element = r5;
        } else if (i10 == 2) {
            ?? r10 = Boolean.FALSE;
            p0Var.element = r10;
            p0Var2.element = r10;
        } else if ((i10 == 3 || i10 == 4) && !t.e(p0Var.element, Boolean.FALSE)) {
            p0Var2.element = Boolean.valueOf(textInputCommand == TextInputCommand.ShowKeyboard);
        }
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public void b(@Nullable TextFieldValue textFieldValue, @NotNull TextFieldValue newValue) {
        t.j(newValue, "newValue");
        boolean z6 = (TextRange.g(this.state.g(), newValue.g()) && t.e(this.state.f(), newValue.f())) ? false : true;
        this.state = newValue;
        RecordingInputConnection recordingInputConnection = this.ic;
        if (recordingInputConnection != null) {
            recordingInputConnection.e(newValue);
        }
        if (t.e(textFieldValue, newValue)) {
            if (z6) {
                InputMethodManager inputMethodManager = this.inputMethodManager;
                View view = this.view;
                int iL = TextRange.l(newValue.g());
                int iK = TextRange.k(newValue.g());
                TextRange textRangeF = this.state.f();
                int iL2 = textRangeF != null ? TextRange.l(textRangeF.r()) : -1;
                TextRange textRangeF2 = this.state.f();
                inputMethodManager.c(view, iL, iK, iL2, textRangeF2 != null ? TextRange.k(textRangeF2.r()) : -1);
                return;
            }
            return;
        }
        if (textFieldValue != null && (!t.e(textFieldValue.h(), newValue.h()) || (TextRange.g(textFieldValue.g(), newValue.g()) && !t.e(textFieldValue.f(), newValue.f())))) {
            l();
            return;
        }
        RecordingInputConnection recordingInputConnection2 = this.ic;
        if (recordingInputConnection2 != null) {
            recordingInputConnection2.f(this.state, this.inputMethodManager, this.view);
        }
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public void c(@NotNull TextFieldValue value, @NotNull ImeOptions imeOptions, @NotNull l<? super List<? extends EditCommand>, l0> onEditCommand, @NotNull l<? super ImeAction, l0> onImeActionPerformed) {
        t.j(value, "value");
        t.j(imeOptions, "imeOptions");
        t.j(onEditCommand, "onEditCommand");
        t.j(onImeActionPerformed, "onImeActionPerformed");
        this.editorHasFocus = true;
        this.state = value;
        this.imeOptions = imeOptions;
        this.onEditCommand = onEditCommand;
        this.onImeActionPerformed = onImeActionPerformed;
        this.textInputCommandChannel.p(TextInputCommand.StartInput);
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public void d() {
        this.textInputCommandChannel.p(TextInputCommand.ShowKeyboard);
    }

    @Nullable
    public final InputConnection h(@NotNull EditorInfo outAttrs) {
        t.j(outAttrs, "outAttrs");
        if (!this.editorHasFocus) {
            return null;
        }
        TextInputServiceAndroid_androidKt.b(outAttrs, this.imeOptions, this.state);
        RecordingInputConnection recordingInputConnection = new RecordingInputConnection(this.state, new InputEventCallback2() { // from class: androidx.compose.ui.text.input.TextInputServiceAndroid$createInputConnection$1
            @Override // androidx.compose.ui.text.input.InputEventCallback2
            public void a(@NotNull KeyEvent event) {
                t.j(event, "event");
                this.this$0.i().sendKeyEvent(event);
            }

            @Override // androidx.compose.ui.text.input.InputEventCallback2
            public void b(int i10) {
                this.this$0.onImeActionPerformed.invoke(ImeAction.i(i10));
            }

            @Override // androidx.compose.ui.text.input.InputEventCallback2
            public void c(@NotNull List<? extends EditCommand> editCommands) {
                t.j(editCommands, "editCommands");
                this.this$0.onEditCommand.invoke(editCommands);
            }
        }, this.imeOptions.b());
        this.ic = recordingInputConnection;
        return recordingInputConnection;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0050 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:20:0x0059  */
    /* JADX WARN: Code duplicated, block: B:22:0x0067 A[LOOP:0: B:22:0x0067->B:40:?, LOOP_START] */
    /* JADX WARN: Code duplicated, block: B:25:0x0074  */
    /* JADX WARN: Code duplicated, block: B:27:0x0080 A[LOOP:1: B:26:0x007e->B:27:0x0080, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:30:0x009c  */
    /* JADX WARN: Code duplicated, block: B:33:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:36:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:40:? A[LOOP:0: B:22:0x0067->B:40:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004e -> B:18:0x0051). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:22:0x0067
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @org.jetbrains.annotations.Nullable
    public final java.lang.Object n(@org.jetbrains.annotations.NotNull kotlin.coroutines.d<? super w7.l0> r9) {
        /*
            r8 = this;
            boolean r0 = r9 instanceof androidx.compose.ui.text.input.TextInputServiceAndroid$textInputCommandEventLoop$1
            if (r0 == 0) goto L13
            r0 = r9
            androidx.compose.ui.text.input.TextInputServiceAndroid$textInputCommandEventLoop$1 r0 = (androidx.compose.ui.text.input.TextInputServiceAndroid$textInputCommandEventLoop$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.ui.text.input.TextInputServiceAndroid$textInputCommandEventLoop$1 r0 = new androidx.compose.ui.text.input.TextInputServiceAndroid$textInputCommandEventLoop$1
            r0.<init>(r8, r9)
        L18:
            java.lang.Object r9 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.b.e()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L39
            if (r2 != r3) goto L31
            java.lang.Object r2 = r0.L$1
            kotlinx.coroutines.channels.f r2 = (kotlinx.coroutines.channels.f) r2
            java.lang.Object r4 = r0.L$0
            androidx.compose.ui.text.input.TextInputServiceAndroid r4 = (androidx.compose.ui.text.input.TextInputServiceAndroid) r4
            w7.w.b(r9)
            goto L51
        L31:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L39:
            w7.w.b(r9)
            kotlinx.coroutines.channels.d<androidx.compose.ui.text.input.TextInputServiceAndroid$TextInputCommand> r9 = r8.textInputCommandChannel
            kotlinx.coroutines.channels.f r9 = r9.iterator()
            r4 = r8
            r2 = r9
        L44:
            r0.L$0 = r4
            r0.L$1 = r2
            r0.label = r3
            java.lang.Object r9 = r2.b(r0)
            if (r9 != r1) goto L51
            return r1
        L51:
            java.lang.Boolean r9 = (java.lang.Boolean) r9
            boolean r9 = r9.booleanValue()
            if (r9 == 0) goto Lbd
            java.lang.Object r9 = r2.next()
            androidx.compose.ui.text.input.TextInputServiceAndroid$TextInputCommand r9 = (androidx.compose.ui.text.input.TextInputServiceAndroid.TextInputCommand) r9
            android.view.View r5 = r4.view
            boolean r5 = r5.isFocused()
            if (r5 != 0) goto L74
        L67:
            kotlinx.coroutines.channels.d<androidx.compose.ui.text.input.TextInputServiceAndroid$TextInputCommand> r9 = r4.textInputCommandChannel
            java.lang.Object r9 = r9.q()
            boolean r9 = kotlinx.coroutines.channels.h.i(r9)
            if (r9 != 0) goto L67
            goto L44
        L74:
            kotlin.jvm.internal.p0 r5 = new kotlin.jvm.internal.p0
            r5.<init>()
            kotlin.jvm.internal.p0 r6 = new kotlin.jvm.internal.p0
            r6.<init>()
        L7e:
            if (r9 == 0) goto L90
            o(r9, r5, r6)
            kotlinx.coroutines.channels.d<androidx.compose.ui.text.input.TextInputServiceAndroid$TextInputCommand> r9 = r4.textInputCommandChannel
            java.lang.Object r9 = r9.q()
            java.lang.Object r9 = kotlinx.coroutines.channels.h.f(r9)
            androidx.compose.ui.text.input.TextInputServiceAndroid$TextInputCommand r9 = (androidx.compose.ui.text.input.TextInputServiceAndroid.TextInputCommand) r9
            goto L7e
        L90:
            T r9 = r5.element
            java.lang.Boolean r7 = kotlin.coroutines.jvm.internal.b.a(r3)
            boolean r9 = kotlin.jvm.internal.t.e(r9, r7)
            if (r9 == 0) goto L9f
            r4.l()
        L9f:
            T r9 = r6.element
            java.lang.Boolean r9 = (java.lang.Boolean) r9
            if (r9 == 0) goto Lac
            boolean r9 = r9.booleanValue()
            r4.m(r9)
        Lac:
            T r9 = r5.element
            r5 = 0
            java.lang.Boolean r5 = kotlin.coroutines.jvm.internal.b.a(r5)
            boolean r9 = kotlin.jvm.internal.t.e(r9, r5)
            if (r9 == 0) goto L44
            r4.l()
            goto L44
        Lbd:
            w7.l0 r9 = w7.l0.INSTANCE
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.text.input.TextInputServiceAndroid.n(kotlin.coroutines.d):java.lang.Object");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public TextInputServiceAndroid(@NotNull View view) {
        t.j(view, "view");
        Context context = view.getContext();
        t.i(context, "view.context");
        this(view, new InputMethodManagerImpl(context));
    }
}
