.class Lcom/narvii/chat/screenroom/widgets/SRVideoController$11;
.super Ljava/lang/Object;
.source "SRVideoController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/screenroom/widgets/SRVideoController;
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

    .line 631
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$11;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 634
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$11;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->hide()V

    return-void
.end method
