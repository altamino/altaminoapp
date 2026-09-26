.class final Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$2$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$2;->a(Le8/p;Landroidx/compose/runtime/Composer;I)V
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

.field final synthetic $$dirty1:I

.field final synthetic $colors:Landroidx/compose/material/TextFieldColors;

.field final synthetic $enabled:Z

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field final synthetic $isError:Z

.field final synthetic $shape:Landroidx/compose/ui/graphics/Shape;


# direct methods
.method constructor <init>(ZZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/TextFieldColors;Landroidx/compose/ui/graphics/Shape;II)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$2$1;->$enabled:Z

    iput-boolean p2, p0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$2$1;->$isError:Z

    iput-object p3, p0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$2$1;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p4, p0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$2$1;->$colors:Landroidx/compose/material/TextFieldColors;

    iput-object p5, p0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$2$1;->$shape:Landroidx/compose/ui/graphics/Shape;

    iput p6, p0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$2$1;->$$dirty:I

    iput p7, p0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$2$1;->$$dirty1:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/Composer;I)V
    .locals 11
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
    sget-object v0, Landroidx/compose/material/TextFieldDefaults;->INSTANCE:Landroidx/compose/material/TextFieldDefaults;

    .line 19
    .line 20
    iget-boolean v1, p0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$2$1;->$enabled:Z

    .line 21
    .line 22
    iget-boolean v2, p0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$2$1;->$isError:Z

    .line 23
    .line 24
    iget-object v3, p0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$2$1;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 25
    .line 26
    iget-object v4, p0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$2$1;->$colors:Landroidx/compose/material/TextFieldColors;

    .line 27
    .line 28
    iget-object v5, p0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$2$1;->$shape:Landroidx/compose/ui/graphics/Shape;

    .line 29
    const/4 v6, 0x0

    .line 30
    const/4 v7, 0x0

    .line 31
    .line 32
    iget p2, p0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$2$1;->$$dirty:I

    .line 33
    .line 34
    shr-int/lit8 p2, p2, 0x9

    .line 35
    .line 36
    and-int/lit8 p2, p2, 0xe

    .line 37
    .line 38
    const/high16 v8, 0xc00000

    .line 39
    or-int/2addr p2, v8

    .line 40
    .line 41
    iget v8, p0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$2$1;->$$dirty1:I

    .line 42
    .line 43
    shl-int/lit8 v9, v8, 0x3

    .line 44
    .line 45
    and-int/lit8 v9, v9, 0x70

    .line 46
    or-int/2addr p2, v9

    .line 47
    .line 48
    shr-int/lit8 v9, v8, 0xc

    .line 49
    .line 50
    and-int/lit16 v9, v9, 0x380

    .line 51
    or-int/2addr p2, v9

    .line 52
    .line 53
    shr-int/lit8 v9, v8, 0xf

    .line 54
    .line 55
    and-int/lit16 v9, v9, 0x1c00

    .line 56
    or-int/2addr p2, v9

    .line 57
    .line 58
    .line 59
    const v9, 0xe000

    .line 60
    .line 61
    shr-int/lit8 v8, v8, 0x9

    .line 62
    and-int/2addr v8, v9

    .line 63
    .line 64
    or-int v9, p2, v8

    .line 65
    .line 66
    const/16 v10, 0x60

    .line 67
    move-object v8, p1

    .line 68
    .line 69
    .line 70
    invoke-virtual/range {v0 .. v10}, Landroidx/compose/material/TextFieldDefaults;->a(ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/material/TextFieldColors;Landroidx/compose/ui/graphics/Shape;FFLandroidx/compose/runtime/Composer;II)V

    .line 71
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$2$1;->a(Landroidx/compose/runtime/Composer;I)V

    .line 12
    .line 13
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 14
    return-object p1
.end method
