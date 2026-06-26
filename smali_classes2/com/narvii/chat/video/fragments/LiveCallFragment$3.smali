.class Lcom/narvii/chat/video/fragments/LiveCallFragment$3;
.super Ljava/lang/Object;
.source "LiveCallFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/fragments/LiveCallFragment;->delayCloseLiveChannelRoom()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/fragments/LiveCallFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/fragments/LiveCallFragment;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment$3;->this$0:Lcom/narvii/chat/video/fragments/LiveCallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment$3;->this$0:Lcom/narvii/chat/video/fragments/LiveCallFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment$3;->this$0:Lcom/narvii/chat/video/fragments/LiveCallFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->closeCurrentLiveChannelRoom()V

    :cond_0
    return-void
.end method
