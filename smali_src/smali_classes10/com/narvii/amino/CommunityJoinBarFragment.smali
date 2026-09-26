.class public Lcom/narvii/amino/CommunityJoinBarFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/amino/CommunityJoinBarFragment$OnCommunityActionClickListener;
    }
.end annotation


# static fields
.field public static final JOIN_BAR_COMMUNITY:Ljava/lang/String; = "_join_bar_community"

.field private static final REQUEST_JOIN:I = 0x3e9


# instance fields
.field action:Landroid/widget/Button;

.field affiliationsService:Lcom/narvii/community/AffiliationsService;

.field community:Lcom/narvii/model/Community;

.field icon:Lcom/narvii/widget/CommunityIconView;

.field name:Landroid/widget/TextView;

.field onCommunityActionClickListener:Lcom/narvii/amino/CommunityJoinBarFragment$OnCommunityActionClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    return-void
.end method

.method public static attachTo(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Lcom/narvii/amino/CommunityJoinBarFragment;
    .locals 4

    .line 1
    .line 2
    if-eqz p0, :cond_2

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    goto :goto_0

    .line 6
    .line 7
    :cond_0
    const-string v0, "community_join_bar"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    check-cast v1, Lcom/narvii/amino/CommunityJoinBarFragment;

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    new-instance v1, Lcom/narvii/amino/CommunityJoinBarFragment;

    .line 18
    .line 19
    .line 20
    invoke-direct {v1}, Lcom/narvii/amino/CommunityJoinBarFragment;-><init>()V

    .line 21
    .line 22
    new-instance v2, Landroid/os/Bundle;

    .line 23
    .line 24
    .line 25
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 26
    .line 27
    const-string v3, "_join_bar_community"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 37
    move-result-object p0

    .line 38
    .line 39
    .line 40
    const p1, 0x7f0a0017

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 44
    move-result-object p0

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 48
    :cond_1
    return-object v1

    .line 49
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 50
    return-object p0
.end method

.method static bridge synthetic n(Lcom/narvii/amino/CommunityJoinBarFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/amino/CommunityJoinBarFragment;->openCommunityDetail()V

    return-void
.end method

.method private openCommunityDetail()V
    .locals 5

    .line 1
    .line 2
    const-class v0, Lcom/narvii/master/CommunityDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/amino/CommunityJoinBarFragment;->community:Lcom/narvii/model/Community;

    .line 9
    .line 10
    iget v1, v1, Lcom/narvii/model/Community;->id:I

    .line 11
    .line 12
    const-string v2, "id"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/narvii/amino/CommunityJoinBarFragment;->community:Lcom/narvii/model/Community;

    .line 18
    .line 19
    .line 20
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    const-string/jumbo v2, "prefetch"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    .line 29
    const-string v1, "joinOnly"

    .line 30
    const/4 v2, 0x1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 34
    .line 35
    const-string v1, "customFinishAnimIn"

    .line 36
    .line 37
    .line 38
    const v2, 0x7f010037

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 42
    .line 43
    const-string v1, "customFinishAnimOut"

    .line 44
    .line 45
    .line 46
    const v3, 0x7f010038

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 50
    .line 51
    const-string v1, "Source"

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    move-result-object v4

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    .line 60
    const/16 v1, 0x3e9

    .line 61
    .line 62
    .line 63
    invoke-static {p0, v0, v1}, Lcom/narvii/amino/CommunityJoinBarFragment;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 71
    return-void
.end method

.method public static safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

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
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10

    .line 1
    .line 2
    const/16 v0, 0x3e9

    .line 3
    .line 4
    if-ne p1, v0, :cond_1

    .line 5
    const/4 v0, -0x1

    .line 6
    .line 7
    if-ne p2, v0, :cond_1

    .line 8
    .line 9
    new-instance v1, Lcom/narvii/community/CommunityLaunchHelper;

    .line 10
    .line 11
    const-string p1, "Source"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, p0, p1}, Lcom/narvii/community/CommunityLaunchHelper;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 19
    const/4 p1, 0x1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p1}, Lcom/narvii/community/CommunityLaunchHelper;->setAllowJoinCommuntiy(Z)V

    .line 23
    .line 24
    iget-object v3, p0, Lcom/narvii/amino/CommunityJoinBarFragment;->community:Lcom/narvii/model/Community;

    .line 25
    .line 26
    iget-boolean p1, v3, Lcom/narvii/model/Community;->_isFaked:Z

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    iget v2, v3, Lcom/narvii/model/Community;->id:I

    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x0

    .line 33
    const/4 v5, 0x0

    .line 34
    const/4 v6, 0x0

    .line 35
    const/4 v7, 0x0

    .line 36
    const/4 v8, 0x0

    .line 37
    const/4 v9, 0x1

    .line 38
    .line 39
    .line 40
    invoke-virtual/range {v1 .. v9}, Lcom/narvii/community/CommunityLaunchHelper;->launch(ILcom/narvii/model/Community;Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/community/ReminderCheck;Ljava/lang/String;Z)V

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :cond_0
    iget v2, v3, Lcom/narvii/model/Community;->id:I

    .line 44
    const/4 v4, 0x0

    .line 45
    const/4 v5, 0x0

    .line 46
    const/4 v6, 0x0

    .line 47
    const/4 v7, 0x0

    .line 48
    const/4 v8, 0x0

    .line 49
    const/4 v9, 0x0

    .line 50
    .line 51
    .line 52
    invoke-virtual/range {v1 .. v9}, Lcom/narvii/community/CommunityLaunchHelper;->launch(ILcom/narvii/model/Community;Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/community/ReminderCheck;Ljava/lang/String;Z)V

    .line 53
    :goto_0
    return-void

    .line 54
    .line 55
    .line 56
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 57
    return-void
.end method

.method public onAffiliationChanged()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/amino/CommunityJoinBarFragment;->updateViews()V

    .line 4
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    const v0, 0x7f0a036b

    .line 8
    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    .line 11
    .line 12
    const v0, 0x7f0a037c

    .line 13
    .line 14
    if-eq p1, v0, :cond_0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    const-class p1, Lcom/narvii/master/CommunityDetailFragment;

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    const-string v0, "__communityId"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 27
    move-result v0

    .line 28
    .line 29
    const-string v1, "id"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    invoke-static {p0, p1}, Lcom/narvii/amino/CommunityJoinBarFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 36
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string p1, "affiliations"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    check-cast p1, Lcom/narvii/community/AffiliationsService;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/narvii/amino/CommunityJoinBarFragment;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    .line 14
    .line 15
    const-string p1, "_join_bar_community"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    const-class v0, Lcom/narvii/model/Community;

    .line 22
    .line 23
    .line 24
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    check-cast p1, Lcom/narvii/model/Community;

    .line 28
    .line 29
    iput-object p1, p0, Lcom/narvii/amino/CommunityJoinBarFragment;->community:Lcom/narvii/model/Community;

    .line 30
    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    iget-object p1, p0, Lcom/narvii/amino/CommunityJoinBarFragment;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p0}, Lcom/narvii/community/AffiliationsService;->addAffiliationChangeListener(Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;)V

    .line 37
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d02be

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/CommunityJoinBarFragment;->community:Lcom/narvii/model/Community;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/amino/CommunityJoinBarFragment;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p0}, Lcom/narvii/community/AffiliationsService;->removeAffiliationChangeListener(Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 13
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x7f0a036b

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    check-cast p2, Lcom/narvii/widget/CommunityIconView;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/narvii/amino/CommunityJoinBarFragment;->icon:Lcom/narvii/widget/CommunityIconView;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    .line 19
    .line 20
    const p2, 0x7f0a037c

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    move-result-object p2

    .line 25
    .line 26
    check-cast p2, Landroid/widget/TextView;

    .line 27
    .line 28
    iput-object p2, p0, Lcom/narvii/amino/CommunityJoinBarFragment;->name:Landroid/widget/TextView;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    .line 33
    .line 34
    const p2, 0x7f0a0059

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    check-cast p1, Landroid/widget/Button;

    .line 41
    .line 42
    iput-object p1, p0, Lcom/narvii/amino/CommunityJoinBarFragment;->action:Landroid/widget/Button;

    .line 43
    .line 44
    new-instance p2, Lcom/narvii/amino/CommunityJoinBarFragment$1;

    .line 45
    .line 46
    .line 47
    invoke-direct {p2, p0}, Lcom/narvii/amino/CommunityJoinBarFragment$1;-><init>(Lcom/narvii/amino/CommunityJoinBarFragment;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/narvii/amino/CommunityJoinBarFragment;->updateViews()V

    .line 54
    return-void
.end method

.method public setOnCommunityActionClickListener(Lcom/narvii/amino/CommunityJoinBarFragment$OnCommunityActionClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/amino/CommunityJoinBarFragment;->onCommunityActionClickListener:Lcom/narvii/amino/CommunityJoinBarFragment$OnCommunityActionClickListener;

    return-void
.end method

.method updateViews()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/amino/CommunityJoinBarFragment;->community:Lcom/narvii/model/Community;

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    const/16 v1, 0x8

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v1, 0x0

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/amino/CommunityJoinBarFragment;->community:Lcom/narvii/model/Community;

    .line 25
    .line 26
    if-nez v0, :cond_2

    .line 27
    return-void

    .line 28
    .line 29
    :cond_2
    iget-object v1, p0, Lcom/narvii/amino/CommunityJoinBarFragment;->icon:Lcom/narvii/widget/CommunityIconView;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v0}, Lcom/narvii/widget/CommunityIconView;->setCommunity(Lcom/narvii/model/Community;)V

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/amino/CommunityJoinBarFragment;->name:Landroid/widget/TextView;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/narvii/amino/CommunityJoinBarFragment;->community:Lcom/narvii/model/Community;

    .line 37
    .line 38
    iget-object v1, v1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    iget-object v0, p0, Lcom/narvii/amino/CommunityJoinBarFragment;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/narvii/amino/CommunityJoinBarFragment;->community:Lcom/narvii/model/Community;

    .line 46
    .line 47
    iget v1, v1, Lcom/narvii/model/Community;->id:I

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    .line 51
    move-result v0

    .line 52
    .line 53
    iget-object v1, p0, Lcom/narvii/amino/CommunityJoinBarFragment;->action:Landroid/widget/Button;

    .line 54
    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    .line 58
    const v0, 0x7f120461

    .line 59
    goto :goto_1

    .line 60
    .line 61
    .line 62
    :cond_3
    const v0, 0x7f120b53

    .line 63
    .line 64
    .line 65
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 66
    return-void
.end method
