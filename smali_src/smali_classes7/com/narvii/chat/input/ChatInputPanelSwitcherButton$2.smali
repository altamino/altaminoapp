.class Lcom/narvii/chat/input/ChatInputPanelSwitcherButton$2;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton$2;->this$0:Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton$2;->this$0:Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;->c(Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;)Lcom/narvii/chat/input/ChatInputPanelSwitcherButton$SwitcherAdapter;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton$SwitcherAdapter;->scrollChatListToBottom()V

    .line 10
    return-void
.end method
