.class Lcom/narvii/wallet/WalletRecyclerFragment$OptionAdsOnAdapter;
.super Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/wallet/WalletRecyclerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OptionAdsOnAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/wallet/WalletRecyclerFragment$OptionAdsOnAdapter$OptionAdsOnViewHolder;
    }
.end annotation


# instance fields
.field accountService:Lcom/narvii/account/AccountService;

.field final synthetic this$0:Lcom/narvii/wallet/WalletRecyclerFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/wallet/WalletRecyclerFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$OptionAdsOnAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    const-string p1, "account"

    .line 8
    .line 9
    .line 10
    invoke-interface {p2, p1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$OptionAdsOnAdapter;->accountService:Lcom/narvii/account/AccountService;

    .line 16
    return-void
.end method

.method public static safedk_NVRecyclerViewBaseAdapter_startActivity_bb7b074de95a221f82540c32a0a969c2(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment$OptionAdsOnAdapter;->accountService:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->optinAdsLevel()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-lez v0, :cond_0

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 6
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    .line 9
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 10
    .line 11
    .line 12
    const v0, 0x7f0a04ab

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    check-cast p2, Landroid/widget/TextView;

    .line 19
    .line 20
    const-string v0, "account"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->optinAdsLevel()I

    .line 30
    move-result v0

    .line 31
    const/4 v1, 0x1

    .line 32
    .line 33
    if-ne v0, v1, :cond_0

    .line 34
    .line 35
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$OptionAdsOnAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 38
    .line 39
    .line 40
    const v2, 0x7f120432

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    .line 47
    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 48
    .line 49
    const/16 v1, 0x20

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 56
    move-result v1

    .line 57
    .line 58
    iget-object v2, p0, Lcom/narvii/wallet/WalletRecyclerFragment$OptionAdsOnAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 59
    .line 60
    .line 61
    const v3, 0x7f121193

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    .line 65
    move-result-object v2

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 72
    move-result v2

    .line 73
    .line 74
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    .line 75
    .line 76
    .line 77
    const v4, -0xb56f1e

    .line 78
    .line 79
    .line 80
    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 81
    const/4 v4, 0x0

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 91
    goto :goto_0

    .line 92
    .line 93
    :cond_0
    const/16 v0, 0x8

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 97
    .line 98
    :goto_0
    iget-object p2, p0, Lcom/narvii/wallet/WalletRecyclerFragment$OptionAdsOnAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 99
    .line 100
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 101
    .line 102
    .line 103
    const v1, 0x7f0a06d5

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 107
    move-result-object v0

    .line 108
    .line 109
    check-cast v0, Lcom/narvii/widget/NVDrawableAnimatedView;

    .line 110
    .line 111
    .line 112
    const v1, 0x7f080843

    .line 113
    .line 114
    .line 115
    const v2, 0x7f080842

    .line 116
    .line 117
    .line 118
    invoke-static {p2, v0, v1, v2}, Lcom/narvii/wallet/WalletRecyclerFragment;->R(Lcom/narvii/wallet/WalletRecyclerFragment;Lcom/narvii/widget/NVDrawableAnimatedView;II)V

    .line 119
    .line 120
    iget-object p2, p0, Lcom/narvii/wallet/WalletRecyclerFragment$OptionAdsOnAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 121
    .line 122
    iget-object p2, p2, Lcom/narvii/wallet/WalletRecyclerFragment;->optinAdsResponse:Lcom/narvii/wallet/optinads/OptinAdsResponse;

    .line 123
    .line 124
    .line 125
    const v0, 0x7f0a0a7b

    .line 126
    .line 127
    .line 128
    const v1, 0x7f0a0a7c

    .line 129
    .line 130
    if-nez p2, :cond_1

    .line 131
    .line 132
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 136
    move-result-object p2

    .line 137
    .line 138
    check-cast p2, Landroid/widget/TextView;

    .line 139
    .line 140
    const-string v1, ""

    .line 141
    .line 142
    .line 143
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    .line 145
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 149
    move-result-object p1

    .line 150
    .line 151
    check-cast p1, Landroid/widget/TextView;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    goto :goto_3

    .line 156
    .line 157
    :cond_1
    iget-object p2, p2, Lcom/narvii/wallet/optinads/OptinAdsResponse;->coinsEarnedByAds:Lcom/narvii/wallet/optinads/OptinAdsHistory;

    .line 158
    .line 159
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 163
    move-result-object v1

    .line 164
    .line 165
    check-cast v1, Landroid/widget/TextView;

    .line 166
    const/4 v2, 0x0

    .line 167
    .line 168
    if-nez p2, :cond_2

    .line 169
    move-object v3, v2

    .line 170
    goto :goto_1

    .line 171
    .line 172
    :cond_2
    iget-object v3, p0, Lcom/narvii/wallet/WalletRecyclerFragment$OptionAdsOnAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 173
    .line 174
    iget-object v3, v3, Lcom/narvii/wallet/WalletRecyclerFragment;->dfmt:Ljava/text/DecimalFormat;

    .line 175
    .line 176
    iget-wide v4, p2, Lcom/narvii/wallet/optinads/OptinAdsHistory;->weekly:D

    .line 177
    .line 178
    .line 179
    invoke-virtual {v3, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 180
    move-result-object v3

    .line 181
    .line 182
    .line 183
    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    .line 185
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 189
    move-result-object p1

    .line 190
    .line 191
    check-cast p1, Landroid/widget/TextView;

    .line 192
    .line 193
    if-nez p2, :cond_3

    .line 194
    goto :goto_2

    .line 195
    .line 196
    :cond_3
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment$OptionAdsOnAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 197
    .line 198
    iget-object v0, v0, Lcom/narvii/wallet/WalletRecyclerFragment;->dfmt:Ljava/text/DecimalFormat;

    .line 199
    .line 200
    iget-wide v1, p2, Lcom/narvii/wallet/optinads/OptinAdsHistory;->total:D

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 204
    move-result-object v2

    .line 205
    .line 206
    .line 207
    :goto_2
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    :goto_3
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance p2, Lcom/narvii/wallet/WalletRecyclerFragment$OptionAdsOnAdapter$OptionAdsOnViewHolder;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    const v1, 0x7f0d07ab

    .line 16
    const/4 v2, 0x0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-direct {p2, p0, p1}, Lcom/narvii/wallet/WalletRecyclerFragment$OptionAdsOnAdapter$OptionAdsOnViewHolder;-><init>(Lcom/narvii/wallet/WalletRecyclerFragment$OptionAdsOnAdapter;Landroid/view/View;)V

    .line 24
    return-object p2
.end method

.method protected onSubviewClick(Landroid/view/View;Z)Z
    .locals 0

    .line 1
    .line 2
    const-class p1, Lcom/narvii/wallet/optinads/OptinAdsManageFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-static {p0, p1}, Lcom/narvii/wallet/WalletRecyclerFragment$OptionAdsOnAdapter;->safedk_NVRecyclerViewBaseAdapter_startActivity_bb7b074de95a221f82540c32a0a969c2(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;Landroid/content/Intent;)V

    .line 10
    const/4 p1, 0x1

    .line 11
    return p1
.end method
