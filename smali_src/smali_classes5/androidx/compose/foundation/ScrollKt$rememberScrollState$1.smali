.class final Landroidx/compose/foundation/ScrollKt$rememberScrollState$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/ScrollKt;->c(ILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/ScrollState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/a<",
        "Landroidx/compose/foundation/ScrollState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $initial:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/ScrollKt$rememberScrollState$1;->$initial:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()Landroidx/compose/foundation/ScrollState;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/foundation/ScrollState;

    .line 3
    .line 4
    iget v1, p0, Landroidx/compose/foundation/ScrollKt$rememberScrollState$1;->$initial:I

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Landroidx/compose/foundation/ScrollState;-><init>(I)V

    .line 8
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/foundation/ScrollKt$rememberScrollState$1;->b()Landroidx/compose/foundation/ScrollState;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
