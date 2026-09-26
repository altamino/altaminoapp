.class public final Landroidx/compose/material/TypographyKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LocalTypography:Landroidx/compose/runtime/ProvidableCompositionLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Landroidx/compose/material/Typography;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/material/TypographyKt$LocalTypography$1;->INSTANCE:Landroidx/compose/material/TypographyKt$LocalTypography$1;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->e(Le8/a;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sput-object v0, Landroidx/compose/material/TypographyKt;->LocalTypography:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 9
    return-void
.end method

.method public static final synthetic a(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily;)Landroidx/compose/ui/text/TextStyle;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/material/TypographyKt;->c(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily;)Landroidx/compose/ui/text/TextStyle;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final b()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Landroidx/compose/material/Typography;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/material/TypographyKt;->LocalTypography:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method

.method private static final c(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily;)Landroidx/compose/ui/text/TextStyle;
    .locals 27

    .line 1
    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/TextStyle;->h()Landroidx/compose/ui/text/font/FontFamily;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    move-object/from16 v0, p0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    const-wide/16 v2, 0x0

    .line 12
    .line 13
    const-wide/16 v4, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    const/4 v7, 0x0

    .line 16
    const/4 v8, 0x0

    .line 17
    const/4 v10, 0x0

    .line 18
    .line 19
    const-wide/16 v11, 0x0

    .line 20
    const/4 v13, 0x0

    .line 21
    const/4 v14, 0x0

    .line 22
    const/4 v15, 0x0

    .line 23
    .line 24
    const-wide/16 v16, 0x0

    .line 25
    .line 26
    const/16 v18, 0x0

    .line 27
    .line 28
    const/16 v19, 0x0

    .line 29
    .line 30
    const/16 v20, 0x0

    .line 31
    .line 32
    const/16 v21, 0x0

    .line 33
    .line 34
    const-wide/16 v22, 0x0

    .line 35
    .line 36
    const/16 v24, 0x0

    .line 37
    .line 38
    .line 39
    const v25, 0x3ffdf

    .line 40
    .line 41
    const/16 v26, 0x0

    .line 42
    .line 43
    move-object/from16 v1, p0

    .line 44
    .line 45
    move-object/from16 v9, p1

    .line 46
    .line 47
    .line 48
    invoke-static/range {v1 .. v26}, Landroidx/compose/ui/text/TextStyle;->c(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextAlign;Landroidx/compose/ui/text/style/TextDirection;JLandroidx/compose/ui/text/style/TextIndent;ILjava/lang/Object;)Landroidx/compose/ui/text/TextStyle;

    .line 49
    move-result-object v0

    .line 50
    :goto_0
    return-object v0
.end method
