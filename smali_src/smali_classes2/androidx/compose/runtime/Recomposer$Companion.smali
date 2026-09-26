.class public final Landroidx/compose/runtime/Recomposer$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/Recomposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecomposer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/Recomposer$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n*L\n1#1,1200:1\n1358#2:1201\n1444#2,5:1202\n1849#2,2:1219\n32#3,6:1207\n32#3,6:1213\n*S KotlinDebug\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/Recomposer$Companion\n*L\n1107#1:1201\n1107#1:1202,5\n1120#1:1219,2\n1115#1:1207,6\n1116#1:1213,6\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic a(Landroidx/compose/runtime/Recomposer$Companion;Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/compose/runtime/Recomposer$Companion;->c(Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;)V

    .line 4
    return-void
.end method

.method public static final synthetic b(Landroidx/compose/runtime/Recomposer$Companion;Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/compose/runtime/Recomposer$Companion;->d(Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;)V

    .line 4
    return-void
.end method

.method private final c(Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    :cond_0
    invoke-static {}, Landroidx/compose/runtime/Recomposer;->K()Lkotlinx/coroutines/flow/x;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lkotlinx/coroutines/flow/x;->getValue()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;->add(Ljava/lang/Object;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-static {}, Landroidx/compose/runtime/Recomposer;->K()Lkotlinx/coroutines/flow/x;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    .line 23
    invoke-interface {v2, v0, v1}, Lkotlinx/coroutines/flow/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    :cond_1
    return-void
.end method

.method private final d(Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    :cond_0
    invoke-static {}, Landroidx/compose/runtime/Recomposer;->K()Lkotlinx/coroutines/flow/x;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lkotlinx/coroutines/flow/x;->getValue()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;->remove(Ljava/lang/Object;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-static {}, Landroidx/compose/runtime/Recomposer;->K()Lkotlinx/coroutines/flow/x;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    .line 23
    invoke-interface {v2, v0, v1}, Lkotlinx/coroutines/flow/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    :cond_1
    return-void
.end method
