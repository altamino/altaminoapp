.class final synthetic Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$Paragraph$1$adjust$boundaryFun$1;
.super Lkotlin/jvm/internal/q;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$Paragraph$1;->a(Landroidx/compose/ui/text/TextLayoutResult;JIZLandroidx/compose/ui/text/TextRange;)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/q;",
        "Le8/l<",
        "Ljava/lang/Integer;",
        "Landroidx/compose/ui/text/TextRange;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const/4 v1, 0x1

    const-class v3, Landroidx/compose/foundation/text/StringHelpersKt;

    const-string v4, "getParagraphBoundary"

    const-string v5, "getParagraphBoundary(Ljava/lang/CharSequence;I)J"

    const/4 v6, 0x1

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/q;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a(I)J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lkotlin/jvm/internal/f;->receiver:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v0, Ljava/lang/CharSequence;

    .line 5
    .line 6
    .line 7
    invoke-static {v0, p1}, Landroidx/compose/foundation/text/StringHelpersKt;->c(Ljava/lang/CharSequence;I)J

    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    .line 2
    check-cast p1, Ljava/lang/Number;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 6
    move-result p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$Paragraph$1$adjust$boundaryFun$1;->a(I)J

    .line 10
    move-result-wide v0

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->b(J)Landroidx/compose/ui/text/TextRange;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
