package kotlin.jvm.internal;

import java.lang.annotation.Annotation;
import java.util.List;
import kotlin.reflect.KClass;
import kotlin.reflect.KClassifier;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeProjection;
import kotlin.reflect.KVariance;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public final class w0 implements KType {

    @NotNull
    public static final a Companion = new a(null);
    public static final int IS_MARKED_NULLABLE = 1;
    public static final int IS_MUTABLE_COLLECTION_TYPE = 2;
    public static final int IS_NOTHING_TYPE = 4;

    @NotNull
    private final List<KTypeProjection> arguments;

    @NotNull
    private final KClassifier classifier;
    private final int flags;

    @Nullable
    private final KType platformTypeUpperBound;

    public static final class a {
        public /* synthetic */ a(k kVar) {
            this();
        }

        private a() {
        }
    }

    public /* synthetic */ class b {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[KVariance.values().length];
            try {
                iArr[KVariance.INVARIANT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[KVariance.IN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[KVariance.OUT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    static final class c extends v implements e8.l<KTypeProjection, CharSequence> {
        c() {
            super(1);
        }

        @Override // e8.l
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CharSequence invoke(@NotNull KTypeProjection it) {
            t.j(it, "it");
            return w0.this.c(it);
        }
    }

    public w0(@NotNull KClassifier classifier, @NotNull List<KTypeProjection> arguments, @Nullable KType kType, int i10) {
        t.j(classifier, "classifier");
        t.j(arguments, "arguments");
        this.classifier = classifier;
        this.arguments = arguments;
        this.platformTypeUpperBound = kType;
        this.flags = i10;
    }

    @Override // kotlin.reflect.KType
    @NotNull
    public List<KTypeProjection> getArguments() {
        return this.arguments;
    }

    @Override // kotlin.reflect.KType
    @NotNull
    public KClassifier getClassifier() {
        return this.classifier;
    }

    @Override // kotlin.reflect.KType
    public boolean isMarkedNullable() {
        return (this.flags & 1) != 0;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public w0(@NotNull KClassifier classifier, @NotNull List<KTypeProjection> arguments, boolean z6) {
        this(classifier, arguments, null, z6 ? 1 : 0);
        t.j(classifier, "classifier");
        t.j(arguments, "arguments");
    }

    private final String e(Class<?> cls) {
        if (t.e(cls, boolean[].class)) {
            return "kotlin.BooleanArray";
        }
        if (t.e(cls, char[].class)) {
            return "kotlin.CharArray";
        }
        if (t.e(cls, byte[].class)) {
            return "kotlin.ByteArray";
        }
        if (t.e(cls, short[].class)) {
            return "kotlin.ShortArray";
        }
        if (t.e(cls, int[].class)) {
            return "kotlin.IntArray";
        }
        if (t.e(cls, float[].class)) {
            return "kotlin.FloatArray";
        }
        if (t.e(cls, long[].class)) {
            return "kotlin.LongArray";
        }
        return t.e(cls, double[].class) ? "kotlin.DoubleArray" : "kotlin.Array";
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof w0) {
            w0 w0Var = (w0) obj;
            if (t.e(getClassifier(), w0Var.getClassifier()) && t.e(getArguments(), w0Var.getArguments()) && t.e(this.platformTypeUpperBound, w0Var.platformTypeUpperBound) && this.flags == w0Var.flags) {
                return true;
            }
        }
        return false;
    }

    @NotNull
    public String toString() {
        return d(false) + " (Kotlin reflection is not available)";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String c(KTypeProjection kTypeProjection) {
        w0 w0Var;
        String strValueOf;
        if (kTypeProjection.getVariance() == null) {
            return "*";
        }
        KType type = kTypeProjection.getType();
        if (type instanceof w0) {
            w0Var = (w0) type;
        } else {
            w0Var = null;
        }
        if (w0Var == null || (strValueOf = w0Var.d(true)) == null) {
            strValueOf = String.valueOf(kTypeProjection.getType());
        }
        int i10 = b.$EnumSwitchMapping$0[kTypeProjection.getVariance().ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3) {
                    return "out " + strValueOf;
                }
                throw new w7.s();
            }
            return "in " + strValueOf;
        }
        return strValueOf;
    }

    private final String d(boolean z6) {
        KClass kClass;
        String name;
        String strT0;
        KClassifier classifier = getClassifier();
        Class<?> clsA = null;
        if (classifier instanceof KClass) {
            kClass = (KClass) classifier;
        } else {
            kClass = null;
        }
        if (kClass != null) {
            clsA = d8.a.a(kClass);
        }
        if (clsA == null) {
            name = getClassifier().toString();
        } else if ((this.flags & 4) != 0) {
            name = "kotlin.Nothing";
        } else if (clsA.isArray()) {
            name = e(clsA);
        } else if (z6 && clsA.isPrimitive()) {
            KClassifier classifier2 = getClassifier();
            t.h(classifier2, "null cannot be cast to non-null type kotlin.reflect.KClass<*>");
            name = d8.a.b((KClass) classifier2).getName();
        } else {
            name = clsA.getName();
        }
        String str = "";
        if (!getArguments().isEmpty()) {
            strT0 = kotlin.collections.d0.t0(getArguments(), ", ", "<", ">", 0, null, new c(), 24, null);
        } else {
            strT0 = "";
        }
        if (isMarkedNullable()) {
            str = "?";
        }
        String str2 = name + strT0 + str;
        KType kType = this.platformTypeUpperBound;
        if (kType instanceof w0) {
            String strD = ((w0) kType).d(true);
            if (!t.e(strD, str2)) {
                if (t.e(strD, str2 + '?')) {
                    return str2 + '!';
                }
                return '(' + str2 + ".." + strD + ')';
            }
            return str2;
        }
        return str2;
    }

    @Override // kotlin.reflect.KAnnotatedElement
    @NotNull
    public List<Annotation> getAnnotations() {
        return kotlin.collections.v.m();
    }

    public int hashCode() {
        return (((getClassifier().hashCode() * 31) + getArguments().hashCode()) * 31) + this.flags;
    }
}
