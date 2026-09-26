.class final Landroidx/compose/material/AlertDialogKt$AlertDialogContent$1$1$2$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/AlertDialogKt$AlertDialogContent$1;->a(Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/p<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $$dirty:I

.field final synthetic $text:Le8/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/p<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Le8/p;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/material/AlertDialogKt$AlertDialogContent$1$1$2$1;->$text:Le8/p;

    iput p2, p0, Landroidx/compose/material/AlertDialogKt$AlertDialogContent$1$1$2$1;->$$dirty:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/Composer;I)V
    .locals 4
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
    .end annotation

    .line 1
    .line 2
    and-int/lit8 p2, p2, 0xb

    .line 3
    const/4 v0, 0x2

    .line 4
    .line 5
    if-ne p2, v0, :cond_1

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->b()Z

    .line 9
    move-result p2

    .line 10
    .line 11
    if-nez p2, :cond_0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->g()V

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    :goto_0
    const/4 p2, 0x1

    .line 18
    .line 19
    new-array v0, p2, [Landroidx/compose/runtime/ProvidedValue;

    .line 20
    .line 21
    .line 22
    invoke-static {}, Landroidx/compose/material/ContentAlphaKt;->a()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    sget-object v2, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    .line 26
    const/4 v3, 0x6

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, p1, v3}, Landroidx/compose/material/ContentAlpha;->d(Landroidx/compose/runtime/Composer;I)F

    .line 30
    move-result v2

    .line 31
    .line 32
    .line 33
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 38
    move-result-object v1

    .line 39
    const/4 v2, 0x0

    .line 40
    .line 41
    aput-object v1, v0, v2

    .line 42
    .line 43
    new-instance v1, Landroidx/compose/material/AlertDialogKt$AlertDialogContent$1$1$2$1$1;

    .line 44
    .line 45
    iget-object v2, p0, Landroidx/compose/material/AlertDialogKt$AlertDialogContent$1$1$2$1;->$text:Le8/p;

    .line 46
    .line 47
    iget v3, p0, Landroidx/compose/material/AlertDialogKt$AlertDialogContent$1$1$2$1;->$$dirty:I

    .line 48
    .line 49
    .line 50
    invoke-direct {v1, v2, v3}, Landroidx/compose/material/AlertDialogKt$AlertDialogContent$1$1$2$1$1;-><init>(Le8/p;I)V

    .line 51
    .line 52
    .line 53
    const v2, 0x7e1e62ff

    .line 54
    .line 55
    .line 56
    invoke-static {p1, v2, p2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 57
    move-result-object p2

    .line 58
    .line 59
    const/16 v1, 0x38

    .line 60
    .line 61
    .line 62
    invoke-static {v0, p2, p1, v1}, Landroidx/compose/runtime/CompositionLocalKt;->b([Landroidx/compose/runtime/ProvidedValue;Le8/p;Landroidx/compose/runtime/Composer;I)V

    .line 63
    :goto_1
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Number;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 8
    move-result p2

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/AlertDialogKt$AlertDialogContent$1$1$2$1;->a(Landroidx/compose/runtime/Composer;I)V

    .line 12
    .line 13
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 14
    return-object p1
.end method
