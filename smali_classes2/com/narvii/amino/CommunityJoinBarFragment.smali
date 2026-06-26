.class public Lcom/narvii/amino/CommunityJoinBarFragment;
.super Lcom/narvii/app/NVFragment;
.source "CommunityJoinBarFragment.java"

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

    .line 25
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/amino/CommunityJoinBarFragment;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/narvii/amino/CommunityJoinBarFragment;->openCommunityDetail()V

    return-void
.end method

.method public static attachTo(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)Lcom/narvii/amino/CommunityJoinBarFragment;
    .locals 4

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "community_join_bar"

    .line 169
    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/narvii/amino/CommunityJoinBarFragment;

    if-nez v1, :cond_1

    .line 171
    new-instance v1, Lcom/narvii/amino/CommunityJoinBarFragment;

    invoke-direct {v1}, Lcom/narvii/amino/CommunityJoinBarFragment;-><init>()V

    .line 172
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "_join_bar_community"

    .line 173
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 175
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p0

    const p1, 0x7f09000b

    invoke-virtual {p0, p1, v1, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_1
    return-object v1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private openCommunityDetail()V
    .locals 5

    .line 117
    const-class v0, Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/narvii/amino/CommunityJoinBarFragment;->community:Lcom/narvii/model/Community;

    iget v1, v1, Lcom/narvii/model/Community;->id:I

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 119
    iget-object v1, p0, Lcom/narvii/amino/CommunityJoinBarFragment;->community:Lcom/narvii/model/Community;

    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "prefetch"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "joinOnly"

    const/4 v2, 0x1

    .line 120
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const v1, 0x7f010029

    const-string v2, "customFinishAnimIn"

    .line 121
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const v2, 0x7f01002a

    const-string v3, "customFinishAnimOut"

    .line 122
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "Source"

    .line 123
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v3, 0x3e9

    .line 124
    invoke-virtual {p0, v0, v3}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 125
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 131
    new-instance v1, Lcom/narvii/community/CommunityLaunchHelper;

    const-string p1, "Source"

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lcom/narvii/community/CommunityLaunchHelper;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 132
    invoke-virtual {v1, p1}, Lcom/narvii/community/CommunityLaunchHelper;->setAllowJoinCommuntiy(Z)V

    .line 133
    iget-object v3, p0, Lcom/narvii/amino/CommunityJoinBarFragment;->community:Lcom/narvii/model/Community;

    iget-boolean p1, v3, Lcom/narvii/model/Community;->_isFaked:Z

    if-eqz p1, :cond_0

    .line 134
    iget v2, v3, Lcom/narvii/model/Community;->id:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {v1 .. v9}, Lcom/narvii/community/CommunityLaunchHelper;->launch(ILcom/narvii/model/Community;Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/community/ReminderCheck;Ljava/lang/String;Z)V

    goto :goto_0

    .line 136
    :cond_0
    iget v2, v3, Lcom/narvii/model/Community;->id:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Lcom/narvii/community/CommunityLaunchHelper;->launch(ILcom/narvii/model/Community;Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/community/ReminderCheck;Ljava/lang/String;Z)V

    :goto_0
    return-void

    .line 140
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAffiliationChanged()V
    .locals 0

    .line 71
    invoke-virtual {p0}, Lcom/narvii/amino/CommunityJoinBarFragment;->updateViews()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0902a3

    if-eq p1, v0, :cond_0

    const v0, 0x7f0902b6

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    const-class p1, Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "__communityId"

    .line 41
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v0

    const-string v1, "id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 42
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 61
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "affiliations"

    .line 62
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/AffiliationsService;

    iput-object p1, p0, Lcom/narvii/amino/CommunityJoinBarFragment;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    const-string p1, "_join_bar_community"

    .line 63
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/model/Community;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Community;

    iput-object p1, p0, Lcom/narvii/amino/CommunityJoinBarFragment;->community:Lcom/narvii/model/Community;

    .line 64
    iget-object p1, p0, Lcom/narvii/amino/CommunityJoinBarFragment;->community:Lcom/narvii/model/Community;

    if-eqz p1, :cond_0

    .line 65
    iget-object p1, p0, Lcom/narvii/amino/CommunityJoinBarFragment;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    invoke-virtual {p1, p0}, Lcom/narvii/community/AffiliationsService;->addAffiliationChangeListener(Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0292

    const/4 v0, 0x0

    .line 76
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/narvii/amino/CommunityJoinBarFragment;->community:Lcom/narvii/model/Community;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/narvii/amino/CommunityJoinBarFragment;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    invoke-virtual {v0, p0}, Lcom/narvii/community/AffiliationsService;->removeAffiliationChangeListener(Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;)V

    .line 162
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 81
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0902a3

    .line 82
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/CommunityIconView;

    iput-object p2, p0, Lcom/narvii/amino/CommunityJoinBarFragment;->icon:Lcom/narvii/widget/CommunityIconView;

    .line 83
    iget-object p2, p0, Lcom/narvii/amino/CommunityJoinBarFragment;->icon:Lcom/narvii/widget/CommunityIconView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0902b6

    .line 84
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/amino/CommunityJoinBarFragment;->name:Landroid/widget/TextView;

    .line 85
    iget-object p2, p0, Lcom/narvii/amino/CommunityJoinBarFragment;->name:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09002c

    .line 86
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/narvii/amino/CommunityJoinBarFragment;->action:Landroid/widget/Button;

    .line 87
    iget-object p1, p0, Lcom/narvii/amino/CommunityJoinBarFragment;->action:Landroid/widget/Button;

    new-instance p2, Lcom/narvii/amino/CommunityJoinBarFragment$1;

    invoke-direct {p2, p0}, Lcom/narvii/amino/CommunityJoinBarFragment$1;-><init>(Lcom/narvii/amino/CommunityJoinBarFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    invoke-virtual {p0}, Lcom/narvii/amino/CommunityJoinBarFragment;->updateViews()V

    return-void
.end method

.method public setOnCommunityActionClickListener(Lcom/narvii/amino/CommunityJoinBarFragment$OnCommunityActionClickListener;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/narvii/amino/CommunityJoinBarFragment;->onCommunityActionClickListener:Lcom/narvii/amino/CommunityJoinBarFragment$OnCommunityActionClickListener;

    return-void
.end method

.method updateViews()V
    .locals 2

    .line 144
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 147
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/amino/CommunityJoinBarFragment;->community:Lcom/narvii/model/Community;

    if-nez v1, :cond_1

    const/16 v1, 0x8

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/narvii/amino/CommunityJoinBarFragment;->community:Lcom/narvii/model/Community;

    if-nez v0, :cond_2

    return-void

    .line 151
    :cond_2
    iget-object v1, p0, Lcom/narvii/amino/CommunityJoinBarFragment;->icon:Lcom/narvii/widget/CommunityIconView;

    invoke-virtual {v1, v0}, Lcom/narvii/widget/CommunityIconView;->setCommunity(Lcom/narvii/model/Community;)V

    .line 152
    iget-object v0, p0, Lcom/narvii/amino/CommunityJoinBarFragment;->name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/narvii/amino/CommunityJoinBarFragment;->community:Lcom/narvii/model/Community;

    iget-object v1, v1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lcom/narvii/amino/CommunityJoinBarFragment;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    iget-object v1, p0, Lcom/narvii/amino/CommunityJoinBarFragment;->community:Lcom/narvii/model/Community;

    iget v1, v1, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v0, v1}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    move-result v0

    .line 154
    iget-object v1, p0, Lcom/narvii/amino/CommunityJoinBarFragment;->action:Landroid/widget/Button;

    if-eqz v0, :cond_3

    const v0, 0x7f0f03f5

    goto :goto_1

    :cond_3
    const v0, 0x7f0f0aa0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    return-void
.end method
