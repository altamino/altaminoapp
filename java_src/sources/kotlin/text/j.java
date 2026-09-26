package kotlin.text;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
final class j {

    @NotNull
    public static final j INSTANCE = new j();

    @NotNull
    public static final g value;

    static {
        String str = "[eE][+-]?(\\p{Digit}+)";
        value = new g("[\\x00-\\x20]*[+-]?(NaN|Infinity|((" + ("((\\p{Digit}+)(\\.)?((\\p{Digit}+)?)(" + str + ")?)|(\\.((\\p{Digit}+))(" + str + ")?)|((" + ("(0[xX](\\p{XDigit}+)(\\.)?)|(0[xX](\\p{XDigit}+)?(\\.)(\\p{XDigit}+))") + ")[pP][+-]?(\\p{Digit}+))") + ")[fFdD]?))[\\x00-\\x20]*");
    }

    private j() {
    }
}
