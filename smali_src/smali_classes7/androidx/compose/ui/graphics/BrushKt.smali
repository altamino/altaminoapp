.class public final Landroidx/compose/ui/graphics/BrushKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/graphics/Shader;)Landroidx/compose/ui/graphics/ShaderBrush;
    .locals 1
    .param p0    # Landroid/graphics/Shader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "shader"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Landroidx/compose/ui/graphics/BrushKt$ShaderBrush$1;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0}, Landroidx/compose/ui/graphics/BrushKt$ShaderBrush$1;-><init>(Landroid/graphics/Shader;)V

    .line 11
    return-object v0
.end method
