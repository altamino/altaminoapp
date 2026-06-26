.class Lcom/narvii/user/profile/UserFavoriteGallery$Adapter;
.super Landroid/widget/BaseAdapter;
.source "UserFavoriteGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/user/profile/UserFavoriteGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/narvii/user/profile/UserFavoriteGallery;


# direct methods
.method private constructor <init>(Lcom/narvii/user/profile/UserFavoriteGallery;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/narvii/user/profile/UserFavoriteGallery$Adapter;->this$0:Lcom/narvii/user/profile/UserFavoriteGallery;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 81
    iget-object p1, p0, Lcom/narvii/user/profile/UserFavoriteGallery$Adapter;->this$0:Lcom/narvii/user/profile/UserFavoriteGallery;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/user/profile/UserFavoriteGallery$Adapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/user/profile/UserFavoriteGallery;Lcom/narvii/user/profile/UserFavoriteGallery$1;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/narvii/user/profile/UserFavoriteGallery$Adapter;-><init>(Lcom/narvii/user/profile/UserFavoriteGallery;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/narvii/user/profile/UserFavoriteGallery$Adapter;->this$0:Lcom/narvii/user/profile/UserFavoriteGallery;

    invoke-static {v0}, Lcom/narvii/user/profile/UserFavoriteGallery;->access$100(Lcom/narvii/user/profile/UserFavoriteGallery;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/narvii/user/profile/UserFavoriteGallery$Adapter;->this$0:Lcom/narvii/user/profile/UserFavoriteGallery;

    invoke-static {v0}, Lcom/narvii/user/profile/UserFavoriteGallery;->access$100(Lcom/narvii/user/profile/UserFavoriteGallery;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/narvii/user/profile/UserFavoriteGallery$Adapter;->this$0:Lcom/narvii/user/profile/UserFavoriteGallery;

    invoke-static {v0}, Lcom/narvii/user/profile/UserFavoriteGallery;->access$100(Lcom/narvii/user/profile/UserFavoriteGallery;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 95
    invoke-virtual {p0, p1}, Lcom/narvii/user/profile/UserFavoriteGallery$Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 96
    instance-of v0, p1, Lcom/narvii/model/Item;

    if-eqz v0, :cond_0

    .line 97
    check-cast p1, Lcom/narvii/model/Item;

    iget-object p1, p1, Lcom/narvii/model/Item;->itemId:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    :goto_0
    int-to-long v0, p1

    return-wide v0

    .line 99
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 110
    invoke-virtual {p0, p1}, Lcom/narvii/user/profile/UserFavoriteGallery$Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 111
    instance-of v0, p1, Lcom/narvii/model/Item;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 113
    :cond_0
    sget-object v0, Lcom/narvii/user/profile/UserFavoriteGallery;->ADD:Lcom/narvii/util/Tag;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 115
    :cond_1
    sget-object v0, Lcom/narvii/user/profile/UserFavoriteGallery;->GOTO:Lcom/narvii/util/Tag;

    if-ne p1, v0, :cond_2

    const/4 p1, 0x2

    return p1

    .line 117
    :cond_2
    sget-object v0, Lcom/narvii/user/profile/UserFavoriteGallery;->PADDING:Lcom/narvii/util/Tag;

    if-ne p1, v0, :cond_3

    const/4 p1, 0x3

    return p1

    :cond_3
    const/4 p1, 0x4

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 131
    invoke-virtual {p0, p1}, Lcom/narvii/user/profile/UserFavoriteGallery$Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 132
    instance-of v0, p1, Lcom/narvii/model/Item;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 134
    instance-of v0, p2, Lcom/narvii/widget/CardView;

    if-eqz v0, :cond_0

    .line 135
    check-cast p2, Lcom/narvii/widget/CardView;

    goto :goto_0

    .line 137
    :cond_0
    iget-object p2, p0, Lcom/narvii/user/profile/UserFavoriteGallery$Adapter;->inflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0b0313

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/CardView;

    .line 139
    :goto_0
    check-cast p1, Lcom/narvii/model/Item;

    invoke-virtual {p2, p1}, Lcom/narvii/widget/CardView;->setItem(Lcom/narvii/model/Item;)V

    return-object p2

    .line 141
    :cond_1
    sget-object v0, Lcom/narvii/user/profile/UserFavoriteGallery;->ADD:Lcom/narvii/util/Tag;

    if-ne p1, v0, :cond_5

    if-nez p2, :cond_2

    .line 144
    iget-object p1, p0, Lcom/narvii/user/profile/UserFavoriteGallery$Adapter;->inflater:Landroid/view/LayoutInflater;

    const p2, 0x7f0b0315

    invoke-virtual {p1, p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_2
    const p1, 0x7f09012c

    .line 148
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object p3, p0, Lcom/narvii/user/profile/UserFavoriteGallery$Adapter;->this$0:Lcom/narvii/user/profile/UserFavoriteGallery;

    iget-boolean p3, p3, Lcom/narvii/user/profile/UserFavoriteGallery;->darkTheme:Z

    if-eqz p3, :cond_3

    const p3, 0x7f080833

    goto :goto_1

    :cond_3
    const p3, 0x7f080832

    :goto_1
    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundResource(I)V

    const p1, 0x7f090853

    .line 149
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/TintButton;

    .line 150
    iget-object p3, p0, Lcom/narvii/user/profile/UserFavoriteGallery$Adapter;->this$0:Lcom/narvii/user/profile/UserFavoriteGallery;

    iget-boolean p3, p3, Lcom/narvii/user/profile/UserFavoriteGallery;->darkTheme:Z

    if-eqz p3, :cond_4

    const/4 p3, -0x1

    goto :goto_2

    :cond_4
    const p3, -0x373738

    :goto_2
    invoke-virtual {p1, p3}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    return-object p2

    .line 152
    :cond_5
    sget-object v0, Lcom/narvii/user/profile/UserFavoriteGallery;->PADDING:Lcom/narvii/util/Tag;

    if-ne p1, v0, :cond_7

    if-nez p2, :cond_6

    .line 155
    iget-object p1, p0, Lcom/narvii/user/profile/UserFavoriteGallery$Adapter;->inflater:Landroid/view/LayoutInflater;

    const p2, 0x7f0b0314

    invoke-virtual {p1, p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_6
    return-object p2

    :cond_7
    if-nez p2, :cond_8

    .line 162
    iget-object p1, p0, Lcom/narvii/user/profile/UserFavoriteGallery$Adapter;->inflater:Landroid/view/LayoutInflater;

    const p2, 0x7f0b0319

    invoke-virtual {p1, p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_8
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
