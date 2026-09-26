.class public final Landroidx/compose/ui/text/android/LayoutIntrinsics;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Landroidx/compose/ui/text/android/InternalPlatformTextApi;
.end annotation


# instance fields
.field private final boringMetrics$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final maxIntrinsicWidth$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final minIntrinsicWidth$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)V
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/text/TextPaint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "charSequence"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "textPaint"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    sget-object v0, Lw7/q;->NONE:Lw7/q;

    .line 16
    .line 17
    new-instance v1, Landroidx/compose/ui/text/android/LayoutIntrinsics$boringMetrics$2;

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, p3, p1, p2}, Landroidx/compose/ui/text/android/LayoutIntrinsics$boringMetrics$2;-><init>(ILjava/lang/CharSequence;Landroid/text/TextPaint;)V

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1}, Lw7/n;->b(Lw7/q;Le8/a;)Lw7/m;

    .line 24
    move-result-object p3

    .line 25
    .line 26
    iput-object p3, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->boringMetrics$delegate:Lw7/m;

    .line 27
    .line 28
    new-instance p3, Landroidx/compose/ui/text/android/LayoutIntrinsics$minIntrinsicWidth$2;

    .line 29
    .line 30
    .line 31
    invoke-direct {p3, p1, p2}, Landroidx/compose/ui/text/android/LayoutIntrinsics$minIntrinsicWidth$2;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;)V

    .line 32
    .line 33
    .line 34
    invoke-static {v0, p3}, Lw7/n;->b(Lw7/q;Le8/a;)Lw7/m;

    .line 35
    move-result-object p3

    .line 36
    .line 37
    iput-object p3, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->minIntrinsicWidth$delegate:Lw7/m;

    .line 38
    .line 39
    new-instance p3, Landroidx/compose/ui/text/android/LayoutIntrinsics$maxIntrinsicWidth$2;

    .line 40
    .line 41
    .line 42
    invoke-direct {p3, p0, p1, p2}, Landroidx/compose/ui/text/android/LayoutIntrinsics$maxIntrinsicWidth$2;-><init>(Landroidx/compose/ui/text/android/LayoutIntrinsics;Ljava/lang/CharSequence;Landroid/text/TextPaint;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v0, p3}, Lw7/n;->b(Lw7/q;Le8/a;)Lw7/m;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    iput-object p1, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->maxIntrinsicWidth$delegate:Lw7/m;

    .line 49
    return-void
.end method


# virtual methods
.method public final a()Landroid/text/BoringLayout$Metrics;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->boringMetrics$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/text/BoringLayout$Metrics;

    .line 9
    return-object v0
.end method

.method public final b()F
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->maxIntrinsicWidth$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Ljava/lang/Number;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final c()F
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->minIntrinsicWidth$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Ljava/lang/Number;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 12
    move-result v0

    .line 13
    return v0
.end method
