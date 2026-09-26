package androidx.datastore.core;

import e8.l;
import e8.p;
import java.util.Iterator;
import java.util.List;
import kotlin.coroutines.d;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.p0;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes2.dex */
public final class DataMigrationInitializer<T> {

    @NotNull
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Code duplicated, block: B:27:0x0071  */
        /* JADX WARN: Code duplicated, block: B:37:0x009c  */
        /* JADX WARN: Code duplicated, block: B:39:0x009f  */
        /* JADX WARN: Code duplicated, block: B:43:0x0083 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:45:? A[LOOP:0: B:25:0x006b->B:45:?, LOOP_END, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        /* JADX WARN: Type inference failed for: r9v3, types: [T, java.lang.Throwable] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x0088 -> B:25:0x006b). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x008b -> B:25:0x006b). Please report as a decompilation issue!!! */
        public final <T> Object c(List<? extends DataMigration<T>> list, InitializerApi<T> initializerApi, d<? super l0> dVar) throws Throwable {
            DataMigrationInitializer$Companion$runMigrations$1 dataMigrationInitializer$Companion$runMigrations$1;
            List list2;
            p0 p0Var;
            Iterator<T> it;
            Throwable th;
            l lVar;
            if (dVar instanceof DataMigrationInitializer$Companion$runMigrations$1) {
                dataMigrationInitializer$Companion$runMigrations$1 = (DataMigrationInitializer$Companion$runMigrations$1) dVar;
                int i10 = dataMigrationInitializer$Companion$runMigrations$1.label;
                if ((i10 & Integer.MIN_VALUE) != 0) {
                    dataMigrationInitializer$Companion$runMigrations$1.label = i10 - Integer.MIN_VALUE;
                } else {
                    dataMigrationInitializer$Companion$runMigrations$1 = new DataMigrationInitializer$Companion$runMigrations$1(this, dVar);
                }
            } else {
                dataMigrationInitializer$Companion$runMigrations$1 = new DataMigrationInitializer$Companion$runMigrations$1(this, dVar);
            }
            Object obj = dataMigrationInitializer$Companion$runMigrations$1.result;
            Object objE = kotlin.coroutines.intrinsics.d.e();
            int i11 = dataMigrationInitializer$Companion$runMigrations$1.label;
            if (i11 != 0) {
                if (i11 == 1) {
                    list2 = (List) dataMigrationInitializer$Companion$runMigrations$1.L$0;
                    w.b(obj);
                } else {
                    if (i11 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    it = (Iterator) dataMigrationInitializer$Companion$runMigrations$1.L$1;
                    p0Var = (p0) dataMigrationInitializer$Companion$runMigrations$1.L$0;
                    try {
                        w.b(obj);
                    } catch (Throwable 
                    /*  JADX ERROR: Method code generation error
                        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.getCodeVar()" because "ssaVar" is null
                        	at jadx.core.codegen.RegionGen.makeCatchBlock(RegionGen.java:372)
                        	at jadx.core.codegen.RegionGen.makeTryCatch(RegionGen.java:335)
                        	at jadx.core.dex.regions.TryCatchRegion.generate(TryCatchRegion.java:85)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                        	at jadx.core.dex.regions.Region.generate(Region.java:35)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                        	at jadx.core.dex.regions.Region.generate(Region.java:35)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                        	at jadx.core.dex.regions.Region.generate(Region.java:35)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                        	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                        	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:140)
                        	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                        	at jadx.core.dex.regions.Region.generate(Region.java:35)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                        	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                        	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                        	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                        	at jadx.core.dex.regions.Region.generate(Region.java:35)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                        	at jadx.core.dex.regions.Region.generate(Region.java:35)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                        	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:291)
                        	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:270)
                        	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:420)
                        	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:345)
                        	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$2(ClassGen.java:299)
                        	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
                        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                        	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                        	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
                        */
                    /*
                        this = this;
                        boolean r0 = r9 instanceof androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$1
                        if (r0 == 0) goto L13
                        r0 = r9
                        androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$1 r0 = (androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.label = r1
                        goto L18
                    L13:
                        androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$1 r0 = new androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$1
                        r0.<init>(r6, r9)
                    L18:
                        java.lang.Object r9 = r0.result
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.b.e()
                        int r2 = r0.label
                        r3 = 2
                        r4 = 1
                        if (r2 == 0) goto L46
                        if (r2 == r4) goto L3e
                        if (r2 != r3) goto L36
                        java.lang.Object r7 = r0.L$1
                        java.util.Iterator r7 = (java.util.Iterator) r7
                        java.lang.Object r8 = r0.L$0
                        kotlin.jvm.internal.p0 r8 = (kotlin.jvm.internal.p0) r8
                        w7.w.b(r9)     // Catch: java.lang.Throwable -> L34
                        goto L6b
                    L34:
                        r9 = move-exception
                        goto L84
                    L36:
                        java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                        java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                        r7.<init>(r8)
                        throw r7
                    L3e:
                        java.lang.Object r7 = r0.L$0
                        java.util.List r7 = (java.util.List) r7
                        w7.w.b(r9)
                        goto L60
                    L46:
                        w7.w.b(r9)
                        java.util.ArrayList r9 = new java.util.ArrayList
                        r9.<init>()
                        androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$2 r2 = new androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$2
                        r5 = 0
                        r2.<init>(r7, r9, r5)
                        r0.L$0 = r9
                        r0.label = r4
                        java.lang.Object r7 = r8.a(r2, r0)
                        if (r7 != r1) goto L5f
                        return r1
                    L5f:
                        r7 = r9
                    L60:
                        kotlin.jvm.internal.p0 r8 = new kotlin.jvm.internal.p0
                        r8.<init>()
                        java.lang.Iterable r7 = (java.lang.Iterable) r7
                        java.util.Iterator r7 = r7.iterator()
                    L6b:
                        boolean r9 = r7.hasNext()
                        if (r9 == 0) goto L96
                        java.lang.Object r9 = r7.next()
                        e8.l r9 = (e8.l) r9
                        r0.L$0 = r8     // Catch: java.lang.Throwable -> L34
                        r0.L$1 = r7     // Catch: java.lang.Throwable -> L34
                        r0.label = r3     // Catch: java.lang.Throwable -> L34
                        java.lang.Object r9 = r9.invoke(r0)     // Catch: java.lang.Throwable -> L34
                        if (r9 != r1) goto L6b
                        return r1
                    L84:
                        T r2 = r8.element
                        if (r2 != 0) goto L8b
                        r8.element = r9
                        goto L6b
                    L8b:
                        kotlin.jvm.internal.t.g(r2)
                        T r2 = r8.element
                        java.lang.Throwable r2 = (java.lang.Throwable) r2
                        w7.e.a(r2, r9)
                        goto L6b
                    L96:
                        T r7 = r8.element
                        java.lang.Throwable r7 = (java.lang.Throwable) r7
                        if (r7 != 0) goto L9f
                        w7.l0 r7 = w7.l0.INSTANCE
                        return r7
                    L9f:
                        throw r7
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.DataMigrationInitializer.Companion.c(java.util.List, androidx.datastore.core.InitializerApi, kotlin.coroutines.d):java.lang.Object");
                }

                @NotNull
                public final <T> p<InitializerApi<T>, d<? super l0>, Object> b(@NotNull List<? extends DataMigration<T>> migrations) {
                    t.j(migrations, "migrations");
                    return new DataMigrationInitializer$Companion$getInitializer$1(migrations, null);
                }
            }
        }
