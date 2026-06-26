.class Lcom/narvii/chat/screenroom/widgets/SRVideoController$6;
.super Ljava/lang/Object;
.source "SRVideoController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/screenroom/widgets/SRVideoController;->initControllerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)V
    .locals 0

    .line 371
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$6;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 374
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$6;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    iget-object p1, p1, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->volumeWrapper:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 375
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$6;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    iget-object p1, p1, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->volumeWrapper:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 377
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$6;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    iget-object p1, p1, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->volume:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->isShown()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 380
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$6;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    iget-object v0, p1, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->verticalSeekBar:Lcom/narvii/widget/VerticalSeekBar;

    if-nez v0, :cond_2

    .line 381
    iget-object v0, p1, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->volumeWrapper:Landroid/view/View;

    const v1, 0x7f090cc1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/VerticalSeekBar;

    iput-object v0, p1, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->verticalSeekBar:Lcom/narvii/widget/VerticalSeekBar;

    .line 382
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$6;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    .line 383
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$6;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    iget-object v0, v0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->verticalSeekBar:Lcom/narvii/widget/VerticalSeekBar;

    div-int/lit8 v1, p1, 0x2

    invoke-virtual {v0, p1, v1, p1, v1}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 384
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$6;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    iget-object p1, p1, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->verticalSeekBar:Lcom/narvii/widget/VerticalSeekBar;

    new-instance v0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$6$1;

    invoke-direct {v0, p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController$6$1;-><init>(Lcom/narvii/chat/screenroom/widgets/SRVideoController$6;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 406
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$6;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    iget-object v0, p1, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->verticalSeekBar:Lcom/narvii/widget/VerticalSeekBar;

    iget-object p1, p1, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    invoke-virtual {p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->getMediaVolume()F

    move-result p1

    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->gainToVolume(F)F

    move-result p1

    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$6;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    iget-object v1, v1, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->verticalSeekBar:Lcom/narvii/widget/VerticalSeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    mul-float p1, p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/narvii/widget/VerticalSeekBar;->setProgress(I)V

    .line 407
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$6;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    iget-object p1, p1, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->volumeWrapper:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
