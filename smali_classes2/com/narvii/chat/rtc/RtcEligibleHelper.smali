.class public Lcom/narvii/chat/rtc/RtcEligibleHelper;
.super Ljava/lang/Object;
.source "RtcEligibleHelper.java"


# instance fields
.field private context:Lcom/narvii/app/NVContext;

.field rtcService:Lcom/narvii/chat/rtc/RtcService;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/narvii/chat/rtc/RtcEligibleHelper;->context:Lcom/narvii/app/NVContext;

    const-string v0, "rtc"

    .line 20
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/rtc/RtcService;

    iput-object p1, p0, Lcom/narvii/chat/rtc/RtcEligibleHelper;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    return-void
.end method


# virtual methods
.method public checkEligible()Z
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-virtual {p0, v0}, Lcom/narvii/chat/rtc/RtcEligibleHelper;->checkEligible(Landroid/view/View$OnClickListener;)Z

    move-result v0

    return v0
.end method

.method public checkEligible(Landroid/view/View$OnClickListener;)Z
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcEligibleHelper;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->isEligible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    invoke-virtual {p0, p1}, Lcom/narvii/chat/rtc/RtcEligibleHelper;->showNotEligibleDialog(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public showNotEligibleDialog(Landroid/view/View$OnClickListener;)V
    .locals 3

    .line 36
    new-instance v0, Lcom/narvii/util/dialog/AlertDialog;

    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcEligibleHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f013c

    .line 37
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(I)V

    .line 38
    new-instance v1, Lcom/narvii/chat/rtc/RtcEligibleHelper$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/narvii/chat/rtc/RtcEligibleHelper$1;-><init>(Lcom/narvii/chat/rtc/RtcEligibleHelper;Landroid/view/View$OnClickListener;Lcom/narvii/util/dialog/AlertDialog;)V

    const p1, 0x104000a

    const/4 v2, 0x4

    invoke-virtual {v0, p1, v2, v1}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 47
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method
