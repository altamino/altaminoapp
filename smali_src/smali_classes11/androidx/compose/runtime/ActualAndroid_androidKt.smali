.class public final Landroidx/compose/runtime/ActualAndroid_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DefaultMonotonicFrameClock$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DisallowDefaultMonotonicFrameClock:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/runtime/ActualAndroid_androidKt$DefaultMonotonicFrameClock$2;->INSTANCE:Landroidx/compose/runtime/ActualAndroid_androidKt$DefaultMonotonicFrameClock$2;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sput-object v0, Landroidx/compose/runtime/ActualAndroid_androidKt;->DefaultMonotonicFrameClock$delegate:Lw7/m;

    .line 9
    return-void
.end method

.method public static final a(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/snapshots/SnapshotMutableState;
    .locals 1
    .param p1    # Landroidx/compose/runtime/SnapshotMutationPolicy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroidx/compose/runtime/SnapshotMutationPolicy<",
            "TT;>;)",
            "Landroidx/compose/runtime/snapshots/SnapshotMutableState<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "policy"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;-><init>(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)V

    .line 11
    return-object v0
.end method
