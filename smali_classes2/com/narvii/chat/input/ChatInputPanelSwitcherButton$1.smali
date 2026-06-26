.class Lcom/narvii/chat/input/ChatInputPanelSwitcherButton$1;
.super Ljava/lang/Object;
.source "ChatInputPanelSwitcherButton.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;->bindPanelLayout(Landroid/view/View;Landroid/widget/EditText;Lcom/narvii/chat/input/ChatInputPanelSwitcherButton$SwitcherAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;


# direct methods
.method constructor <init>(Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton$1;->this$0:Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton$1;->this$0:Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;->isKeyboardVisible:Z

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 34
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton$1;->call(Ljava/lang/Boolean;)V

    return-void
.end method
