.class public abstract Lcom/narvii/chat/thread/MyChatManagePopUp;
.super Ljava/lang/Object;
.source "MyChatManagePopUp.java"


# instance fields
.field anchor:Landroid/view/View;

.field darkTheme:Z

.field popupWindow:Landroid/widget/PopupWindow;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Z)V
    .locals 4

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/narvii/chat/thread/MyChatManagePopUp;->anchor:Landroid/view/View;

    .line 29
    iput-boolean p2, p0, Lcom/narvii/chat/thread/MyChatManagePopUp;->darkTheme:Z

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 31
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0049

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 32
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v1, p0, Lcom/narvii/chat/thread/MyChatManagePopUp;->popupWindow:Landroid/widget/PopupWindow;

    const v1, 0x7f0906ae

    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p2, :cond_0

    const v2, 0x7f0800a5

    goto :goto_0

    :cond_0
    const v2, 0x7f0800a6

    :goto_0
    invoke-static {p1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x7f090366

    .line 34
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v1, -0x1

    if-eqz p2, :cond_1

    const v2, 0x3dcccccd    # 0.1f

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->getColor(IF)I

    move-result v2

    goto :goto_1

    :cond_1
    const v2, -0xb0b0c

    :goto_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    const p1, 0x7f09058c

    .line 35
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    const v1, -0xd4d4d5

    .line 36
    :goto_2
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 37
    iget-object p1, p0, Lcom/narvii/chat/thread/MyChatManagePopUp;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 38
    iget-object p1, p0, Lcom/narvii/chat/thread/MyChatManagePopUp;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    const p1, 0x7f09058b

    .line 39
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/narvii/chat/thread/MyChatManagePopUp$1;

    invoke-direct {p2, p0}, Lcom/narvii/chat/thread/MyChatManagePopUp$1;-><init>(Lcom/narvii/chat/thread/MyChatManagePopUp;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0906b5

    .line 46
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/narvii/chat/thread/-$$Lambda$MyChatManagePopUp$c9v2N3NEfamhP6YRJ-1N2oBWBaU;

    invoke-direct {p2, p0}, Lcom/narvii/chat/thread/-$$Lambda$MyChatManagePopUp$c9v2N3NEfamhP6YRJ-1N2oBWBaU;-><init>(Lcom/narvii/chat/thread/MyChatManagePopUp;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    invoke-virtual {p0}, Lcom/narvii/chat/thread/MyChatManagePopUp;->updateManageButtonStatus()V

    return-void
.end method


# virtual methods
.method public abstract isManageEnabled()Z
.end method

.method public synthetic lambda$new$0$MyChatManagePopUp(Landroid/view/View;)V
    .locals 0

    .line 47
    iget-object p1, p0, Lcom/narvii/chat/thread/MyChatManagePopUp;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 48
    invoke-virtual {p0}, Lcom/narvii/chat/thread/MyChatManagePopUp;->onClickManage()V

    return-void
.end method

.method public abstract onClickInbound()V
.end method

.method public abstract onClickManage()V
.end method

.method public show()V
    .locals 5

    .line 54
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 55
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatManagePopUp;->popupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/narvii/chat/thread/MyChatManagePopUp;->anchor:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v2

    neg-int v2, v2

    const/4 v3, 0x0

    const v4, 0x800035

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatManagePopUp;->popupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/narvii/chat/thread/MyChatManagePopUp;->anchor:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public updateManageButtonStatus()V
    .locals 3

    .line 69
    invoke-virtual {p0}, Lcom/narvii/chat/thread/MyChatManagePopUp;->isManageEnabled()Z

    move-result v0

    .line 70
    iget-object v1, p0, Lcom/narvii/chat/thread/MyChatManagePopUp;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 71
    iget-object v1, p0, Lcom/narvii/chat/thread/MyChatManagePopUp;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0906b5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 72
    iget-boolean v1, p0, Lcom/narvii/chat/thread/MyChatManagePopUp;->darkTheme:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const v0, 0x44ffffff    # 2047.9999f

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    const v0, -0xd4d4d5

    goto :goto_0

    :cond_2
    const v0, -0x838384

    .line 73
    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/thread/MyChatManagePopUp;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0906b7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 74
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    return-void
.end method
