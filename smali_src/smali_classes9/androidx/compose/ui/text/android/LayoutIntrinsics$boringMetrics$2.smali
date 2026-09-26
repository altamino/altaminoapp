.class final Landroidx/compose/ui/text/android/LayoutIntrinsics$boringMetrics$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/text/android/LayoutIntrinsics;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/a<",
        "Landroid/text/BoringLayout$Metrics;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $charSequence:Ljava/lang/CharSequence;

.field final synthetic $textDirectionHeuristic:I

.field final synthetic $textPaint:Landroid/text/TextPaint;


# direct methods
.method constructor <init>(ILjava/lang/CharSequence;Landroid/text/TextPaint;)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics$boringMetrics$2;->$textDirectionHeuristic:I

    iput-object p2, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics$boringMetrics$2;->$charSequence:Ljava/lang/CharSequence;

    iput-object p3, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics$boringMetrics$2;->$textPaint:Landroid/text/TextPaint;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()Landroid/text/BoringLayout$Metrics;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics$boringMetrics$2;->$textDirectionHeuristic:I

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/compose/ui/text/android/TextLayoutKt;->e(I)Landroid/text/TextDirectionHeuristic;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sget-object v1, Landroidx/compose/ui/text/android/BoringLayoutFactory;->INSTANCE:Landroidx/compose/ui/text/android/BoringLayoutFactory;

    .line 9
    .line 10
    iget-object v2, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics$boringMetrics$2;->$charSequence:Ljava/lang/CharSequence;

    .line 11
    .line 12
    iget-object v3, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics$boringMetrics$2;->$textPaint:Landroid/text/TextPaint;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2, v3, v0}, Landroidx/compose/ui/text/android/BoringLayoutFactory;->b(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;)Landroid/text/BoringLayout$Metrics;

    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/LayoutIntrinsics$boringMetrics$2;->b()Landroid/text/BoringLayout$Metrics;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
