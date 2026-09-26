.class Lcom/narvii/amino/CommunityNavBarFragment$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/amino/CommunityNavBarFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/amino/CommunityNavBarFragment;


# direct methods
.method constructor <init>(Lcom/narvii/amino/CommunityNavBarFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment$12;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method

.method public static safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    .line 2
    if-eqz p1, :cond_5

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/amino/CommunityNavBarFragment$12;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->shouldShowLoginPage()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 15
    move-result v0

    .line 16
    .line 17
    .line 18
    const v1, 0x7f0a0dba

    .line 19
    .line 20
    const-string v2, "Navbar"

    .line 21
    .line 22
    const-string v3, "Source"

    .line 23
    .line 24
    if-ne v0, v1, :cond_2

    .line 25
    .line 26
    iget-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment$12;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Lcom/narvii/amino/CommunityNavBarFragment;->r(Lcom/narvii/amino/CommunityNavBarFragment;)Lcom/narvii/amino/HomeFragment;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    sget-object v0, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    .line 35
    .line 36
    .line 37
    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    const-string v0, "StoreIcon"

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 48
    .line 49
    :cond_1
    const-class p1, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    .line 50
    .line 51
    .line 52
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    .line 58
    iget-object v0, p0, Lcom/narvii/amino/CommunityNavBarFragment$12;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    .line 59
    .line 60
    .line 61
    invoke-static {v0, p1}, Lcom/narvii/amino/CommunityNavBarFragment$12;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 62
    goto :goto_0

    .line 63
    .line 64
    .line 65
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 66
    move-result p1

    .line 67
    .line 68
    .line 69
    const v0, 0x7f0a00fd

    .line 70
    .line 71
    if-ne p1, v0, :cond_4

    .line 72
    .line 73
    iget-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment$12;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    .line 74
    .line 75
    .line 76
    invoke-static {p1}, Lcom/narvii/amino/CommunityNavBarFragment;->r(Lcom/narvii/amino/CommunityNavBarFragment;)Lcom/narvii/amino/HomeFragment;

    .line 77
    move-result-object p1

    .line 78
    .line 79
    if-eqz p1, :cond_3

    .line 80
    .line 81
    sget-object v0, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    .line 82
    .line 83
    .line 84
    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 85
    move-result-object p1

    .line 86
    .line 87
    const-string v0, "AlertIcon"

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 91
    move-result-object p1

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 95
    .line 96
    :cond_3
    const-class p1, Lcom/narvii/notice/NoticeListFragment;

    .line 97
    .line 98
    .line 99
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 100
    move-result-object p1

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    goto :goto_1

    .line 105
    :cond_4
    :goto_0
    const/4 p1, 0x0

    .line 106
    .line 107
    :goto_1
    if-eqz p1, :cond_5

    .line 108
    .line 109
    iget-object v0, p0, Lcom/narvii/amino/CommunityNavBarFragment$12;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    .line 110
    .line 111
    .line 112
    invoke-static {v0, p1}, Lcom/narvii/amino/CommunityNavBarFragment$12;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 113
    .line 114
    iget-object p1, p0, Lcom/narvii/amino/CommunityNavBarFragment$12;->this$0:Lcom/narvii/amino/CommunityNavBarFragment;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 118
    move-result-object p1

    .line 119
    .line 120
    .line 121
    const v0, 0x7f01000e

    .line 122
    .line 123
    .line 124
    const v1, 0x7f01000f

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 128
    :cond_5
    return-void
.end method
