.class public final Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;
.super Landroid/text/style/CharacterStyle;
.source "SourceFile"

# interfaces
.implements Landroid/text/style/UpdateAppearance;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShaderBrushSpan.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShaderBrushSpan.android.kt\nandroidx/compose/ui/text/platform/style/ShaderBrushSpan\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,39:1\n1#2:40\n*E\n"
.end annotation


# instance fields
.field private final shaderBrush:Landroidx/compose/ui/graphics/ShaderBrush;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private size:Landroidx/compose/ui/geometry/Size;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/ui/graphics/ShaderBrush;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/graphics/ShaderBrush;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "shaderBrush"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;->shaderBrush:Landroidx/compose/ui/graphics/ShaderBrush;

    .line 11
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/geometry/Size;)V
    .locals 0
    .param p1    # Landroidx/compose/ui/geometry/Size;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;->size:Landroidx/compose/ui/geometry/Size;

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 3
    .param p1    # Landroid/text/TextPaint;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;->size:Landroidx/compose/ui/geometry/Size;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Size;->m()J

    .line 10
    move-result-wide v0

    .line 11
    .line 12
    iget-object v2, p0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;->shaderBrush:Landroidx/compose/ui/graphics/ShaderBrush;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v0, v1}, Landroidx/compose/ui/graphics/ShaderBrush;->c(J)Landroid/graphics/Shader;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 20
    :cond_0
    return-void
.end method
