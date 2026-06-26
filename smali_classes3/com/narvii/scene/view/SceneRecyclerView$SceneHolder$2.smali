.class Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$2;
.super Ljava/lang/Object;
.source "SceneRecyclerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;-><init>(Lcom/narvii/scene/view/SceneRecyclerView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastClickTime:J

.field final synthetic this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

.field final synthetic val$this$0:Lcom/narvii/scene/view/SceneRecyclerView;


# direct methods
.method constructor <init>(Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;Lcom/narvii/scene/view/SceneRecyclerView;)V
    .locals 0

    .line 449
    iput-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$2;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    iput-object p2, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$2;->val$this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 p1, 0x0

    .line 451
    iput-wide p1, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$2;->lastClickTime:J

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 455
    iget-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$2;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    iget-object p1, p1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    invoke-static {p1}, Lcom/narvii/scene/view/SceneRecyclerView;->access$000(Lcom/narvii/scene/view/SceneRecyclerView;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$2;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    iget-object v0, v0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_4

    .line 457
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$2;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    iget-object v1, v0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    iget-boolean v1, v1, Lcom/narvii/scene/SceneWrapper;->selected:Z

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x1

    if-nez v1, :cond_0

    .line 458
    iget-object v0, v0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/narvii/scene/view/SceneRecyclerView;->selectedScene(IZ)Z

    .line 459
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$2;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    iget-object v0, v0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    invoke-static {v0}, Lcom/narvii/scene/view/SceneRecyclerView;->access$400(Lcom/narvii/scene/view/SceneRecyclerView;)Lcom/narvii/scene/view/SceneRecyclerView$OnSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 460
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$2;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    iget-object v0, v0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    invoke-static {v0}, Lcom/narvii/scene/view/SceneRecyclerView;->access$400(Lcom/narvii/scene/view/SceneRecyclerView;)Lcom/narvii/scene/view/SceneRecyclerView$OnSelectedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$2;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    iget-object v1, v1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    invoke-virtual {v1}, Lcom/narvii/scene/SceneWrapper;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/narvii/scene/view/SceneRecyclerView$OnSelectedListener;->onSelected(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 463
    :cond_0
    iget-object v0, v0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    invoke-static {v0}, Lcom/narvii/scene/view/SceneRecyclerView;->access$100(Lcom/narvii/scene/view/SceneRecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 464
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$2;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    iget-object v0, v0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 465
    sget v0, Lcom/narvii/mediaeditor/R$string;->can_not_the_video:I

    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 466
    sget v0, Lcom/narvii/mediaeditor/R$string;->got_it:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 467
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    return-void

    .line 471
    :cond_1
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$2;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    iget-object v0, v0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    invoke-static {v0}, Lcom/narvii/scene/view/SceneRecyclerView;->access$500(Lcom/narvii/scene/view/SceneRecyclerView;)Lcom/narvii/scene/view/SceneRecyclerView$OnEditVideoListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$2;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    iget-object v0, v0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    invoke-virtual {v0}, Lcom/narvii/scene/SceneWrapper;->getStates()I

    move-result v0

    if-eq v0, v4, :cond_2

    .line 472
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v5, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$2;->lastClickTime:J

    sub-long/2addr v0, v5

    cmp-long v5, v0, v2

    if-ltz v5, :cond_2

    .line 473
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$2;->lastClickTime:J

    .line 474
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$2;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    iget-object v0, v0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    invoke-static {v0}, Lcom/narvii/scene/view/SceneRecyclerView;->access$500(Lcom/narvii/scene/view/SceneRecyclerView;)Lcom/narvii/scene/view/SceneRecyclerView$OnEditVideoListener;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$2;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    iget-object v1, v1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    iget-object v1, v1, Lcom/narvii/scene/SceneWrapper;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    invoke-interface {v0, v1, p1}, Lcom/narvii/scene/view/SceneRecyclerView$OnEditVideoListener;->editVideo(Lcom/narvii/scene/model/SceneInfo;I)V

    .line 475
    invoke-static {}, Lcom/narvii/scene/view/SceneRecyclerView;->access$600()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "edit Scene >>>  scene name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$2;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    iget-object v1, v1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    iget-object v1, v1, Lcom/narvii/scene/SceneWrapper;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    iget-object v1, v1, Lcom/narvii/scene/model/SceneInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 481
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$2;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    iget-object v0, v0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    invoke-virtual {v0}, Lcom/narvii/scene/SceneWrapper;->getStates()I

    move-result v0

    if-ne v0, v4, :cond_4

    .line 482
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$2;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    iget-object v0, v0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    invoke-static {v0}, Lcom/narvii/scene/view/SceneRecyclerView;->access$100(Lcom/narvii/scene/view/SceneRecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 486
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$2;->lastClickTime:J

    sub-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-ltz v4, :cond_4

    .line 487
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$2;->lastClickTime:J

    .line 488
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$2;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    iget-object v0, v0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    invoke-static {v0}, Lcom/narvii/scene/view/SceneRecyclerView;->access$500(Lcom/narvii/scene/view/SceneRecyclerView;)Lcom/narvii/scene/view/SceneRecyclerView$OnEditVideoListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 489
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$2;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    iget-object v0, v0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    invoke-static {v0}, Lcom/narvii/scene/view/SceneRecyclerView;->access$500(Lcom/narvii/scene/view/SceneRecyclerView;)Lcom/narvii/scene/view/SceneRecyclerView$OnEditVideoListener;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder$2;->this$1:Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;

    iget-object v1, v1, Lcom/narvii/scene/view/SceneRecyclerView$SceneHolder;->sceneWrapper:Lcom/narvii/scene/SceneWrapper;

    iget-object v1, v1, Lcom/narvii/scene/SceneWrapper;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    invoke-interface {v0, v1, p1}, Lcom/narvii/scene/view/SceneRecyclerView$OnEditVideoListener;->pickVideo(Lcom/narvii/scene/model/SceneInfo;I)V

    :cond_4
    return-void
.end method
