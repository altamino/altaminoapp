.class public final Lcom/narvii/amino/databinding/MembershipSubscribeLayoutBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final back:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final error:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final membershipInfoText:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final overlay:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final progress:Lcom/narvii/widget/SpinningView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final progress1:Lcom/narvii/widget/SpinningView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final purchase:Lcom/narvii/widget/ThumbImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final purchaseDirectly:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final purchaseText:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final redeemCouponComponent:Lcom/narvii/wallet/RedeemCouponComponent;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final retry:Lcom/narvii/widget/FontAwesomeView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final root:Lcom/github/mmin18/widget/FlexLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final sublist:Lcom/narvii/widget/OrderedLinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final switchRedeem:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final title:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/FrameLayout;Lcom/narvii/widget/SpinningView;Lcom/narvii/widget/SpinningView;Lcom/narvii/widget/ThumbImageView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/narvii/wallet/RedeemCouponComponent;Lcom/narvii/widget/FontAwesomeView;Lcom/github/mmin18/widget/FlexLayout;Lcom/narvii/widget/OrderedLinearLayout;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 2
    .param p1    # Landroid/widget/FrameLayout;
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
    .param p4    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/narvii/widget/SpinningView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/narvii/widget/SpinningView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Lcom/narvii/widget/ThumbImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Lcom/narvii/wallet/RedeemCouponComponent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12    # Lcom/narvii/widget/FontAwesomeView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p13    # Lcom/github/mmin18/widget/FlexLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p14    # Lcom/narvii/widget/OrderedLinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p15    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p16    # Landroid/widget/ImageView;
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
    iput-object v1, v0, Lcom/narvii/amino/databinding/MembershipSubscribeLayoutBinding;->rootView:Landroid/widget/FrameLayout;

    .line 8
    move-object v1, p2

    .line 9
    .line 10
    iput-object v1, v0, Lcom/narvii/amino/databinding/MembershipSubscribeLayoutBinding;->back:Landroid/widget/ImageView;

    .line 11
    move-object v1, p3

    .line 12
    .line 13
    iput-object v1, v0, Lcom/narvii/amino/databinding/MembershipSubscribeLayoutBinding;->error:Landroid/widget/TextView;

    .line 14
    move-object v1, p4

    .line 15
    .line 16
    iput-object v1, v0, Lcom/narvii/amino/databinding/MembershipSubscribeLayoutBinding;->membershipInfoText:Landroid/widget/TextView;

    .line 17
    move-object v1, p5

    .line 18
    .line 19
    iput-object v1, v0, Lcom/narvii/amino/databinding/MembershipSubscribeLayoutBinding;->overlay:Landroid/widget/FrameLayout;

    .line 20
    move-object v1, p6

    .line 21
    .line 22
    iput-object v1, v0, Lcom/narvii/amino/databinding/MembershipSubscribeLayoutBinding;->progress:Lcom/narvii/widget/SpinningView;

    .line 23
    move-object v1, p7

    .line 24
    .line 25
    iput-object v1, v0, Lcom/narvii/amino/databinding/MembershipSubscribeLayoutBinding;->progress1:Lcom/narvii/widget/SpinningView;

    .line 26
    move-object v1, p8

    .line 27
    .line 28
    iput-object v1, v0, Lcom/narvii/amino/databinding/MembershipSubscribeLayoutBinding;->purchase:Lcom/narvii/widget/ThumbImageView;

    .line 29
    move-object v1, p9

    .line 30
    .line 31
    iput-object v1, v0, Lcom/narvii/amino/databinding/MembershipSubscribeLayoutBinding;->purchaseDirectly:Landroid/widget/TextView;

    .line 32
    move-object v1, p10

    .line 33
    .line 34
    iput-object v1, v0, Lcom/narvii/amino/databinding/MembershipSubscribeLayoutBinding;->purchaseText:Landroid/widget/TextView;

    .line 35
    move-object v1, p11

    .line 36
    .line 37
    iput-object v1, v0, Lcom/narvii/amino/databinding/MembershipSubscribeLayoutBinding;->redeemCouponComponent:Lcom/narvii/wallet/RedeemCouponComponent;

    .line 38
    move-object v1, p12

    .line 39
    .line 40
    iput-object v1, v0, Lcom/narvii/amino/databinding/MembershipSubscribeLayoutBinding;->retry:Lcom/narvii/widget/FontAwesomeView;

    .line 41
    move-object v1, p13

    .line 42
    .line 43
    iput-object v1, v0, Lcom/narvii/amino/databinding/MembershipSubscribeLayoutBinding;->root:Lcom/github/mmin18/widget/FlexLayout;

    .line 44
    .line 45
    move-object/from16 v1, p14

    .line 46
    .line 47
    iput-object v1, v0, Lcom/narvii/amino/databinding/MembershipSubscribeLayoutBinding;->sublist:Lcom/narvii/widget/OrderedLinearLayout;

    .line 48
    .line 49
    move-object/from16 v1, p15

    .line 50
    .line 51
    iput-object v1, v0, Lcom/narvii/amino/databinding/MembershipSubscribeLayoutBinding;->switchRedeem:Landroid/widget/TextView;

    .line 52
    .line 53
    move-object/from16 v1, p16

    .line 54
    .line 55
    iput-object v1, v0, Lcom/narvii/amino/databinding/MembershipSubscribeLayoutBinding;->title:Landroid/widget/ImageView;

    .line 56
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/amino/databinding/MembershipSubscribeLayoutBinding;
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
    const v1, 0x7f0a0191

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
    const v1, 0x7f0a04fd

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
    const v1, 0x7f0a0956

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 33
    move-result-object v2

    .line 34
    move-object v7, v2

    .line 35
    .line 36
    check-cast v7, Landroid/widget/TextView;

    .line 37
    .line 38
    if-eqz v7, :cond_0

    .line 39
    move-object v8, v0

    .line 40
    .line 41
    check-cast v8, Landroid/widget/FrameLayout;

    .line 42
    .line 43
    .line 44
    const v1, 0x102000d

    .line 45
    .line 46
    .line 47
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 48
    move-result-object v2

    .line 49
    move-object v9, v2

    .line 50
    .line 51
    check-cast v9, Lcom/narvii/widget/SpinningView;

    .line 52
    .line 53
    if-eqz v9, :cond_0

    .line 54
    .line 55
    .line 56
    const v1, 0x7f0a0b8a

    .line 57
    .line 58
    .line 59
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 60
    move-result-object v2

    .line 61
    move-object v10, v2

    .line 62
    .line 63
    check-cast v10, Lcom/narvii/widget/SpinningView;

    .line 64
    .line 65
    if-eqz v10, :cond_0

    .line 66
    .line 67
    .line 68
    const v1, 0x7f0a0ba1

    .line 69
    .line 70
    .line 71
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 72
    move-result-object v2

    .line 73
    move-object v11, v2

    .line 74
    .line 75
    check-cast v11, Lcom/narvii/widget/ThumbImageView;

    .line 76
    .line 77
    if-eqz v11, :cond_0

    .line 78
    .line 79
    .line 80
    const v1, 0x7f0a0ba4

    .line 81
    .line 82
    .line 83
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 84
    move-result-object v2

    .line 85
    move-object v12, v2

    .line 86
    .line 87
    check-cast v12, Landroid/widget/TextView;

    .line 88
    .line 89
    if-eqz v12, :cond_0

    .line 90
    .line 91
    .line 92
    const v1, 0x7f0a0ba6

    .line 93
    .line 94
    .line 95
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 96
    move-result-object v2

    .line 97
    move-object v13, v2

    .line 98
    .line 99
    check-cast v13, Landroid/widget/TextView;

    .line 100
    .line 101
    if-eqz v13, :cond_0

    .line 102
    .line 103
    .line 104
    const v1, 0x7f0a0c02

    .line 105
    .line 106
    .line 107
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 108
    move-result-object v2

    .line 109
    move-object v14, v2

    .line 110
    .line 111
    check-cast v14, Lcom/narvii/wallet/RedeemCouponComponent;

    .line 112
    .line 113
    if-eqz v14, :cond_0

    .line 114
    .line 115
    .line 116
    const v1, 0x7f0a0c38

    .line 117
    .line 118
    .line 119
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 120
    move-result-object v2

    .line 121
    move-object v15, v2

    .line 122
    .line 123
    check-cast v15, Lcom/narvii/widget/FontAwesomeView;

    .line 124
    .line 125
    if-eqz v15, :cond_0

    .line 126
    .line 127
    .line 128
    const v1, 0x7f0a0c4c

    .line 129
    .line 130
    .line 131
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 132
    move-result-object v2

    .line 133
    .line 134
    move-object/from16 v16, v2

    .line 135
    .line 136
    check-cast v16, Lcom/github/mmin18/widget/FlexLayout;

    .line 137
    .line 138
    if-eqz v16, :cond_0

    .line 139
    .line 140
    .line 141
    const v1, 0x7f0a0df5

    .line 142
    .line 143
    .line 144
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 145
    move-result-object v2

    .line 146
    .line 147
    move-object/from16 v17, v2

    .line 148
    .line 149
    check-cast v17, Lcom/narvii/widget/OrderedLinearLayout;

    .line 150
    .line 151
    if-eqz v17, :cond_0

    .line 152
    .line 153
    .line 154
    const v1, 0x7f0a0e16

    .line 155
    .line 156
    .line 157
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 158
    move-result-object v2

    .line 159
    .line 160
    move-object/from16 v18, v2

    .line 161
    .line 162
    check-cast v18, Landroid/widget/TextView;

    .line 163
    .line 164
    if-eqz v18, :cond_0

    .line 165
    .line 166
    .line 167
    const v1, 0x7f0a0e9e

    .line 168
    .line 169
    .line 170
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 171
    move-result-object v2

    .line 172
    .line 173
    move-object/from16 v19, v2

    .line 174
    .line 175
    check-cast v19, Landroid/widget/ImageView;

    .line 176
    .line 177
    if-eqz v19, :cond_0

    .line 178
    .line 179
    new-instance v0, Lcom/narvii/amino/databinding/MembershipSubscribeLayoutBinding;

    .line 180
    move-object v3, v0

    .line 181
    move-object v4, v8

    .line 182
    .line 183
    .line 184
    invoke-direct/range {v3 .. v19}, Lcom/narvii/amino/databinding/MembershipSubscribeLayoutBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/FrameLayout;Lcom/narvii/widget/SpinningView;Lcom/narvii/widget/SpinningView;Lcom/narvii/widget/ThumbImageView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/narvii/wallet/RedeemCouponComponent;Lcom/narvii/widget/FontAwesomeView;Lcom/github/mmin18/widget/FlexLayout;Lcom/narvii/widget/OrderedLinearLayout;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 185
    return-object v0

    .line 186
    .line 187
    .line 188
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 189
    move-result-object v0

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 193
    move-result-object v0

    .line 194
    .line 195
    new-instance v1, Ljava/lang/NullPointerException;

    .line 196
    .line 197
    const-string v2, "Missing required view with ID: "

    .line 198
    .line 199
    .line 200
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 201
    move-result-object v0

    .line 202
    .line 203
    .line 204
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 205
    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/MembershipSubscribeLayoutBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/amino/databinding/MembershipSubscribeLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/MembershipSubscribeLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/MembershipSubscribeLayoutBinding;
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

    const v0, 0x7f0d059a

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/amino/databinding/MembershipSubscribeLayoutBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/MembershipSubscribeLayoutBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/amino/databinding/MembershipSubscribeLayoutBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/amino/databinding/MembershipSubscribeLayoutBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
