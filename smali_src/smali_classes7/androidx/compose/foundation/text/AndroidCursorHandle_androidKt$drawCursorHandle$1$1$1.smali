.class final Landroidx/compose/foundation/text/AndroidCursorHandle_androidKt$drawCursorHandle$1$1$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/AndroidCursorHandle_androidKt$drawCursorHandle$1$1;->a(Landroidx/compose/ui/draw/CacheDrawScope;)Landroidx/compose/ui/draw/DrawResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;",
        "Lw7/l0;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidCursorHandle.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidCursorHandle.android.kt\nandroidx/compose/foundation/text/AndroidCursorHandle_androidKt$drawCursorHandle$1$1$1\n+ 2 DrawScope.kt\nandroidx/compose/ui/graphics/drawscope/DrawScopeKt\n*L\n1#1,82:1\n261#2,11:83\n*S KotlinDebug\n*F\n+ 1 AndroidCursorHandle.android.kt\nandroidx/compose/foundation/text/AndroidCursorHandle_androidKt$drawCursorHandle$1$1$1\n*L\n73#1:83,11\n*E\n"
.end annotation


# instance fields
.field final synthetic $colorFilter:Landroidx/compose/ui/graphics/ColorFilter;

.field final synthetic $imageBitmap:Landroidx/compose/ui/graphics/ImageBitmap;

.field final synthetic $radius:F


# direct methods
.method constructor <init>(FLandroidx/compose/ui/graphics/ImageBitmap;Landroidx/compose/ui/graphics/ColorFilter;)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/text/AndroidCursorHandle_androidKt$drawCursorHandle$1$1$1;->$radius:F

    iput-object p2, p0, Landroidx/compose/foundation/text/AndroidCursorHandle_androidKt$drawCursorHandle$1$1$1;->$imageBitmap:Landroidx/compose/ui/graphics/ImageBitmap;

    iput-object p3, p0, Landroidx/compose/foundation/text/AndroidCursorHandle_androidKt$drawCursorHandle$1$1$1;->$colorFilter:Landroidx/compose/ui/graphics/ColorFilter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V
    .locals 14
    .param p1    # Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "$this$onDrawWithContent"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->Z()V

    .line 9
    .line 10
    iget v0, p0, Landroidx/compose/foundation/text/AndroidCursorHandle_androidKt$drawCursorHandle$1$1$1;->$radius:F

    .line 11
    .line 12
    iget-object v2, p0, Landroidx/compose/foundation/text/AndroidCursorHandle_androidKt$drawCursorHandle$1$1$1;->$imageBitmap:Landroidx/compose/ui/graphics/ImageBitmap;

    .line 13
    .line 14
    iget-object v7, p0, Landroidx/compose/foundation/text/AndroidCursorHandle_androidKt$drawCursorHandle$1$1$1;->$colorFilter:Landroidx/compose/ui/graphics/ColorFilter;

    .line 15
    .line 16
    .line 17
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->T()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    .line 18
    move-result-object v11

    .line 19
    .line 20
    .line 21
    invoke-interface {v11}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->c()J

    .line 22
    move-result-wide v12

    .line 23
    .line 24
    .line 25
    invoke-interface {v11}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->a()Landroidx/compose/ui/graphics/Canvas;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-interface {v1}, Landroidx/compose/ui/graphics/Canvas;->r()V

    .line 30
    .line 31
    .line 32
    invoke-interface {v11}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->d()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    .line 33
    move-result-object v1

    .line 34
    const/4 v3, 0x2

    .line 35
    const/4 v4, 0x0

    .line 36
    const/4 v5, 0x0

    .line 37
    .line 38
    .line 39
    invoke-static {v1, v0, v5, v3, v4}, Landroidx/compose/ui/graphics/drawscope/b;->b(Landroidx/compose/ui/graphics/drawscope/DrawTransform;FFILjava/lang/Object;)V

    .line 40
    .line 41
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->c()J

    .line 45
    move-result-wide v3

    .line 46
    .line 47
    const/high16 v0, 0x42340000    # 45.0f

    .line 48
    .line 49
    .line 50
    invoke-interface {v1, v0, v3, v4}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->e(FJ)V

    .line 51
    .line 52
    const-wide/16 v3, 0x0

    .line 53
    const/4 v6, 0x0

    .line 54
    const/4 v8, 0x0

    .line 55
    .line 56
    const/16 v9, 0x2e

    .line 57
    const/4 v10, 0x0

    .line 58
    move-object v1, p1

    .line 59
    .line 60
    .line 61
    invoke-static/range {v1 .. v10}, Landroidx/compose/ui/graphics/drawscope/a;->g(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/ImageBitmap;JFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    invoke-interface {v11}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->a()Landroidx/compose/ui/graphics/Canvas;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    .line 68
    invoke-interface {p1}, Landroidx/compose/ui/graphics/Canvas;->n()V

    .line 69
    .line 70
    .line 71
    invoke-interface {v11, v12, v13}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->b(J)V

    .line 72
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/AndroidCursorHandle_androidKt$drawCursorHandle$1$1$1;->a(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
