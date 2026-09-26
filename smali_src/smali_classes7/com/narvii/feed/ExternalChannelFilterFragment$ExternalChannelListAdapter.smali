.class Lcom/narvii/feed/ExternalChannelFilterFragment$ExternalChannelListAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/feed/ExternalChannelFilterFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExternalChannelListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/model/ExternalSource;",
        "Lcom/narvii/model/ExternalSourceListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/ExternalSource;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/feed/ExternalChannelFilterFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/feed/ExternalChannelFilterFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/feed/ExternalChannelFilterFragment$ExternalChannelListAdapter;->this$0:Lcom/narvii/feed/ExternalChannelFilterFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    const/4 p1, 0x1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    .line 10
    return-void
.end method

.method private getIconDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    .line 3
    if-eq p1, v0, :cond_2

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    if-eq p1, v0, :cond_1

    .line 7
    const/4 v0, 0x2

    .line 8
    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    const v0, 0x7f0805c8

    .line 17
    .line 18
    .line 19
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    const v0, 0x7f0805c7

    .line 29
    .line 30
    .line 31
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 32
    move-result-object p1

    .line 33
    return-object p1

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    .line 40
    const v0, 0x7f0805c9

    .line 41
    .line 42
    .line 43
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 44
    move-result-object p1

    .line 45
    return-object p1

    .line 46
    .line 47
    .line 48
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    .line 52
    const v0, 0x7f0805c6

    .line 53
    .line 54
    .line 55
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 56
    move-result-object p1

    .line 57
    return-object p1
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "external-source"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const-string p1, "start0"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/ExternalSource;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/model/ExternalSource;

    return-object v0
.end method

.method protected getItemType(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected getItemTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/model/ExternalSource;

    .line 3
    .line 4
    if-eqz v0, :cond_6

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/model/ExternalSource;

    .line 7
    .line 8
    .line 9
    const v0, 0x7f0d03d3

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 13
    move-result-object p2

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/narvii/model/ExternalSource;->id()Ljava/lang/String;

    .line 17
    move-result-object p3

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/feed/ExternalChannelFilterFragment$ExternalChannelListAdapter;->this$0:Lcom/narvii/feed/ExternalChannelFilterFragment;

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lcom/narvii/feed/ExternalChannelFilterFragment;->t(Lcom/narvii/feed/ExternalChannelFilterFragment;)Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-static {p3, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    move-result p3

    .line 28
    .line 29
    if-nez p3, :cond_1

    .line 30
    .line 31
    iget-object p3, p0, Lcom/narvii/feed/ExternalChannelFilterFragment$ExternalChannelListAdapter;->this$0:Lcom/narvii/feed/ExternalChannelFilterFragment;

    .line 32
    .line 33
    .line 34
    invoke-static {p3}, Lcom/narvii/feed/ExternalChannelFilterFragment;->t(Lcom/narvii/feed/ExternalChannelFilterFragment;)Ljava/lang/String;

    .line 35
    move-result-object p3

    .line 36
    .line 37
    .line 38
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    move-result p3

    .line 40
    .line 41
    if-eqz p3, :cond_0

    .line 42
    .line 43
    const-string p3, "all"

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/narvii/model/ExternalSource;->id()Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    .line 50
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    move-result p3

    .line 52
    .line 53
    if-eqz p3, :cond_0

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const/4 p3, 0x0

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    :goto_0
    const/4 p3, 0x1

    .line 58
    .line 59
    .line 60
    :goto_1
    const v0, 0x7f0a06d5

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    check-cast v0, Lcom/narvii/widget/TintButton;

    .line 67
    .line 68
    .line 69
    const v1, 0x7f060493

    .line 70
    .line 71
    .line 72
    const v2, 0x7f06042c

    .line 73
    .line 74
    if-eqz v0, :cond_3

    .line 75
    .line 76
    iget v3, p1, Lcom/narvii/model/ExternalSource;->type:I

    .line 77
    .line 78
    .line 79
    invoke-direct {p0, v3}, Lcom/narvii/feed/ExternalChannelFilterFragment$ExternalChannelListAdapter;->getIconDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 80
    move-result-object v3

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 87
    move-result-object v3

    .line 88
    .line 89
    if-eqz p3, :cond_2

    .line 90
    move v4, v2

    .line 91
    goto :goto_2

    .line 92
    :cond_2
    move v4, v1

    .line 93
    .line 94
    .line 95
    :goto_2
    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 96
    move-result-object v3

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v3}, Lcom/narvii/widget/TintButton;->setTintColor(Landroid/content/res/ColorStateList;)V

    .line 100
    .line 101
    .line 102
    :cond_3
    const v0, 0x7f0a027c

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 106
    move-result-object v0

    .line 107
    .line 108
    check-cast v0, Landroid/widget/TextView;

    .line 109
    .line 110
    if-eqz v0, :cond_5

    .line 111
    .line 112
    iget-object p1, p1, Lcom/narvii/model/ExternalSource;->title:Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 119
    move-result-object p1

    .line 120
    .line 121
    if-eqz p3, :cond_4

    .line 122
    move v1, v2

    .line 123
    .line 124
    .line 125
    :cond_4
    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 126
    move-result-object p1

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 130
    :cond_5
    return-object p2

    .line 131
    :cond_6
    const/4 p1, 0x0

    .line 132
    return-object p1
.end method

.method public list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/feed/ExternalChannelFilterFragment$ExternalChannelListAdapter;->l:Ljava/util/List;

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    iput-object v0, p0, Lcom/narvii/feed/ExternalChannelFilterFragment$ExternalChannelListAdapter;->l:Ljava/util/List;

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/feed/ExternalChannelFilterFragment$ExternalChannelListAdapter;->l:Ljava/util/List;

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    iput-object v1, p0, Lcom/narvii/feed/ExternalChannelFilterFragment$ExternalChannelListAdapter;->l:Ljava/util/List;

    .line 32
    .line 33
    new-instance v1, Lcom/narvii/model/ExternalSource;

    .line 34
    .line 35
    .line 36
    invoke-direct {v1}, Lcom/narvii/model/ExternalSource;-><init>()V

    .line 37
    .line 38
    const-string v2, "all"

    .line 39
    .line 40
    iput-object v2, v1, Lcom/narvii/model/ExternalSource;->sourceId:Ljava/lang/String;

    .line 41
    const/4 v2, -0x1

    .line 42
    .line 43
    iput v2, v1, Lcom/narvii/model/ExternalSource;->type:I

    .line 44
    .line 45
    iget-object v2, p0, Lcom/narvii/feed/ExternalChannelFilterFragment$ExternalChannelListAdapter;->this$0:Lcom/narvii/feed/ExternalChannelFilterFragment;

    .line 46
    .line 47
    .line 48
    const v3, 0x7f121019

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 52
    move-result-object v2

    .line 53
    .line 54
    iput-object v2, v1, Lcom/narvii/model/ExternalSource;->title:Ljava/lang/String;

    .line 55
    .line 56
    iget-object v2, p0, Lcom/narvii/feed/ExternalChannelFilterFragment$ExternalChannelListAdapter;->l:Ljava/util/List;

    .line 57
    const/4 v3, 0x0

    .line 58
    .line 59
    .line 60
    invoke-interface {v2, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 61
    .line 62
    iget-object v1, p0, Lcom/narvii/feed/ExternalChannelFilterFragment$ExternalChannelListAdapter;->l:Ljava/util/List;

    .line 63
    .line 64
    .line 65
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 66
    .line 67
    .line 68
    :goto_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 69
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/ExternalChannelFilterFragment$ExternalChannelListAdapter;->this$0:Lcom/narvii/feed/ExternalChannelFilterFragment;

    .line 3
    .line 4
    iget-object v1, v0, Lcom/narvii/feed/ExternalChannelFilterFragment;->filterChangeListener:Lcom/narvii/feed/ExternalChannelFilterFragment$FilterChangeListener;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    instance-of v1, p3, Lcom/narvii/model/ExternalSource;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    move-object v1, p3

    .line 12
    .line 13
    check-cast v1, Lcom/narvii/model/ExternalSource;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/narvii/model/ExternalSource;->id()Ljava/lang/String;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v2}, Lcom/narvii/feed/ExternalChannelFilterFragment;->u(Lcom/narvii/feed/ExternalChannelFilterFragment;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/narvii/feed/ExternalChannelFilterFragment$ExternalChannelListAdapter;->notifyDataSetChanged()V

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/feed/ExternalChannelFilterFragment$ExternalChannelListAdapter;->this$0:Lcom/narvii/feed/ExternalChannelFilterFragment;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/narvii/feed/ExternalChannelFilterFragment;->filterChangeListener:Lcom/narvii/feed/ExternalChannelFilterFragment$FilterChangeListener;

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v1}, Lcom/narvii/feed/ExternalChannelFilterFragment$FilterChangeListener;->onFilterChanged(Lcom/narvii/model/ExternalSource;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 34
    move-result p1

    .line 35
    return p1
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/ExternalSourceListResponse;I)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/model/ExternalSourceListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/feed/ExternalChannelFilterFragment$ExternalChannelListAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/ExternalSourceListResponse;I)V

    return-void
.end method

.method protected pageSize()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/model/ExternalSourceListResponse;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/model/ExternalSourceListResponse;

    return-object v0
.end method
