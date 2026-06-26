.class public Lcom/narvii/community/LeaveCommunityHelper;
.super Ljava/lang/Object;
.source "LeaveCommunityHelper.java"


# instance fields
.field protected nvContext:Lcom/narvii/app/NVContext;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/narvii/community/LeaveCommunityHelper;->nvContext:Lcom/narvii/app/NVContext;

    return-void
.end method


# virtual methods
.method public leaveCommunity(Lcom/narvii/model/Community;Lcom/narvii/util/Callback;)V
    .locals 3

    .line 40
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    iget-object v1, p0, Lcom/narvii/community/LeaveCommunityHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 41
    sget v1, Lcom/narvii/lib/R$string;->warning_exclamation:I

    invoke-virtual {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->setTitle(I)V

    .line 42
    sget v1, Lcom/narvii/lib/R$string;->community_leave_confirm:I

    invoke-virtual {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 43
    sget v1, Lcom/narvii/lib/R$string;->no:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 44
    sget v1, Lcom/narvii/lib/R$string;->leave:I

    new-instance v2, Lcom/narvii/community/LeaveCommunityHelper$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/narvii/community/LeaveCommunityHelper$1;-><init>(Lcom/narvii/community/LeaveCommunityHelper;Lcom/narvii/model/Community;Lcom/narvii/util/Callback;)V

    const/high16 p1, -0x10000

    invoke-virtual {v0, v1, v2, p1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    .line 118
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method

.method protected onLeaveCommunitySuccess(Lcom/narvii/model/Community;)V
    .locals 0

    return-void
.end method

.method protected onSendLeaveCommunityRequest(Lcom/narvii/model/Community;)V
    .locals 0

    return-void
.end method
