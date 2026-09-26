.class final Landroidx/compose/ui/text/android/StaticLayoutParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final alignment:Landroid/text/Layout$Alignment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final breakStrategy:I

.field private final ellipsize:Landroid/text/TextUtils$TruncateAt;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final ellipsizedWidth:I

.field private final end:I

.field private final hyphenationFrequency:I

.field private final includePadding:Z

.field private final justificationMode:I

.field private final leftIndents:[I
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final lineSpacingExtra:F

.field private final lineSpacingMultiplier:F

.field private final maxLines:I

.field private final paint:Landroid/text/TextPaint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final rightIndents:[I
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final start:I

.field private final text:Ljava/lang/CharSequence;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final textDir:Landroid/text/TextDirectionHeuristic;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final useFallbackLineSpacing:Z

.field private final width:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;Landroid/text/Layout$Alignment;ILandroid/text/TextUtils$TruncateAt;IFFIZZII[I[I)V
    .locals 12
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/text/TextPaint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Landroid/text/TextDirectionHeuristic;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Landroid/text/Layout$Alignment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Landroid/text/TextUtils$TruncateAt;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p18    # [I
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p19    # [I
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p10

    move/from16 v10, p11

    const-string v11, "text"

    invoke-static {p1, v11}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "paint"

    invoke-static {v4, v11}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "textDir"

    invoke-static {v6, v11}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "alignment"

    invoke-static {v7, v11}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->text:Ljava/lang/CharSequence;

    iput v2, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->start:I

    iput v3, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->end:I

    iput-object v4, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->paint:Landroid/text/TextPaint;

    iput v5, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->width:I

    iput-object v6, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->textDir:Landroid/text/TextDirectionHeuristic;

    iput-object v7, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->alignment:Landroid/text/Layout$Alignment;

    iput v8, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->maxLines:I

    move-object/from16 v4, p9

    iput-object v4, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    iput v9, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->ellipsizedWidth:I

    iput v10, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->lineSpacingMultiplier:F

    move/from16 v4, p12

    iput v4, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->lineSpacingExtra:F

    move/from16 v4, p13

    iput v4, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->justificationMode:I

    move/from16 v4, p14

    iput-boolean v4, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->includePadding:Z

    move/from16 v4, p15

    iput-boolean v4, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->useFallbackLineSpacing:Z

    move/from16 v4, p16

    iput v4, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->breakStrategy:I

    move/from16 v4, p17

    iput v4, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->hyphenationFrequency:I

    move-object/from16 v4, p18

    iput-object v4, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->leftIndents:[I

    move-object/from16 v4, p19

    iput-object v4, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->rightIndents:[I

    const-string v4, "Failed requirement."

    if-ltz v2, :cond_5

    if-gt v2, v3, :cond_5

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ltz v3, :cond_4

    if-gt v3, v1, :cond_4

    if-ltz v8, :cond_3

    if-ltz v5, :cond_2

    if-ltz v9, :cond_1

    const/4 v1, 0x0

    cmpl-float v1, v10, v1

    if-ltz v1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public synthetic constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;Landroid/text/Layout$Alignment;ILandroid/text/TextUtils$TruncateAt;IFFIZZII[I[IILkotlin/jvm/internal/k;)V
    .locals 21

    and-int/lit8 v0, p20, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v3, v0

    goto :goto_0

    :cond_0
    move/from16 v3, p2

    :goto_0
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    move/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    .line 9
    invoke-direct/range {v1 .. v20}, Landroidx/compose/ui/text/android/StaticLayoutParams;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;Landroid/text/Layout$Alignment;ILandroid/text/TextUtils$TruncateAt;IFFIZZII[I[I)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/text/Layout$Alignment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->alignment:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->breakStrategy:I

    return v0
.end method

.method public final c()Landroid/text/TextUtils$TruncateAt;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    return-object v0
.end method

.method public final d()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->ellipsizedWidth:I

    return v0
.end method

.method public final e()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->end:I

    return v0
.end method

.method public final f()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->hyphenationFrequency:I

    return v0
.end method

.method public final g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->includePadding:Z

    return v0
.end method

.method public final h()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->justificationMode:I

    return v0
.end method

.method public final i()[I
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->leftIndents:[I

    return-object v0
.end method

.method public final j()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->lineSpacingExtra:F

    return v0
.end method

.method public final k()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->lineSpacingMultiplier:F

    return v0
.end method

.method public final l()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->maxLines:I

    return v0
.end method

.method public final m()Landroid/text/TextPaint;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->paint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public final n()[I
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->rightIndents:[I

    return-object v0
.end method

.method public final o()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->start:I

    return v0
.end method

.method public final p()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final q()Landroid/text/TextDirectionHeuristic;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->textDir:Landroid/text/TextDirectionHeuristic;

    return-object v0
.end method

.method public final r()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->useFallbackLineSpacing:Z

    return v0
.end method

.method public final s()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->width:I

    return v0
.end method
