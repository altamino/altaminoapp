.class Lcom/narvii/chat/input/ChatInputRightViewContainer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/input/ChatInputRightViewContainer;->updateWaitingListBubble(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/input/ChatInputRightViewContainer;


# direct methods
.method constructor <init>(Lcom/narvii/chat/input/ChatInputRightViewContainer;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer$1;->this$0:Lcom/narvii/chat/input/ChatInputRightViewContainer;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public call(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer$1;->this$0:Lcom/narvii/chat/input/ChatInputRightViewContainer;

    .line 2
    invoke-static {v0, p1}, Lcom/narvii/chat/input/ChatInputRightViewContainer;->c(Lcom/narvii/chat/input/ChatInputRightViewContainer;Landroid/view/View;)V

    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer$1;->this$0:Lcom/narvii/chat/input/ChatInputRightViewContainer;

    .line 3
    invoke-static {p1}, Lcom/narvii/chat/input/ChatInputRightViewContainer;->b(Lcom/narvii/chat/input/ChatInputRightViewContainer;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputRightViewContainer$1;->this$0:Lcom/narvii/chat/input/ChatInputRightViewContainer;

    invoke-static {v1}, Lcom/narvii/chat/input/ChatInputRightViewContainer;->a(Lcom/narvii/chat/input/ChatInputRightViewContainer;)Ljava/util/List;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/narvii/chat/input/ChatInputRightViewContainer;->d(Lcom/narvii/chat/input/ChatInputRightViewContainer;Landroid/view/View;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/input/ChatInputRightViewContainer$1;->call(Landroid/view/View;)V

    return-void
.end method
