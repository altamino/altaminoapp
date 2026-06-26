.class Lcom/narvii/master/MyCommunityListFragment$LoginHintAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "MyCommunityListFragment.java"


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

    .line 545
    iput-object p1, p0, Lcom/narvii/master/MyCommunityListFragment$LoginHintAdapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 546
    invoke-direct {p0, p1}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

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

    .line 561
    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment$LoginHintAdapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    invoke-static {v0}, Lcom/narvii/master/MyCommunityListFragment;->access$200(Lcom/narvii/master/MyCommunityListFragment;)Lcom/narvii/account/AccountService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const p1, 0x7f0b03ea

    .line 551
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0906a3

    .line 552
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 554
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x1

    if-eqz p5, :cond_0

    .line 566
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result p2

    const p3, 0x7f0906a3

    if-ne p2, p3, :cond_0

    .line 567
    sget-object p2, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, p2}, Lcom/narvii/list/NVAdapter;->logClickEvent(Lcom/narvii/logging/ActSemantic;)V

    .line 568
    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    const-class p4, Lcom/narvii/account/LoginActivity;

    invoke-direct {p2, p3, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 569
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return p1
.end method
