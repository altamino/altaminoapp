.class final Landroidx/compose/ui/text/platform/AndroidParagraph$wordBoundary$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/text/platform/AndroidParagraph;-><init>(Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;IZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/a<",
        "Landroidx/compose/ui/text/android/selection/WordBoundary;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/ui/text/platform/AndroidParagraph;


# direct methods
.method constructor <init>(Landroidx/compose/ui/text/platform/AndroidParagraph;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/text/platform/AndroidParagraph$wordBoundary$2;->this$0:Landroidx/compose/ui/text/platform/AndroidParagraph;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()Landroidx/compose/ui/text/android/selection/WordBoundary;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/ui/text/android/selection/WordBoundary;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/compose/ui/text/platform/AndroidParagraph$wordBoundary$2;->this$0:Landroidx/compose/ui/text/platform/AndroidParagraph;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/compose/ui/text/platform/AndroidParagraph;->D()Ljava/util/Locale;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    iget-object v2, p0, Landroidx/compose/ui/text/platform/AndroidParagraph$wordBoundary$2;->this$0:Landroidx/compose/ui/text/platform/AndroidParagraph;

    .line 11
    .line 12
    .line 13
    invoke-static {v2}, Landroidx/compose/ui/text/platform/AndroidParagraph;->y(Landroidx/compose/ui/text/platform/AndroidParagraph;)Landroidx/compose/ui/text/android/TextLayout;

    .line 14
    move-result-object v2

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Landroidx/compose/ui/text/android/TextLayout;->z()Ljava/lang/CharSequence;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/text/android/selection/WordBoundary;-><init>(Ljava/util/Locale;Ljava/lang/CharSequence;)V

    .line 22
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidParagraph$wordBoundary$2;->b()Landroidx/compose/ui/text/android/selection/WordBoundary;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
