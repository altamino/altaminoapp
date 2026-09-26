.class public Lcom/narvii/community/LeaveCommunityHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected nvContext:Lcom/narvii/app/NVContext;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/community/LeaveCommunityHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 6
    return-void
.end method


# virtual methods
.method public leaveCommunity(Lcom/narvii/model/Community;Lcom/narvii/util/Callback;)V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/community/LeaveCommunityHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    sget v1, Lcom/narvii/lib/R$string;->warning_exclamation:I

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->setTitle(I)V

    .line 17
    .line 18
    sget v1, Lcom/narvii/lib/R$string;->community_leave_confirm:I

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 22
    .line 23
    sget v1, Lcom/narvii/lib/R$string;->no:I

    .line 24
    const/4 v2, 0x0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 28
    .line 29
    sget v1, Lcom/narvii/lib/R$string;->leave:I

    .line 30
    .line 31
    new-instance v2, Lcom/narvii/community/LeaveCommunityHelper$1;

    .line 32
    .line 33
    .line 34
    invoke-direct {v2, p0, p1, p2}, Lcom/narvii/community/LeaveCommunityHelper$1;-><init>(Lcom/narvii/community/LeaveCommunityHelper;Lcom/narvii/model/Community;Lcom/narvii/util/Callback;)V

    .line 35
    .line 36
    const/high16 p1, -0x10000

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1, v2, p1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 43
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
