.class Lcom/narvii/item/contributor/ContributorListFragment$Adapter;
.super Lcom/narvii/list/NVAdapter;
.source "ContributorListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/item/contributor/ContributorListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation


# instance fields
.field fmt:Lcom/narvii/util/DateTimeFormatter;

.field final synthetic this$0:Lcom/narvii/item/contributor/ContributorListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/item/contributor/ContributorListFragment;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/narvii/item/contributor/ContributorListFragment$Adapter;->this$0:Lcom/narvii/item/contributor/ContributorListFragment;

    .line 107
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 108
    new-instance p1, Lcom/narvii/util/DateTimeFormatter;

    invoke-direct {p1}, Lcom/narvii/util/DateTimeFormatter;-><init>()V

    iput-object p1, p0, Lcom/narvii/item/contributor/ContributorListFragment$Adapter;->fmt:Lcom/narvii/util/DateTimeFormatter;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/narvii/item/contributor/ContributorListFragment$Adapter;->this$0:Lcom/narvii/item/contributor/ContributorListFragment;

    iget-object v0, v0, Lcom/narvii/item/contributor/ContributorListFragment;->contributorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/narvii/item/contributor/Contributor;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/narvii/item/contributor/ContributorListFragment$Adapter;->this$0:Lcom/narvii/item/contributor/ContributorListFragment;

    iget-object v0, v0, Lcom/narvii/item/contributor/ContributorListFragment;->contributorList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/item/contributor/Contributor;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 103
    invoke-virtual {p0, p1}, Lcom/narvii/item/contributor/ContributorListFragment$Adapter;->getItem(I)Lcom/narvii/item/contributor/Contributor;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 128
    invoke-virtual {p0, p1}, Lcom/narvii/item/contributor/ContributorListFragment$Adapter;->getItem(I)Lcom/narvii/item/contributor/Contributor;

    move-result-object p1

    const v0, 0x7f0b06b4

    .line 129
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0900e4

    .line 130
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    const p3, 0x7f090764

    .line 131
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NicknameView;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 132
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/NicknameView;

    invoke-virtual {p1}, Lcom/narvii/item/contributor/Contributor;->isOriginalAuthor()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0d0d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const v1, -0xcb6d25

    invoke-virtual {p3, v0, v1}, Lcom/narvii/widget/NicknameView;->setRole2(Ljava/lang/String;I)V

    const p3, 0x7f09032e

    .line 133
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/narvii/item/contributor/ContributorListFragment$Adapter;->fmt:Lcom/narvii/util/DateTimeFormatter;

    iget-object p1, p1, Lcom/narvii/item/contributor/Contributor;->contributedTime:Ljava/util/Date;

    invoke-virtual {v0, p1}, Lcom/narvii/util/DateTimeFormatter;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 139
    instance-of v0, p3, Lcom/narvii/model/User;

    if-eqz v0, :cond_0

    .line 140
    check-cast p3, Lcom/narvii/model/User;

    invoke-static {p0, p3}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1

    .line 144
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
