.class public final Lcom/narvii/video/widget/ViceTimeLineWrapperView$setViceTimeLineEditCallback$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView$setViceTimeLineEditCallback$1;->this$0:Lcom/narvii/video/widget/ViceTimeLineWrapperView;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView$setViceTimeLineEditCallback$1;->$viceTimeLineEditCallback:Lcom/narvii/video/widget/ViceTimeLineWrapperView$IViceTimeLineEditCallback;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onCutterMoved(FFZ)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView$setViceTimeLineEditCallback$1;->this$0:Lcom/narvii/video/widget/ViceTimeLineWrapperView;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->access$getRtl$p(Lcom/narvii/video/widget/ViceTimeLineWrapperView;)Z

    .line 6
    move-result v1

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView$setViceTimeLineEditCallback$1;->this$0:Lcom/narvii/video/widget/ViceTimeLineWrapperView;

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->access$getMainTrackStartDx$p(Lcom/narvii/video/widget/ViceTimeLineWrapperView;)F

    .line 14
    move-result v1

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lg8/a;->c(F)I

    .line 18
    move-result v2

    .line 19
    int-to-float v2, v2

    .line 20
    sub-float/2addr v1, v2

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    iget-object v1, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView$setViceTimeLineEditCallback$1;->this$0:Lcom/narvii/video/widget/ViceTimeLineWrapperView;

    .line 24
    .line 25
    .line 26
    invoke-static {v1}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->access$getMainTrackStartDx$p(Lcom/narvii/video/widget/ViceTimeLineWrapperView;)F

    .line 27
    move-result v1

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lg8/a;->c(F)I

    .line 31
    move-result v2

    .line 32
    int-to-float v2, v2

    .line 33
    add-float/2addr v1, v2

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-static {p2}, Lg8/a;->c(F)I

    .line 37
    move-result v2

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v1, v2}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->access$updateContentSection(Lcom/narvii/video/widget/ViceTimeLineWrapperView;FI)V

    .line 41
    .line 42
    if-nez p3, :cond_2

    .line 43
    .line 44
    iget-object p3, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView$setViceTimeLineEditCallback$1;->$viceTimeLineEditCallback:Lcom/narvii/video/widget/ViceTimeLineWrapperView$IViceTimeLineEditCallback;

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Lg8/a;->c(F)I

    .line 48
    move-result v0

    .line 49
    .line 50
    iget-object v1, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView$setViceTimeLineEditCallback$1;->this$0:Lcom/narvii/video/widget/ViceTimeLineWrapperView;

    .line 51
    .line 52
    .line 53
    invoke-static {v1}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->access$getViceTimeLine$p(Lcom/narvii/video/widget/ViceTimeLineWrapperView;)Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    if-eqz v1, :cond_1

    .line 57
    .line 58
    .line 59
    invoke-static {p2}, Lg8/a;->c(F)I

    .line 60
    move-result p2

    .line 61
    .line 62
    .line 63
    invoke-static {p1}, Lg8/a;->c(F)I

    .line 64
    move-result p1

    .line 65
    const/4 v2, 0x0

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, p2, p1, v2}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getSectionDurationInMs(IIZ)I

    .line 69
    move-result p1

    .line 70
    goto :goto_1

    .line 71
    :cond_1
    const/4 p1, -0x1

    .line 72
    .line 73
    .line 74
    :goto_1
    invoke-interface {p3, v0, p1}, Lcom/narvii/video/widget/ViceTimeLineWrapperView$IViceTimeLineEditCallback;->onViceTimeLineEdit(II)V

    .line 75
    :cond_2
    return-void
.end method
