.class public final Landroidx/compose/material/TextFieldColorsWithIcons$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/material/TextFieldColorsWithIcons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static a(Landroidx/compose/material/TextFieldColorsWithIcons;ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 1
    .param p0    # Landroidx/compose/material/TextFieldColorsWithIcons;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/foundation/interaction/InteractionSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/TextFieldColorsWithIcons;",
            "ZZ",
            "Landroidx/compose/foundation/interaction/InteractionSource;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "interactionSource"

    .line 3
    .line 4
    .line 5
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const p3, 0x4c3ee396    # 5.0040408E7f

    .line 9
    .line 10
    .line 11
    invoke-interface {p4, p3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 12
    .line 13
    and-int/lit8 p3, p5, 0xe

    .line 14
    .line 15
    and-int/lit8 v0, p5, 0x70

    .line 16
    or-int/2addr p3, v0

    .line 17
    .line 18
    shr-int/lit8 p5, p5, 0x3

    .line 19
    .line 20
    and-int/lit16 p5, p5, 0x380

    .line 21
    or-int/2addr p3, p5

    .line 22
    .line 23
    .line 24
    invoke-interface {p0, p1, p2, p4, p3}, Landroidx/compose/material/TextFieldColors;->b(ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 25
    move-result-object p0

    .line 26
    .line 27
    .line 28
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 29
    return-object p0
.end method
