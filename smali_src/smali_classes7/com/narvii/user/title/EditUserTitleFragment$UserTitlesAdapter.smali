.class public Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/user/title/EditUserTitleFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UserTitlesAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter$CommunityTagViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field cid:I

.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/api/UserTitle;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/user/title/EditUserTitleFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/user/title/EditUserTitleFragment;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/narvii/model/api/UserTitle;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 6
    .line 7
    iput p2, p0, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;->cid:I

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;->list:Ljava/util/List;

    .line 10
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;->list:Ljava/util/List;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    move-result v0

    .line 11
    :goto_0
    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter$CommunityTagViewHolder;

    .line 3
    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;->list:Ljava/util/List;

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    instance-of v0, p2, Lcom/narvii/model/api/UserTitle;

    .line 13
    .line 14
    if-eqz v0, :cond_4

    .line 15
    .line 16
    check-cast p2, Lcom/narvii/model/api/UserTitle;

    .line 17
    .line 18
    iget-object p2, p2, Lcom/narvii/model/api/UserTitle;->title:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 21
    .line 22
    .line 23
    const v1, 0x7f0a0e9e

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    check-cast v0, Landroid/widget/TextView;

    .line 30
    .line 31
    if-nez p2, :cond_0

    .line 32
    const/4 p2, 0x0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    goto :goto_2

    .line 37
    .line 38
    :cond_0
    iget-object v1, p0, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    .line 39
    .line 40
    iget-object v1, v1, Lcom/narvii/user/title/EditUserTitleFragment;->searchKeyword:Ljava/lang/String;

    .line 41
    .line 42
    if-eqz v1, :cond_3

    .line 43
    .line 44
    new-instance v1, Landroid/text/SpannableString;

    .line 45
    .line 46
    .line 47
    invoke-direct {v1, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 48
    .line 49
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 53
    move-result-object p2

    .line 54
    .line 55
    iget-object v3, p0, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    .line 56
    .line 57
    iget-object v3, v3, Lcom/narvii/user/title/EditUserTitleFragment;->searchKeyword:Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 61
    move-result-object v2

    .line 62
    const/4 v3, 0x0

    .line 63
    .line 64
    .line 65
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 66
    move-result v4

    .line 67
    .line 68
    if-ge v3, v4, :cond_2

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 72
    move-result v3

    .line 73
    const/4 v4, -0x1

    .line 74
    .line 75
    if-ne v3, v4, :cond_1

    .line 76
    goto :goto_1

    .line 77
    .line 78
    :cond_1
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    .line 79
    .line 80
    .line 81
    const v5, -0xff3183

    .line 82
    .line 83
    .line 84
    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 85
    .line 86
    iget-object v5, p0, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    .line 87
    .line 88
    iget-object v5, v5, Lcom/narvii/user/title/EditUserTitleFragment;->searchKeyword:Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 92
    move-result v5

    .line 93
    add-int/2addr v5, v3

    .line 94
    .line 95
    const/16 v6, 0x21

    .line 96
    .line 97
    .line 98
    invoke-interface {v1, v4, v3, v5, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 99
    .line 100
    iget-object v4, p0, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    .line 101
    .line 102
    iget-object v4, v4, Lcom/narvii/user/title/EditUserTitleFragment;->searchKeyword:Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 106
    move-result v4

    .line 107
    add-int/2addr v3, v4

    .line 108
    goto :goto_0

    .line 109
    .line 110
    .line 111
    :cond_2
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    goto :goto_2

    .line 113
    .line 114
    .line 115
    :cond_3
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    .line 117
    .line 118
    :goto_2
    const p2, 0x7f080a1b

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 122
    .line 123
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 124
    .line 125
    new-instance v0, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter$1;

    .line 126
    .line 127
    .line 128
    invoke-direct {v0, p0, p1}, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter$1;-><init>(Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    :cond_4
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 1
    .line 2
    iget-object p2, p0, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    .line 9
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    .line 13
    const v0, 0x7f0d0783

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    new-instance p2, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter$CommunityTagViewHolder;

    .line 21
    .line 22
    .line 23
    invoke-direct {p2, p0, p1}, Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter$CommunityTagViewHolder;-><init>(Lcom/narvii/user/title/EditUserTitleFragment$UserTitlesAdapter;Landroid/view/View;)V

    .line 24
    return-object p2
.end method
