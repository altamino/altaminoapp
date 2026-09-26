.class public abstract Lcom/narvii/monetization/bubble/BubbleListAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/model/ChatBubble;",
        "Lcom/narvii/model/ChatBubbleListResponse;",
        ">;",
        "Lcom/narvii/notification/NotificationListener;"
    }
.end annotation


# instance fields
.field membershipService:Lcom/narvii/wallet/MembershipService;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    .line 5
    const-string v0, "membership"

    .line 6
    .line 7
    .line 8
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    check-cast p1, Lcom/narvii/wallet/MembershipService;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleListAdapter;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 14
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
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 6
    .line 7
    const-string v1, "chat/chat-bubble"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 15
    .line 16
    const-string/jumbo v1, "type"

    .line 17
    .line 18
    const-string v2, "all-my-bubbles"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/narvii/monetization/bubble/BubbleListAdapter;->threadId()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    const-string/jumbo v1, "threadId"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/narvii/monetization/bubble/BubbleListAdapter;->threadId()Ljava/lang/String;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 37
    .line 38
    :cond_0
    if-eqz p1, :cond_1

    .line 39
    .line 40
    const-string/jumbo p1, "start0"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 47
    move-result-object p1

    .line 48
    return-object p1
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/ChatBubble;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/model/ChatBubble;

    return-object v0
.end method

.method protected deleteBubble(Lcom/narvii/model/ChatBubble;Lcom/narvii/util/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/model/ChatBubble;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_1

    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 7
    .line 8
    .line 9
    invoke-interface {p2, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 10
    :cond_0
    return-void

    .line 11
    .line 12
    :cond_1
    new-instance v0, Lcom/narvii/monetization/bubble/BubbleHelper;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/narvii/monetization/bubble/BubbleHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    new-instance v2, Lcom/narvii/monetization/bubble/BubbleListAdapter$2;

    .line 22
    .line 23
    .line 24
    invoke-direct {v2, p0, p1, p2}, Lcom/narvii/monetization/bubble/BubbleListAdapter$2;-><init>(Lcom/narvii/monetization/bubble/BubbleListAdapter;Lcom/narvii/model/ChatBubble;Lcom/narvii/util/Callback;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Lcom/narvii/monetization/bubble/BubbleHelper;->deleteBubble(Ljava/lang/String;Lcom/narvii/util/Callback;)V

    .line 28
    return-void
.end method

.method protected filterResponseList(Ljava/util/List;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/ChatBubble;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/narvii/model/ChatBubble;",
            ">;"
        }
    .end annotation

    return-object p1
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
    .locals 7

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/model/ChatBubble;

    .line 3
    .line 4
    if-eqz v0, :cond_f

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/model/ChatBubble;

    .line 7
    .line 8
    iget v0, p1, Lcom/narvii/model/ChatBubble;->type:I

    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, -0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    .line 13
    if-ne v0, v2, :cond_0

    .line 14
    move v4, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v4, v3

    .line 17
    :goto_0
    const/4 v5, 0x2

    .line 18
    .line 19
    if-ne v0, v5, :cond_1

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move v1, v3

    .line 22
    .line 23
    .line 24
    :goto_1
    invoke-virtual {p0}, Lcom/narvii/monetization/bubble/BubbleListAdapter;->layoutId()I

    .line 25
    move-result v0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 29
    move-result-object p2

    .line 30
    .line 31
    .line 32
    const p3, 0x7f0a022b

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    move-result-object p3

    .line 37
    .line 38
    check-cast p3, Lcom/narvii/widget/NVImageView;

    .line 39
    .line 40
    const/16 v0, 0x9

    .line 41
    .line 42
    if-eqz p3, :cond_6

    .line 43
    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 47
    goto :goto_2

    .line 48
    .line 49
    :cond_2
    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 50
    .line 51
    .line 52
    :goto_2
    invoke-virtual {p3, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 53
    .line 54
    if-eqz v1, :cond_3

    .line 55
    move v1, v3

    .line 56
    goto :goto_3

    .line 57
    .line 58
    .line 59
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 60
    move-result-object v1

    .line 61
    .line 62
    const/high16 v6, 0x41100000    # 9.0f

    .line 63
    .line 64
    .line 65
    invoke-static {v1, v6}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 66
    move-result v1

    .line 67
    float-to-int v1, v1

    .line 68
    .line 69
    .line 70
    :goto_3
    invoke-virtual {p3, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 71
    .line 72
    iget v1, p1, Lcom/narvii/model/ChatBubble;->type:I

    .line 73
    .line 74
    if-ne v1, v2, :cond_4

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 78
    move-result-object v1

    .line 79
    .line 80
    .line 81
    const v2, 0x7f08042d

    .line 82
    .line 83
    .line 84
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 85
    move-result-object v1

    .line 86
    .line 87
    .line 88
    invoke-virtual {p3, v1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    goto :goto_4

    .line 90
    .line 91
    .line 92
    :cond_4
    invoke-virtual {p1}, Lcom/narvii/model/ChatBubble;->getPreviewUrl()Ljava/lang/String;

    .line 93
    move-result-object v1

    .line 94
    .line 95
    .line 96
    invoke-virtual {p3, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    :goto_4
    invoke-virtual {p3, v3}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    .line 100
    .line 101
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 102
    .line 103
    iget v2, p1, Lcom/narvii/model/ChatBubble;->status:I

    .line 104
    .line 105
    if-ne v2, v0, :cond_5

    .line 106
    .line 107
    const/high16 v2, 0x40ff0000    # 7.96875f

    .line 108
    goto :goto_5

    .line 109
    .line 110
    .line 111
    :cond_5
    const v2, -0x90807

    .line 112
    .line 113
    .line 114
    :goto_5
    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p3, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 118
    .line 119
    .line 120
    :cond_6
    const p3, 0x7f0a03f5

    .line 121
    .line 122
    .line 123
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 124
    move-result-object p3

    .line 125
    .line 126
    const/16 v1, 0x8

    .line 127
    .line 128
    if-eqz p3, :cond_7

    .line 129
    .line 130
    .line 131
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 132
    .line 133
    .line 134
    :cond_7
    const p3, 0x7f0a076a

    .line 135
    .line 136
    .line 137
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 138
    move-result-object p3

    .line 139
    .line 140
    check-cast p3, Lcom/narvii/monetization/utils/StoreItemNameView;

    .line 141
    .line 142
    if-eqz p3, :cond_9

    .line 143
    .line 144
    .line 145
    invoke-virtual {p3, p1}, Lcom/narvii/monetization/utils/StoreItemNameView;->setStoreItem(Lcom/narvii/model/IStoreItem;)V

    .line 146
    .line 147
    .line 148
    const v2, 0x7f0a0346

    .line 149
    .line 150
    .line 151
    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 152
    move-result-object p3

    .line 153
    .line 154
    check-cast p3, Landroid/widget/TextView;

    .line 155
    .line 156
    if-eqz p3, :cond_9

    .line 157
    .line 158
    iget v2, p1, Lcom/narvii/model/ChatBubble;->status:I

    .line 159
    .line 160
    if-ne v2, v0, :cond_8

    .line 161
    .line 162
    .line 163
    const v0, -0x15edee

    .line 164
    goto :goto_6

    .line 165
    .line 166
    .line 167
    :cond_8
    const v0, -0xcccccc

    .line 168
    .line 169
    .line 170
    :goto_6
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 171
    .line 172
    .line 173
    :cond_9
    const p3, 0x7f0a0223

    .line 174
    .line 175
    .line 176
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 177
    move-result-object p3

    .line 178
    .line 179
    if-eqz p3, :cond_d

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1}, Lcom/narvii/model/StoreItemBaseObject;->getRestrictionInfo()Lcom/narvii/model/RestrictionInfo;

    .line 183
    move-result-object p1

    .line 184
    .line 185
    if-eqz p1, :cond_a

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1}, Lcom/narvii/model/RestrictionInfo;->isSupported()Z

    .line 189
    move-result v0

    .line 190
    .line 191
    if-eqz v0, :cond_a

    .line 192
    .line 193
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleListAdapter;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    .line 197
    move-result v0

    .line 198
    .line 199
    if-nez v0, :cond_b

    .line 200
    .line 201
    iget p1, p1, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    .line 202
    .line 203
    if-eq p1, v5, :cond_a

    .line 204
    goto :goto_7

    .line 205
    .line 206
    :cond_a
    if-eqz v4, :cond_c

    .line 207
    .line 208
    :cond_b
    :goto_7
    const/high16 p1, 0x3f800000    # 1.0f

    .line 209
    goto :goto_8

    .line 210
    .line 211
    :cond_c
    const/high16 p1, 0x3f000000    # 0.5f

    .line 212
    .line 213
    .line 214
    :goto_8
    invoke-virtual {p3, p1}, Landroid/view/View;->setAlpha(F)V

    .line 215
    .line 216
    .line 217
    :cond_d
    const p1, 0x7f0a0e08

    .line 218
    .line 219
    .line 220
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 221
    move-result-object p1

    .line 222
    .line 223
    if-eqz p1, :cond_e

    .line 224
    .line 225
    .line 226
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 227
    :cond_e
    return-object p2

    .line 228
    :cond_f
    const/4 p1, 0x0

    .line 229
    return-object p1
.end method

.method protected layoutId()I
    .locals 1

    const v0, 0x7f0d03c3

    return v0
.end method

.method protected onFirstPageResponse()V
    .locals 0

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 5

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/model/ChatBubble;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    move-object v0, p3

    .line 6
    .line 7
    check-cast v0, Lcom/narvii/model/ChatBubble;

    .line 8
    .line 9
    iget v1, v0, Lcom/narvii/model/ChatBubble;->status:I

    .line 10
    .line 11
    const/16 v2, 0x9

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    iget-boolean v1, v0, Lcom/narvii/model/ChatBubble;->deletable:Z

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    new-instance v1, Lcom/narvii/widget/ACMAlertDialog;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    .line 26
    invoke-direct {v1, v2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    const v2, 0x7f1201ca

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 33
    const/4 v2, 0x0

    .line 34
    .line 35
    .line 36
    const v3, -0x444445

    .line 37
    .line 38
    .line 39
    const v4, 0x7f1201e2

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v4, v2, v3}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    .line 43
    .line 44
    new-instance v2, Lcom/narvii/monetization/bubble/BubbleListAdapter$1;

    .line 45
    .line 46
    .line 47
    invoke-direct {v2, p0, v0}, Lcom/narvii/monetization/bubble/BubbleListAdapter$1;-><init>(Lcom/narvii/monetization/bubble/BubbleListAdapter;Lcom/narvii/model/ChatBubble;)V

    .line 48
    .line 49
    .line 50
    const v0, 0x7f1203a0

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v0, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/narvii/app/NVDialog;->show()V

    .line 57
    goto :goto_0

    .line 58
    .line 59
    :cond_0
    iget v1, v0, Lcom/narvii/model/ChatBubble;->type:I

    .line 60
    const/4 v2, 0x2

    .line 61
    const/4 v3, 0x1

    .line 62
    .line 63
    if-ne v1, v2, :cond_1

    .line 64
    .line 65
    const-class p1, Lcom/narvii/monetization/bubble/detail/BubbleDetailFragment;

    .line 66
    .line 67
    .line 68
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    const-string p2, "id"

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    .line 75
    move-result-object p3

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    .line 80
    const-string p2, "prefetch"

    .line 81
    .line 82
    .line 83
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 84
    move-result-object p3

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    .line 89
    const-string p2, "Source"

    .line 90
    .line 91
    const-string p3, "Store"

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    .line 96
    .line 97
    invoke-static {p0, p1}, Lcom/narvii/monetization/bubble/BubbleListAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 98
    return v3

    .line 99
    .line 100
    :cond_1
    if-ne v1, v3, :cond_2

    .line 101
    .line 102
    new-instance v1, Lcom/narvii/monetization/bubble/BubbleHelper;

    .line 103
    .line 104
    iget-object v2, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 105
    .line 106
    .line 107
    invoke-direct {v1, v2}, Lcom/narvii/monetization/bubble/BubbleHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v0}, Lcom/narvii/monetization/bubble/BubbleHelper;->editChatBubble(Lcom/narvii/model/ChatBubble;)V

    .line 111
    .line 112
    .line 113
    :cond_2
    :goto_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 114
    move-result p1

    .line 115
    return p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 0

    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/ChatBubbleListResponse;I)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    const-string/jumbo p2, "start0"

    .line 3
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/narvii/monetization/bubble/BubbleListAdapter;->onFirstPageResponse()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/model/ChatBubbleListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/monetization/bubble/BubbleListAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/ChatBubbleListResponse;I)V

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
            "Lcom/narvii/model/ChatBubbleListResponse;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/model/ChatBubbleListResponse;

    return-object v0
.end method

.method protected threadId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
