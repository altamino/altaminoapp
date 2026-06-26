.class public Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;
.super Lcom/narvii/widget/TintButton;
.source "ChatInputPanelSwitcherButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/input/ChatInputPanelSwitcherButton$SwitcherAdapter;
    }
.end annotation


# instance fields
.field private edit:Landroid/widget/EditText;

.field public isKeyboardVisible:Z

.field private panelHideListener:Lcom/narvii/chat/input/ChatInputFragment$PanelHideListener;

.field private panelView:Landroid/view/View;

.field private switcherAdapter:Lcom/narvii/chat/input/ChatInputPanelSwitcherButton$SwitcherAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/TintButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;)Lcom/narvii/chat/input/ChatInputPanelSwitcherButton$SwitcherAdapter;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;->switcherAdapter:Lcom/narvii/chat/input/ChatInputPanelSwitcherButton$SwitcherAdapter;

    return-object p0
.end method


# virtual methods
.method public bindPanelLayout(Landroid/view/View;Landroid/widget/EditText;Lcom/narvii/chat/input/ChatInputPanelSwitcherButton$SwitcherAdapter;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;->panelView:Landroid/view/View;

    .line 31
    iput-object p2, p0, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;->edit:Landroid/widget/EditText;

    .line 32
    iput-object p3, p0, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;->switcherAdapter:Lcom/narvii/chat/input/ChatInputPanelSwitcherButton$SwitcherAdapter;

    .line 33
    invoke-virtual {p0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    new-instance p1, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton$1;

    invoke-direct {p1, p0}, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton$1;-><init>(Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;)V

    invoke-static {p2, p1}, Lcom/narvii/util/SoftKeyboard;->observeKeyboard(Landroid/view/View;Lcom/narvii/util/Callback;)Lcom/narvii/util/SoftKeyboard$KeyboardObserver;

    .line 41
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;->showIcon()V

    return-void
.end method

.method protected doPreCheck()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected hideTargetPanel()V
    .locals 1

    .line 99
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;->showIcon()V

    .line 100
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;->panelHideListener:Lcom/narvii/chat/input/ChatInputFragment$PanelHideListener;

    invoke-interface {v0}, Lcom/narvii/chat/input/ChatInputFragment$PanelHideListener;->onPanelHide()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;->switcherAdapter:Lcom/narvii/chat/input/ChatInputPanelSwitcherButton$SwitcherAdapter;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton$SwitcherAdapter;->checkThreadAvailable(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 54
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;->panelView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_5

    .line 57
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;->doPreCheck()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 61
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;->showKeyboardIcon()V

    .line 62
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;->panelHideListener:Lcom/narvii/chat/input/ChatInputFragment$PanelHideListener;

    invoke-interface {p1}, Lcom/narvii/chat/input/ChatInputFragment$PanelHideListener;->onPanelShow()V

    .line 64
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;->switcherAdapter:Lcom/narvii/chat/input/ChatInputPanelSwitcherButton$SwitcherAdapter;

    invoke-interface {p1}, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton$SwitcherAdapter;->getValidPanelHeight()I

    move-result p1

    if-lez p1, :cond_3

    .line 66
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;->panelView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 68
    :cond_3
    iget-boolean p1, p0, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;->isKeyboardVisible:Z

    if-eqz p1, :cond_4

    .line 69
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;->switcherAdapter:Lcom/narvii/chat/input/ChatInputPanelSwitcherButton$SwitcherAdapter;

    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;->panelView:Landroid/view/View;

    invoke-interface {p1, v0}, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton$SwitcherAdapter;->showPanelWithKeyBoardSwitch(Landroid/view/View;)V

    goto :goto_1

    .line 71
    :cond_4
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;->switcherAdapter:Lcom/narvii/chat/input/ChatInputPanelSwitcherButton$SwitcherAdapter;

    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;->panelView:Landroid/view/View;

    invoke-interface {p1, v0}, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton$SwitcherAdapter;->showPanel(Landroid/view/View;)V

    .line 72
    new-instance p1, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton$2;

    invoke-direct {p1, p0}, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton$2;-><init>(Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;)V

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 80
    :cond_5
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;->hideTargetPanel()V

    .line 81
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;->switcherAdapter:Lcom/narvii/chat/input/ChatInputPanelSwitcherButton$SwitcherAdapter;

    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;->panelView:Landroid/view/View;

    invoke-interface {p1, v0}, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton$SwitcherAdapter;->hidePanelWithKeyBoardSwitch(Landroid/view/View;)V

    :goto_1
    return-void
.end method

.method public setPanelHideListener(Lcom/narvii/chat/input/ChatInputFragment$PanelHideListener;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;->panelHideListener:Lcom/narvii/chat/input/ChatInputFragment$PanelHideListener;

    return-void
.end method

.method public showIcon()V
    .locals 1

    const v0, 0x7f0802e3

    .line 91
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public showKeyboardIcon()V
    .locals 1

    const v0, 0x7f0802dd

    .line 95
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
