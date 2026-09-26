.class Lcom/narvii/user/profile/UserProfileFragment$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/user/profile/UserProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field checked3:Z

.field final synthetic this$0:Lcom/narvii/user/profile/UserProfileFragment;


# direct methods
.method constructor <init>(Lcom/narvii/user/profile/UserProfileFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$14;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$14;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 3
    .line 4
    iget-boolean v0, p1, Lcom/narvii/user/profile/UserProfileFragment;->disableSwitchListener:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    const v0, 0x7f0a0f5e

    .line 11
    .line 12
    if-ne p2, v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p1, Lcom/narvii/user/profile/UserProfileFragment;->switchAdapter:Lcom/narvii/list/SwitchAdapter;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/narvii/user/profile/UserProfileFragment;->tab1Adapter:Lcom/narvii/list/NVAdapter;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/narvii/list/SwitchAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    const p1, 0x7f0a0f5c

    .line 23
    .line 24
    if-ne p2, p1, :cond_2

    .line 25
    .line 26
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$14;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 27
    .line 28
    iget-object v0, p1, Lcom/narvii/user/profile/UserProfileFragment;->switchAdapter:Lcom/narvii/list/SwitchAdapter;

    .line 29
    .line 30
    iget-object p1, p1, Lcom/narvii/user/profile/UserProfileFragment;->tab2Adapter:Lcom/narvii/list/NVAdapter;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lcom/narvii/list/SwitchAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 34
    .line 35
    .line 36
    :cond_2
    const p1, 0x7f0a0f5f

    .line 37
    .line 38
    if-ne p2, p1, :cond_3

    .line 39
    .line 40
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$14;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 41
    .line 42
    iget-object p2, p1, Lcom/narvii/user/profile/UserProfileFragment;->switchAdapter:Lcom/narvii/list/SwitchAdapter;

    .line 43
    .line 44
    iget-object p1, p1, Lcom/narvii/user/profile/UserProfileFragment;->tab3Adapter:Lcom/narvii/list/NVAdapter;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, p1}, Lcom/narvii/list/SwitchAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 48
    .line 49
    iget-boolean p1, p0, Lcom/narvii/user/profile/UserProfileFragment$14;->checked3:Z

    .line 50
    .line 51
    if-nez p1, :cond_3

    .line 52
    const/4 p1, 0x1

    .line 53
    .line 54
    iput-boolean p1, p0, Lcom/narvii/user/profile/UserProfileFragment$14;->checked3:Z

    .line 55
    .line 56
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$14;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 57
    .line 58
    const-string/jumbo p2, "statistics"

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    move-result-object p1

    .line 63
    .line 64
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 65
    .line 66
    const-string p2, "Bookmarks Page Opened"

    .line 67
    .line 68
    .line 69
    invoke-interface {p1, p2}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 70
    move-result-object p1

    .line 71
    .line 72
    const-string p2, "Bookmarks Page Opened Total"

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    const-string p2, "My Profile"

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 82
    :cond_3
    return-void
.end method
