.class Lcom/narvii/monetization/bubble/BubbleEditFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/bubble/BubbleEditFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/bubble/BubbleEditFragment;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/bubble/BubbleEditFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment$1;->this$0:Lcom/narvii/monetization/bubble/BubbleEditFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment$1;->this$0:Lcom/narvii/monetization/bubble/BubbleEditFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/monetization/bubble/BubbleEditFragment;->o(Lcom/narvii/monetization/bubble/BubbleEditFragment;)Lcom/narvii/model/BubbleInfo;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment$1;->this$0:Lcom/narvii/monetization/bubble/BubbleEditFragment;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/narvii/monetization/bubble/BubbleEditFragment;->p(Lcom/narvii/monetization/bubble/BubbleEditFragment;)Lcom/narvii/monetization/bubble/BubbleService;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment$1;->this$0:Lcom/narvii/monetization/bubble/BubbleEditFragment;

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lcom/narvii/monetization/bubble/BubbleEditFragment;->o(Lcom/narvii/monetization/bubble/BubbleEditFragment;)Lcom/narvii/model/BubbleInfo;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/narvii/model/BubbleInfo;->getBubbleUploadId()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lcom/narvii/monetization/bubble/BubbleService;->cancelUpload(Ljava/lang/String;)V

    .line 28
    :cond_0
    return-void
.end method
