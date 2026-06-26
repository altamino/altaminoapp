.class Lcom/narvii/community/CBBHost$5;
.super Lcom/narvii/account/AccountService$ProfileListener;
.source "CBBHost.java"


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

    .line 132
    iput-object p1, p0, Lcom/narvii/community/CBBHost$5;->this$0:Lcom/narvii/community/CBBHost;

    invoke-direct {p0}, Lcom/narvii/account/AccountService$ProfileListener;-><init>()V

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

    .line 142
    iget-object p1, p0, Lcom/narvii/community/CBBHost$5;->this$0:Lcom/narvii/community/CBBHost;

    invoke-static {p1}, Lcom/narvii/community/CBBHost;->access$100(Lcom/narvii/community/CBBHost;)V

    return-void
.end method

.method public onOnlineStatusChanged(I)V
    .locals 0

    .line 156
    iget-object p1, p0, Lcom/narvii/community/CBBHost$5;->this$0:Lcom/narvii/community/CBBHost;

    invoke-static {p1}, Lcom/narvii/community/CBBHost;->access$100(Lcom/narvii/community/CBBHost;)V

    return-void
.end method

.method public onProfileChanged(ILcom/narvii/model/User;)V
    .locals 0

    .line 135
    iget-object p1, p0, Lcom/narvii/community/CBBHost$5;->this$0:Lcom/narvii/community/CBBHost;

    invoke-virtual {p1}, Lcom/narvii/widget/ProxyViewHost;->getAttachView()Lcom/narvii/widget/ProxyView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 136
    iget-object p1, p0, Lcom/narvii/community/CBBHost$5;->this$0:Lcom/narvii/community/CBBHost;

    invoke-static {p1}, Lcom/narvii/community/CBBHost;->access$500(Lcom/narvii/community/CBBHost;)V

    :cond_0
    return-void
.end method
