package kotlinx.serialization.json.internal;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import kotlinx.serialization.json.JsonArray;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonNull;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.JsonPrimitive;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class o0 {
    private final boolean isLenient;

    @NotNull
    private final kotlinx.serialization.json.internal.a lexer;
    private int stackDepth;

    @kotlin.coroutines.jvm.internal.f(c = "kotlinx.serialization.json.internal.JsonTreeReader", f = "JsonTreeReader.kt", l = {23}, m = "readObject")
    static final class b extends kotlin.coroutines.jvm.internal.d {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        /* synthetic */ Object result;

        b(kotlin.coroutines.d<? super b> dVar) {
            super(dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return o0.this.h(null, this);
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "kotlinx.serialization.json.internal.JsonTreeReader$readDeepRecursive$1", f = "JsonTreeReader.kt", l = {112}, m = "invokeSuspend")
    static final class a extends kotlin.coroutines.jvm.internal.k implements e8.q<w7.c<w7.l0, JsonElement>, w7.l0, kotlin.coroutines.d<? super JsonElement>, Object> {
        private /* synthetic */ Object L$0;
        int label;

        a(kotlin.coroutines.d<? super a> dVar) {
            super(3, dVar);
        }

        @Override // e8.q
        @Nullable
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public final Object invoke(@NotNull w7.c<w7.l0, JsonElement> cVar, @NotNull w7.l0 l0Var, @Nullable kotlin.coroutines.d<? super JsonElement> dVar) {
            a aVar = o0.this.new a(dVar);
            aVar.L$0 = cVar;
            return aVar.invokeSuspend(w7.l0.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object objE = kotlin.coroutines.intrinsics.d.e();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 == 1) {
                    w7.w.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                w7.w.b(obj);
                w7.c cVar = (w7.c) this.L$0;
                byte bE = o0.this.lexer.E();
                if (bE == 1) {
                    return o0.this.j(true);
                }
                if (bE == 0) {
                    return o0.this.j(false);
                }
                if (bE == 6) {
                    o0 o0Var = o0.this;
                    this.label = 1;
                    obj = o0Var.h(cVar, this);
                    if (obj == objE) {
                        return objE;
                    }
                } else {
                    if (bE == 8) {
                        return o0.this.f();
                    }
                    kotlinx.serialization.json.internal.a.y(o0.this.lexer, "Can't begin reading element, unexpected token", 0, null, 6, null);
                    throw new w7.i();
                }
            }
            return (JsonElement) obj;
        }
    }

    public o0(@NotNull kotlinx.serialization.json.e configuration, @NotNull kotlinx.serialization.json.internal.a lexer) {
        kotlin.jvm.internal.t.j(configuration, "configuration");
        kotlin.jvm.internal.t.j(lexer, "lexer");
        this.lexer = lexer;
        this.isLenient = configuration.l();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final JsonElement f() {
        byte bM = this.lexer.m();
        if (this.lexer.E() == 4) {
            kotlinx.serialization.json.internal.a.y(this.lexer, "Unexpected leading comma", 0, null, 6, null);
            throw new w7.i();
        }
        ArrayList arrayList = new ArrayList();
        while (this.lexer.f()) {
            arrayList.add(e());
            bM = this.lexer.m();
            if (bM != 4) {
                kotlinx.serialization.json.internal.a aVar = this.lexer;
                boolean z6 = bM == 9;
                int i10 = aVar.currentPosition;
                if (!z6) {
                    kotlinx.serialization.json.internal.a.y(aVar, "Expected end of the array or comma", i10, null, 4, null);
                    throw new w7.i();
                }
            }
        }
        if (bM == 8) {
            this.lexer.n((byte) 9);
        } else if (bM == 4) {
            kotlinx.serialization.json.internal.a.y(this.lexer, "Unexpected trailing comma", 0, null, 6, null);
            throw new w7.i();
        }
        return new JsonArray(arrayList);
    }

    private final JsonElement g() {
        return (JsonElement) w7.b.b(new w7.a(new a(null)), w7.l0.INSTANCE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:19:0x0072  */
    /* JADX WARN: Code duplicated, block: B:21:0x0076  */
    /* JADX WARN: Code duplicated, block: B:22:0x007d  */
    /* JADX WARN: Code duplicated, block: B:25:0x009b A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:26:0x009c  */
    /* JADX WARN: Code duplicated, block: B:29:0x00b3 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:30:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:31:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:33:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x009c -> B:27:0x00a6). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object h(w7.c<w7.l0, kotlinx.serialization.json.JsonElement> r21, kotlin.coroutines.d<? super kotlinx.serialization.json.JsonElement> r22) {
        /*
            Method dump skipped, instruction units count: 256
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.serialization.json.internal.o0.h(w7.c, kotlin.coroutines.d):java.lang.Object");
    }

    private final JsonElement i() {
        byte bN = this.lexer.n((byte) 6);
        if (this.lexer.E() == 4) {
            kotlinx.serialization.json.internal.a.y(this.lexer, "Unexpected leading comma", 0, null, 6, null);
            throw new w7.i();
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        while (this.lexer.f()) {
            String strS = this.isLenient ? this.lexer.s() : this.lexer.q();
            this.lexer.n((byte) 5);
            linkedHashMap.put(strS, e());
            bN = this.lexer.m();
            if (bN != 4) {
                if (bN == 7) {
                    break;
                }
                kotlinx.serialization.json.internal.a.y(this.lexer, "Expected end of the object or comma", 0, null, 6, null);
                throw new w7.i();
            }
        }
        if (bN == 6) {
            this.lexer.n((byte) 7);
        } else if (bN == 4) {
            kotlinx.serialization.json.internal.a.y(this.lexer, "Unexpected trailing comma", 0, null, 6, null);
            throw new w7.i();
        }
        return new JsonObject(linkedHashMap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final JsonPrimitive j(boolean z6) {
        String strS = (this.isLenient || !z6) ? this.lexer.s() : this.lexer.q();
        return (z6 || !kotlin.jvm.internal.t.e(strS, "null")) ? new kotlinx.serialization.json.n(strS, z6) : JsonNull.INSTANCE;
    }

    @NotNull
    public final JsonElement e() {
        byte bE = this.lexer.E();
        if (bE == 1) {
            return j(true);
        }
        if (bE == 0) {
            return j(false);
        }
        if (bE == 6) {
            int i10 = this.stackDepth + 1;
            this.stackDepth = i10;
            JsonElement jsonElementG = i10 == 200 ? g() : i();
            this.stackDepth--;
            return jsonElementG;
        }
        if (bE == 8) {
            return f();
        }
        kotlinx.serialization.json.internal.a.y(this.lexer, "Cannot begin reading element, unexpected token: " + ((int) bE), 0, null, 6, null);
        throw new w7.i();
    }
}
