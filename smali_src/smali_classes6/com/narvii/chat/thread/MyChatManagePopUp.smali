.class public abstract Lcom/narvii/chat/thread/MyChatManagePopUp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field anchor:Landroid/view/View;

.field darkTheme:Z

.field popupWindow:Landroid/widget/PopupWindow;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Z)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/thread/MyChatManagePopUp;->anchor:Landroid/view/View;

    iput-boolean p2, p0, Lcom/narvii/chat/thread/MyChatManagePopUp;->darkTheme:Z

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d004d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 5
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v1, p0, Lcom/narvii/chat/thread/MyChatManagePopUp;->popupWindow:Landroid/widget/PopupWindow;

    const v1, 0x7f0a083a

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p2, :cond_0

    const v2, 0x7f08012d

    goto :goto_0

    :cond_0
    const v2, 0x7f08012e

    :goto_0
    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x7f0a044f

    .line 7
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

    const p1, 0x7f0a0711

    .line 8
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    const v1, -0xd4d4d5

    .line 9
    :goto_2
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/narvii/chat/thread/MyChatManagePopUp;->popupWindow:Landroid/widget/PopupWindow;

    .line 10
    invoke-virtual {p1, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object p1, p0, Lcom/narvii/chat/thread/MyChatManagePopUp;->popupWindow:Landroid/widget/PopupWindow;

    .line 11
    invoke-virtual {p1, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    const p1, 0x7f0a0710

    .line 12
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/narvii/chat/thread/MyChatManagePopUp$1;

    invoke-direct {p2, p0}, Lcom/narvii/chat/thread/MyChatManagePopUp$1;-><init>(Lcom/narvii/chat/thread/MyChatManagePopUp;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0843

    .line 13
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/narvii/chat/thread/a;

    invoke-direct {p2, p0}, Lcom/narvii/chat/thread/a;-><init>(Lcom/narvii/chat/thread/MyChatManagePopUp;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    invoke-virtual {p0}, Lcom/narvii/chat/thread/MyChatManagePopUp;->updateManageButtonStatus()V

    return-void
.end method

.method public static synthetic a(Lcom/narvii/chat/thread/MyChatManagePopUp;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/thread/MyChatManagePopUp;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/thread/MyChatManagePopUp;->popupWindow:Landroid/widget/PopupWindow;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/chat/thread/MyChatManagePopUp;->onClickManage()V

    .line 9
    return-void
.end method


# virtual methods
.method public abstract isManageEnabled()Z
.end method

.method public abstract onClickInbound()V
.end method

.method public abstract onClickManage()V
.end method

.method public show()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatManagePopUp;->popupWindow:Landroid/widget/PopupWindow;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/chat/thread/MyChatManagePopUp;->anchor:Landroid/view/View;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    move-result-object v2

    .line 15
    .line 16
    const/high16 v3, 0x40c00000    # 6.0f

    .line 17
    .line 18
    .line 19
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 20
    move-result v2

    .line 21
    neg-int v2, v2

    .line 22
    const/4 v3, 0x0

    .line 23
    .line 24
    .line 25
    const v4, 0x800035

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatManagePopUp;->popupWindow:Landroid/widget/PopupWindow;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/narvii/chat/thread/MyChatManagePopUp;->anchor:Landroid/view/View;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 37
    :goto_0
    return-void
.end method

.method public updateManageButtonStatus()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/thread/MyChatManagePopUp;->isManageEnabled()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/chat/thread/MyChatManagePopUp;->popupWindow:Landroid/widget/PopupWindow;

    .line 7
    .line 8
    if-eqz v1, :cond_3

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    if-eqz v1, :cond_3

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/chat/thread/MyChatManagePopUp;->popupWindow:Landroid/widget/PopupWindow;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    const v2, 0x7f0a0843

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 31
    .line 32
    iget-boolean v1, p0, Lcom/narvii/chat/thread/MyChatManagePopUp;->darkTheme:Z

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    const/4 v0, -0x1

    .line 38
    goto :goto_0

    .line 39
    .line 40
    .line 41
    :cond_0
    const v0, 0x44ffffff    # 2047.9999f

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_1
    if-eqz v0, :cond_2

    .line 45
    .line 46
    .line 47
    const v0, -0xd4d4d5

    .line 48
    goto :goto_0

    .line 49
    .line 50
    .line 51
    :cond_2
    const v0, -0x838384

    .line 52
    .line 53
    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/thread/MyChatManagePopUp;->popupWindow:Landroid/widget/PopupWindow;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    .line 60
    const v2, 0x7f0a0845

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    move-result-object v1

    .line 65
    .line 66
    check-cast v1, Landroid/widget/TextView;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 70
    :cond_3
    return-void
.end method
