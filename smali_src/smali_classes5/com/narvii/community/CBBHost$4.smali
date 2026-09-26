.class Lcom/narvii/community/CBBHost$4;
.super Lcom/narvii/account/AccountService$ProfileListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/community/CBBHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/community/CBBHost;


# direct methods
.method constructor <init>(Lcom/narvii/community/CBBHost;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/community/CBBHost$4;->this$0:Lcom/narvii/community/CBBHost;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/account/AccountService$ProfileListener;-><init>()V

    .line 6
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

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/community/CBBHost$4;->this$0:Lcom/narvii/community/CBBHost;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/community/CBBHost;->e(Lcom/narvii/community/CBBHost;)V

    .line 6
    return-void
.end method

.method public onOnlineStatusChanged(I)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/community/CBBHost$4;->this$0:Lcom/narvii/community/CBBHost;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/community/CBBHost;->e(Lcom/narvii/community/CBBHost;)V

    .line 6
    return-void
.end method

.method public onProfileChanged(ILcom/narvii/model/User;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/community/CBBHost$4;->this$0:Lcom/narvii/community/CBBHost;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/widget/ProxyViewHost;->getAttachView()Lcom/narvii/widget/ProxyView;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/community/CBBHost$4;->this$0:Lcom/narvii/community/CBBHost;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/narvii/community/CBBHost;->b(Lcom/narvii/community/CBBHost;)V

    .line 14
    :cond_0
    return-void
.end method
