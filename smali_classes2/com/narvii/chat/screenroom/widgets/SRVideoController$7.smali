.class Lcom/narvii/chat/screenroom/widgets/SRVideoController$7;
.super Ljava/lang/Object;
.source "SRVideoController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/screenroom/widgets/SRVideoController;->updateViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)V
    .locals 0

    .line 428
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$7;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 431
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$7;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    iget-boolean v0, p1, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->landScape:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 432
    invoke-static {p1, v0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->access$400(Lcom/narvii/chat/screenroom/widgets/SRVideoController;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 434
    invoke-static {p1, v0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->access$400(Lcom/narvii/chat/screenroom/widgets/SRVideoController;I)V

    :goto_0
    return-void
.end method
