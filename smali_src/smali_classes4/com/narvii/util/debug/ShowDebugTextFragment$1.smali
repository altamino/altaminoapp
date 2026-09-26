.class Lcom/narvii/util/debug/ShowDebugTextFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/debug/ShowDebugTextFragment$1;->this$0:Lcom/narvii/util/debug/ShowDebugTextFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/util/debug/ShowDebugTextFragment$1;->val$info:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/util/debug/ShowDebugTextFragment$1;->this$0:Lcom/narvii/util/debug/ShowDebugTextFragment;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/util/debug/ShowDebugTextFragment;->larkRobot:Lcom/narvii/util/debug/LarkRobot;

    .line 5
    .line 6
    const-string v0, "Error"

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/util/debug/ShowDebugTextFragment$1;->val$info:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/debug/LarkRobot;->send(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    return-void
.end method
