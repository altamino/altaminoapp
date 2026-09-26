.class public abstract Landroidx/compose/ui/graphics/ShaderBrush;
.super Landroidx/compose/ui/graphics/Brush;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/Immutable;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBrush.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Brush.kt\nandroidx/compose/ui/graphics/ShaderBrush\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,655:1\n1#2:656\n*E\n"
.end annotation


# instance fields
.field private createdSize:J

.field private internalShader:Landroid/graphics/Shader;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/Brush;-><init>(Lkotlin/jvm/internal/k;)V

    .line 5
    .line 6
    sget-object v0, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Size$Companion;->a()J

    .line 10
    move-result-wide v0

    .line 11
    .line 12
    iput-wide v0, p0, Landroidx/compose/ui/graphics/ShaderBrush;->createdSize:J

    .line 13
    return-void
.end method


# virtual methods
.method public final a(JLandroidx/compose/ui/graphics/Paint;F)V
    .locals 4
    .param p3    # Landroidx/compose/ui/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "p"

    .line 3
    .line 4
    .line 5
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/graphics/ShaderBrush;->internalShader:Landroid/graphics/Shader;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-wide v1, p0, Landroidx/compose/ui/graphics/ShaderBrush;->createdSize:J

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2, p1, p2}, Landroidx/compose/ui/geometry/Size;->f(JJ)Z

    .line 15
    move-result v1

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/graphics/ShaderBrush;->c(J)Landroid/graphics/Shader;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    iput-object v0, p0, Landroidx/compose/ui/graphics/ShaderBrush;->internalShader:Landroid/graphics/Shader;

    .line 24
    .line 25
    iput-wide p1, p0, Landroidx/compose/ui/graphics/ShaderBrush;->createdSize:J

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-interface {p3}, Landroidx/compose/ui/graphics/Paint;->a()J

    .line 29
    move-result-wide p1

    .line 30
    .line 31
    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->a()J

    .line 35
    move-result-wide v2

    .line 36
    .line 37
    .line 38
    invoke-static {p1, p2, v2, v3}, Landroidx/compose/ui/graphics/Color;->n(JJ)Z

    .line 39
    move-result p1

    .line 40
    .line 41
    if-nez p1, :cond_2

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->a()J

    .line 45
    move-result-wide p1

    .line 46
    .line 47
    .line 48
    invoke-interface {p3, p1, p2}, Landroidx/compose/ui/graphics/Paint;->j(J)V

    .line 49
    .line 50
    .line 51
    :cond_2
    invoke-interface {p3}, Landroidx/compose/ui/graphics/Paint;->n()Landroid/graphics/Shader;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    .line 55
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    move-result p1

    .line 57
    .line 58
    if-nez p1, :cond_3

    .line 59
    .line 60
    .line 61
    invoke-interface {p3, v0}, Landroidx/compose/ui/graphics/Paint;->x(Landroid/graphics/Shader;)V

    .line 62
    .line 63
    .line 64
    :cond_3
    invoke-interface {p3}, Landroidx/compose/ui/graphics/Paint;->e()F

    .line 65
    move-result p1

    .line 66
    .line 67
    cmpg-float p1, p1, p4

    .line 68
    .line 69
    if-nez p1, :cond_4

    .line 70
    goto :goto_0

    .line 71
    .line 72
    .line 73
    :cond_4
    invoke-interface {p3, p4}, Landroidx/compose/ui/graphics/Paint;->b(F)V

    .line 74
    :goto_0
    return-void
.end method

.method public abstract c(J)Landroid/graphics/Shader;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
