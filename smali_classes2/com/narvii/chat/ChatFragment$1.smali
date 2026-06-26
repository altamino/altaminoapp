.class Lcom/narvii/chat/ChatFragment$1;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Lcom/narvii/chat/input/ChatInputFragment$PanelHideListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/ChatFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/ChatFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/ChatFragment;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/narvii/chat/ChatFragment$1;->this$0:Lcom/narvii/chat/ChatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPanelHide()V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment$1;->this$0:Lcom/narvii/chat/ChatFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/narvii/chat/ChatFragment;->access$002(Lcom/narvii/chat/ChatFragment;Z)Z

    .line 151
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment$1;->this$0:Lcom/narvii/chat/ChatFragment;

    invoke-static {v0}, Lcom/narvii/chat/ChatFragment;->access$100(Lcom/narvii/chat/ChatFragment;)V

    .line 152
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment$1;->this$0:Lcom/narvii/chat/ChatFragment;

    invoke-static {v0}, Lcom/narvii/chat/ChatFragment;->access$200(Lcom/narvii/chat/ChatFragment;)V

    return-void
.end method

.method public onPanelShow()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment$1;->this$0:Lcom/narvii/chat/ChatFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/narvii/chat/ChatFragment;->access$002(Lcom/narvii/chat/ChatFragment;Z)Z

    .line 158
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment$1;->this$0:Lcom/narvii/chat/ChatFragment;

    invoke-static {v0}, Lcom/narvii/chat/ChatFragment;->access$100(Lcom/narvii/chat/ChatFragment;)V

    .line 159
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment$1;->this$0:Lcom/narvii/chat/ChatFragment;

    invoke-static {v0}, Lcom/narvii/chat/ChatFragment;->access$200(Lcom/narvii/chat/ChatFragment;)V

    return-void
.end method
