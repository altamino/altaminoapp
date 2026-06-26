.class public Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;
.super Lcom/narvii/list/NVListFragment;
.source "BubbleTemplatePickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment$BubbleTemplateListAdapter;,
        Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment$TemplatePickedListener;
    }
.end annotation


# instance fields
.field private chatBubble:Lcom/narvii/model/ChatBubble;

.field private curCheckedTempId:Ljava/lang/String;

.field listener:Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment$TemplatePickedListener;

.field private templateRequestSent:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;)Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;->curCheckedTempId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;->curCheckedTempId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;->templateRequestSent:Z

    return p0
.end method

.method static synthetic access$102(Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;->templateRequestSent:Z

    return p1
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 7

    .line 72
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07007f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 73
    new-instance p1, Lcom/narvii/list/DivideColumnAdapter;

    move-object v1, p1

    move-object v2, p0

    move v3, v6

    move v4, v6

    move v5, v6

    invoke-direct/range {v1 .. v6}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    .line 74
    new-instance v0, Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment$BubbleTemplateListAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment$BubbleTemplateListAdapter;-><init>(Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;Lcom/narvii/app/NVContext;I)V

    const/4 v1, 0x3

    .line 75
    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    return-object p1
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 44
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_2

    const-string p1, "key_chat_bubble"

    .line 46
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 47
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    const-class v0, Lcom/narvii/model/ChatBubble;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/ChatBubble;

    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;->chatBubble:Lcom/narvii/model/ChatBubble;

    .line 50
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;->chatBubble:Lcom/narvii/model/ChatBubble;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lcom/narvii/model/ChatBubble;->templateId:Ljava/lang/String;

    :goto_0
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;->curCheckedTempId:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v0, "bubble"

    .line 52
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 54
    const-class v1, Lcom/narvii/model/ChatBubble;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/ChatBubble;

    iput-object v0, p0, Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;->chatBubble:Lcom/narvii/model/ChatBubble;

    :cond_3
    const-string v0, "curCheckedTempId"

    .line 56
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;->curCheckedTempId:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0288

    const/4 v0, 0x0

    .line 63
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public setListener(Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment$TemplatePickedListener;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;->listener:Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment$TemplatePickedListener;

    return-void
.end method
