.class Lcom/narvii/monetization/bubble/BubbleEditFragment$1;
.super Ljava/lang/Object;
.source "BubbleEditFragment.java"

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

    .line 97
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment$1;->this$0:Lcom/narvii/monetization/bubble/BubbleEditFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 100
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment$1;->this$0:Lcom/narvii/monetization/bubble/BubbleEditFragment;

    invoke-static {p1}, Lcom/narvii/monetization/bubble/BubbleEditFragment;->access$000(Lcom/narvii/monetization/bubble/BubbleEditFragment;)Lcom/narvii/model/BubbleInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 101
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment$1;->this$0:Lcom/narvii/monetization/bubble/BubbleEditFragment;

    invoke-static {p1}, Lcom/narvii/monetization/bubble/BubbleEditFragment;->access$100(Lcom/narvii/monetization/bubble/BubbleEditFragment;)Lcom/narvii/monetization/bubble/BubbleService;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment$1;->this$0:Lcom/narvii/monetization/bubble/BubbleEditFragment;

    invoke-static {v0}, Lcom/narvii/monetization/bubble/BubbleEditFragment;->access$000(Lcom/narvii/monetization/bubble/BubbleEditFragment;)Lcom/narvii/model/BubbleInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/model/BubbleInfo;->getBubbleUploadId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/monetization/bubble/BubbleService;->cancelUpload(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
