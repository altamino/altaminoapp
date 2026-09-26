package androidx.compose.foundation.text;

import androidx.compose.foundation.text.selection.TextFieldPreparedSelection;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.CommitTextCommand;
import androidx.compose.ui.text.input.DeleteSurroundingTextCommand;
import androidx.compose.ui.text.input.EditCommand;
import androidx.compose.ui.text.input.TextFieldValue;
import e8.l;
import java.util.List;
import kotlin.jvm.internal.k0;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
final class TextFieldKeyInput$process$2 extends v implements l<TextFieldPreparedSelection, l0> {
    final /* synthetic */ KeyCommand $command;
    final /* synthetic */ k0 $consumed;
    final /* synthetic */ TextFieldKeyInput this$0;

    /* JADX INFO: renamed from: androidx.compose.foundation.text.TextFieldKeyInput$process$2$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements l<TextFieldPreparedSelection, l0> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        AnonymousClass1() {
            super(1);
        }

        public final void a(@NotNull TextFieldPreparedSelection collapseLeftOr) {
            t.j(collapseLeftOr, "$this$collapseLeftOr");
            collapseLeftOr.C();
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(TextFieldPreparedSelection textFieldPreparedSelection) {
            a(textFieldPreparedSelection);
            return l0.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.TextFieldKeyInput$process$2$2, reason: invalid class name */
    static final class AnonymousClass2 extends v implements l<TextFieldPreparedSelection, l0> {
        public static final AnonymousClass2 INSTANCE = new AnonymousClass2();

        AnonymousClass2() {
            super(1);
        }

        public final void a(@NotNull TextFieldPreparedSelection collapseRightOr) {
            t.j(collapseRightOr, "$this$collapseRightOr");
            collapseRightOr.K();
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(TextFieldPreparedSelection textFieldPreparedSelection) {
            a(textFieldPreparedSelection);
            return l0.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.TextFieldKeyInput$process$2$3, reason: invalid class name */
    static final class AnonymousClass3 extends v implements l<TextFieldPreparedSelection, EditCommand> {
        public static final AnonymousClass3 INSTANCE = new AnonymousClass3();

        AnonymousClass3() {
            super(1);
        }

        @Override // e8.l
        @Nullable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final EditCommand invoke(@NotNull TextFieldPreparedSelection deleteIfSelectedOr) {
            t.j(deleteIfSelectedOr, "$this$deleteIfSelectedOr");
            return new DeleteSurroundingTextCommand(TextRange.i(deleteIfSelectedOr.w()) - deleteIfSelectedOr.s(), 0);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.TextFieldKeyInput$process$2$4, reason: invalid class name */
    static final class AnonymousClass4 extends v implements l<TextFieldPreparedSelection, EditCommand> {
        public static final AnonymousClass4 INSTANCE = new AnonymousClass4();

        AnonymousClass4() {
            super(1);
        }

        @Override // e8.l
        @Nullable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final EditCommand invoke(@NotNull TextFieldPreparedSelection deleteIfSelectedOr) {
            t.j(deleteIfSelectedOr, "$this$deleteIfSelectedOr");
            int iL = deleteIfSelectedOr.l();
            if (iL != -1) {
                return new DeleteSurroundingTextCommand(0, iL - TextRange.i(deleteIfSelectedOr.w()));
            }
            return null;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.TextFieldKeyInput$process$2$5, reason: invalid class name */
    static final class AnonymousClass5 extends v implements l<TextFieldPreparedSelection, EditCommand> {
        public static final AnonymousClass5 INSTANCE = new AnonymousClass5();

        AnonymousClass5() {
            super(1);
        }

        @Override // e8.l
        @Nullable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final EditCommand invoke(@NotNull TextFieldPreparedSelection deleteIfSelectedOr) {
            t.j(deleteIfSelectedOr, "$this$deleteIfSelectedOr");
            Integer numV = deleteIfSelectedOr.v();
            if (numV == null) {
                return null;
            }
            return new DeleteSurroundingTextCommand(TextRange.i(deleteIfSelectedOr.w()) - numV.intValue(), 0);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.TextFieldKeyInput$process$2$6, reason: invalid class name */
    static final class AnonymousClass6 extends v implements l<TextFieldPreparedSelection, EditCommand> {
        public static final AnonymousClass6 INSTANCE = new AnonymousClass6();

        AnonymousClass6() {
            super(1);
        }

        @Override // e8.l
        @Nullable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final EditCommand invoke(@NotNull TextFieldPreparedSelection deleteIfSelectedOr) {
            t.j(deleteIfSelectedOr, "$this$deleteIfSelectedOr");
            Integer numM = deleteIfSelectedOr.m();
            if (numM != null) {
                return new DeleteSurroundingTextCommand(0, numM.intValue() - TextRange.i(deleteIfSelectedOr.w()));
            }
            return null;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.TextFieldKeyInput$process$2$7, reason: invalid class name */
    static final class AnonymousClass7 extends v implements l<TextFieldPreparedSelection, EditCommand> {
        public static final AnonymousClass7 INSTANCE = new AnonymousClass7();

        AnonymousClass7() {
            super(1);
        }

        @Override // e8.l
        @Nullable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final EditCommand invoke(@NotNull TextFieldPreparedSelection deleteIfSelectedOr) {
            t.j(deleteIfSelectedOr, "$this$deleteIfSelectedOr");
            Integer numI = deleteIfSelectedOr.i();
            if (numI == null) {
                return null;
            }
            return new DeleteSurroundingTextCommand(TextRange.i(deleteIfSelectedOr.w()) - numI.intValue(), 0);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.TextFieldKeyInput$process$2$8, reason: invalid class name */
    static final class AnonymousClass8 extends v implements l<TextFieldPreparedSelection, EditCommand> {
        public static final AnonymousClass8 INSTANCE = new AnonymousClass8();

        AnonymousClass8() {
            super(1);
        }

        @Override // e8.l
        @Nullable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final EditCommand invoke(@NotNull TextFieldPreparedSelection deleteIfSelectedOr) {
            t.j(deleteIfSelectedOr, "$this$deleteIfSelectedOr");
            Integer numF = deleteIfSelectedOr.f();
            if (numF != null) {
                return new DeleteSurroundingTextCommand(0, numF.intValue() - TextRange.i(deleteIfSelectedOr.w()));
            }
            return null;
        }
    }

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[KeyCommand.values().length];
            iArr[KeyCommand.COPY.ordinal()] = 1;
            iArr[KeyCommand.PASTE.ordinal()] = 2;
            iArr[KeyCommand.CUT.ordinal()] = 3;
            iArr[KeyCommand.LEFT_CHAR.ordinal()] = 4;
            iArr[KeyCommand.RIGHT_CHAR.ordinal()] = 5;
            iArr[KeyCommand.LEFT_WORD.ordinal()] = 6;
            iArr[KeyCommand.RIGHT_WORD.ordinal()] = 7;
            iArr[KeyCommand.PREV_PARAGRAPH.ordinal()] = 8;
            iArr[KeyCommand.NEXT_PARAGRAPH.ordinal()] = 9;
            iArr[KeyCommand.UP.ordinal()] = 10;
            iArr[KeyCommand.DOWN.ordinal()] = 11;
            iArr[KeyCommand.PAGE_UP.ordinal()] = 12;
            iArr[KeyCommand.PAGE_DOWN.ordinal()] = 13;
            iArr[KeyCommand.LINE_START.ordinal()] = 14;
            iArr[KeyCommand.LINE_END.ordinal()] = 15;
            iArr[KeyCommand.LINE_LEFT.ordinal()] = 16;
            iArr[KeyCommand.LINE_RIGHT.ordinal()] = 17;
            iArr[KeyCommand.HOME.ordinal()] = 18;
            iArr[KeyCommand.END.ordinal()] = 19;
            iArr[KeyCommand.DELETE_PREV_CHAR.ordinal()] = 20;
            iArr[KeyCommand.DELETE_NEXT_CHAR.ordinal()] = 21;
            iArr[KeyCommand.DELETE_PREV_WORD.ordinal()] = 22;
            iArr[KeyCommand.DELETE_NEXT_WORD.ordinal()] = 23;
            iArr[KeyCommand.DELETE_FROM_LINE_START.ordinal()] = 24;
            iArr[KeyCommand.DELETE_TO_LINE_END.ordinal()] = 25;
            iArr[KeyCommand.NEW_LINE.ordinal()] = 26;
            iArr[KeyCommand.TAB.ordinal()] = 27;
            iArr[KeyCommand.SELECT_ALL.ordinal()] = 28;
            iArr[KeyCommand.SELECT_LEFT_CHAR.ordinal()] = 29;
            iArr[KeyCommand.SELECT_RIGHT_CHAR.ordinal()] = 30;
            iArr[KeyCommand.SELECT_LEFT_WORD.ordinal()] = 31;
            iArr[KeyCommand.SELECT_RIGHT_WORD.ordinal()] = 32;
            iArr[KeyCommand.SELECT_PREV_PARAGRAPH.ordinal()] = 33;
            iArr[KeyCommand.SELECT_NEXT_PARAGRAPH.ordinal()] = 34;
            iArr[KeyCommand.SELECT_LINE_START.ordinal()] = 35;
            iArr[KeyCommand.SELECT_LINE_END.ordinal()] = 36;
            iArr[KeyCommand.SELECT_LINE_LEFT.ordinal()] = 37;
            iArr[KeyCommand.SELECT_LINE_RIGHT.ordinal()] = 38;
            iArr[KeyCommand.SELECT_UP.ordinal()] = 39;
            iArr[KeyCommand.SELECT_DOWN.ordinal()] = 40;
            iArr[KeyCommand.SELECT_PAGE_UP.ordinal()] = 41;
            iArr[KeyCommand.SELECT_PAGE_DOWN.ordinal()] = 42;
            iArr[KeyCommand.SELECT_HOME.ordinal()] = 43;
            iArr[KeyCommand.SELECT_END.ordinal()] = 44;
            iArr[KeyCommand.DESELECT.ordinal()] = 45;
            iArr[KeyCommand.UNDO.ordinal()] = 46;
            iArr[KeyCommand.REDO.ordinal()] = 47;
            iArr[KeyCommand.CHARACTER_PALETTE.ordinal()] = 48;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TextFieldKeyInput$process$2(KeyCommand keyCommand, TextFieldKeyInput textFieldKeyInput, k0 k0Var) {
        super(1);
        this.$command = keyCommand;
        this.this$0 = textFieldKeyInput;
        this.$consumed = k0Var;
    }

    public final void a(@NotNull TextFieldPreparedSelection commandExecutionContext) {
        TextFieldValue textFieldValueG;
        TextFieldValue textFieldValueC;
        t.j(commandExecutionContext, "$this$commandExecutionContext");
        switch (WhenMappings.$EnumSwitchMapping$0[this.$command.ordinal()]) {
            case 1:
                this.this$0.g().k(false);
                break;
            case 2:
                this.this$0.g().L();
                break;
            case 3:
                this.this$0.g().o();
                break;
            case 4:
                commandExecutionContext.b(AnonymousClass1.INSTANCE);
                break;
            case 5:
                commandExecutionContext.c(AnonymousClass2.INSTANCE);
                break;
            case 6:
                commandExecutionContext.D();
                break;
            case 7:
                commandExecutionContext.L();
                break;
            case 8:
                commandExecutionContext.I();
                break;
            case 9:
                commandExecutionContext.F();
                break;
            case 10:
                commandExecutionContext.S();
                break;
            case 11:
                commandExecutionContext.B();
                break;
            case 12:
                commandExecutionContext.e0();
                break;
            case 13:
                commandExecutionContext.d0();
                break;
            case 14:
                commandExecutionContext.R();
                break;
            case 15:
                commandExecutionContext.O();
                break;
            case 16:
                commandExecutionContext.P();
                break;
            case 17:
                commandExecutionContext.Q();
                break;
            case 18:
                commandExecutionContext.N();
                break;
            case 19:
                commandExecutionContext.M();
                break;
            case 20:
                List<EditCommand> listA0 = commandExecutionContext.a0(AnonymousClass3.INSTANCE);
                if (listA0 != null) {
                    this.this$0.e(listA0);
                }
                break;
            case 21:
                List<EditCommand> listA1 = commandExecutionContext.a0(AnonymousClass4.INSTANCE);
                if (listA1 != null) {
                    this.this$0.e(listA1);
                }
                break;
            case 22:
                List<EditCommand> listA2 = commandExecutionContext.a0(AnonymousClass5.INSTANCE);
                if (listA2 != null) {
                    this.this$0.e(listA2);
                }
                break;
            case 23:
                List<EditCommand> listA3 = commandExecutionContext.a0(AnonymousClass6.INSTANCE);
                if (listA3 != null) {
                    this.this$0.e(listA3);
                }
                break;
            case 24:
                List<EditCommand> listA4 = commandExecutionContext.a0(AnonymousClass7.INSTANCE);
                if (listA4 != null) {
                    this.this$0.e(listA4);
                }
                break;
            case 25:
                List<EditCommand> listA5 = commandExecutionContext.a0(AnonymousClass8.INSTANCE);
                if (listA5 != null) {
                    this.this$0.e(listA5);
                }
                break;
            case 26:
                if (!this.this$0.h()) {
                    this.this$0.d(new CommitTextCommand("\n", 1));
                } else {
                    this.$consumed.element = false;
                }
                break;
            case 27:
                if (!this.this$0.h()) {
                    this.this$0.d(new CommitTextCommand("\t", 1));
                } else {
                    this.$consumed.element = false;
                }
                break;
            case 28:
                commandExecutionContext.T();
                break;
            case 29:
                commandExecutionContext.C().U();
                break;
            case 30:
                commandExecutionContext.K().U();
                break;
            case 31:
                commandExecutionContext.D().U();
                break;
            case 32:
                commandExecutionContext.L().U();
                break;
            case 33:
                commandExecutionContext.I().U();
                break;
            case 34:
                commandExecutionContext.F().U();
                break;
            case 35:
                commandExecutionContext.R().U();
                break;
            case 36:
                commandExecutionContext.O().U();
                break;
            case 37:
                commandExecutionContext.P().U();
                break;
            case 38:
                commandExecutionContext.Q().U();
                break;
            case 39:
                commandExecutionContext.S().U();
                break;
            case 40:
                commandExecutionContext.B().U();
                break;
            case 41:
                commandExecutionContext.e0().U();
                break;
            case 42:
                commandExecutionContext.d0().U();
                break;
            case 43:
                commandExecutionContext.N().U();
                break;
            case 44:
                commandExecutionContext.M().U();
                break;
            case 45:
                commandExecutionContext.d();
                break;
            case 46:
                UndoManager undoManagerI = this.this$0.i();
                if (undoManagerI != null) {
                    undoManagerI.b(commandExecutionContext.b0());
                }
                UndoManager undoManagerI2 = this.this$0.i();
                if (undoManagerI2 != null && (textFieldValueG = undoManagerI2.g()) != null) {
                    this.this$0.onValueChange.invoke(textFieldValueG);
                    break;
                }
                break;
            case 47:
                UndoManager undoManagerI3 = this.this$0.i();
                if (undoManagerI3 != null && (textFieldValueC = undoManagerI3.c()) != null) {
                    this.this$0.onValueChange.invoke(textFieldValueC);
                    break;
                }
                break;
            case 48:
                KeyEventHelpers_androidKt.b();
                break;
        }
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(TextFieldPreparedSelection textFieldPreparedSelection) {
        a(textFieldPreparedSelection);
        return l0.INSTANCE;
    }
}
