.class Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/bubble/BubbleSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BubbleListAdapter"
.end annotation

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
.field public l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/ChatBubble;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
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
    .locals 2

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 6
    .line 7
    const-string v0, "chat/chat-bubble"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    const-string v0, "type"

    .line 14
    .line 15
    const-string v1, "all-my-bubbles"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->u(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    const-string v1, "threadId"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 33
    move-result-object p1

    .line 34
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
    new-instance v2, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter$2;

    .line 22
    .line 23
    .line 24
    invoke-direct {v2, p0, p1, p2}, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter$2;-><init>(Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;Lcom/narvii/model/ChatBubble;Lcom/narvii/util/Callback;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Lcom/narvii/monetization/bubble/BubbleHelper;->deleteBubble(Ljava/lang/String;Lcom/narvii/util/Callback;)V

    .line 28
    return-void
.end method

.method public editList(Lcom/narvii/notification/Notification;Z)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    .line 4
    .line 5
    iget-object p2, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 6
    .line 7
    const-string v0, "delete"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    move-result p2

    .line 12
    .line 13
    if-eqz p2, :cond_1

    .line 14
    .line 15
    iget-object p2, p1, Lcom/narvii/notification/Notification;->id:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->x(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-static {p2, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    move-result p2

    .line 26
    const/4 v0, 0x0

    .line 27
    .line 28
    if-eqz p2, :cond_0

    .line 29
    .line 30
    iget-object p2, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    .line 31
    .line 32
    .line 33
    invoke-static {p2, v0}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->D(Lcom/narvii/monetization/bubble/BubbleSettingFragment;Ljava/lang/String;)V

    .line 34
    .line 35
    iget-object p2, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    .line 36
    const/4 v1, 0x1

    .line 37
    .line 38
    .line 39
    invoke-static {p2, v1}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->F(Lcom/narvii/monetization/bubble/BubbleSettingFragment;Z)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->notifyDataSetChanged()V

    .line 43
    .line 44
    :cond_0
    iget-object p1, p1, Lcom/narvii/notification/Notification;->id:Ljava/lang/String;

    .line 45
    .line 46
    iget-object p2, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    .line 47
    .line 48
    .line 49
    invoke-static {p2}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->z(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)Ljava/lang/String;

    .line 50
    move-result-object p2

    .line 51
    .line 52
    .line 53
    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    move-result p1

    .line 55
    .line 56
    if-eqz p1, :cond_1

    .line 57
    .line 58
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    .line 59
    .line 60
    .line 61
    invoke-static {p1, v0}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->E(Lcom/narvii/monetization/bubble/BubbleSettingFragment;Ljava/lang/String;)V

    .line 62
    :cond_1
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
    .locals 11

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/model/ChatBubble;

    .line 3
    .line 4
    if-eqz v0, :cond_10

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/model/ChatBubble;

    .line 7
    .line 8
    iget v0, p1, Lcom/narvii/model/ChatBubble;->type:I

    .line 9
    const/4 v1, 0x2

    .line 10
    const/4 v2, 0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    move v0, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v0, v3

    .line 17
    .line 18
    :goto_0
    if-eqz v0, :cond_1

    .line 19
    .line 20
    .line 21
    const v1, 0x7f0d0442

    .line 22
    goto :goto_1

    .line 23
    .line 24
    .line 25
    :cond_1
    const v1, 0x7f0d03c5

    .line 26
    .line 27
    .line 28
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v1, p3, p2, v0}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 33
    move-result-object p2

    .line 34
    .line 35
    iget p3, p1, Lcom/narvii/model/ChatBubble;->type:I

    .line 36
    const/4 v0, -0x2

    .line 37
    .line 38
    if-ne p3, v0, :cond_2

    .line 39
    move p3, v2

    .line 40
    goto :goto_2

    .line 41
    :cond_2
    move p3, v3

    .line 42
    .line 43
    :goto_2
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    .line 44
    .line 45
    .line 46
    invoke-static {v1}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->y(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)Lcom/narvii/wallet/MembershipService;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    .line 51
    move-result v1

    .line 52
    .line 53
    iget v4, p1, Lcom/narvii/model/ChatBubble;->type:I

    .line 54
    const/4 v5, -0x1

    .line 55
    .line 56
    if-ne v4, v5, :cond_3

    .line 57
    move v4, v2

    .line 58
    goto :goto_3

    .line 59
    :cond_3
    move v4, v3

    .line 60
    .line 61
    :goto_3
    iget v6, p1, Lcom/narvii/model/ChatBubble;->status:I

    .line 62
    .line 63
    const/16 v7, 0x9

    .line 64
    .line 65
    if-ne v6, v7, :cond_4

    .line 66
    move v6, v2

    .line 67
    goto :goto_4

    .line 68
    :cond_4
    move v6, v3

    .line 69
    .line 70
    .line 71
    :goto_4
    const v7, 0x7f0a022b

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 75
    move-result-object v7

    .line 76
    .line 77
    check-cast v7, Lcom/narvii/widget/NVImageView;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v7, v3}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    .line 81
    .line 82
    iget v8, p1, Lcom/narvii/model/ChatBubble;->type:I

    .line 83
    .line 84
    if-ne v8, v5, :cond_5

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 88
    move-result-object v0

    .line 89
    .line 90
    .line 91
    const v8, 0x7f08042d

    .line 92
    .line 93
    .line 94
    invoke-static {v0, v8}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 95
    move-result-object v0

    .line 96
    .line 97
    .line 98
    invoke-virtual {v7, v0}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    goto :goto_5

    .line 100
    .line 101
    :cond_5
    if-ne v8, v0, :cond_6

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 105
    move-result-object v0

    .line 106
    .line 107
    .line 108
    const v8, 0x7f0803cc

    .line 109
    .line 110
    .line 111
    invoke-static {v0, v8}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 112
    move-result-object v0

    .line 113
    .line 114
    .line 115
    invoke-virtual {v7, v0}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 116
    goto :goto_5

    .line 117
    .line 118
    .line 119
    :cond_6
    invoke-virtual {p1}, Lcom/narvii/model/ChatBubble;->getPreviewUrl()Ljava/lang/String;

    .line 120
    move-result-object v0

    .line 121
    .line 122
    .line 123
    invoke-virtual {v7, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 124
    .line 125
    .line 126
    :goto_5
    const v0, 0x7f0a0225

    .line 127
    .line 128
    .line 129
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 130
    move-result-object v7

    .line 131
    .line 132
    iget-object v8, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    .line 137
    .line 138
    const v7, 0x7f0a03f5

    .line 139
    .line 140
    .line 141
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 142
    move-result-object v7

    .line 143
    .line 144
    const/16 v8, 0x8

    .line 145
    .line 146
    if-eqz p3, :cond_7

    .line 147
    move v9, v3

    .line 148
    goto :goto_6

    .line 149
    :cond_7
    move v9, v8

    .line 150
    .line 151
    .line 152
    :goto_6
    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 153
    .line 154
    .line 155
    const v7, 0x7f0a02e2

    .line 156
    .line 157
    .line 158
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 159
    move-result-object v7

    .line 160
    .line 161
    iget-object v9, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    .line 162
    .line 163
    .line 164
    invoke-static {v9}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->x(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)Ljava/lang/String;

    .line 165
    move-result-object v9

    .line 166
    .line 167
    if-eqz v9, :cond_8

    .line 168
    .line 169
    iget-object v5, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    .line 170
    .line 171
    .line 172
    invoke-static {v5}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->x(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)Ljava/lang/String;

    .line 173
    move-result-object v5

    .line 174
    .line 175
    iget-object v9, p1, Lcom/narvii/model/ChatBubble;->id:Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    invoke-static {v5, v9}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 179
    move-result v5

    .line 180
    goto :goto_7

    .line 181
    .line 182
    :cond_8
    iget-object v9, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    .line 183
    .line 184
    .line 185
    invoke-static {v9}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->A(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)Z

    .line 186
    move-result v9

    .line 187
    .line 188
    if-eqz v9, :cond_9

    .line 189
    .line 190
    iget-object v9, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    .line 191
    .line 192
    .line 193
    invoke-static {v9}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->v(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)Ljava/lang/String;

    .line 194
    move-result-object v9

    .line 195
    .line 196
    if-eqz v9, :cond_9

    .line 197
    .line 198
    iget-object v5, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    .line 199
    .line 200
    .line 201
    invoke-static {v5}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->v(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)Ljava/lang/String;

    .line 202
    move-result-object v5

    .line 203
    .line 204
    iget-object v9, p1, Lcom/narvii/model/ChatBubble;->id:Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    invoke-static {v5, v9}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 208
    move-result v5

    .line 209
    goto :goto_7

    .line 210
    .line 211
    :cond_9
    iget v9, p1, Lcom/narvii/model/ChatBubble;->type:I

    .line 212
    .line 213
    if-ne v9, v5, :cond_a

    .line 214
    move v5, v2

    .line 215
    goto :goto_7

    .line 216
    :cond_a
    move v5, v3

    .line 217
    :goto_7
    const/4 v9, 0x4

    .line 218
    .line 219
    if-eqz v5, :cond_b

    .line 220
    move v10, v3

    .line 221
    goto :goto_8

    .line 222
    :cond_b
    move v10, v9

    .line 223
    .line 224
    .line 225
    :goto_8
    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 229
    move-result-object v0

    .line 230
    .line 231
    if-eqz v5, :cond_c

    .line 232
    .line 233
    iget v5, p1, Lcom/narvii/model/ChatBubble;->type:I

    .line 234
    .line 235
    if-ne v5, v2, :cond_c

    .line 236
    goto :goto_9

    .line 237
    :cond_c
    move v3, v9

    .line 238
    .line 239
    .line 240
    :goto_9
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {p1, v1}, Lcom/narvii/model/StoreItemBaseObject;->isUsable(Z)Z

    .line 244
    move-result p1

    .line 245
    .line 246
    if-nez p1, :cond_e

    .line 247
    .line 248
    if-nez v4, :cond_e

    .line 249
    .line 250
    if-eqz p3, :cond_d

    .line 251
    goto :goto_a

    .line 252
    .line 253
    :cond_d
    const/high16 p1, 0x3f000000    # 0.5f

    .line 254
    goto :goto_b

    .line 255
    .line 256
    :cond_e
    :goto_a
    const/high16 p1, 0x3f800000    # 1.0f

    .line 257
    .line 258
    .line 259
    :goto_b
    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    .line 260
    .line 261
    .line 262
    const p1, 0x7f0a0959

    .line 263
    .line 264
    .line 265
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 266
    move-result-object p1

    .line 267
    .line 268
    .line 269
    invoke-virtual {p1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 270
    .line 271
    .line 272
    const p1, 0x7f0a0776

    .line 273
    .line 274
    .line 275
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 276
    move-result-object p1

    .line 277
    .line 278
    if-eqz v6, :cond_f

    .line 279
    .line 280
    if-eqz v1, :cond_f

    .line 281
    .line 282
    new-instance p3, Landroid/graphics/drawable/ColorDrawable;

    .line 283
    .line 284
    const/high16 v0, 0x20ff0000

    .line 285
    .line 286
    .line 287
    invoke-direct {p3, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 288
    goto :goto_c

    .line 289
    .line 290
    .line 291
    :cond_f
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 292
    move-result-object p3

    .line 293
    .line 294
    .line 295
    const v0, 0x7f08091c

    .line 296
    .line 297
    .line 298
    invoke-static {p3, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 299
    move-result-object p3

    .line 300
    .line 301
    .line 302
    :goto_c
    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 303
    return-object p2

    .line 304
    :cond_10
    const/4 p1, 0x0

    .line 305
    return-object p1
.end method

.method public isListShown()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    move-result v0

    .line 15
    .line 16
    if-gtz v0, :cond_1

    .line 17
    .line 18
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    :cond_1
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_2
    const/4 v0, 0x0

    .line 24
    :goto_0
    return v0
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

    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->l:Ljava/util/List;

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 3

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
    iput-object v0, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->l:Ljava/util/List;

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    iput-object v1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->l:Ljava/util/List;

    .line 18
    .line 19
    new-instance v1, Lcom/narvii/model/ChatBubble;

    .line 20
    .line 21
    .line 22
    invoke-direct {v1}, Lcom/narvii/model/ChatBubble;-><init>()V

    .line 23
    const/4 v2, -0x2

    .line 24
    .line 25
    iput v2, v1, Lcom/narvii/model/ChatBubble;->type:I

    .line 26
    .line 27
    const-string v2, "edit"

    .line 28
    .line 29
    iput-object v2, v1, Lcom/narvii/model/ChatBubble;->id:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v2, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->l:Ljava/util/List;

    .line 32
    .line 33
    .line 34
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    new-instance v1, Lcom/narvii/model/ChatBubble;

    .line 37
    .line 38
    .line 39
    invoke-direct {v1}, Lcom/narvii/model/ChatBubble;-><init>()V

    .line 40
    const/4 v2, -0x1

    .line 41
    .line 42
    iput v2, v1, Lcom/narvii/model/ChatBubble;->type:I

    .line 43
    .line 44
    const-string v2, "default"

    .line 45
    .line 46
    iput-object v2, v1, Lcom/narvii/model/ChatBubble;->id:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v2, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->l:Ljava/util/List;

    .line 49
    .line 50
    .line 51
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->l:Ljava/util/List;

    .line 54
    .line 55
    .line 56
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 57
    .line 58
    .line 59
    :goto_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 60
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/model/ChatBubble;

    .line 3
    .line 4
    if-eqz v0, :cond_9

    .line 5
    .line 6
    check-cast p3, Lcom/narvii/model/ChatBubble;

    .line 7
    .line 8
    const-class p1, Lcom/narvii/monetization/bubble/BubbleEditFragment;

    .line 9
    .line 10
    if-eqz p5, :cond_2

    .line 11
    .line 12
    .line 13
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 14
    move-result p2

    .line 15
    .line 16
    .line 17
    const p4, 0x7f0a0225

    .line 18
    .line 19
    if-ne p2, p4, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    const-string p2, "key_chat_bubble"

    .line 26
    .line 27
    .line 28
    invoke-static {p3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    move-result-object p3

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    invoke-static {p0, p1}, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 36
    .line 37
    goto/16 :goto_0

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 41
    move-result p1

    .line 42
    .line 43
    .line 44
    const p2, 0x7f0a0959

    .line 45
    .line 46
    if-ne p1, p2, :cond_8

    .line 47
    .line 48
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    .line 49
    .line 50
    .line 51
    invoke-static {p1}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->y(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)Lcom/narvii/wallet/MembershipService;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipService;->isMembershipBefore()Z

    .line 56
    move-result p1

    .line 57
    .line 58
    const-string p2, "Chat Bubble (Dialog)"

    .line 59
    .line 60
    if-eqz p1, :cond_1

    .line 61
    .line 62
    new-instance p1, Lcom/narvii/membership/MembershipExpireDialog;

    .line 63
    .line 64
    iget-object p3, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    .line 65
    .line 66
    .line 67
    invoke-direct {p1, p3}, Lcom/narvii/membership/MembershipExpireDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 68
    .line 69
    iput-object p2, p1, Lcom/narvii/membership/MembershipExpireDialog;->source:Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 73
    .line 74
    goto/16 :goto_0

    .line 75
    .line 76
    :cond_1
    new-instance p1, Lcom/narvii/membership/MembershipHintDialog;

    .line 77
    .line 78
    iget-object p3, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    .line 79
    .line 80
    .line 81
    invoke-direct {p1, p3}, Lcom/narvii/membership/MembershipHintDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 82
    .line 83
    iput-object p2, p1, Lcom/narvii/membership/MembershipHintDialog;->source:Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 87
    .line 88
    goto/16 :goto_0

    .line 89
    .line 90
    :cond_2
    iget p2, p3, Lcom/narvii/model/ChatBubble;->status:I

    .line 91
    .line 92
    const/16 p4, 0x9

    .line 93
    .line 94
    if-ne p2, p4, :cond_3

    .line 95
    .line 96
    iget-boolean p2, p3, Lcom/narvii/model/ChatBubble;->deletable:Z

    .line 97
    .line 98
    if-eqz p2, :cond_3

    .line 99
    .line 100
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 104
    move-result-object p2

    .line 105
    .line 106
    .line 107
    invoke-direct {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 108
    .line 109
    .line 110
    const p2, 0x7f1201ca

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 114
    const/4 p2, 0x0

    .line 115
    .line 116
    .line 117
    const p4, -0x444445

    .line 118
    .line 119
    .line 120
    const p5, 0x7f1201e2

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, p5, p2, p4}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    .line 124
    .line 125
    new-instance p2, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter$1;

    .line 126
    .line 127
    .line 128
    invoke-direct {p2, p0, p3}, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter$1;-><init>(Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;Lcom/narvii/model/ChatBubble;)V

    .line 129
    .line 130
    .line 131
    const p3, 0x7f1203a0

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, p3, p2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 138
    .line 139
    goto/16 :goto_0

    .line 140
    .line 141
    :cond_3
    iget p2, p3, Lcom/narvii/model/ChatBubble;->type:I

    .line 142
    const/4 p4, -0x2

    .line 143
    .line 144
    if-ne p2, p4, :cond_4

    .line 145
    .line 146
    .line 147
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 148
    move-result-object p1

    .line 149
    .line 150
    .line 151
    invoke-static {p0, p1}, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 152
    .line 153
    goto/16 :goto_0

    .line 154
    :cond_4
    const/4 p1, -0x1

    .line 155
    .line 156
    if-eq p2, p1, :cond_7

    .line 157
    .line 158
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    .line 159
    .line 160
    .line 161
    invoke-static {p1}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->y(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)Lcom/narvii/wallet/MembershipService;

    .line 162
    move-result-object p1

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    .line 166
    move-result p1

    .line 167
    .line 168
    .line 169
    invoke-virtual {p3, p1}, Lcom/narvii/model/StoreItemBaseObject;->isUsable(Z)Z

    .line 170
    move-result p1

    .line 171
    .line 172
    if-nez p1, :cond_7

    .line 173
    .line 174
    .line 175
    invoke-virtual {p3}, Lcom/narvii/model/StoreItemBaseObject;->getRestrictionInfo()Lcom/narvii/model/RestrictionInfo;

    .line 176
    move-result-object p1

    .line 177
    .line 178
    .line 179
    invoke-virtual {p3}, Lcom/narvii/model/StoreItemBaseObject;->getOwnershipInfo()Lcom/narvii/model/OwnershipInfo;

    .line 180
    move-result-object p2

    .line 181
    .line 182
    if-eqz p1, :cond_5

    .line 183
    .line 184
    if-eqz p2, :cond_5

    .line 185
    .line 186
    .line 187
    invoke-virtual {p2}, Lcom/narvii/model/OwnershipInfo;->isExpired()Z

    .line 188
    move-result p2

    .line 189
    .line 190
    if-eqz p2, :cond_5

    .line 191
    .line 192
    new-instance p1, Lcom/narvii/monetization/utils/ExpiredItemHintDialog;

    .line 193
    .line 194
    .line 195
    invoke-direct {p1, p0, p3}, Lcom/narvii/monetization/utils/ExpiredItemHintDialog;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/IStoreItem;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 199
    goto :goto_0

    .line 200
    .line 201
    :cond_5
    if-eqz p1, :cond_8

    .line 202
    .line 203
    iget p1, p1, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    .line 204
    const/4 p2, 0x2

    .line 205
    .line 206
    if-ne p1, p2, :cond_8

    .line 207
    .line 208
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    .line 209
    .line 210
    .line 211
    invoke-static {p1}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->y(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)Lcom/narvii/wallet/MembershipService;

    .line 212
    move-result-object p1

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    .line 216
    move-result p1

    .line 217
    .line 218
    if-nez p1, :cond_8

    .line 219
    .line 220
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    .line 221
    .line 222
    .line 223
    invoke-static {p1}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->y(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)Lcom/narvii/wallet/MembershipService;

    .line 224
    move-result-object p1

    .line 225
    .line 226
    .line 227
    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipService;->isMembershipBefore()Z

    .line 228
    move-result p1

    .line 229
    .line 230
    if-eqz p1, :cond_6

    .line 231
    .line 232
    new-instance p1, Lcom/narvii/membership/MembershipExpireDialog;

    .line 233
    .line 234
    .line 235
    invoke-direct {p1, p0}, Lcom/narvii/membership/MembershipExpireDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 239
    goto :goto_0

    .line 240
    .line 241
    :cond_6
    new-instance p1, Lcom/narvii/membership/MembershipHintDialog;

    .line 242
    .line 243
    .line 244
    invoke-direct {p1, p0}, Lcom/narvii/membership/MembershipHintDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 248
    goto :goto_0

    .line 249
    .line 250
    :cond_7
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    .line 251
    .line 252
    .line 253
    invoke-virtual {p3}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    .line 254
    move-result-object p2

    .line 255
    .line 256
    .line 257
    invoke-static {p1, p2}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->D(Lcom/narvii/monetization/bubble/BubbleSettingFragment;Ljava/lang/String;)V

    .line 258
    .line 259
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    .line 260
    .line 261
    .line 262
    invoke-static {p1, p3}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->C(Lcom/narvii/monetization/bubble/BubbleSettingFragment;Lcom/narvii/model/ChatBubble;)V

    .line 263
    .line 264
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    .line 265
    .line 266
    .line 267
    invoke-static {p1}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->K(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {p0}, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->notifyDataSetChanged()V

    .line 271
    :cond_8
    :goto_0
    const/4 p1, 0x1

    .line 272
    return p1

    .line 273
    .line 274
    .line 275
    :cond_9
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 276
    move-result p1

    .line 277
    return p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/model/ChatBubble;

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    .line 11
    .line 12
    const-string v0, "new"

    .line 13
    .line 14
    iget-object v1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_4

    .line 21
    .line 22
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p1, Lcom/narvii/model/ChatBubble;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->y(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)Lcom/narvii/wallet/MembershipService;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    .line 34
    move-result v0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Lcom/narvii/model/StoreItemBaseObject;->isUsable(Z)Z

    .line 38
    move-result v0

    .line 39
    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    .line 49
    invoke-static {v0, v1}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->D(Lcom/narvii/monetization/bubble/BubbleSettingFragment;Ljava/lang/String;)V

    .line 50
    .line 51
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    .line 52
    .line 53
    .line 54
    invoke-static {v0, p1}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->C(Lcom/narvii/monetization/bubble/BubbleSettingFragment;Lcom/narvii/model/ChatBubble;)V

    .line 55
    .line 56
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    .line 57
    .line 58
    .line 59
    invoke-static {p1}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->K(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->notifyDataSetChanged()V

    .line 63
    goto :goto_1

    .line 64
    .line 65
    :cond_1
    instance-of v1, v0, Lcom/narvii/model/ChatBubbleNotificationWrapper;

    .line 66
    .line 67
    if-eqz v1, :cond_4

    .line 68
    .line 69
    check-cast v0, Lcom/narvii/model/ChatBubbleNotificationWrapper;

    .line 70
    .line 71
    iget v1, v0, Lcom/narvii/model/ChatBubbleNotificationWrapper;->action:I

    .line 72
    const/4 v2, 0x1

    .line 73
    .line 74
    if-ne v1, v2, :cond_3

    .line 75
    .line 76
    iget-object v1, v0, Lcom/narvii/model/ChatBubbleNotificationWrapper;->chatBubble:Lcom/narvii/model/ChatBubble;

    .line 77
    .line 78
    iget-boolean v2, v1, Lcom/narvii/model/StoreItemBaseObject;->isActivated:Z

    .line 79
    .line 80
    if-nez v2, :cond_3

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    .line 84
    move-result-object v1

    .line 85
    .line 86
    iget-object v2, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    .line 87
    .line 88
    .line 89
    invoke-static {v2}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->x(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)Ljava/lang/String;

    .line 90
    move-result-object v2

    .line 91
    .line 92
    .line 93
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 94
    move-result v1

    .line 95
    .line 96
    if-eqz v1, :cond_3

    .line 97
    .line 98
    iget-object v1, v0, Lcom/narvii/model/ChatBubbleNotificationWrapper;->chatBubble:Lcom/narvii/model/ChatBubble;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    .line 102
    move-result-object v1

    .line 103
    .line 104
    iget-object v2, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    .line 105
    .line 106
    .line 107
    invoke-static {v2}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->x(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)Ljava/lang/String;

    .line 108
    move-result-object v2

    .line 109
    .line 110
    .line 111
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 112
    move-result v1

    .line 113
    .line 114
    if-eqz v1, :cond_2

    .line 115
    .line 116
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    .line 117
    const/4 v2, 0x0

    .line 118
    .line 119
    .line 120
    invoke-static {v1, v2}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->D(Lcom/narvii/monetization/bubble/BubbleSettingFragment;Ljava/lang/String;)V

    .line 121
    goto :goto_0

    .line 122
    .line 123
    :cond_2
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    .line 124
    .line 125
    .line 126
    invoke-static {v1}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->v(Lcom/narvii/monetization/bubble/BubbleSettingFragment;)Ljava/lang/String;

    .line 127
    move-result-object v2

    .line 128
    .line 129
    .line 130
    invoke-static {v1, v2}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->D(Lcom/narvii/monetization/bubble/BubbleSettingFragment;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->notifyDataSetChanged()V

    .line 134
    .line 135
    :cond_3
    new-instance v1, Lcom/narvii/monetization/bubble/BubbleHelper;

    .line 136
    .line 137
    .line 138
    invoke-direct {v1, p0}, Lcom/narvii/monetization/bubble/BubbleHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, p1, p0}, Lcom/narvii/monetization/bubble/BubbleHelper;->handleBubbleWrapNotification(Lcom/narvii/notification/Notification;Lcom/narvii/list/NVPagedAdapter;)V

    .line 142
    .line 143
    iget-boolean p1, v0, Lcom/narvii/model/ChatBubbleNotificationWrapper;->applyForAll:Z

    .line 144
    .line 145
    if-eqz p1, :cond_4

    .line 146
    .line 147
    iget-object p1, v0, Lcom/narvii/model/ChatBubbleNotificationWrapper;->chatBubble:Lcom/narvii/model/ChatBubble;

    .line 148
    .line 149
    if-eqz p1, :cond_4

    .line 150
    .line 151
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    .line 155
    move-result-object p1

    .line 156
    .line 157
    .line 158
    invoke-static {v0, p1}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->D(Lcom/narvii/monetization/bubble/BubbleSettingFragment;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0}, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->notifyDataSetChanged()V

    .line 162
    :cond_4
    :goto_1
    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/ChatBubbleListResponse;I)V
    .locals 2

    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    .line 2
    iget-object v1, p2, Lcom/narvii/model/ChatBubbleListResponse;->currentSelectedBubbleId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->E(Lcom/narvii/monetization/bubble/BubbleSettingFragment;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    .line 3
    iget-object v1, p2, Lcom/narvii/model/ChatBubbleListResponse;->currentSelectedBubbleId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->D(Lcom/narvii/monetization/bubble/BubbleSettingFragment;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    .line 4
    iget-object v1, p2, Lcom/narvii/model/ChatBubbleListResponse;->allChatsBubbleId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/narvii/monetization/bubble/BubbleSettingFragment;->B(Lcom/narvii/monetization/bubble/BubbleSettingFragment;Ljava/lang/String;)V

    .line 5
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/model/ChatBubbleListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/monetization/bubble/BubbleSettingFragment$BubbleListAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/ChatBubbleListResponse;I)V

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
