.class Lcom/narvii/monetization/bubble/BubbleEditFragment$5;
.super Ljava/lang/Object;
.source "BubbleEditFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/bubble/BubbleEditFragment;->onUploadSuccess(Lcom/narvii/model/ChatBubble;)V
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

    .line 439
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment$5;->this$0:Lcom/narvii/monetization/bubble/BubbleEditFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment$5;->this$0:Lcom/narvii/monetization/bubble/BubbleEditFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment$5;->this$0:Lcom/narvii/monetization/bubble/BubbleEditFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
