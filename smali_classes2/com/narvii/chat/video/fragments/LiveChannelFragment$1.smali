.class Lcom/narvii/chat/video/fragments/LiveChannelFragment$1;
.super Ljava/lang/Object;
.source "LiveChannelFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/fragments/LiveChannelFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/fragments/LiveChannelFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/fragments/LiveChannelFragment;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment$1;->this$0:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment$1;->this$0:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment$1;->this$0:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    invoke-static {v0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->access$000(Lcom/narvii/chat/video/fragments/LiveChannelFragment;)V

    return-void
.end method
