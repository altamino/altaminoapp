.class public final Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity$onRenderedFirstFrame$1;
.super Ljava/util/TimerTask;
.source "DynamicCroppingActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->onRenderedFirstFrame()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;


# direct methods
.method constructor <init>(Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 274
    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity$onRenderedFirstFrame$1;->this$0:Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity$onRenderedFirstFrame$1;->this$0:Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;

    invoke-static {v0}, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->access$getHandler$p(Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity$onRenderedFirstFrame$1$run$1;

    invoke-direct {v1, p0}, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity$onRenderedFirstFrame$1$run$1;-><init>(Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity$onRenderedFirstFrame$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
