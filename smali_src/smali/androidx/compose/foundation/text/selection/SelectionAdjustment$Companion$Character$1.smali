.class public final Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$Character$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/text/selection/SelectionAdjustment;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public a(Landroidx/compose/ui/text/TextLayoutResult;JIZLandroidx/compose/ui/text/TextRange;)J
    .locals 2
    .param p1    # Landroidx/compose/ui/text/TextLayoutResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/ui/text/TextRange;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string/jumbo p4, "textLayoutResult"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p4}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->h(J)Z

    .line 9
    move-result p4

    .line 10
    .line 11
    if-eqz p4, :cond_1

    .line 12
    .line 13
    if-eqz p6, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p6}, Landroidx/compose/ui/text/TextRange;->r()J

    .line 17
    move-result-wide v0

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->m(J)Z

    .line 21
    move-result p4

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p4, 0x0

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->n(J)I

    .line 27
    move-result p2

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroidx/compose/ui/text/TextLayoutResult;->k()Landroidx/compose/ui/text/TextLayoutInput;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroidx/compose/ui/text/TextLayoutInput;->j()Landroidx/compose/ui/text/AnnotatedString;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Lkotlin/text/k;->W(Ljava/lang/CharSequence;)I

    .line 39
    move-result p1

    .line 40
    .line 41
    .line 42
    invoke-static {p2, p1, p5, p4}, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt;->a(IIZZ)J

    .line 43
    move-result-wide p2

    .line 44
    :cond_1
    return-wide p2
.end method
