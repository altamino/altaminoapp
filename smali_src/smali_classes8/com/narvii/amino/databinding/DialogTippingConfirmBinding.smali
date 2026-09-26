.class public final Lcom/narvii/amino/databinding/DialogTippingConfirmBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final aminoCoin:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final availableCoinsText:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final clickRemoveMask:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final confirmButton:Lcom/narvii/widget/PurchaseConfirmButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final customTippingPrice:Lcom/narvii/amino/databinding/TippingPriceDefaultItemBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final defaultTippingPrice:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final getCoins:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final myUserAvatar:Lcom/narvii/amino/databinding/UserAvatarLayoutLargeBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/narvii/monetization/store/view/TippingDialogFrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tippingConfirmContent:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tippingConfirmTitle:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tippingFeedbackView:Lcom/narvii/monetization/store/view/TippingFeedbackView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tippingMembersHint:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tippingMembersList:Lcom/narvii/livelayer/LiveLayerOnlineBar;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tippingMembersView:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final userWalletCoins:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/narvii/monetization/store/view/TippingDialogFrameLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/View;Lcom/narvii/widget/PurchaseConfirmButton;Lcom/narvii/amino/databinding/TippingPriceDefaultItemBinding;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/narvii/amino/databinding/UserAvatarLayoutLargeBinding;Landroid/widget/FrameLayout;Landroid/widget/TextView;Lcom/narvii/monetization/store/view/TippingFeedbackView;Landroid/widget/TextView;Lcom/narvii/livelayer/LiveLayerOnlineBar;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V
    .locals 2
    .param p1    # Lcom/narvii/monetization/store/view/TippingDialogFrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/widget/PurchaseConfirmButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/narvii/amino/databinding/TippingPriceDefaultItemBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Lcom/narvii/amino/databinding/UserAvatarLayoutLargeBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12    # Lcom/narvii/monetization/store/view/TippingFeedbackView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p13    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p14    # Lcom/narvii/livelayer/LiveLayerOnlineBar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p15    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p16    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    move-object v0, p0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    move-object v1, p1

    .line 6
    .line 7
    iput-object v1, v0, Lcom/narvii/amino/databinding/DialogTippingConfirmBinding;->rootView:Lcom/narvii/monetization/store/view/TippingDialogFrameLayout;

    .line 8
    move-object v1, p2

    .line 9
    .line 10
    iput-object v1, v0, Lcom/narvii/amino/databinding/DialogTippingConfirmBinding;->aminoCoin:Landroid/widget/ImageView;

    .line 11
    move-object v1, p3

    .line 12
    .line 13
    iput-object v1, v0, Lcom/narvii/amino/databinding/DialogTippingConfirmBinding;->availableCoinsText:Landroid/widget/TextView;

    .line 14
    move-object v1, p4

    .line 15
    .line 16
    iput-object v1, v0, Lcom/narvii/amino/databinding/DialogTippingConfirmBinding;->clickRemoveMask:Landroid/view/View;

    .line 17
    move-object v1, p5

    .line 18
    .line 19
    iput-object v1, v0, Lcom/narvii/amino/databinding/DialogTippingConfirmBinding;->confirmButton:Lcom/narvii/widget/PurchaseConfirmButton;

    .line 20
    move-object v1, p6

    .line 21
    .line 22
    iput-object v1, v0, Lcom/narvii/amino/databinding/DialogTippingConfirmBinding;->customTippingPrice:Lcom/narvii/amino/databinding/TippingPriceDefaultItemBinding;

    .line 23
    move-object v1, p7

    .line 24
    .line 25
    iput-object v1, v0, Lcom/narvii/amino/databinding/DialogTippingConfirmBinding;->defaultTippingPrice:Landroid/widget/LinearLayout;

    .line 26
    move-object v1, p8

    .line 27
    .line 28
    iput-object v1, v0, Lcom/narvii/amino/databinding/DialogTippingConfirmBinding;->getCoins:Landroid/widget/TextView;

    .line 29
    move-object v1, p9

    .line 30
    .line 31
    iput-object v1, v0, Lcom/narvii/amino/databinding/DialogTippingConfirmBinding;->myUserAvatar:Lcom/narvii/amino/databinding/UserAvatarLayoutLargeBinding;

    .line 32
    move-object v1, p10

    .line 33
    .line 34
    iput-object v1, v0, Lcom/narvii/amino/databinding/DialogTippingConfirmBinding;->tippingConfirmContent:Landroid/widget/FrameLayout;

    .line 35
    move-object v1, p11

    .line 36
    .line 37
    iput-object v1, v0, Lcom/narvii/amino/databinding/DialogTippingConfirmBinding;->tippingConfirmTitle:Landroid/widget/TextView;

    .line 38
    move-object v1, p12

    .line 39
    .line 40
    iput-object v1, v0, Lcom/narvii/amino/databinding/DialogTippingConfirmBinding;->tippingFeedbackView:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    .line 41
    move-object v1, p13

    .line 42
    .line 43
    iput-object v1, v0, Lcom/narvii/amino/databinding/DialogTippingConfirmBinding;->tippingMembersHint:Landroid/widget/TextView;

    .line 44
    .line 45
    move-object/from16 v1, p14

    .line 46
    .line 47
    iput-object v1, v0, Lcom/narvii/amino/databinding/DialogTippingConfirmBinding;->tippingMembersList:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 48
    .line 49
    move-object/from16 v1, p15

    .line 50
    .line 51
    iput-object v1, v0, Lcom/narvii/amino/databinding/DialogTippingConfirmBinding;->tippingMembersView:Landroid/widget/LinearLayout;

    .line 52
    .line 53
    move-object/from16 v1, p16

    .line 54
    .line 55
    iput-object v1, v0, Lcom/narvii/amino/databinding/DialogTippingConfirmBinding;->userWalletCoins:Landroid/widget/TextView;

    .line 56
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/amino/databinding/DialogTippingConfirmBinding;
    .locals 20
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    .line 5
    const v1, 0x7f0a0107

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 9
    move-result-object v2

    .line 10
    move-object v5, v2

    .line 11
    .line 12
    check-cast v5, Landroid/widget/ImageView;

    .line 13
    .line 14
    if-eqz v5, :cond_0

    .line 15
    .line 16
    .line 17
    const v1, 0x7f0a0170

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 21
    move-result-object v2

    .line 22
    move-object v6, v2

    .line 23
    .line 24
    check-cast v6, Landroid/widget/TextView;

    .line 25
    .line 26
    if-eqz v6, :cond_0

    .line 27
    .line 28
    .line 29
    const v1, 0x7f0a0316

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 33
    move-result-object v7

    .line 34
    .line 35
    if-eqz v7, :cond_0

    .line 36
    .line 37
    .line 38
    const v1, 0x7f0a038e

    .line 39
    .line 40
    .line 41
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 42
    move-result-object v2

    .line 43
    move-object v8, v2

    .line 44
    .line 45
    check-cast v8, Lcom/narvii/widget/PurchaseConfirmButton;

    .line 46
    .line 47
    if-eqz v8, :cond_0

    .line 48
    .line 49
    .line 50
    const v1, 0x7f0a0400

    .line 51
    .line 52
    .line 53
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 54
    move-result-object v2

    .line 55
    .line 56
    if-eqz v2, :cond_0

    .line 57
    .line 58
    .line 59
    invoke-static {v2}, Lcom/narvii/amino/databinding/TippingPriceDefaultItemBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/TippingPriceDefaultItemBinding;

    .line 60
    move-result-object v9

    .line 61
    .line 62
    .line 63
    const v1, 0x7f0a0416

    .line 64
    .line 65
    .line 66
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 67
    move-result-object v2

    .line 68
    move-object v10, v2

    .line 69
    .line 70
    check-cast v10, Landroid/widget/LinearLayout;

    .line 71
    .line 72
    if-eqz v10, :cond_0

    .line 73
    .line 74
    .line 75
    const v1, 0x7f0a0614

    .line 76
    .line 77
    .line 78
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 79
    move-result-object v2

    .line 80
    move-object v11, v2

    .line 81
    .line 82
    check-cast v11, Landroid/widget/TextView;

    .line 83
    .line 84
    if-eqz v11, :cond_0

    .line 85
    .line 86
    .line 87
    const v1, 0x7f0a09d2

    .line 88
    .line 89
    .line 90
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 91
    move-result-object v2

    .line 92
    .line 93
    if-eqz v2, :cond_0

    .line 94
    .line 95
    .line 96
    invoke-static {v2}, Lcom/narvii/amino/databinding/UserAvatarLayoutLargeBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/UserAvatarLayoutLargeBinding;

    .line 97
    move-result-object v12

    .line 98
    .line 99
    .line 100
    const v1, 0x7f0a0e8b

    .line 101
    .line 102
    .line 103
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 104
    move-result-object v2

    .line 105
    move-object v13, v2

    .line 106
    .line 107
    check-cast v13, Landroid/widget/FrameLayout;

    .line 108
    .line 109
    if-eqz v13, :cond_0

    .line 110
    .line 111
    .line 112
    const v1, 0x7f0a0e8c

    .line 113
    .line 114
    .line 115
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 116
    move-result-object v2

    .line 117
    move-object v14, v2

    .line 118
    .line 119
    check-cast v14, Landroid/widget/TextView;

    .line 120
    .line 121
    if-eqz v14, :cond_0

    .line 122
    .line 123
    .line 124
    const v1, 0x7f0a0e91

    .line 125
    .line 126
    .line 127
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 128
    move-result-object v2

    .line 129
    move-object v15, v2

    .line 130
    .line 131
    check-cast v15, Lcom/narvii/monetization/store/view/TippingFeedbackView;

    .line 132
    .line 133
    if-eqz v15, :cond_0

    .line 134
    .line 135
    .line 136
    const v1, 0x7f0a0e96

    .line 137
    .line 138
    .line 139
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 140
    move-result-object v2

    .line 141
    .line 142
    move-object/from16 v16, v2

    .line 143
    .line 144
    check-cast v16, Landroid/widget/TextView;

    .line 145
    .line 146
    if-eqz v16, :cond_0

    .line 147
    .line 148
    .line 149
    const v1, 0x7f0a0e97

    .line 150
    .line 151
    .line 152
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 153
    move-result-object v2

    .line 154
    .line 155
    move-object/from16 v17, v2

    .line 156
    .line 157
    check-cast v17, Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 158
    .line 159
    if-eqz v17, :cond_0

    .line 160
    .line 161
    .line 162
    const v1, 0x7f0a0e98

    .line 163
    .line 164
    .line 165
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 166
    move-result-object v2

    .line 167
    .line 168
    move-object/from16 v18, v2

    .line 169
    .line 170
    check-cast v18, Landroid/widget/LinearLayout;

    .line 171
    .line 172
    if-eqz v18, :cond_0

    .line 173
    .line 174
    .line 175
    const v1, 0x7f0a0f63

    .line 176
    .line 177
    .line 178
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 179
    move-result-object v2

    .line 180
    .line 181
    move-object/from16 v19, v2

    .line 182
    .line 183
    check-cast v19, Landroid/widget/TextView;

    .line 184
    .line 185
    if-eqz v19, :cond_0

    .line 186
    .line 187
    new-instance v1, Lcom/narvii/amino/databinding/DialogTippingConfirmBinding;

    .line 188
    move-object v3, v1

    .line 189
    move-object v4, v0

    .line 190
    .line 191
    check-cast v4, Lcom/narvii/monetization/store/view/TippingDialogFrameLayout;

    .line 192
    .line 193
    .line 194
    invoke-direct/range {v3 .. v19}, Lcom/narvii/amino/databinding/DialogTippingConfirmBinding;-><init>(Lcom/narvii/monetization/store/view/TippingDialogFrameLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/View;Lcom/narvii/widget/PurchaseConfirmButton;Lcom/narvii/amino/databinding/TippingPriceDefaultItemBinding;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/narvii/amino/databinding/UserAvatarLayoutLargeBinding;Landroid/widget/FrameLayout;Landroid/widget/TextView;Lcom/narvii/monetization/store/view/TippingFeedbackView;Landroid/widget/TextView;Lcom/narvii/livelayer/LiveLayerOnlineBar;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V

    .line 195
    return-object v1

    .line 196
    .line 197
    .line 198
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 199
    move-result-object v0

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 203
    move-result-object v0

    .line 204
    .line 205
    new-instance v1, Ljava/lang/NullPointerException;

    .line 206
    .line 207
    const-string v2, "Missing required view with ID: "

    .line 208
    .line 209
    .line 210
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 211
    move-result-object v0

    .line 212
    .line 213
    .line 214
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 215
    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/DialogTippingConfirmBinding;
    .locals 2
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcom/narvii/amino/databinding/DialogTippingConfirmBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/DialogTippingConfirmBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/DialogTippingConfirmBinding;
    .locals 2
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0d01de

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/amino/databinding/DialogTippingConfirmBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/DialogTippingConfirmBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/amino/databinding/DialogTippingConfirmBinding;->getRoot()Lcom/narvii/monetization/store/view/TippingDialogFrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/narvii/monetization/store/view/TippingDialogFrameLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/amino/databinding/DialogTippingConfirmBinding;->rootView:Lcom/narvii/monetization/store/view/TippingDialogFrameLayout;

    return-object v0
.end method
