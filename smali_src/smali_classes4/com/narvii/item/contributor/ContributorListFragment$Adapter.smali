.class Lcom/narvii/item/contributor/ContributorListFragment$Adapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/item/contributor/ContributorListFragment$Adapter;->this$0:Lcom/narvii/item/contributor/ContributorListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance p1, Lcom/narvii/util/DateTimeFormatter;

    .line 8
    .line 9
    .line 10
    invoke-direct {p1}, Lcom/narvii/util/DateTimeFormatter;-><init>()V

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/item/contributor/ContributorListFragment$Adapter;->fmt:Lcom/narvii/util/DateTimeFormatter;

    .line 13
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
.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/item/contributor/ContributorListFragment$Adapter;->this$0:Lcom/narvii/item/contributor/ContributorListFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/item/contributor/ContributorListFragment;->contributorList:Ljava/util/List;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getItem(I)Lcom/narvii/item/contributor/Contributor;
    .locals 1

    iget-object v0, p0, Lcom/narvii/item/contributor/ContributorListFragment$Adapter;->this$0:Lcom/narvii/item/contributor/ContributorListFragment;

    .line 2
    iget-object v0, v0, Lcom/narvii/item/contributor/ContributorListFragment;->contributorList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/item/contributor/Contributor;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
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

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/item/contributor/ContributorListFragment$Adapter;->getItem(I)Lcom/narvii/item/contributor/Contributor;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    const v0, 0x7f0d0769

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 11
    move-result-object p2

    .line 12
    .line 13
    .line 14
    const p3, 0x7f0a0171

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    move-result-object p3

    .line 19
    .line 20
    check-cast p3, Lcom/narvii/widget/NVImageView;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p3, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    const p3, 0x7f0a09f9

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    check-cast v0, Lcom/narvii/widget/NicknameView;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object p3

    .line 44
    .line 45
    check-cast p3, Lcom/narvii/widget/NicknameView;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/narvii/item/contributor/Contributor;->isOriginalAuthor()Z

    .line 49
    move-result v0

    .line 50
    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    .line 58
    const v1, 0x7f120e33

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 62
    move-result-object v0

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    const/4 v0, 0x0

    .line 65
    .line 66
    .line 67
    :goto_0
    const v1, -0xcb6d25

    .line 68
    .line 69
    .line 70
    invoke-virtual {p3, v0, v1}, Lcom/narvii/widget/NicknameView;->setRole2(Ljava/lang/String;I)V

    .line 71
    .line 72
    .line 73
    const p3, 0x7f0a0408

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    move-result-object p3

    .line 78
    .line 79
    check-cast p3, Landroid/widget/TextView;

    .line 80
    .line 81
    iget-object v0, p0, Lcom/narvii/item/contributor/ContributorListFragment$Adapter;->fmt:Lcom/narvii/util/DateTimeFormatter;

    .line 82
    .line 83
    iget-object p1, p1, Lcom/narvii/item/contributor/Contributor;->contributedTime:Ljava/util/Date;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, p1}, Lcom/narvii/util/DateTimeFormatter;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 87
    move-result-object p1

    .line 88
    .line 89
    .line 90
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    return-object p2
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/model/User;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p3, Lcom/narvii/model/User;

    .line 7
    .line 8
    .line 9
    invoke-static {p0, p3}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-static {p0, p1}, Lcom/narvii/item/contributor/ContributorListFragment$Adapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 14
    const/4 p1, 0x1

    .line 15
    return p1

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 19
    move-result p1

    .line 20
    return p1
.end method
