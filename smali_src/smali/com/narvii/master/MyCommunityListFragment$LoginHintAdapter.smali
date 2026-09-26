.class Lcom/narvii/master/MyCommunityListFragment$LoginHintAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/MyCommunityListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoginHintAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/MyCommunityListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/master/MyCommunityListFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/MyCommunityListFragment$LoginHintAdapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method

.method public static safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/list/NVAdapter;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "LoginArea"

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment$LoginHintAdapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/master/MyCommunityListFragment;->t(Lcom/narvii/master/MyCommunityListFragment;)Lcom/narvii/account/AccountService;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    xor-int/lit8 v0, v0, 0x1

    .line 13
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1
    .line 2
    .line 3
    const p1, 0x7f0d0420

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    const p2, 0x7f0a082e

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    :cond_0
    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 7
    move-result p2

    .line 8
    .line 9
    .line 10
    const p3, 0x7f0a082e

    .line 11
    .line 12
    if-ne p2, p3, :cond_0

    .line 13
    .line 14
    sget-object p2, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVAdapter;->logClickEvent(Lcom/narvii/logging/ActSemantic;)V

    .line 18
    .line 19
    new-instance p2, Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 23
    move-result-object p3

    .line 24
    .line 25
    const-class p4, Lcom/narvii/account/LoginActivity;

    .line 26
    .line 27
    .line 28
    invoke-direct {p2, p3, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p0, p2}, Lcom/narvii/master/MyCommunityListFragment$LoginHintAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 32
    :cond_0
    return p1
.end method
