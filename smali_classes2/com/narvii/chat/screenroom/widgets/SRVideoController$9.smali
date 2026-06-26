.class Lcom/narvii/chat/screenroom/widgets/SRVideoController$9;
.super Ljava/lang/Object;
.source "SRVideoController.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/screenroom/widgets/SRVideoController;->show(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/chat/screenroom/widgets/SRVideoController$VideoControllerVisibleChangeListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)V
    .locals 0

    .line 549
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$9;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/chat/screenroom/widgets/SRVideoController$VideoControllerVisibleChangeListener;)V
    .locals 1

    .line 552
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$9;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    iget-object v0, v0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->root:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, v0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController$VideoControllerVisibleChangeListener;->onVideoControllerVisibleChanged(Z)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 549
    check-cast p1, Lcom/narvii/chat/screenroom/widgets/SRVideoController$VideoControllerVisibleChangeListener;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController$9;->call(Lcom/narvii/chat/screenroom/widgets/SRVideoController$VideoControllerVisibleChangeListener;)V

    return-void
.end method
