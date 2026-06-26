.class public final Lcom/narvii/video/widget/ViceTimeLineWrapperView$setViceTimeLineEditCallback$1;
.super Ljava/lang/Object;
.source "ViceTimeLineWrapperView.kt"

# interfaces
.implements Lcom/narvii/video/widget/ViceTimeLineCutterView$IViceTimeLineCutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/widget/ViceTimeLineWrapperView;->setViceTimeLineEditCallback(Lcom/narvii/video/widget/ViceTimeLineWrapperView$IViceTimeLineEditCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $viceTimeLineEditCallback:Lcom/narvii/video/widget/ViceTimeLineWrapperView$IViceTimeLineEditCallback;

.field final synthetic this$0:Lcom/narvii/video/widget/ViceTimeLineWrapperView;


# direct methods
.method constructor <init>(Lcom/narvii/video/widget/ViceTimeLineWrapperView;Lcom/narvii/video/widget/ViceTimeLineWrapperView$IViceTimeLineEditCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/video/widget/ViceTimeLineWrapperView$IViceTimeLineEditCallback;",
            ")V"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView$setViceTimeLineEditCallback$1;->this$0:Lcom/narvii/video/widget/ViceTimeLineWrapperView;

    iput-object p2, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView$setViceTimeLineEditCallback$1;->$viceTimeLineEditCallback:Lcom/narvii/video/widget/ViceTimeLineWrapperView$IViceTimeLineEditCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCutterMoved(FFZ)V
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView$setViceTimeLineEditCallback$1;->this$0:Lcom/narvii/video/widget/ViceTimeLineWrapperView;

    invoke-static {v0}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->access$getRtl$p(Lcom/narvii/video/widget/ViceTimeLineWrapperView;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView$setViceTimeLineEditCallback$1;->this$0:Lcom/narvii/video/widget/ViceTimeLineWrapperView;

    invoke-static {v1}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->access$getMainTrackStartDx$p(Lcom/narvii/video/widget/ViceTimeLineWrapperView;)F

    move-result v1

    invoke-static {p1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView$setViceTimeLineEditCallback$1;->this$0:Lcom/narvii/video/widget/ViceTimeLineWrapperView;

    invoke-static {v1}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->access$getMainTrackStartDx$p(Lcom/narvii/video/widget/ViceTimeLineWrapperView;)F

    move-result v1

    invoke-static {p1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 91
    :goto_0
    invoke-static {p2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v2

    .line 90
    invoke-static {v0, v1, v2}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->access$updateContentSection(Lcom/narvii/video/widget/ViceTimeLineWrapperView;FI)V

    if-nez p3, :cond_2

    .line 93
    iget-object p3, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView$setViceTimeLineEditCallback$1;->$viceTimeLineEditCallback:Lcom/narvii/video/widget/ViceTimeLineWrapperView$IViceTimeLineEditCallback;

    invoke-static {p1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v0

    .line 94
    iget-object v1, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView$setViceTimeLineEditCallback$1;->this$0:Lcom/narvii/video/widget/ViceTimeLineWrapperView;

    invoke-static {v1}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->access$getViceTimeLine$p(Lcom/narvii/video/widget/ViceTimeLineWrapperView;)Lcom/narvii/video/widget/MediaTimeLineComponent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {p2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p2

    invoke-static {p1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p1

    const/4 v2, 0x0

    invoke-virtual {v1, p2, p1, v2}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getSectionDurationInMs(IIZ)I

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, -0x1

    .line 93
    :goto_1
    invoke-interface {p3, v0, p1}, Lcom/narvii/video/widget/ViceTimeLineWrapperView$IViceTimeLineEditCallback;->onViceTimeLineEdit(II)V

    :cond_2
    return-void
.end method
