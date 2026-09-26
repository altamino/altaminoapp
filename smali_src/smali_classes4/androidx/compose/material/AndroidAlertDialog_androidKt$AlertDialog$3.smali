.class final Landroidx/compose/material/AndroidAlertDialog_androidKt$AlertDialog$3;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/AndroidAlertDialog_androidKt;->b(Le8/a;Le8/p;Landroidx/compose/ui/Modifier;Le8/p;Le8/p;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/ui/window/DialogProperties;Landroidx/compose/runtime/Composer;II)V
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

.field final synthetic $backgroundColor:J

.field final synthetic $buttons:Le8/p;
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

.field final synthetic $contentColor:J

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $shape:Landroidx/compose/ui/graphics/Shape;

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

.field final synthetic $title:Le8/p;
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
.method constructor <init>(Le8/p;Landroidx/compose/ui/Modifier;Le8/p;Le8/p;Landroidx/compose/ui/graphics/Shape;JJI)V
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
            "Landroidx/compose/ui/Modifier;",
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
            ">;",
            "Landroidx/compose/ui/graphics/Shape;",
            "JJI)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/material/AndroidAlertDialog_androidKt$AlertDialog$3;->$buttons:Le8/p;

    iput-object p2, p0, Landroidx/compose/material/AndroidAlertDialog_androidKt$AlertDialog$3;->$modifier:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Landroidx/compose/material/AndroidAlertDialog_androidKt$AlertDialog$3;->$title:Le8/p;

    iput-object p4, p0, Landroidx/compose/material/AndroidAlertDialog_androidKt$AlertDialog$3;->$text:Le8/p;

    iput-object p5, p0, Landroidx/compose/material/AndroidAlertDialog_androidKt$AlertDialog$3;->$shape:Landroidx/compose/ui/graphics/Shape;

    iput-wide p6, p0, Landroidx/compose/material/AndroidAlertDialog_androidKt$AlertDialog$3;->$backgroundColor:J

    iput-wide p8, p0, Landroidx/compose/material/AndroidAlertDialog_androidKt$AlertDialog$3;->$contentColor:J

    iput p10, p0, Landroidx/compose/material/AndroidAlertDialog_androidKt$AlertDialog$3;->$$dirty:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/Composer;I)V
    .locals 12
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
    iget-object v0, p0, Landroidx/compose/material/AndroidAlertDialog_androidKt$AlertDialog$3;->$buttons:Le8/p;

    .line 19
    .line 20
    iget-object v1, p0, Landroidx/compose/material/AndroidAlertDialog_androidKt$AlertDialog$3;->$modifier:Landroidx/compose/ui/Modifier;

    .line 21
    .line 22
    iget-object v2, p0, Landroidx/compose/material/AndroidAlertDialog_androidKt$AlertDialog$3;->$title:Le8/p;

    .line 23
    .line 24
    iget-object v3, p0, Landroidx/compose/material/AndroidAlertDialog_androidKt$AlertDialog$3;->$text:Le8/p;

    .line 25
    .line 26
    iget-object v4, p0, Landroidx/compose/material/AndroidAlertDialog_androidKt$AlertDialog$3;->$shape:Landroidx/compose/ui/graphics/Shape;

    .line 27
    .line 28
    iget-wide v5, p0, Landroidx/compose/material/AndroidAlertDialog_androidKt$AlertDialog$3;->$backgroundColor:J

    .line 29
    .line 30
    iget-wide v7, p0, Landroidx/compose/material/AndroidAlertDialog_androidKt$AlertDialog$3;->$contentColor:J

    .line 31
    .line 32
    iget p2, p0, Landroidx/compose/material/AndroidAlertDialog_androidKt$AlertDialog$3;->$$dirty:I

    .line 33
    .line 34
    shr-int/lit8 v9, p2, 0x3

    .line 35
    .line 36
    and-int/lit8 v9, v9, 0xe

    .line 37
    .line 38
    shr-int/lit8 v10, p2, 0x3

    .line 39
    .line 40
    and-int/lit8 v10, v10, 0x70

    .line 41
    or-int/2addr v9, v10

    .line 42
    .line 43
    shr-int/lit8 v10, p2, 0x3

    .line 44
    .line 45
    and-int/lit16 v10, v10, 0x380

    .line 46
    or-int/2addr v9, v10

    .line 47
    .line 48
    shr-int/lit8 v10, p2, 0x3

    .line 49
    .line 50
    and-int/lit16 v10, v10, 0x1c00

    .line 51
    or-int/2addr v9, v10

    .line 52
    .line 53
    shr-int/lit8 v10, p2, 0x3

    .line 54
    .line 55
    .line 56
    const v11, 0xe000

    .line 57
    and-int/2addr v10, v11

    .line 58
    or-int/2addr v9, v10

    .line 59
    .line 60
    shr-int/lit8 v10, p2, 0x3

    .line 61
    .line 62
    const/high16 v11, 0x70000

    .line 63
    and-int/2addr v10, v11

    .line 64
    or-int/2addr v9, v10

    .line 65
    .line 66
    const/high16 v10, 0x380000

    .line 67
    .line 68
    shr-int/lit8 p2, p2, 0x3

    .line 69
    and-int/2addr p2, v10

    .line 70
    .line 71
    or-int v10, v9, p2

    .line 72
    const/4 v11, 0x0

    .line 73
    move-object v9, p1

    .line 74
    .line 75
    .line 76
    invoke-static/range {v0 .. v11}, Landroidx/compose/material/AlertDialogKt;->b(Le8/p;Landroidx/compose/ui/Modifier;Le8/p;Le8/p;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/runtime/Composer;II)V

    .line 77
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/AndroidAlertDialog_androidKt$AlertDialog$3;->a(Landroidx/compose/runtime/Composer;I)V

    .line 12
    .line 13
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 14
    return-object p1
.end method
