.class public final Landroidx/compose/runtime/ComposableSingletons$RecomposerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Landroidx/compose/runtime/ComposableSingletons$RecomposerKt;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static lambda-1:Le8/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/p<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/runtime/ComposableSingletons$RecomposerKt;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/compose/runtime/ComposableSingletons$RecomposerKt;-><init>()V

    .line 6
    .line 7
    sput-object v0, Landroidx/compose/runtime/ComposableSingletons$RecomposerKt;->INSTANCE:Landroidx/compose/runtime/ComposableSingletons$RecomposerKt;

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    sget-object v1, Landroidx/compose/runtime/ComposableSingletons$RecomposerKt$lambda-1$1;->INSTANCE:Landroidx/compose/runtime/ComposableSingletons$RecomposerKt$lambda-1$1;

    .line 11
    .line 12
    .line 13
    const v2, -0x41164c8a

    .line 14
    .line 15
    .line 16
    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->c(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    sput-object v0, Landroidx/compose/runtime/ComposableSingletons$RecomposerKt;->lambda-1:Le8/p;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
