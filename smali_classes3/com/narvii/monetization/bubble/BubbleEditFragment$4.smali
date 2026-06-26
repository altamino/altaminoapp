.class Lcom/narvii/monetization/bubble/BubbleEditFragment$4;
.super Ljava/lang/Object;
.source "BubbleEditFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/bubble/BubbleEditFragment;->saveBubble(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/bubble/BubbleEditFragment;

.field final synthetic val$allowUpdate:Z


# direct methods
.method constructor <init>(Lcom/narvii/monetization/bubble/BubbleEditFragment;Z)V
    .locals 0

    .line 386
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment$4;->this$0:Lcom/narvii/monetization/bubble/BubbleEditFragment;

    iput-boolean p2, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment$4;->val$allowUpdate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 3

    if-nez p1, :cond_0

    .line 390
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment$4;->this$0:Lcom/narvii/monetization/bubble/BubbleEditFragment;

    invoke-static {p1}, Lcom/narvii/monetization/bubble/BubbleEditFragment;->access$500(Lcom/narvii/monetization/bubble/BubbleEditFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    return-void

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment$4;->this$0:Lcom/narvii/monetization/bubble/BubbleEditFragment;

    invoke-static {v0}, Lcom/narvii/monetization/bubble/BubbleEditFragment;->access$000(Lcom/narvii/monetization/bubble/BubbleEditFragment;)Lcom/narvii/model/BubbleInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/model/BubbleInfo;->clone()Lcom/narvii/model/BubbleInfo;

    move-result-object v0

    .line 394
    iget-boolean v1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment$4;->val$allowUpdate:Z

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 395
    iput-object v1, v0, Lcom/narvii/model/BubbleInfo;->id:Ljava/lang/String;

    .line 397
    :cond_1
    check-cast p1, Ljava/lang/String;

    iput-object p1, v0, Lcom/narvii/model/BubbleInfo;->coverImage:Ljava/lang/String;

    .line 398
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bubble preview uploaded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "bubble"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment$4;->this$0:Lcom/narvii/monetization/bubble/BubbleEditFragment;

    const-string v1, "config"

    invoke-virtual {p1, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 400
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment$4;->this$0:Lcom/narvii/monetization/bubble/BubbleEditFragment;

    invoke-static {v1}, Lcom/narvii/monetization/bubble/BubbleEditFragment;->access$100(Lcom/narvii/monetization/bubble/BubbleEditFragment;)Lcom/narvii/monetization/bubble/BubbleService;

    move-result-object v1

    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p1

    iget-object v2, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment$4;->this$0:Lcom/narvii/monetization/bubble/BubbleEditFragment;

    invoke-virtual {v1, p1, v0, v2}, Lcom/narvii/monetization/bubble/BubbleService;->uploadBubble(ILcom/narvii/model/BubbleInfo;Lcom/narvii/monetization/bubble/service/BubbleUploadListener;)V

    .line 402
    iget-boolean p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment$4;->val$allowUpdate:Z

    return-void
.end method
