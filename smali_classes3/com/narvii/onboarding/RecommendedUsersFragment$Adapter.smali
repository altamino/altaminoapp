.class Lcom/narvii/onboarding/RecommendedUsersFragment$Adapter;
.super Lcom/narvii/list/NVAdapter;
.source "RecommendedUsersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/onboarding/RecommendedUsersFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/onboarding/RecommendedUsersFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/onboarding/RecommendedUsersFragment;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/narvii/onboarding/RecommendedUsersFragment$Adapter;->this$0:Lcom/narvii/onboarding/RecommendedUsersFragment;

    .line 83
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/narvii/onboarding/RecommendedUsersFragment$Adapter;->this$0:Lcom/narvii/onboarding/RecommendedUsersFragment;

    iget-object v0, v0, Lcom/narvii/onboarding/RecommendedUsersFragment;->users:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/narvii/model/User;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/narvii/onboarding/RecommendedUsersFragment$Adapter;->this$0:Lcom/narvii/onboarding/RecommendedUsersFragment;

    iget-object v0, v0, Lcom/narvii/onboarding/RecommendedUsersFragment;->users:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/User;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 80
    invoke-virtual {p0, p1}, Lcom/narvii/onboarding/RecommendedUsersFragment$Adapter;->getItem(I)Lcom/narvii/model/User;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 103
    invoke-virtual {p0, p1}, Lcom/narvii/onboarding/RecommendedUsersFragment$Adapter;->getItem(I)Lcom/narvii/model/User;

    move-result-object v0

    const v1, 0x7f0b05e5

    .line 104
    invoke-virtual {p0, v1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f090c10

    .line 105
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/UserAvatarLayout;

    invoke-virtual {p3, v0}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    const p3, 0x7f090764

    .line 106
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/NicknameView;

    invoke-virtual {p3, v0}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    const p3, 0x7f0900fa

    .line 107
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/ThumbImageView;

    .line 108
    iget-object v1, p0, Lcom/narvii/onboarding/RecommendedUsersFragment$Adapter;->this$0:Lcom/narvii/onboarding/RecommendedUsersFragment;

    iget-object v1, v1, Lcom/narvii/onboarding/RecommendedUsersFragment;->followed:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/narvii/onboarding/RecommendedUsersFragment$Adapter;->this$0:Lcom/narvii/onboarding/RecommendedUsersFragment;

    iget-object v1, v1, Lcom/narvii/onboarding/RecommendedUsersFragment;->following:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/narvii/onboarding/RecommendedUsersFragment$Adapter;->this$0:Lcom/narvii/onboarding/RecommendedUsersFragment;

    iget-object v1, v1, Lcom/narvii/onboarding/RecommendedUsersFragment;->following:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    iget-object v1, p0, Lcom/narvii/onboarding/RecommendedUsersFragment$Adapter;->this$0:Lcom/narvii/onboarding/RecommendedUsersFragment;

    invoke-static {v1}, Lcom/narvii/onboarding/RecommendedUsersFragment;->access$000(Lcom/narvii/onboarding/RecommendedUsersFragment;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const p3, 0x7f090932

    .line 110
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iget-object v1, p0, Lcom/narvii/onboarding/RecommendedUsersFragment$Adapter;->this$0:Lcom/narvii/onboarding/RecommendedUsersFragment;

    iget-object v1, v1, Lcom/narvii/onboarding/RecommendedUsersFragment;->followed:Ljava/util/Set;

    .line 111
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/narvii/onboarding/RecommendedUsersFragment$Adapter;->this$0:Lcom/narvii/onboarding/RecommendedUsersFragment;

    iget-object v1, v1, Lcom/narvii/onboarding/RecommendedUsersFragment;->following:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    const/16 v1, 0x8

    .line 110
    :goto_1
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    const p3, 0x7f0908cb

    .line 112
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iget-object v1, p0, Lcom/narvii/onboarding/RecommendedUsersFragment$Adapter;->this$0:Lcom/narvii/onboarding/RecommendedUsersFragment;

    iget-object v1, v1, Lcom/narvii/onboarding/RecommendedUsersFragment;->following:Ljava/util/Set;

    .line 113
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    const/16 v1, 0x8

    .line 112
    :goto_2
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 p3, 0x3

    .line 116
    div-int/2addr p1, p3

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p3, :cond_6

    mul-int/lit8 v4, p1, 0x3

    add-int/2addr v4, v1

    .line 119
    invoke-virtual {p0}, Lcom/narvii/onboarding/RecommendedUsersFragment$Adapter;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_5

    invoke-virtual {p0, v4}, Lcom/narvii/onboarding/RecommendedUsersFragment$Adapter;->getItem(I)Lcom/narvii/model/User;

    move-result-object v4

    invoke-virtual {v4}, Lcom/narvii/model/User;->isCurator()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 p1, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    const/4 p1, 0x0

    :goto_4
    const p3, 0x7f09098a

    .line 125
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 126
    invoke-virtual {v0}, Lcom/narvii/model/User;->isCurator()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 127
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    invoke-virtual {v0}, Lcom/narvii/model/User;->roleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_7
    if-eqz p1, :cond_8

    const/4 v2, 0x4

    .line 130
    :cond_8
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_5
    return-object p2
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 138
    instance-of v0, p3, Lcom/narvii/model/User;

    if-eqz v0, :cond_2

    .line 139
    check-cast p3, Lcom/narvii/model/User;

    .line 140
    iget-object p1, p0, Lcom/narvii/onboarding/RecommendedUsersFragment$Adapter;->this$0:Lcom/narvii/onboarding/RecommendedUsersFragment;

    iget-object p1, p1, Lcom/narvii/onboarding/RecommendedUsersFragment;->following:Ljava/util/Set;

    invoke-interface {p1, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    return p2

    .line 143
    :cond_0
    iget-object p1, p0, Lcom/narvii/onboarding/RecommendedUsersFragment$Adapter;->this$0:Lcom/narvii/onboarding/RecommendedUsersFragment;

    iget-object p1, p1, Lcom/narvii/onboarding/RecommendedUsersFragment;->followed:Ljava/util/Set;

    invoke-interface {p1, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 144
    iget-object p1, p0, Lcom/narvii/onboarding/RecommendedUsersFragment$Adapter;->this$0:Lcom/narvii/onboarding/RecommendedUsersFragment;

    invoke-virtual {p1, p3}, Lcom/narvii/onboarding/RecommendedUsersFragment;->unfollow(Lcom/narvii/model/User;)V

    goto :goto_0

    .line 146
    :cond_1
    iget-object p1, p0, Lcom/narvii/onboarding/RecommendedUsersFragment$Adapter;->this$0:Lcom/narvii/onboarding/RecommendedUsersFragment;

    invoke-virtual {p1, p3}, Lcom/narvii/onboarding/RecommendedUsersFragment;->follow(Lcom/narvii/model/User;)V

    :goto_0
    return p2

    .line 150
    :cond_2
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
