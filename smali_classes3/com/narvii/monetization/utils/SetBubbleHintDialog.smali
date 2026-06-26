.class public Lcom/narvii/monetization/utils/SetBubbleHintDialog;
.super Lcom/narvii/util/dialog/AlertDialog;
.source "SetBubbleHintDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/monetization/utils/SetBubbleHintDialog$ApplyAllChatListener;
    }
.end annotation


# instance fields
.field private btnClose:Landroid/view/View;

.field private btnSelectChat:Landroid/view/View;

.field private btnSetAllChats:Landroid/view/View;

.field private bubble:Lcom/narvii/model/ChatBubble;

.field context:Lcom/narvii/app/NVContext;

.field private imgPreview:Lcom/narvii/widget/NVImageView;

.field listener:Lcom/narvii/monetization/utils/SetBubbleHintDialog$ApplyAllChatListener;

.field private threadId:Ljava/lang/String;

.field private tvBubbleName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/ChatBubble;Ljava/lang/String;)V
    .locals 4

    .line 54
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 55
    iput-object p1, p0, Lcom/narvii/monetization/utils/SetBubbleHintDialog;->context:Lcom/narvii/app/NVContext;

    .line 56
    iput-object p2, p0, Lcom/narvii/monetization/utils/SetBubbleHintDialog;->bubble:Lcom/narvii/model/ChatBubble;

    .line 57
    iput-object p3, p0, Lcom/narvii/monetization/utils/SetBubbleHintDialog;->threadId:Ljava/lang/String;

    const p1, 0x7f0b01b4

    .line 58
    invoke-virtual {p0, p1}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    const p1, 0x7f09025e

    .line 60
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/utils/SetBubbleHintDialog;->btnClose:Landroid/view/View;

    .line 61
    iget-object p1, p0, Lcom/narvii/monetization/utils/SetBubbleHintDialog;->btnClose:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0909ff

    .line 63
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/utils/SetBubbleHintDialog;->btnSelectChat:Landroid/view/View;

    .line 64
    iget-object p1, p0, Lcom/narvii/monetization/utils/SetBubbleHintDialog;->btnSelectChat:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090a13

    .line 66
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/utils/SetBubbleHintDialog;->btnSetAllChats:Landroid/view/View;

    .line 67
    iget-object p1, p0, Lcom/narvii/monetization/utils/SetBubbleHintDialog;->btnSetAllChats:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090181

    .line 69
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVImageView;

    iput-object p1, p0, Lcom/narvii/monetization/utils/SetBubbleHintDialog;->imgPreview:Lcom/narvii/widget/NVImageView;

    .line 70
    iget p1, p2, Lcom/narvii/model/ChatBubble;->type:I

    const/4 p3, 0x2

    const/4 v0, 0x0

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    .line 71
    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    .line 72
    :goto_1
    iget-object v2, p0, Lcom/narvii/monetization/utils/SetBubbleHintDialog;->imgPreview:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 73
    iget-object v1, p0, Lcom/narvii/monetization/utils/SetBubbleHintDialog;->imgPreview:Lcom/narvii/widget/NVImageView;

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    move-object p1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const v3, 0x7f0800b0

    invoke-static {p1, v3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_2
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    iget-object p1, p0, Lcom/narvii/monetization/utils/SetBubbleHintDialog;->imgPreview:Lcom/narvii/widget/NVImageView;

    iget-object v1, p2, Lcom/narvii/model/ChatBubble;->coverImage:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    const p1, 0x7f09017f

    .line 76
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/monetization/utils/SetBubbleHintDialog;->tvBubbleName:Landroid/widget/TextView;

    .line 77
    iget-object p1, p0, Lcom/narvii/monetization/utils/SetBubbleHintDialog;->tvBubbleName:Landroid/widget/TextView;

    if-nez p2, :cond_3

    goto :goto_3

    :cond_3
    iget-object v2, p2, Lcom/narvii/model/ChatBubble;->name:Ljava/lang/String;

    :goto_3
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object p1, p0, Lcom/narvii/monetization/utils/SetBubbleHintDialog;->tvBubbleName:Landroid/widget/TextView;

    const/16 v1, 0x8

    if-nez p2, :cond_4

    const/16 v2, 0x8

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const p1, 0x7f0900a2

    .line 80
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 81
    invoke-virtual {p2}, Lcom/narvii/model/StoreItemBaseObject;->getRestrictionInfo()Lcom/narvii/model/RestrictionInfo;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p2}, Lcom/narvii/model/StoreItemBaseObject;->getRestrictionInfo()Lcom/narvii/model/RestrictionInfo;

    move-result-object p2

    iget p2, p2, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    if-ne p2, p3, :cond_5

    goto :goto_5

    :cond_5
    const/16 v0, 0x8

    :goto_5
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/monetization/utils/SetBubbleHintDialog;)Lcom/narvii/model/ChatBubble;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/narvii/monetization/utils/SetBubbleHintDialog;->bubble:Lcom/narvii/model/ChatBubble;

    return-object p0
.end method

.method private sendSetBubbleRequest(Z)V
    .locals 4

    .line 107
    new-instance v0, Lcom/narvii/monetization/bubble/BubbleHelper;

    iget-object v1, p0, Lcom/narvii/monetization/utils/SetBubbleHintDialog;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v0, v1}, Lcom/narvii/monetization/bubble/BubbleHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 108
    iget-object v1, p0, Lcom/narvii/monetization/utils/SetBubbleHintDialog;->bubble:Lcom/narvii/model/ChatBubble;

    iget-object v2, p0, Lcom/narvii/monetization/utils/SetBubbleHintDialog;->threadId:Ljava/lang/String;

    new-instance v3, Lcom/narvii/monetization/utils/SetBubbleHintDialog$1;

    invoke-direct {v3, p0, p1}, Lcom/narvii/monetization/utils/SetBubbleHintDialog$1;-><init>(Lcom/narvii/monetization/utils/SetBubbleHintDialog;Z)V

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/narvii/monetization/bubble/BubbleHelper;->sendApplyBubbleRequest(Lcom/narvii/model/ChatBubble;ZLjava/lang/String;Lcom/narvii/util/Callback;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09025e

    if-eq p1, v0, :cond_2

    const v0, 0x7f0909ff

    if-eq p1, v0, :cond_1

    const v0, 0x7f090a13

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 95
    invoke-direct {p0, p1}, Lcom/narvii/monetization/utils/SetBubbleHintDialog;->sendSetBubbleRequest(Z)V

    goto :goto_0

    .line 89
    :cond_1
    const-class p1, Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 90
    iget-object v0, p0, Lcom/narvii/monetization/utils/SetBubbleHintDialog;->bubble:Lcom/narvii/model/ChatBubble;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bubble"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    iget-object v0, p0, Lcom/narvii/monetization/utils/SetBubbleHintDialog;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 92
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    goto :goto_0

    .line 99
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    :goto_0
    return-void
.end method

.method public setApplyAllChatBubbleListener(Lcom/narvii/monetization/utils/SetBubbleHintDialog$ApplyAllChatListener;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/narvii/monetization/utils/SetBubbleHintDialog;->listener:Lcom/narvii/monetization/utils/SetBubbleHintDialog$ApplyAllChatListener;

    return-void
.end method
