.class public final Landroidx/compose/runtime/CompositionContextKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EmptyCompositionLocalMap:Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap<",
            "Landroidx/compose/runtime/CompositionLocal<",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/ExtensionsKt;->a()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sput-object v0, Landroidx/compose/runtime/CompositionContextKt;->EmptyCompositionLocalMap:Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    .line 7
    return-void
.end method

.method public static final synthetic a()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/runtime/CompositionContextKt;->EmptyCompositionLocalMap:Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    return-object v0
.end method
