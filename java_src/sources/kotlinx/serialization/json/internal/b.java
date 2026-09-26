package kotlinx.serialization.json.internal;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class b {
    public static final char BEGIN_LIST = '[';
    public static final char BEGIN_OBJ = '{';
    public static final char COLON = ':';
    public static final char COMMA = ',';
    private static final int CTC_MAX = 126;
    public static final char END_LIST = ']';
    public static final char END_OBJ = '}';
    private static final int ESC2C_MAX = 117;
    public static final char INVALID = 0;

    @NotNull
    public static final String NULL = "null";
    public static final char STRING = '\"';
    public static final char STRING_ESC = '\\';
    public static final byte TC_BEGIN_LIST = 8;
    public static final byte TC_BEGIN_OBJ = 6;
    public static final byte TC_COLON = 5;
    public static final byte TC_COMMA = 4;
    public static final byte TC_END_LIST = 9;
    public static final byte TC_END_OBJ = 7;
    public static final byte TC_EOF = 10;
    public static final byte TC_INVALID = 127;
    public static final byte TC_OTHER = 0;
    public static final byte TC_STRING = 1;
    public static final byte TC_STRING_ESC = 2;
    public static final byte TC_WHITESPACE = 3;
    public static final char UNICODE_ESC = 'u';

    @NotNull
    public static final String allowStructuredMapKeysHint = "Use 'allowStructuredMapKeys = true' in 'Json {}' builder to convert such maps to [key1, value1, key2, value2,...] arrays.";
    public static final int asciiCaseMask = 32;

    @NotNull
    public static final String coerceInputValuesHint = "Use 'coerceInputValues = true' in 'Json {}` builder to coerce nulls to default values.";

    @NotNull
    public static final String ignoreUnknownKeysHint = "Use 'ignoreUnknownKeys = true' in 'Json {}' builder to ignore unknown keys.";

    @NotNull
    public static final String lenientHint = "Use 'isLenient = true' in 'Json {}` builder to accept non-compliant JSON.";

    @NotNull
    public static final String specialFlowingValuesHint = "It is possible to deserialize them using 'JsonBuilder.allowSpecialFloatingPointValues = true'";

    public static final byte a(char c7) {
        if (c7 < '~') {
            return j.CHAR_TO_TOKEN[c7];
        }
        return (byte) 0;
    }

    public static final char b(int i10) {
        if (i10 < 117) {
            return j.ESCAPE_2_CHAR[i10];
        }
        return (char) 0;
    }
}
