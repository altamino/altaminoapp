.class public Lcom/narvii/chat/rtc/RtcEligibleHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private context:Lcom/narvii/app/NVContext;

.field rtcService:Lcom/narvii/chat/rtc/RtcService;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/chat/rtc/RtcEligibleHelper;->context:Lcom/narvii/app/NVContext;

    .line 6
    .line 7
    const-string v0, "rtc"

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    check-cast p1, Lcom/narvii/chat/rtc/RtcService;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/narvii/chat/rtc/RtcEligibleHelper;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 16
    return-void
.end method


# virtual methods
.method public checkEligible()Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/narvii/chat/rtc/RtcEligibleHelper;->checkEligible(Landroid/view/View$OnClickListener;)Z

    move-result v0

    return v0
.end method

.method public checkEligible(Landroid/view/View$OnClickListener;)Z
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcEligibleHelper;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 2
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->isEligible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/chat/rtc/RtcEligibleHelper;->showNotEligibleDialog(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public showNotEligibleDialog(Landroid/view/View$OnClickListener;)V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/AlertDialog;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcEligibleHelper;->context:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    const v1, 0x7f12017d

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(I)V

    .line 18
    .line 19
    new-instance v1, Lcom/narvii/chat/rtc/RtcEligibleHelper$1;

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, p0, p1, v0}, Lcom/narvii/chat/rtc/RtcEligibleHelper$1;-><init>(Lcom/narvii/chat/rtc/RtcEligibleHelper;Landroid/view/View$OnClickListener;Lcom/narvii/util/dialog/AlertDialog;)V

    .line 23
    .line 24
    .line 25
    const p1, 0x104000a

    .line 26
    const/4 v2, 0x4

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1, v2, v1}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 33
    return-void
.end method
