.class Lcom/narvii/chat/input/ChatInputPanelSwitcherButton$2;
.super Ljava/lang/Object;
.source "ChatInputPanelSwitcherButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;


# direct methods
.method constructor <init>(Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton$2;->this$0:Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton$2;->this$0:Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;

    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;->access$000(Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;)Lcom/narvii/chat/input/ChatInputPanelSwitcherButton$SwitcherAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton$SwitcherAdapter;->scrollChatListToBottom()V

    return-void
.end method
