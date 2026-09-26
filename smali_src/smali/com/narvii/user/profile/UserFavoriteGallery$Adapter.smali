.class Lcom/narvii/user/profile/UserFavoriteGallery$Adapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


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

    iput-object p1, p0, Lcom/narvii/user/profile/UserFavoriteGallery$Adapter;->this$0:Lcom/narvii/user/profile/UserFavoriteGallery;

    .line 2
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/user/profile/UserFavoriteGallery$Adapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/user/profile/UserFavoriteGallery;Lcom/narvii/user/profile/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/user/profile/UserFavoriteGallery$Adapter;-><init>(Lcom/narvii/user/profile/UserFavoriteGallery;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/profile/UserFavoriteGallery$Adapter;->this$0:Lcom/narvii/user/profile/UserFavoriteGallery;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/user/profile/UserFavoriteGallery;->j(Lcom/narvii/user/profile/UserFavoriteGallery;)Ljava/util/ArrayList;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/narvii/user/profile/UserFavoriteGallery$Adapter;->this$0:Lcom/narvii/user/profile/UserFavoriteGallery;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/narvii/user/profile/UserFavoriteGallery;->j(Lcom/narvii/user/profile/UserFavoriteGallery;)Ljava/util/ArrayList;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 20
    move-result v0

    .line 21
    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/profile/UserFavoriteGallery$Adapter;->this$0:Lcom/narvii/user/profile/UserFavoriteGallery;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/user/profile/UserFavoriteGallery;->j(Lcom/narvii/user/profile/UserFavoriteGallery;)Ljava/util/ArrayList;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/user/profile/UserFavoriteGallery$Adapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    instance-of v0, p1, Lcom/narvii/model/Item;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p1, Lcom/narvii/model/Item;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/narvii/model/Item;->itemId:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 16
    move-result p1

    .line 17
    :goto_0
    int-to-long v0, p1

    .line 18
    return-wide v0

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 22
    move-result p1

    .line 23
    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/user/profile/UserFavoriteGallery$Adapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    instance-of v0, p1, Lcom/narvii/model/Item;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/narvii/user/profile/UserFavoriteGallery;->ADD:Lcom/narvii/util/Tag;

    .line 13
    .line 14
    if-ne p1, v0, :cond_1

    .line 15
    const/4 p1, 0x1

    .line 16
    return p1

    .line 17
    .line 18
    :cond_1
    sget-object v0, Lcom/narvii/user/profile/UserFavoriteGallery;->GOTO:Lcom/narvii/util/Tag;

    .line 19
    .line 20
    if-ne p1, v0, :cond_2

    .line 21
    const/4 p1, 0x2

    .line 22
    return p1

    .line 23
    .line 24
    :cond_2
    sget-object v0, Lcom/narvii/user/profile/UserFavoriteGallery;->PADDING:Lcom/narvii/util/Tag;

    .line 25
    .line 26
    if-ne p1, v0, :cond_3

    .line 27
    const/4 p1, 0x3

    .line 28
    return p1

    .line 29
    :cond_3
    const/4 p1, 0x4

    .line 30
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/user/profile/UserFavoriteGallery$Adapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    instance-of v0, p1, Lcom/narvii/model/Item;

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    instance-of v0, p2, Lcom/narvii/widget/CardView;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    check-cast p2, Lcom/narvii/widget/CardView;

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    iget-object p2, p0, Lcom/narvii/user/profile/UserFavoriteGallery$Adapter;->inflater:Landroid/view/LayoutInflater;

    .line 19
    .line 20
    .line 21
    const v0, 0x7f0d0346

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 25
    move-result-object p2

    .line 26
    .line 27
    check-cast p2, Lcom/narvii/widget/CardView;

    .line 28
    .line 29
    :goto_0
    check-cast p1, Lcom/narvii/model/Item;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p1}, Lcom/narvii/widget/CardView;->setItem(Lcom/narvii/model/Item;)V

    .line 33
    return-object p2

    .line 34
    .line 35
    :cond_1
    sget-object v0, Lcom/narvii/user/profile/UserFavoriteGallery;->ADD:Lcom/narvii/util/Tag;

    .line 36
    .line 37
    if-ne p1, v0, :cond_5

    .line 38
    .line 39
    if-nez p2, :cond_2

    .line 40
    .line 41
    iget-object p1, p0, Lcom/narvii/user/profile/UserFavoriteGallery$Adapter;->inflater:Landroid/view/LayoutInflater;

    .line 42
    .line 43
    .line 44
    const p2, 0x7f0d0348

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 48
    move-result-object p2

    .line 49
    .line 50
    .line 51
    :cond_2
    const p1, 0x7f0a01c8

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    iget-object p3, p0, Lcom/narvii/user/profile/UserFavoriteGallery$Adapter;->this$0:Lcom/narvii/user/profile/UserFavoriteGallery;

    .line 58
    .line 59
    iget-boolean p3, p3, Lcom/narvii/user/profile/UserFavoriteGallery;->darkTheme:Z

    .line 60
    .line 61
    if-eqz p3, :cond_3

    .line 62
    .line 63
    .line 64
    const p3, 0x7f080a4a

    .line 65
    goto :goto_1

    .line 66
    .line 67
    .line 68
    :cond_3
    const p3, 0x7f080a49

    .line 69
    .line 70
    .line 71
    :goto_1
    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 72
    .line 73
    .line 74
    const p1, 0x7f0a0b09

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    check-cast p1, Lcom/narvii/widget/TintButton;

    .line 81
    .line 82
    iget-object p3, p0, Lcom/narvii/user/profile/UserFavoriteGallery$Adapter;->this$0:Lcom/narvii/user/profile/UserFavoriteGallery;

    .line 83
    .line 84
    iget-boolean p3, p3, Lcom/narvii/user/profile/UserFavoriteGallery;->darkTheme:Z

    .line 85
    .line 86
    if-eqz p3, :cond_4

    .line 87
    const/4 p3, -0x1

    .line 88
    goto :goto_2

    .line 89
    .line 90
    .line 91
    :cond_4
    const p3, -0x373738

    .line 92
    .line 93
    .line 94
    :goto_2
    invoke-virtual {p1, p3}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 95
    return-object p2

    .line 96
    .line 97
    :cond_5
    sget-object v0, Lcom/narvii/user/profile/UserFavoriteGallery;->PADDING:Lcom/narvii/util/Tag;

    .line 98
    .line 99
    if-ne p1, v0, :cond_7

    .line 100
    .line 101
    if-nez p2, :cond_6

    .line 102
    .line 103
    iget-object p1, p0, Lcom/narvii/user/profile/UserFavoriteGallery$Adapter;->inflater:Landroid/view/LayoutInflater;

    .line 104
    .line 105
    .line 106
    const p2, 0x7f0d0347

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 110
    move-result-object p2

    .line 111
    :cond_6
    return-object p2

    .line 112
    .line 113
    :cond_7
    if-nez p2, :cond_8

    .line 114
    .line 115
    iget-object p1, p0, Lcom/narvii/user/profile/UserFavoriteGallery$Adapter;->inflater:Landroid/view/LayoutInflater;

    .line 116
    .line 117
    .line 118
    const p2, 0x7f0d034c

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 122
    move-result-object p1

    .line 123
    return-object p1

    .line 124
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
