package kotlin.text;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'IGNORE_CASE' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:485)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:399)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:364)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:349)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInvoke(EnumVisitor.java:315)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:288)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:160)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes6.dex */
public final class i implements f {
    private static final /* synthetic */ z7.a $ENTRIES;
    private static final /* synthetic */ i[] $VALUES;
    public static final i CANON_EQ;
    public static final i COMMENTS;
    public static final i DOT_MATCHES_ALL;
    public static final i IGNORE_CASE;
    public static final i LITERAL;
    public static final i MULTILINE;
    public static final i UNIX_LINES;
    private final int mask;
    private final int value;

    private i(String str, int i10, int i11, int i12) {
        super(str, i10);
        this.value = i11;
        this.mask = i12;
    }

    private static final /* synthetic */ i[] a() {
        return new i[]{IGNORE_CASE, MULTILINE, LITERAL, UNIX_LINES, COMMENTS, DOT_MATCHES_ALL, CANON_EQ};
    }

    public static i valueOf(String str) {
        return (i) Enum.valueOf(i.class, str);
    }

    public static i[] values() {
        return (i[]) $VALUES.clone();
    }

    @Override // kotlin.text.f
    public int getValue() {
        return this.value;
    }

    static {
        int i10 = 2;
        IGNORE_CASE = new i("IGNORE_CASE", 0, i10, 0, 2, null);
        int i11 = 0;
        int i12 = 2;
        kotlin.jvm.internal.k kVar = null;
        MULTILINE = new i("MULTILINE", 1, 8, i11, i12, kVar);
        int i13 = 0;
        int i14 = 2;
        kotlin.jvm.internal.k kVar2 = null;
        LITERAL = new i("LITERAL", i10, 16, i13, i14, kVar2);
        UNIX_LINES = new i("UNIX_LINES", 3, 1, i11, i12, kVar);
        COMMENTS = new i("COMMENTS", 4, 4, i13, i14, kVar2);
        DOT_MATCHES_ALL = new i("DOT_MATCHES_ALL", 5, 32, i11, i12, kVar);
        CANON_EQ = new i("CANON_EQ", 6, 128, i13, i14, kVar2);
        i[] iVarArrA = a();
        $VALUES = iVarArrA;
        $ENTRIES = z7.b.a(iVarArrA);
    }

    /* synthetic */ i(String str, int i10, int i11, int i12, int i13, kotlin.jvm.internal.k kVar) {
        this(str, i10, i11, (i13 & 2) != 0 ? i11 : i12);
    }
}
