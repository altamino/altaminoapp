.class Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout$2;
.super Lcom/narvii/account/AccountService$ProfileListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout$2;->this$0:Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/account/AccountService$ProfileListener;-><init>()V

    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout$2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout$2;->lambda$onCheckInHistoryChanged$1()V

    return-void
.end method

.method public static synthetic b(Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout$2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout$2;->lambda$onCheckInChanged$0()V

    return-void
.end method

.method private synthetic lambda$onCheckInChanged$0()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout$2;->this$0:Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->updateCheckinStreak()V

    .line 6
    return-void
.end method

.method private synthetic lambda$onCheckInHistoryChanged$1()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout$2;->this$0:Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->updateCheckinStreak()V

    .line 6
    return-void
.end method


# virtual methods
.method public onCheckInChanged(ZI)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout$2;->this$0:Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->f(Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;)Landroid/view/ViewGroup;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 10
    move-result p1

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    new-instance p1, Lcom/narvii/amino/speeddial/e;

    .line 15
    .line 16
    .line 17
    invoke-direct {p1, p0}, Lcom/narvii/amino/speeddial/e;-><init>(Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout$2;)V

    .line 18
    .line 19
    const-wide/16 v0, 0xc8

    .line 20
    .line 21
    .line 22
    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 23
    :cond_0
    return-void
.end method

.method public onCheckInHistoryChanged(Lcom/narvii/model/CheckInHistory;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/account/AccountService$ProfileListener;->onCheckInHistoryChanged(Lcom/narvii/model/CheckInHistory;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout$2;->this$0:Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->f(Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;)Landroid/view/ViewGroup;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 13
    move-result p1

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    new-instance p1, Lcom/narvii/amino/speeddial/f;

    .line 18
    .line 19
    .line 20
    invoke-direct {p1, p0}, Lcom/narvii/amino/speeddial/f;-><init>(Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout$2;)V

    .line 21
    .line 22
    const-wide/16 v0, 0xc8

    .line 23
    .line 24
    .line 25
    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 26
    :cond_0
    return-void
.end method

.method public onProfileChanged(ILcom/narvii/model/User;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout$2;->this$0:Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->f(Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;)Landroid/view/ViewGroup;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 10
    move-result p1

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout$2;->this$0:Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->e(Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;)Lcom/narvii/account/AccountService;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasCheckInToday()Z

    .line 22
    move-result p1

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout$2;->this$0:Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->g(Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;)Z

    .line 30
    move-result p1

    .line 31
    .line 32
    if-nez p1, :cond_0

    .line 33
    .line 34
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout$2;->this$0:Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    .line 35
    .line 36
    .line 37
    invoke-static {p1}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->f(Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;)Landroid/view/ViewGroup;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    const/16 p2, 0x8

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout$2;->this$0:Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    .line 46
    .line 47
    .line 48
    invoke-static {p1}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->f(Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;)Landroid/view/ViewGroup;

    .line 49
    move-result-object p2

    .line 50
    const/4 v0, 0x0

    .line 51
    .line 52
    .line 53
    invoke-static {p1, p2, v0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->h(Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;Landroid/view/View;Z)V

    .line 54
    :cond_0
    return-void
.end method
