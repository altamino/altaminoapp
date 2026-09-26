.class final Landroidx/compose/ui/text/android/LayoutIntrinsics$maxIntrinsicWidth$2;
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
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $charSequence:Ljava/lang/CharSequence;

.field final synthetic $textPaint:Landroid/text/TextPaint;

.field final synthetic this$0:Landroidx/compose/ui/text/android/LayoutIntrinsics;


# direct methods
.method constructor <init>(Landroidx/compose/ui/text/android/LayoutIntrinsics;Ljava/lang/CharSequence;Landroid/text/TextPaint;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics$maxIntrinsicWidth$2;->this$0:Landroidx/compose/ui/text/android/LayoutIntrinsics;

    iput-object p2, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics$maxIntrinsicWidth$2;->$charSequence:Ljava/lang/CharSequence;

    iput-object p3, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics$maxIntrinsicWidth$2;->$textPaint:Landroid/text/TextPaint;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/Float;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics$maxIntrinsicWidth$2;->this$0:Landroidx/compose/ui/text/android/LayoutIntrinsics;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/text/android/LayoutIntrinsics;->a()Landroid/text/BoringLayout$Metrics;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget v0, v0, Landroid/text/BoringLayout$Metrics;->width:I

    .line 11
    int-to-float v0, v0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics$maxIntrinsicWidth$2;->$charSequence:Ljava/lang/CharSequence;

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 18
    move-result v1

    .line 19
    .line 20
    iget-object v2, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics$maxIntrinsicWidth$2;->$textPaint:Landroid/text/TextPaint;

    .line 21
    const/4 v3, 0x0

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v3, v1, v2}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    .line 25
    move-result v0

    .line 26
    .line 27
    :goto_0
    iget-object v1, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics$maxIntrinsicWidth$2;->$charSequence:Ljava/lang/CharSequence;

    .line 28
    .line 29
    iget-object v2, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics$maxIntrinsicWidth$2;->$textPaint:Landroid/text/TextPaint;

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1, v2}, Landroidx/compose/ui/text/android/LayoutIntrinsicsKt;->b(FLjava/lang/CharSequence;Landroid/text/TextPaint;)Z

    .line 33
    move-result v1

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    const/high16 v1, 0x3f000000    # 0.5f

    .line 38
    add-float/2addr v0, v1

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 42
    move-result-object v0

    .line 43
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/LayoutIntrinsics$maxIntrinsicWidth$2;->b()Ljava/lang/Float;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
