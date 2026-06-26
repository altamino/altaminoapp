.class public abstract Lcom/narvii/account/AccountService$ProfileListener;
.super Ljava/lang/Object;
.source "AccountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/account/AccountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ProfileListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckInChanged(ZI)V
    .locals 0

    return-void
.end method

.method public onCheckInHistoryChanged(Lcom/narvii/model/CheckInHistory;)V
    .locals 0

    return-void
.end method

.method public onNoticeCountChanged(I)V
    .locals 0

    return-void
.end method

.method public onNotificationCountChanged(I)V
    .locals 0

    return-void
.end method

.method public onOnlineStatusChanged(I)V
    .locals 0

    return-void
.end method

.method public abstract onProfileChanged(ILcom/narvii/model/User;)V
.end method
