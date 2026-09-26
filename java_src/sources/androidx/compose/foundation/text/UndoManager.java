package androidx.compose.foundation.text;

import androidx.compose.ui.text.input.TextFieldValue;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class UndoManager {
    private boolean forceNextSnapshot;

    @Nullable
    private Long lastSnapshot;
    private final int maxStoredCharacters;

    @Nullable
    private Entry redoStack;
    private int storedCharacters;

    @Nullable
    private Entry undoStack;

    private static final class Entry {

        @Nullable
        private Entry next;

        @NotNull
        private TextFieldValue value;

        public Entry(@Nullable Entry entry, @NotNull TextFieldValue value) {
            t.j(value, "value");
            this.next = entry;
            this.value = value;
        }

        @Nullable
        public final Entry a() {
            return this.next;
        }

        @NotNull
        public final TextFieldValue b() {
            return this.value;
        }

        public final void c(@Nullable Entry entry) {
            this.next = entry;
        }

        public final void d(@NotNull TextFieldValue textFieldValue) {
            t.j(textFieldValue, "<set-?>");
            this.value = textFieldValue;
        }

        public /* synthetic */ Entry(Entry entry, TextFieldValue textFieldValue, int i10, k kVar) {
            this((i10 & 1) != 0 ? null : entry, textFieldValue);
        }
    }

    public UndoManager() {
        this(0, 1, null);
    }

    public final void a() {
        this.forceNextSnapshot = true;
    }

    public UndoManager(int i10) {
        this.maxStoredCharacters = i10;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x001b  */
    private final void d() {
        Entry entryA;
        Entry entryA2 = this.undoStack;
        if ((entryA2 != null ? entryA2.a() : null) == null) {
            return;
        }
        while (true) {
            if (entryA2 == null) {
                entryA = null;
            } else {
                Entry entryA3 = entryA2.a();
                if (entryA3 != null) {
                    entryA = entryA3.a();
                } else {
                    entryA = null;
                }
            }
            if (entryA == null) {
                break;
            } else {
                entryA2 = entryA2.a();
            }
        }
        if (entryA2 == null) {
            return;
        }
        entryA2.c(null);
    }

    public static /* synthetic */ void f(UndoManager undoManager, TextFieldValue textFieldValue, long j6, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            j6 = UndoManager_jvmKt.a();
        }
        undoManager.e(textFieldValue, j6);
    }

    public final void b(@NotNull TextFieldValue value) {
        TextFieldValue textFieldValueB;
        t.j(value, "value");
        this.forceNextSnapshot = false;
        Entry entry = this.undoStack;
        if (t.e(value, entry != null ? entry.b() : null)) {
            return;
        }
        String strH = value.h();
        Entry entry2 = this.undoStack;
        if (t.e(strH, (entry2 == null || (textFieldValueB = entry2.b()) == null) ? null : textFieldValueB.h())) {
            Entry entry3 = this.undoStack;
            if (entry3 == null) {
                return;
            }
            entry3.d(value);
            return;
        }
        this.undoStack = new Entry(this.undoStack, value);
        this.redoStack = null;
        int length = this.storedCharacters + value.h().length();
        this.storedCharacters = length;
        if (length > this.maxStoredCharacters) {
            d();
        }
    }

    @Nullable
    public final TextFieldValue c() {
        Entry entry = this.redoStack;
        if (entry == null) {
            return null;
        }
        this.redoStack = entry.a();
        this.undoStack = new Entry(this.undoStack, entry.b());
        this.storedCharacters += entry.b().h().length();
        return entry.b();
    }

    public final void e(@NotNull TextFieldValue value, long j6) {
        t.j(value, "value");
        if (!this.forceNextSnapshot) {
            Long l = this.lastSnapshot;
            if (j6 <= (l != null ? l.longValue() : 0L) + ((long) UndoManagerKt.a())) {
                return;
            }
        }
        this.lastSnapshot = Long.valueOf(j6);
        b(value);
    }

    @Nullable
    public final TextFieldValue g() {
        Entry entryA;
        Entry entry = this.undoStack;
        if (entry == null || (entryA = entry.a()) == null) {
            return null;
        }
        this.undoStack = entryA;
        this.storedCharacters -= entry.b().h().length();
        this.redoStack = new Entry(this.redoStack, entry.b());
        return entryA.b();
    }

    public /* synthetic */ UndoManager(int i10, int i11, k kVar) {
        this((i11 & 1) != 0 ? 100000 : i10);
    }
}
