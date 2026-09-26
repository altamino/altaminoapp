.class final Landroidx/compose/material/SnackbarKt$Snackbar$1$1$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/SnackbarKt$Snackbar$1$1;->a(Landroidx/compose/runtime/Composer;I)V
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

.field final synthetic $action:Le8/p;
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

.field final synthetic $actionOnNewLine:Z

.field final synthetic $content:Le8/p;
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
.method constructor <init>(Le8/p;Le8/p;IZ)V
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
            ">;",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;IZ)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/material/SnackbarKt$Snackbar$1$1$1;->$action:Le8/p;

    iput-object p2, p0, Landroidx/compose/material/SnackbarKt$Snackbar$1$1$1;->$content:Le8/p;

    iput p3, p0, Landroidx/compose/material/SnackbarKt$Snackbar$1$1$1;->$$dirty:I

    iput-boolean p4, p0, Landroidx/compose/material/SnackbarKt$Snackbar$1$1$1;->$actionOnNewLine:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/Composer;I)V
    .locals 3
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
    .line 18
    :cond_1
    :goto_0
    iget-object p2, p0, Landroidx/compose/material/SnackbarKt$Snackbar$1$1$1;->$action:Le8/p;

    .line 19
    .line 20
    if-nez p2, :cond_2

    .line 21
    .line 22
    .line 23
    const p2, 0x38f13ba

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 27
    .line 28
    iget-object p2, p0, Landroidx/compose/material/SnackbarKt$Snackbar$1$1$1;->$content:Le8/p;

    .line 29
    .line 30
    iget v0, p0, Landroidx/compose/material/SnackbarKt$Snackbar$1$1$1;->$$dirty:I

    .line 31
    .line 32
    shr-int/lit8 v0, v0, 0x15

    .line 33
    .line 34
    and-int/lit8 v0, v0, 0xe

    .line 35
    .line 36
    .line 37
    invoke-static {p2, p1, v0}, Landroidx/compose/material/SnackbarKt;->h(Le8/p;Landroidx/compose/runtime/Composer;I)V

    .line 38
    .line 39
    .line 40
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 41
    goto :goto_1

    .line 42
    .line 43
    :cond_2
    iget-boolean p2, p0, Landroidx/compose/material/SnackbarKt$Snackbar$1$1$1;->$actionOnNewLine:Z

    .line 44
    .line 45
    if-eqz p2, :cond_3

    .line 46
    .line 47
    .line 48
    const p2, 0x38f13fb

    .line 49
    .line 50
    .line 51
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 52
    .line 53
    iget-object p2, p0, Landroidx/compose/material/SnackbarKt$Snackbar$1$1$1;->$content:Le8/p;

    .line 54
    .line 55
    iget-object v0, p0, Landroidx/compose/material/SnackbarKt$Snackbar$1$1$1;->$action:Le8/p;

    .line 56
    .line 57
    iget v1, p0, Landroidx/compose/material/SnackbarKt$Snackbar$1$1$1;->$$dirty:I

    .line 58
    .line 59
    shr-int/lit8 v2, v1, 0x15

    .line 60
    .line 61
    and-int/lit8 v2, v2, 0xe

    .line 62
    .line 63
    and-int/lit8 v1, v1, 0x70

    .line 64
    or-int/2addr v1, v2

    .line 65
    .line 66
    .line 67
    invoke-static {p2, v0, p1, v1}, Landroidx/compose/material/SnackbarKt;->f(Le8/p;Le8/p;Landroidx/compose/runtime/Composer;I)V

    .line 68
    .line 69
    .line 70
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 71
    goto :goto_1

    .line 72
    .line 73
    .line 74
    :cond_3
    const p2, 0x38f143e

    .line 75
    .line 76
    .line 77
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 78
    .line 79
    iget-object p2, p0, Landroidx/compose/material/SnackbarKt$Snackbar$1$1$1;->$content:Le8/p;

    .line 80
    .line 81
    iget-object v0, p0, Landroidx/compose/material/SnackbarKt$Snackbar$1$1$1;->$action:Le8/p;

    .line 82
    .line 83
    iget v1, p0, Landroidx/compose/material/SnackbarKt$Snackbar$1$1$1;->$$dirty:I

    .line 84
    .line 85
    shr-int/lit8 v2, v1, 0x15

    .line 86
    .line 87
    and-int/lit8 v2, v2, 0xe

    .line 88
    .line 89
    and-int/lit8 v1, v1, 0x70

    .line 90
    or-int/2addr v1, v2

    .line 91
    .line 92
    .line 93
    invoke-static {p2, v0, p1, v1}, Landroidx/compose/material/SnackbarKt;->g(Le8/p;Le8/p;Landroidx/compose/runtime/Composer;I)V

    .line 94
    .line 95
    .line 96
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 97
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/SnackbarKt$Snackbar$1$1$1;->a(Landroidx/compose/runtime/Composer;I)V

    .line 12
    .line 13
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 14
    return-object p1
.end method
