.class Lcom/narvii/chat/screenroom/widgets/SRVideoController$6$1;
.super Ljava/lang/Object;
.source "SRVideoController.java"

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

    .line 384
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$6$1;->this$1:Lcom/narvii/chat/screenroom/widgets/SRVideoController$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    int-to-float p2, p2

    const/high16 p3, 0x3f800000    # 1.0f

    mul-float p2, p2, p3

    .line 387
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p2, p1

    .line 388
    invoke-static {p2}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->volumeToGain(F)F

    move-result p1

    .line 389
    iget-object p2, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$6$1;->this$1:Lcom/narvii/chat/screenroom/widgets/SRVideoController$6;

    iget-object p2, p2, Lcom/narvii/chat/screenroom/widgets/SRVideoController$6;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    iget-object p2, p2, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    invoke-virtual {p2, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->setMediaVolume(F)V

    .line 390
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$6$1;->this$1:Lcom/narvii/chat/screenroom/widgets/SRVideoController$6;

    iget-object p1, p1, Lcom/narvii/chat/screenroom/widgets/SRVideoController$6;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->access$300(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 395
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$6$1;->this$1:Lcom/narvii/chat/screenroom/widgets/SRVideoController$6;

    iget-object p1, p1, Lcom/narvii/chat/screenroom/widgets/SRVideoController$6;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    const v0, 0x36ee80

    invoke-virtual {p1, v0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->show(I)V

    .line 396
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$6$1;->this$1:Lcom/narvii/chat/screenroom/widgets/SRVideoController$6;

    iget-object p1, p1, Lcom/narvii/chat/screenroom/widgets/SRVideoController$6;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->isVolumeDragging:Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 401
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$6$1;->this$1:Lcom/narvii/chat/screenroom/widgets/SRVideoController$6;

    iget-object p1, p1, Lcom/narvii/chat/screenroom/widgets/SRVideoController$6;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    invoke-virtual {p1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->show()V

    .line 402
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$6$1;->this$1:Lcom/narvii/chat/screenroom/widgets/SRVideoController$6;

    iget-object p1, p1, Lcom/narvii/chat/screenroom/widgets/SRVideoController$6;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->isVolumeDragging:Z

    return-void
.end method
