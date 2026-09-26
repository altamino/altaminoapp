.class Lcom/narvii/chat/screenroom/widgets/SRVideoController$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/screenroom/widgets/SRVideoController$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/chat/screenroom/widgets/SRVideoController$6;


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/widgets/SRVideoController$6;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$6$1;->this$1:Lcom/narvii/chat/screenroom/widgets/SRVideoController$6;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 1
    .line 2
    const/high16 p3, 0x3f800000    # 1.0f

    .line 3
    int-to-float p2, p2

    .line 4
    mul-float/2addr p2, p3

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getMax()I

    .line 8
    move-result p1

    .line 9
    int-to-float p1, p1

    .line 10
    div-float/2addr p2, p1

    .line 11
    .line 12
    .line 13
    invoke-static {p2}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->volumeToGain(F)F

    .line 14
    move-result p1

    .line 15
    .line 16
    iget-object p2, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$6$1;->this$1:Lcom/narvii/chat/screenroom/widgets/SRVideoController$6;

    .line 17
    .line 18
    iget-object p2, p2, Lcom/narvii/chat/screenroom/widgets/SRVideoController$6;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 19
    .line 20
    iget-object p2, p2, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->setMediaVolume(F)V

    .line 24
    .line 25
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$6$1;->this$1:Lcom/narvii/chat/screenroom/widgets/SRVideoController$6;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/narvii/chat/screenroom/widgets/SRVideoController$6;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->l(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)V

    .line 31
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$6$1;->this$1:Lcom/narvii/chat/screenroom/widgets/SRVideoController$6;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/chat/screenroom/widgets/SRVideoController$6;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 5
    .line 6
    .line 7
    const v0, 0x36ee80

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->show(I)V

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$6$1;->this$1:Lcom/narvii/chat/screenroom/widgets/SRVideoController$6;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/narvii/chat/screenroom/widgets/SRVideoController$6;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 15
    const/4 v0, 0x1

    .line 16
    .line 17
    iput-boolean v0, p1, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->isVolumeDragging:Z

    .line 18
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$6$1;->this$1:Lcom/narvii/chat/screenroom/widgets/SRVideoController$6;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/chat/screenroom/widgets/SRVideoController$6;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->show()V

    .line 8
    .line 9
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$6$1;->this$1:Lcom/narvii/chat/screenroom/widgets/SRVideoController$6;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/narvii/chat/screenroom/widgets/SRVideoController$6;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 12
    const/4 v0, 0x0

    .line 13
    .line 14
    iput-boolean v0, p1, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->isVolumeDragging:Z

    .line 15
    return-void
.end method
