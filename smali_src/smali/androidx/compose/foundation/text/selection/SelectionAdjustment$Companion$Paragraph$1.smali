.class public final Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$Paragraph$1;
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
    .locals 0
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
    new-instance p4, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$Paragraph$1$adjust$boundaryFun$1;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/compose/ui/text/TextLayoutResult;->k()Landroidx/compose/ui/text/TextLayoutInput;

    .line 11
    move-result-object p5

    .line 12
    .line 13
    .line 14
    invoke-virtual {p5}, Landroidx/compose/ui/text/TextLayoutInput;->j()Landroidx/compose/ui/text/AnnotatedString;

    .line 15
    move-result-object p5

    .line 16
    .line 17
    .line 18
    invoke-direct {p4, p5}, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$Paragraph$1$adjust$boundaryFun$1;-><init>(Ljava/lang/Object;)V

    .line 19
    .line 20
    sget-object p5, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;->$$INSTANCE:Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;

    .line 21
    .line 22
    .line 23
    invoke-static {p5, p1, p2, p3, p4}, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;->a(Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;Landroidx/compose/ui/text/TextLayoutResult;JLe8/l;)J

    .line 24
    move-result-wide p1

    .line 25
    return-wide p1
.end method
