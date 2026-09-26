.class final Landroidx/compose/material/TextFieldDefaults$OutlinedTextFieldDecorationBox$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/TextFieldDefaults;->b(Ljava/lang/String;Le8/p;ZZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/InteractionSource;ZLe8/p;Le8/p;Le8/p;Le8/p;Landroidx/compose/material/TextFieldColors;Landroidx/compose/foundation/layout/PaddingValues;Le8/p;Landroidx/compose/runtime/Composer;III)V
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

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

.field final synthetic $isError:Z


# direct methods
.method constructor <init>(ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/material/TextFieldColors;II)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/material/TextFieldDefaults$OutlinedTextFieldDecorationBox$1;->$enabled:Z

    iput-boolean p2, p0, Landroidx/compose/material/TextFieldDefaults$OutlinedTextFieldDecorationBox$1;->$isError:Z

    iput-object p3, p0, Landroidx/compose/material/TextFieldDefaults$OutlinedTextFieldDecorationBox$1;->$interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

    iput-object p4, p0, Landroidx/compose/material/TextFieldDefaults$OutlinedTextFieldDecorationBox$1;->$colors:Landroidx/compose/material/TextFieldColors;

    iput p5, p0, Landroidx/compose/material/TextFieldDefaults$OutlinedTextFieldDecorationBox$1;->$$dirty:I

    iput p6, p0, Landroidx/compose/material/TextFieldDefaults$OutlinedTextFieldDecorationBox$1;->$$dirty1:I

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
    iget-boolean v1, p0, Landroidx/compose/material/TextFieldDefaults$OutlinedTextFieldDecorationBox$1;->$enabled:Z

    .line 21
    .line 22
    iget-boolean v2, p0, Landroidx/compose/material/TextFieldDefaults$OutlinedTextFieldDecorationBox$1;->$isError:Z

    .line 23
    .line 24
    iget-object v3, p0, Landroidx/compose/material/TextFieldDefaults$OutlinedTextFieldDecorationBox$1;->$interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

    .line 25
    .line 26
    iget-object v4, p0, Landroidx/compose/material/TextFieldDefaults$OutlinedTextFieldDecorationBox$1;->$colors:Landroidx/compose/material/TextFieldColors;

    .line 27
    const/4 v5, 0x0

    .line 28
    const/4 v6, 0x0

    .line 29
    const/4 v7, 0x0

    .line 30
    .line 31
    iget p2, p0, Landroidx/compose/material/TextFieldDefaults$OutlinedTextFieldDecorationBox$1;->$$dirty:I

    .line 32
    .line 33
    shr-int/lit8 v8, p2, 0x6

    .line 34
    .line 35
    and-int/lit8 v8, v8, 0xe

    .line 36
    .line 37
    const/high16 v9, 0xc00000

    .line 38
    or-int/2addr v8, v9

    .line 39
    .line 40
    shr-int/lit8 v9, p2, 0xf

    .line 41
    .line 42
    and-int/lit8 v9, v9, 0x70

    .line 43
    or-int/2addr v8, v9

    .line 44
    .line 45
    shr-int/lit8 p2, p2, 0x9

    .line 46
    .line 47
    and-int/lit16 p2, p2, 0x380

    .line 48
    or-int/2addr p2, v8

    .line 49
    .line 50
    iget v8, p0, Landroidx/compose/material/TextFieldDefaults$OutlinedTextFieldDecorationBox$1;->$$dirty1:I

    .line 51
    .line 52
    shl-int/lit8 v8, v8, 0x6

    .line 53
    .line 54
    and-int/lit16 v8, v8, 0x1c00

    .line 55
    .line 56
    or-int v9, p2, v8

    .line 57
    .line 58
    const/16 v10, 0x70

    .line 59
    move-object v8, p1

    .line 60
    .line 61
    .line 62
    invoke-virtual/range {v0 .. v10}, Landroidx/compose/material/TextFieldDefaults;->a(ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/material/TextFieldColors;Landroidx/compose/ui/graphics/Shape;FFLandroidx/compose/runtime/Composer;II)V

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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/TextFieldDefaults$OutlinedTextFieldDecorationBox$1;->a(Landroidx/compose/runtime/Composer;I)V

    .line 12
    .line 13
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 14
    return-object p1
.end method
