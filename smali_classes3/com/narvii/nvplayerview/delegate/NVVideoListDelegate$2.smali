.class Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate$2;
.super Ljava/lang/Object;
.source "NVVideoListDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->onCachedBytesRead(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;


# direct methods
.method constructor <init>(Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;)V
    .locals 0

    .line 618
    iput-object p1, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate$2;->this$0:Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 621
    iget-object v0, p0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate$2;->this$0:Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    iget-object v0, v0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    if-eqz v0, :cond_0

    const-string v1, "true"

    .line 622
    invoke-virtual {v0, v1}, Lcom/narvii/nvplayerview/NVVideoView;->setHitCacheText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
