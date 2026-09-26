.class public final Landroidx/compose/ui/text/platform/extensions/TtsAnnotationExtensions_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroidx/compose/ui/text/TtsAnnotation;)Landroid/text/style/TtsSpan;
    .locals 1
    .param p0    # Landroidx/compose/ui/text/TtsAnnotation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    instance-of v0, p0, Landroidx/compose/ui/text/VerbatimTtsAnnotation;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast p0, Landroidx/compose/ui/text/VerbatimTtsAnnotation;

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, Landroidx/compose/ui/text/platform/extensions/TtsAnnotationExtensions_androidKt;->b(Landroidx/compose/ui/text/VerbatimTtsAnnotation;)Landroid/text/style/TtsSpan;

    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    .line 18
    :cond_0
    new-instance p0, Lw7/s;

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lw7/s;-><init>()V

    .line 22
    throw p0
.end method

.method public static final b(Landroidx/compose/ui/text/VerbatimTtsAnnotation;)Landroid/text/style/TtsSpan;
    .locals 1
    .param p0    # Landroidx/compose/ui/text/VerbatimTtsAnnotation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Landroid/text/style/TtsSpan$VerbatimBuilder;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/compose/ui/text/VerbatimTtsAnnotation;->a()Ljava/lang/String;

    .line 11
    move-result-object p0

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, p0}, Landroid/text/style/TtsSpan$VerbatimBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/text/style/TtsSpan$Builder;->build()Landroid/text/style/TtsSpan;

    .line 18
    move-result-object p0

    .line 19
    .line 20
    const-string v0, "builder.build()"

    .line 21
    .line 22
    .line 23
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    return-object p0
.end method
