.class Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout$2;
.super Lcom/narvii/account/AccountService$ProfileListener;
.source "SpeedDialHeaderLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;


# direct methods
.method constructor <init>(Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout$2;->this$0:Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    invoke-direct {p0}, Lcom/narvii/account/AccountService$ProfileListener;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onCheckInChanged$0$SpeedDialHeaderLayout$2()V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout$2;->this$0:Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    invoke-virtual {v0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->updateCheckinStreak()V

    return-void
.end method

.method public synthetic lambda$onCheckInHistoryChanged$1$SpeedDialHeaderLayout$2()V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout$2;->this$0:Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    invoke-virtual {v0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->updateCheckinStreak()V

    return-void
.end method

.method public onCheckInChanged(ZI)V
    .locals 2

    .line 137
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout$2;->this$0:Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    invoke-static {p1}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->access$000(Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 138
    new-instance p1, Lcom/narvii/amino/speeddial/-$$Lambda$SpeedDialHeaderLayout$2$9YSEcPKbxOEn7Okbm6jyAEWF44w;

    invoke-direct {p1, p0}, Lcom/narvii/amino/speeddial/-$$Lambda$SpeedDialHeaderLayout$2$9YSEcPKbxOEn7Okbm6jyAEWF44w;-><init>(Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout$2;)V

    const-wide/16 v0, 0xc8

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public onCheckInHistoryChanged(Lcom/narvii/model/CheckInHistory;)V
    .locals 2

    .line 144
    invoke-super {p0, p1}, Lcom/narvii/account/AccountService$ProfileListener;->onCheckInHistoryChanged(Lcom/narvii/model/CheckInHistory;)V

    .line 145
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout$2;->this$0:Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    invoke-static {p1}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->access$000(Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 146
    new-instance p1, Lcom/narvii/amino/speeddial/-$$Lambda$SpeedDialHeaderLayout$2$EQktnUPrX9MtKiuaMs12Cv1f3QI;

    invoke-direct {p1, p0}, Lcom/narvii/amino/speeddial/-$$Lambda$SpeedDialHeaderLayout$2$EQktnUPrX9MtKiuaMs12Cv1f3QI;-><init>(Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout$2;)V

    const-wide/16 v0, 0xc8

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public onProfileChanged(ILcom/narvii/model/User;)V
    .locals 1

    .line 129
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout$2;->this$0:Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    invoke-static {p1}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->access$000(Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout$2;->this$0:Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    invoke-static {p1}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->access$100(Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;)Lcom/narvii/account/AccountService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasCheckInToday()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout$2;->this$0:Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    invoke-static {p1}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->access$200(Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 130
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout$2;->this$0:Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    invoke-static {p1}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->access$000(Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;)Landroid/view/ViewGroup;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 131
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout$2;->this$0:Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    invoke-static {p1}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->access$000(Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;)Landroid/view/ViewGroup;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->access$300(Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;Landroid/view/View;Z)V

    :cond_0
    return-void
.end method
