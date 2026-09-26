package androidx.compose.ui.text.input;

/* JADX INFO: loaded from: classes9.dex */
public final class EditCommandKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean b(char c7, char c10) {
        if (Character.isHighSurrogate(c7) && Character.isLowSurrogate(c10)) {
            return true;
        }
        return false;
    }
}
