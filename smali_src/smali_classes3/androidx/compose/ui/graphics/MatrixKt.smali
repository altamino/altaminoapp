.class public final Landroidx/compose/ui/graphics/MatrixKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMatrix.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Matrix.kt\nandroidx/compose/ui/graphics/MatrixKt\n+ 2 Matrix.kt\nandroidx/compose/ui/graphics/Matrix\n*L\n1#1,440:1\n39#2:441\n39#2:442\n39#2:443\n39#2:444\n39#2:445\n*S KotlinDebug\n*F\n+ 1 Matrix.kt\nandroidx/compose/ui/graphics/MatrixKt\n*L\n423#1:441\n424#1:442\n425#1:443\n426#1:444\n434#1:445\n*E\n"
.end annotation


# direct methods
.method public static final a([F)Z
    .locals 6
    .param p0    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "$this$isIdentity"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x0

    .line 7
    move v1, v0

    .line 8
    :goto_0
    const/4 v2, 0x4

    .line 9
    .line 10
    if-ge v1, v2, :cond_3

    .line 11
    move v3, v0

    .line 12
    .line 13
    :goto_1
    if-ge v3, v2, :cond_2

    .line 14
    .line 15
    if-ne v1, v3, :cond_0

    .line 16
    .line 17
    const/high16 v4, 0x3f800000    # 1.0f

    .line 18
    goto :goto_2

    .line 19
    :cond_0
    const/4 v4, 0x0

    .line 20
    .line 21
    :goto_2
    mul-int/lit8 v5, v1, 0x4

    .line 22
    add-int/2addr v5, v3

    .line 23
    .line 24
    aget v5, p0, v5

    .line 25
    .line 26
    cmpg-float v4, v5, v4

    .line 27
    .line 28
    if-nez v4, :cond_1

    .line 29
    .line 30
    add-int/lit8 v3, v3, 0x1

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    return v0

    .line 33
    .line 34
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_3
    const/4 p0, 0x1

    .line 37
    return p0
.end method
