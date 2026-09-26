.class Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;
.super Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/wallet/WalletRecyclerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WalletMergeAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/wallet/WalletRecyclerFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/wallet/WalletRecyclerFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->getItemCount()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public onAttach()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->onAttach()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/wallet/WalletRecyclerFragment;->Q(Lcom/narvii/wallet/WalletRecyclerFragment;)V

    .line 9
    return-void
.end method

.method public refresh(ILcom/narvii/paging/source/PageRequestCallback;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/wallet/WalletRecyclerFragment;->Q(Lcom/narvii/wallet/WalletRecyclerFragment;)V

    .line 6
    return-void
.end method

.method public setResponse(Lcom/narvii/wallet/WalletResponse;)V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/wallet/WalletRecyclerFragment;->B(Lcom/narvii/wallet/WalletRecyclerFragment;)Lcom/narvii/wallet/MembershipService;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/narvii/wallet/MembershipService;->updateWalletBalance(Lcom/narvii/wallet/WalletResponse;)V

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 12
    .line 13
    iget-object v1, p1, Lcom/narvii/wallet/WalletResponse;->wallet:Lcom/narvii/wallet/Wallet;

    .line 14
    .line 15
    iget-wide v1, v1, Lcom/narvii/wallet/Wallet;->totalCoinsFloat:D

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1, v2}, Lcom/narvii/wallet/WalletRecyclerFragment;->M(Lcom/narvii/wallet/WalletRecyclerFragment;D)V

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 21
    .line 22
    iget-object v1, p1, Lcom/narvii/wallet/WalletResponse;->wallet:Lcom/narvii/wallet/Wallet;

    .line 23
    .line 24
    iget-boolean v2, v1, Lcom/narvii/wallet/Wallet;->businessCoinsEnabled:Z

    .line 25
    .line 26
    iput-boolean v2, v0, Lcom/narvii/wallet/WalletRecyclerFragment;->businessCoinsEnabled:Z

    .line 27
    .line 28
    iget v2, v1, Lcom/narvii/wallet/Wallet;->totalBusinessCoins:I

    .line 29
    .line 30
    iput v2, v0, Lcom/narvii/wallet/WalletRecyclerFragment;->totalBusinessCoins:I

    .line 31
    .line 32
    iget-wide v1, v1, Lcom/narvii/wallet/Wallet;->totalBusinessCoinsFloat:D

    .line 33
    .line 34
    iput-wide v1, v0, Lcom/narvii/wallet/WalletRecyclerFragment;->totalBusinessCoinsFloat:D

    .line 35
    const/4 v1, 0x0

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v1}, Lcom/narvii/wallet/WalletRecyclerFragment;->N(Lcom/narvii/wallet/WalletRecyclerFragment;Z)V

    .line 39
    .line 40
    iget-object p1, p1, Lcom/narvii/wallet/WalletResponse;->wallet:Lcom/narvii/wallet/Wallet;

    .line 41
    .line 42
    iget-object p1, p1, Lcom/narvii/wallet/Wallet;->adsVideoStats:Lcom/narvii/wallet/AdsVideoStats;

    .line 43
    .line 44
    if-eqz p1, :cond_0

    .line 45
    .line 46
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 47
    .line 48
    .line 49
    invoke-static {v0, p1}, Lcom/narvii/wallet/WalletRecyclerFragment;->H(Lcom/narvii/wallet/WalletRecyclerFragment;Lcom/narvii/wallet/AdsVideoStats;)V

    .line 50
    .line 51
    :cond_0
    iget-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 52
    .line 53
    .line 54
    invoke-static {p1}, Lcom/narvii/wallet/WalletRecyclerFragment;->x(Lcom/narvii/wallet/WalletRecyclerFragment;)Lcom/narvii/wallet/AdsVideoStats;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    if-eqz p1, :cond_3

    .line 58
    .line 59
    iget-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 60
    .line 61
    .line 62
    invoke-static {p1}, Lcom/narvii/wallet/WalletRecyclerFragment;->x(Lcom/narvii/wallet/WalletRecyclerFragment;)Lcom/narvii/wallet/AdsVideoStats;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    iget v0, v0, Lcom/narvii/wallet/AdsVideoStats;->canEarnedCoins:I

    .line 66
    .line 67
    iput v0, p1, Lcom/narvii/wallet/WalletRecyclerFragment;->rewardVideoCoin:I

    .line 68
    .line 69
    iget-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 70
    .line 71
    .line 72
    invoke-static {p1}, Lcom/narvii/wallet/WalletRecyclerFragment;->x(Lcom/narvii/wallet/WalletRecyclerFragment;)Lcom/narvii/wallet/AdsVideoStats;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    iget-boolean v0, v0, Lcom/narvii/wallet/AdsVideoStats;->canWatchVideo:Z

    .line 76
    .line 77
    .line 78
    invoke-static {p1, v0}, Lcom/narvii/wallet/WalletRecyclerFragment;->I(Lcom/narvii/wallet/WalletRecyclerFragment;Z)V

    .line 79
    .line 80
    iget-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 81
    .line 82
    .line 83
    invoke-static {p1}, Lcom/narvii/wallet/WalletRecyclerFragment;->x(Lcom/narvii/wallet/WalletRecyclerFragment;)Lcom/narvii/wallet/AdsVideoStats;

    .line 84
    move-result-object v0

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/narvii/wallet/AdsVideoStats;->getNextWatchVideoInterval()J

    .line 88
    move-result-wide v0

    .line 89
    .line 90
    .line 91
    invoke-static {p1, v0, v1}, Lcom/narvii/wallet/WalletRecyclerFragment;->K(Lcom/narvii/wallet/WalletRecyclerFragment;J)V

    .line 92
    .line 93
    iget-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 94
    .line 95
    .line 96
    invoke-static {p1}, Lcom/narvii/wallet/WalletRecyclerFragment;->E(Lcom/narvii/wallet/WalletRecyclerFragment;)J

    .line 97
    move-result-wide v0

    .line 98
    .line 99
    const-wide/16 v2, 0x0

    .line 100
    .line 101
    cmp-long p1, v0, v2

    .line 102
    .line 103
    if-gez p1, :cond_1

    .line 104
    .line 105
    iget-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 106
    .line 107
    .line 108
    invoke-static {p1, v2, v3}, Lcom/narvii/wallet/WalletRecyclerFragment;->K(Lcom/narvii/wallet/WalletRecyclerFragment;J)V

    .line 109
    .line 110
    :cond_1
    iget-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 111
    .line 112
    .line 113
    invoke-static {p1}, Lcom/narvii/wallet/WalletRecyclerFragment;->A(Lcom/narvii/wallet/WalletRecyclerFragment;)Landroid/os/CountDownTimer;

    .line 114
    move-result-object p1

    .line 115
    .line 116
    if-eqz p1, :cond_2

    .line 117
    .line 118
    iget-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 119
    .line 120
    .line 121
    invoke-static {p1}, Lcom/narvii/wallet/WalletRecyclerFragment;->A(Lcom/narvii/wallet/WalletRecyclerFragment;)Landroid/os/CountDownTimer;

    .line 122
    move-result-object p1

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 126
    .line 127
    :cond_2
    iget-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 128
    .line 129
    .line 130
    invoke-static {p1}, Lcom/narvii/wallet/WalletRecyclerFragment;->z(Lcom/narvii/wallet/WalletRecyclerFragment;)Z

    .line 131
    move-result p1

    .line 132
    .line 133
    if-nez p1, :cond_3

    .line 134
    .line 135
    iget-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    .line 139
    move-result p1

    .line 140
    .line 141
    if-nez p1, :cond_3

    .line 142
    .line 143
    iget-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 144
    .line 145
    .line 146
    invoke-static {p1}, Lcom/narvii/wallet/WalletRecyclerFragment;->E(Lcom/narvii/wallet/WalletRecyclerFragment;)J

    .line 147
    move-result-wide v0

    .line 148
    .line 149
    cmp-long p1, v0, v2

    .line 150
    .line 151
    if-lez p1, :cond_3

    .line 152
    .line 153
    iget-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 154
    .line 155
    new-instance v6, Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter$1;

    .line 156
    .line 157
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 158
    .line 159
    .line 160
    invoke-static {v0}, Lcom/narvii/wallet/WalletRecyclerFragment;->E(Lcom/narvii/wallet/WalletRecyclerFragment;)J

    .line 161
    move-result-wide v2

    .line 162
    .line 163
    const-wide/16 v4, 0x1f4

    .line 164
    move-object v0, v6

    .line 165
    move-object v1, p0

    .line 166
    .line 167
    .line 168
    invoke-direct/range {v0 .. v5}, Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter$1;-><init>(Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;JJ)V

    .line 169
    .line 170
    .line 171
    invoke-static {p1, v6}, Lcom/narvii/wallet/WalletRecyclerFragment;->J(Lcom/narvii/wallet/WalletRecyclerFragment;Landroid/os/CountDownTimer;)V

    .line 172
    .line 173
    iget-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 174
    .line 175
    .line 176
    invoke-static {p1}, Lcom/narvii/wallet/WalletRecyclerFragment;->A(Lcom/narvii/wallet/WalletRecyclerFragment;)Landroid/os/CountDownTimer;

    .line 177
    move-result-object p1

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 181
    .line 182
    :cond_3
    iget-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1}, Lcom/narvii/wallet/WalletRecyclerFragment;->updateHeader()V

    .line 186
    return-void
.end method
