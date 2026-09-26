.class final Landroidx/compose/material/TextFieldDefaults$indicatorLine$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/TextFieldDefaults;->h(Landroidx/compose/ui/Modifier;ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/material/TextFieldColors;FF)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/q<",
        "Landroidx/compose/ui/Modifier;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Landroidx/compose/ui/Modifier;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $colors:Landroidx/compose/material/TextFieldColors;

.field final synthetic $enabled:Z

.field final synthetic $focusedIndicatorLineThickness:F

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

.field final synthetic $isError:Z

.field final synthetic $unfocusedIndicatorLineThickness:F


# direct methods
.method constructor <init>(ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/material/TextFieldColors;FF)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/material/TextFieldDefaults$indicatorLine$2;->$enabled:Z

    iput-boolean p2, p0, Landroidx/compose/material/TextFieldDefaults$indicatorLine$2;->$isError:Z

    iput-object p3, p0, Landroidx/compose/material/TextFieldDefaults$indicatorLine$2;->$interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

    iput-object p4, p0, Landroidx/compose/material/TextFieldDefaults$indicatorLine$2;->$colors:Landroidx/compose/material/TextFieldColors;

    iput p5, p0, Landroidx/compose/material/TextFieldDefaults$indicatorLine$2;->$focusedIndicatorLineThickness:F

    iput p6, p0, Landroidx/compose/material/TextFieldDefaults$indicatorLine$2;->$unfocusedIndicatorLineThickness:F

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
    .locals 8
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string p3, "$this$composed"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const p1, 0x5361fd9d

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 12
    .line 13
    iget-boolean v0, p0, Landroidx/compose/material/TextFieldDefaults$indicatorLine$2;->$enabled:Z

    .line 14
    .line 15
    iget-boolean v1, p0, Landroidx/compose/material/TextFieldDefaults$indicatorLine$2;->$isError:Z

    .line 16
    .line 17
    iget-object v2, p0, Landroidx/compose/material/TextFieldDefaults$indicatorLine$2;->$interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

    .line 18
    .line 19
    iget-object v3, p0, Landroidx/compose/material/TextFieldDefaults$indicatorLine$2;->$colors:Landroidx/compose/material/TextFieldColors;

    .line 20
    .line 21
    iget v4, p0, Landroidx/compose/material/TextFieldDefaults$indicatorLine$2;->$focusedIndicatorLineThickness:F

    .line 22
    .line 23
    iget v5, p0, Landroidx/compose/material/TextFieldDefaults$indicatorLine$2;->$unfocusedIndicatorLineThickness:F

    .line 24
    const/4 v7, 0x0

    .line 25
    move-object v6, p2

    .line 26
    .line 27
    .line 28
    invoke-static/range {v0 .. v7}, Landroidx/compose/material/TextFieldDefaultsKt;->a(ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/material/TextFieldColors;FFLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    sget-object p3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 32
    .line 33
    .line 34
    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    check-cast p1, Landroidx/compose/foundation/BorderStroke;

    .line 38
    .line 39
    .line 40
    invoke-static {p3, p1}, Landroidx/compose/material/TextFieldKt;->j(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/BorderStroke;)Landroidx/compose/ui/Modifier;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    .line 44
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 45
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/ui/Modifier;

    .line 3
    .line 4
    check-cast p2, Landroidx/compose/runtime/Composer;

    .line 5
    .line 6
    check-cast p3, Ljava/lang/Number;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    .line 10
    move-result p3

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/material/TextFieldDefaults$indicatorLine$2;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
