.class public Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;
.super Lcom/narvii/widget/TintButton;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/TintButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    return-void
.end method

.method static bridge synthetic c(Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;)Lcom/narvii/chat/input/ChatInputPanelSwitcherButton$SwitcherAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;->switcherAdapter:Lcom/narvii/chat/input/ChatInputPanelSwitcherButton$SwitcherAdapter;

    return-object p0
.end method


# virtual methods
.method public bindPanelLayout(Landroid/view/View;Landroid/widget/EditText;Lcom/narvii/chat/input/ChatInputPanelSwitcherButton$SwitcherAdapter;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;->panelView:Landroid/view/View;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;->edit:Landroid/widget/EditText;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;->switcherAdapter:Lcom/narvii/chat/input/ChatInputPanelSwitcherButton$SwitcherAdapter;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    .line 11
    new-instance p1, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton$1;

    .line 12
    .line 13
    .line 14
    invoke-direct {p1, p0}, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton$1;-><init>(Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p2, p1}, Lcom/narvii/util/SoftKeyboard;->observeKeyboard(Landroid/view/View;Lcom/narvii/util/Callback;)Lcom/narvii/util/SoftKeyboard$KeyboardObserver;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;->showIcon()V

    .line 21
    return-void
.end method

.method protected doPreCheck()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected hideTargetPanel()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;->showIcon()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;->panelHideListener:Lcom/narvii/chat/input/ChatInputFragment$PanelHideListener;

    .line 6
    .line 7
    .line 8
    invoke-interface {v0}, Lcom/narvii/chat/input/ChatInputFragment$PanelHideListener;->onPanelHide()V

    .line 9
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;->switcherAdapter:Lcom/narvii/chat/input/ChatInputPanelSwitcherButton$SwitcherAdapter;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton$SwitcherAdapter;->checkThreadAvailable(Landroid/view/View;)Z

    .line 8
    move-result p1

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;->panelView:Landroid/view/View;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 17
    move-result p1

    .line 18
    .line 19
    if-eqz p1, :cond_4

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;->doPreCheck()Z

    .line 23
    move-result p1

    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    return-void

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;->showKeyboardIcon()V

    .line 30
    .line 31
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;->panelHideListener:Lcom/narvii/chat/input/ChatInputFragment$PanelHideListener;

    .line 32
    .line 33
    .line 34
    invoke-interface {p1}, Lcom/narvii/chat/input/ChatInputFragment$PanelHideListener;->onPanelShow()V

    .line 35
    .line 36
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;->switcherAdapter:Lcom/narvii/chat/input/ChatInputPanelSwitcherButton$SwitcherAdapter;

    .line 37
    .line 38
    .line 39
    invoke-interface {p1}, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton$SwitcherAdapter;->getValidPanelHeight()I

    .line 40
    move-result p1

    .line 41
    .line 42
    if-lez p1, :cond_2

    .line 43
    .line 44
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;->panelView:Landroid/view/View;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 51
    .line 52
    :cond_2
    iget-boolean p1, p0, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;->isKeyboardVisible:Z

    .line 53
    .line 54
    if-eqz p1, :cond_3

    .line 55
    .line 56
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;->switcherAdapter:Lcom/narvii/chat/input/ChatInputPanelSwitcherButton$SwitcherAdapter;

    .line 57
    .line 58
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;->panelView:Landroid/view/View;

    .line 59
    .line 60
    .line 61
    invoke-interface {p1, v0}, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton$SwitcherAdapter;->showPanelWithKeyBoardSwitch(Landroid/view/View;)V

    .line 62
    goto :goto_0

    .line 63
    .line 64
    :cond_3
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;->switcherAdapter:Lcom/narvii/chat/input/ChatInputPanelSwitcherButton$SwitcherAdapter;

    .line 65
    .line 66
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;->panelView:Landroid/view/View;

    .line 67
    .line 68
    .line 69
    invoke-interface {p1, v0}, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton$SwitcherAdapter;->showPanel(Landroid/view/View;)V

    .line 70
    .line 71
    new-instance p1, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton$2;

    .line 72
    .line 73
    .line 74
    invoke-direct {p1, p0}, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton$2;-><init>(Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;)V

    .line 75
    .line 76
    .line 77
    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 78
    goto :goto_0

    .line 79
    .line 80
    .line 81
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;->hideTargetPanel()V

    .line 82
    .line 83
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;->switcherAdapter:Lcom/narvii/chat/input/ChatInputPanelSwitcherButton$SwitcherAdapter;

    .line 84
    .line 85
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;->panelView:Landroid/view/View;

    .line 86
    .line 87
    .line 88
    invoke-interface {p1, v0}, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton$SwitcherAdapter;->hidePanelWithKeyBoardSwitch(Landroid/view/View;)V

    .line 89
    :goto_0
    return-void
.end method

.method public setPanelHideListener(Lcom/narvii/chat/input/ChatInputFragment$PanelHideListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;->panelHideListener:Lcom/narvii/chat/input/ChatInputFragment$PanelHideListener;

    return-void
.end method

.method public showIcon()V
    .locals 1

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0803ed

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 7
    return-void
.end method

.method public showKeyboardIcon()V
    .locals 1

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0803e7

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 7
    return-void
.end method
