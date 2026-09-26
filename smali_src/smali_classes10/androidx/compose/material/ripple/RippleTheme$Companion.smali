.class public final Landroidx/compose/material/ripple/RippleTheme$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/material/ripple/RippleTheme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Landroidx/compose/material/ripple/RippleTheme$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material/ripple/RippleTheme$Companion;

    invoke-direct {v0}, Landroidx/compose/material/ripple/RippleTheme$Companion;-><init>()V

    sput-object v0, Landroidx/compose/material/ripple/RippleTheme$Companion;->$$INSTANCE:Landroidx/compose/material/ripple/RippleTheme$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final a(JZ)Landroidx/compose/material/ripple/RippleAlpha;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    if-eqz p3, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/ColorKt;->j(J)F

    .line 6
    move-result p1

    .line 7
    float-to-double p1, p1

    .line 8
    .line 9
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 10
    .line 11
    cmpl-double p1, p1, v0

    .line 12
    .line 13
    if-lez p1, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-static {}, Landroidx/compose/material/ripple/RippleThemeKt;->b()Landroidx/compose/material/ripple/RippleAlpha;

    .line 17
    move-result-object p1

    .line 18
    goto :goto_0

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-static {}, Landroidx/compose/material/ripple/RippleThemeKt;->c()Landroidx/compose/material/ripple/RippleAlpha;

    .line 22
    move-result-object p1

    .line 23
    goto :goto_0

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-static {}, Landroidx/compose/material/ripple/RippleThemeKt;->a()Landroidx/compose/material/ripple/RippleAlpha;

    .line 27
    move-result-object p1

    .line 28
    :goto_0
    return-object p1
.end method

.method public final b(JZ)J
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/ColorKt;->j(J)F

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez p3, :cond_0

    .line 7
    float-to-double v0, v0

    .line 8
    .line 9
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 10
    .line 11
    cmpg-double p3, v0, v2

    .line 12
    .line 13
    if-gez p3, :cond_0

    .line 14
    .line 15
    sget-object p1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/Color$Companion;->g()J

    .line 19
    move-result-wide p1

    .line 20
    :cond_0
    return-wide p1
.end method
