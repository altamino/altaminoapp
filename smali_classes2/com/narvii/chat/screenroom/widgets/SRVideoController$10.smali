.class Lcom/narvii/chat/screenroom/widgets/SRVideoController$10;
.super Ljava/lang/Object;
.source "SRVideoController.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/screenroom/widgets/SRVideoController;->hide()V
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

    .line 600
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$10;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/chat/screenroom/widgets/SRVideoController$VideoControllerVisibleChangeListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 603
    invoke-interface {p1, v0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController$VideoControllerVisibleChangeListener;->onVideoControllerVisibleChanged(Z)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 600
    check-cast p1, Lcom/narvii/chat/screenroom/widgets/SRVideoController$VideoControllerVisibleChangeListener;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController$10;->call(Lcom/narvii/chat/screenroom/widgets/SRVideoController$VideoControllerVisibleChangeListener;)V

    return-void
.end method
