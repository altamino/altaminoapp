.class Lcom/meicam/sdk/NvsARFaceContext$1;
.super Ljava/lang/Object;
.source "NvsARFaceContext.java"

# interfaces
.implements Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextInternalCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meicam/sdk/NvsARFaceContext;->setContextCallback(Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meicam/sdk/NvsARFaceContext;


# direct methods
.method constructor <init>(Lcom/meicam/sdk/NvsARFaceContext;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/meicam/sdk/NvsARFaceContext$1;->this$0:Lcom/meicam/sdk/NvsARFaceContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyFaceItemLoadingBegin(Ljava/lang/String;)V
    .locals 4

    .line 90
    iget-object v0, p0, Lcom/meicam/sdk/NvsARFaceContext$1;->this$0:Lcom/meicam/sdk/NvsARFaceContext;

    iget-object v1, v0, Lcom/meicam/sdk/NvsARFaceContext;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/meicam/sdk/NvsARFaceContext$RunnableExt;

    iget-object v3, v0, Lcom/meicam/sdk/NvsARFaceContext;->m_callback:Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextCallback;

    invoke-direct {v2, v0, p1, v3}, Lcom/meicam/sdk/NvsARFaceContext$RunnableExt;-><init>(Lcom/meicam/sdk/NvsARFaceContext;Ljava/lang/String;Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextCallback;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifyFaceItemLoadingFailed(Ljava/lang/String;I)V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/meicam/sdk/NvsARFaceContext$1;->this$0:Lcom/meicam/sdk/NvsARFaceContext;

    iget-object v0, v0, Lcom/meicam/sdk/NvsARFaceContext;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/meicam/sdk/NvsARFaceContext$1$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/meicam/sdk/NvsARFaceContext$1$2;-><init>(Lcom/meicam/sdk/NvsARFaceContext$1;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifyFaceItemLoadingFinish()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/meicam/sdk/NvsARFaceContext$1;->this$0:Lcom/meicam/sdk/NvsARFaceContext;

    iget-object v0, v0, Lcom/meicam/sdk/NvsARFaceContext;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/meicam/sdk/NvsARFaceContext$1$1;

    invoke-direct {v1, p0}, Lcom/meicam/sdk/NvsARFaceContext$1$1;-><init>(Lcom/meicam/sdk/NvsARFaceContext$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
