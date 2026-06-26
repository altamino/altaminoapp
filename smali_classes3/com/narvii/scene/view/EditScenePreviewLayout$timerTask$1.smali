.class public final Lcom/narvii/scene/view/EditScenePreviewLayout$timerTask$1;
.super Ljava/util/TimerTask;
.source "EditScenePreviewLayout.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/view/EditScenePreviewLayout;-><init>(Lcom/narvii/app/NVContext;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/view/EditScenePreviewLayout;


# direct methods
.method constructor <init>(Lcom/narvii/scene/view/EditScenePreviewLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lcom/narvii/scene/view/EditScenePreviewLayout$timerTask$1;->this$0:Lcom/narvii/scene/view/EditScenePreviewLayout;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/narvii/scene/view/EditScenePreviewLayout$timerTask$1;->this$0:Lcom/narvii/scene/view/EditScenePreviewLayout;

    invoke-static {v0}, Lcom/narvii/scene/view/EditScenePreviewLayout;->access$isPlaying$p(Lcom/narvii/scene/view/EditScenePreviewLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    new-instance v0, Lcom/narvii/scene/view/EditScenePreviewLayout$timerTask$1$run$1;

    invoke-direct {v0, p0}, Lcom/narvii/scene/view/EditScenePreviewLayout$timerTask$1$run$1;-><init>(Lcom/narvii/scene/view/EditScenePreviewLayout$timerTask$1;)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
