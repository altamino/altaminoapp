.class Lcom/narvii/util/debug/ShowDebugTextFragment$1;
.super Ljava/lang/Object;
.source "ShowDebugTextFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/debug/ShowDebugTextFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/debug/ShowDebugTextFragment;

.field final synthetic val$info:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/util/debug/ShowDebugTextFragment;Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/narvii/util/debug/ShowDebugTextFragment$1;->this$0:Lcom/narvii/util/debug/ShowDebugTextFragment;

    iput-object p2, p0, Lcom/narvii/util/debug/ShowDebugTextFragment$1;->val$info:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 36
    iget-object p1, p0, Lcom/narvii/util/debug/ShowDebugTextFragment$1;->this$0:Lcom/narvii/util/debug/ShowDebugTextFragment;

    iget-object p1, p1, Lcom/narvii/util/debug/ShowDebugTextFragment;->larkRobot:Lcom/narvii/util/debug/LarkRobot;

    iget-object v0, p0, Lcom/narvii/util/debug/ShowDebugTextFragment$1;->val$info:Ljava/lang/String;

    const-string v1, "Error"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/debug/LarkRobot;->send(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
