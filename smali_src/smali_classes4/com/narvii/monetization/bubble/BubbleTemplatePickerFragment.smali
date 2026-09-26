.class public Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment$TemplatePickedListener;,
        Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment$BubbleTemplateListAdapter;
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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;->curCheckedTempId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic u(Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;->templateRequestSent:Z

    return p0
.end method

.method static bridge synthetic v(Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;->curCheckedTempId:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic w(Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;->templateRequestSent:Z

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    const v0, 0x7f0700b9

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 15
    move-result v6

    .line 16
    .line 17
    new-instance p1, Lcom/narvii/list/DivideColumnAdapter;

    .line 18
    move-object v1, p1

    .line 19
    move-object v2, p0

    .line 20
    move v3, v6

    .line 21
    move v4, v6

    .line 22
    move v5, v6

    .line 23
    .line 24
    .line 25
    invoke-direct/range {v1 .. v6}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    .line 26
    .line 27
    new-instance v0, Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment$BubbleTemplateListAdapter;

    .line 28
    const/4 v1, 0x0

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, p0, p0, v1}, Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment$BubbleTemplateListAdapter;-><init>(Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;Lcom/narvii/app/NVContext;I)V

    .line 32
    const/4 v1, 0x3

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 36
    return-object p1
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-class v0, Lcom/narvii/model/ChatBubble;

    .line 6
    .line 7
    if-nez p1, :cond_2

    .line 8
    .line 9
    const-string p1, "key_chat_bubble"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    move-result v1

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    check-cast p1, Lcom/narvii/model/ChatBubble;

    .line 26
    .line 27
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;->chatBubble:Lcom/narvii/model/ChatBubble;

    .line 28
    .line 29
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;->chatBubble:Lcom/narvii/model/ChatBubble;

    .line 30
    .line 31
    if-nez p1, :cond_1

    .line 32
    const/4 p1, 0x0

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_1
    iget-object p1, p1, Lcom/narvii/model/ChatBubble;->templateId:Ljava/lang/String;

    .line 36
    .line 37
    :goto_0
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;->curCheckedTempId:Ljava/lang/String;

    .line 38
    goto :goto_1

    .line 39
    .line 40
    :cond_2
    const-string v1, "bubble"

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    .line 47
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    move-result v2

    .line 49
    .line 50
    if-nez v2, :cond_3

    .line 51
    .line 52
    .line 53
    invoke-static {v1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    check-cast v0, Lcom/narvii/model/ChatBubble;

    .line 57
    .line 58
    iput-object v0, p0, Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;->chatBubble:Lcom/narvii/model/ChatBubble;

    .line 59
    .line 60
    :cond_3
    const-string v0, "curCheckedTempId"

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;->curCheckedTempId:Ljava/lang/String;

    .line 67
    :goto_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d02b3

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public setListener(Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment$TemplatePickedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;->listener:Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment$TemplatePickedListener;

    return-void
.end method
