.class public Lcom/narvii/notice/NoticeListFragment$Adapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/notice/NoticeListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/notice/Notice;",
        "Lcom/narvii/notice/NoticeListResponse;",
        ">;",
        "Lcom/narvii/notification/NotificationListener;"
    }
.end annotation


# instance fields
.field fmt:Lcom/narvii/util/DateTimeFormatter;

.field final synthetic this$0:Lcom/narvii/notice/NoticeListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/notice/NoticeListFragment;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, v0}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/narvii/util/DateTimeFormatter;->getInstance(Landroid/content/Context;)Lcom/narvii/util/DateTimeFormatter;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    iput-object p1, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->fmt:Lcom/narvii/util/DateTimeFormatter;

    .line 17
    return-void
.end method

.method private getContentText(Lcom/narvii/notice/Notice;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iget-object p1, p1, Lcom/narvii/notice/Notice;->objectText:Ljava/lang/String;

    .line 3
    return-object p1
.end method

.method private getContentType(II)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_6

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    if-eq p1, v0, :cond_4

    .line 6
    const/4 v0, 0x2

    .line 7
    .line 8
    if-eq p1, v0, :cond_3

    .line 9
    const/4 v0, 0x3

    .line 10
    .line 11
    if-eq p1, v0, :cond_2

    .line 12
    .line 13
    const/16 v0, 0xc

    .line 14
    .line 15
    if-eq p1, v0, :cond_1

    .line 16
    .line 17
    const/16 v0, 0x6d

    .line 18
    .line 19
    if-eq p1, v0, :cond_0

    .line 20
    .line 21
    const/16 v0, 0x83

    .line 22
    .line 23
    if-eq p1, v0, :cond_4

    .line 24
    .line 25
    iget-object p1, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 26
    .line 27
    .line 28
    const p2, 0x7f120ea6

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    return-object p1

    .line 34
    .line 35
    :cond_0
    iget-object p1, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 36
    .line 37
    .line 38
    const p2, 0x7f120e7d

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    return-object p1

    .line 44
    .line 45
    :cond_1
    iget-object p1, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 46
    .line 47
    .line 48
    const p2, 0x7f12028c

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    return-object p1

    .line 54
    .line 55
    :cond_2
    iget-object p1, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 56
    .line 57
    .line 58
    const p2, 0x7f1202e6

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 62
    move-result-object p1

    .line 63
    return-object p1

    .line 64
    .line 65
    :cond_3
    iget-object p1, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 66
    .line 67
    .line 68
    const p2, 0x7f120f38

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 72
    move-result-object p1

    .line 73
    return-object p1

    .line 74
    :cond_4
    const/4 p1, 0x4

    .line 75
    .line 76
    if-ne p2, p1, :cond_5

    .line 77
    .line 78
    iget-object p1, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 79
    .line 80
    .line 81
    const p2, 0x7f120f33

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 85
    move-result-object p1

    .line 86
    return-object p1

    .line 87
    .line 88
    :cond_5
    iget-object p1, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 89
    .line 90
    .line 91
    const p2, 0x7f120f30

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 95
    move-result-object p1

    .line 96
    return-object p1

    .line 97
    .line 98
    :cond_6
    iget-object p1, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 99
    .line 100
    .line 101
    const p2, 0x7f120176

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 105
    move-result-object p1

    .line 106
    return-object p1
.end method

.method private getDefaultNdcLink(Ljava/lang/String;Lcom/narvii/notice/Notice;)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    iget p1, p2, Lcom/narvii/notice/Notice;->objectType:I

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/narvii/model/NVObject;->objectTypeName(I)Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string p1, "/"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    iget-object p1, p2, Lcom/narvii/notice/Notice;->objectId:Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    return-object p1
.end method

.method private getParentContentText(Lcom/narvii/notice/Notice;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iget-object p1, p1, Lcom/narvii/notice/Notice;->parentText:Ljava/lang/String;

    .line 3
    return-object p1
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
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/notice/NoticeListFragment;->importNoticeAdapter:Lcom/narvii/notice/NoticeListFragment$ImportNoticeAdapter;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-boolean v0, v0, Lcom/narvii/notice/ImportNoticeListAdapter;->isImportantNoticeLoaded:Z

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    const/4 p1, 0x0

    .line 12
    return-object p1

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    const-string v1, "/notification"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    iget-object v1, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 25
    .line 26
    iget v1, v1, Lcom/narvii/notice/NoticeListFragment;->cid:I

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    const-string p1, "start0"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 41
    move-result-object p1

    .line 42
    return-object p1
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/notice/Notice;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/notice/Notice;

    return-object v0
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "AlertList"

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
    .locals 12

    .line 1
    .line 2
    check-cast p1, Lcom/narvii/notice/Notice;

    .line 3
    .line 4
    .line 5
    const v0, 0x7f0d05f2

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 9
    move-result-object p2

    .line 10
    .line 11
    iget-object p3, p1, Lcom/narvii/notice/Notice;->operator:Lcom/narvii/model/User;

    .line 12
    .line 13
    if-eqz p3, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p3}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    .line 17
    move-result-object p3

    .line 18
    .line 19
    .line 20
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    move-result p3

    .line 22
    .line 23
    if-eqz p3, :cond_0

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_0
    iget-object p3, p1, Lcom/narvii/notice/Notice;->operator:Lcom/narvii/model/User;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p3}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    .line 30
    move-result-object p3

    .line 31
    goto :goto_1

    .line 32
    .line 33
    :cond_1
    :goto_0
    const-string p3, "?"

    .line 34
    .line 35
    :goto_1
    iget v0, p1, Lcom/narvii/notice/Notice;->type:I

    .line 36
    const/4 v1, 0x0

    .line 37
    const/4 v2, 0x1

    .line 38
    const/4 v3, 0x0

    .line 39
    .line 40
    if-eq v0, v2, :cond_14

    .line 41
    .line 42
    const/16 v4, 0x9

    .line 43
    .line 44
    if-eq v0, v4, :cond_13

    .line 45
    .line 46
    const/16 v4, 0x18

    .line 47
    .line 48
    .line 49
    const v5, 0x7f08038f

    .line 50
    .line 51
    if-eq v0, v4, :cond_12

    .line 52
    .line 53
    const/16 v4, 0x37

    .line 54
    .line 55
    .line 56
    const v6, 0x7f08038b

    .line 57
    .line 58
    if-eq v0, v4, :cond_11

    .line 59
    .line 60
    const/16 v4, 0x39

    .line 61
    .line 62
    if-eq v0, v4, :cond_10

    .line 63
    const/4 v4, 0x3

    .line 64
    .line 65
    .line 66
    const v7, 0x7f08037f

    .line 67
    .line 68
    if-eq v0, v4, :cond_c

    .line 69
    const/4 v4, 0x4

    .line 70
    .line 71
    if-eq v0, v4, :cond_a

    .line 72
    .line 73
    .line 74
    const v7, 0x7f080386

    .line 75
    .line 76
    .line 77
    const v8, 0x7f080384

    .line 78
    .line 79
    .line 80
    packed-switch v0, :pswitch_data_0

    .line 81
    .line 82
    .line 83
    const v7, 0x7f120119

    .line 84
    .line 85
    .line 86
    const v9, 0x7f08037d

    .line 87
    .line 88
    .line 89
    const v10, 0x7f12010d

    .line 90
    .line 91
    .line 92
    packed-switch v0, :pswitch_data_1

    .line 93
    .line 94
    .line 95
    const v5, 0x7f080381

    .line 96
    .line 97
    .line 98
    packed-switch v0, :pswitch_data_2

    .line 99
    .line 100
    .line 101
    const v5, 0x7f080380

    .line 102
    .line 103
    .line 104
    packed-switch v0, :pswitch_data_3

    .line 105
    move-object v0, v1

    .line 106
    move-object v2, v0

    .line 107
    .line 108
    goto/16 :goto_11

    .line 109
    .line 110
    :pswitch_0
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 111
    .line 112
    .line 113
    const v2, 0x7f120105

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 117
    move-result-object v0

    .line 118
    :goto_2
    move-object v2, v1

    .line 119
    move v5, v3

    .line 120
    :goto_3
    move-object v1, v0

    .line 121
    move-object v0, v2

    .line 122
    .line 123
    goto/16 :goto_11

    .line 124
    .line 125
    :pswitch_1
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 126
    .line 127
    .line 128
    const v2, 0x7f120102

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 132
    move-result-object v0

    .line 133
    goto :goto_2

    .line 134
    .line 135
    :pswitch_2
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 136
    .line 137
    .line 138
    const v2, 0x7f120103

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 142
    move-result-object v0

    .line 143
    goto :goto_2

    .line 144
    .line 145
    :pswitch_3
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 146
    .line 147
    .line 148
    const v2, 0x7f120104

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 152
    move-result-object v0

    .line 153
    goto :goto_2

    .line 154
    .line 155
    :pswitch_4
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 156
    .line 157
    const-string v4, "community"

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v4}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 161
    move-result-object v0

    .line 162
    .line 163
    const-class v6, Lcom/narvii/model/Community;

    .line 164
    .line 165
    .line 166
    invoke-static {v0, v6}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 167
    move-result-object v0

    .line 168
    .line 169
    check-cast v0, Lcom/narvii/model/Community;

    .line 170
    .line 171
    if-eqz v0, :cond_2

    .line 172
    .line 173
    iget v6, v0, Lcom/narvii/model/Community;->id:I

    .line 174
    .line 175
    iget v7, p1, Lcom/narvii/notice/Notice;->contextNdcId:I

    .line 176
    .line 177
    if-eq v6, v7, :cond_3

    .line 178
    .line 179
    .line 180
    :cond_2
    invoke-virtual {p0, v4}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 181
    move-result-object v0

    .line 182
    .line 183
    check-cast v0, Lcom/narvii/community/CommunityService;

    .line 184
    .line 185
    iget v4, p1, Lcom/narvii/notice/Notice;->contextNdcId:I

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0, v4}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 189
    move-result-object v0

    .line 190
    .line 191
    .line 192
    :cond_3
    const v4, 0x7f12011e

    .line 193
    .line 194
    if-eqz v0, :cond_4

    .line 195
    .line 196
    iget-object v6, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 197
    .line 198
    new-array v2, v2, [Ljava/lang/Object;

    .line 199
    .line 200
    iget-object v7, v0, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 201
    .line 202
    aput-object v7, v2, v3

    .line 203
    .line 204
    .line 205
    invoke-virtual {v6, v4, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 206
    move-result-object v2

    .line 207
    :goto_4
    move-object v11, v2

    .line 208
    move-object v2, v1

    .line 209
    move-object v1, v11

    .line 210
    .line 211
    goto/16 :goto_11

    .line 212
    .line 213
    :cond_4
    iget-object v6, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 214
    .line 215
    new-array v2, v2, [Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    invoke-direct {p0, p1}, Lcom/narvii/notice/NoticeListFragment$Adapter;->getContentText(Lcom/narvii/notice/Notice;)Ljava/lang/String;

    .line 219
    move-result-object v7

    .line 220
    .line 221
    aput-object v7, v2, v3

    .line 222
    .line 223
    .line 224
    invoke-virtual {v6, v4, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 225
    move-result-object v2

    .line 226
    goto :goto_4

    .line 227
    .line 228
    :pswitch_5
    iget v0, p1, Lcom/narvii/notice/Notice;->objectType:I

    .line 229
    .line 230
    const/16 v2, 0x72

    .line 231
    .line 232
    if-eq v0, v2, :cond_7

    .line 233
    .line 234
    const/16 v2, 0x74

    .line 235
    .line 236
    if-eq v0, v2, :cond_6

    .line 237
    .line 238
    const/16 v2, 0x7a

    .line 239
    .line 240
    if-eq v0, v2, :cond_5

    .line 241
    .line 242
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 243
    .line 244
    .line 245
    const v2, 0x7f120115

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 249
    move-result-object v0

    .line 250
    goto :goto_5

    .line 251
    .line 252
    :cond_5
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 253
    .line 254
    .line 255
    const v2, 0x7f120116

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 259
    move-result-object v0

    .line 260
    goto :goto_5

    .line 261
    .line 262
    :cond_6
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 263
    .line 264
    .line 265
    const v2, 0x7f120114

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 269
    move-result-object v0

    .line 270
    goto :goto_5

    .line 271
    .line 272
    :cond_7
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 273
    .line 274
    .line 275
    const v2, 0x7f120117

    .line 276
    .line 277
    .line 278
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 279
    move-result-object v0

    .line 280
    .line 281
    .line 282
    :goto_5
    invoke-direct {p0, p1}, Lcom/narvii/notice/NoticeListFragment$Adapter;->getContentText(Lcom/narvii/notice/Notice;)Ljava/lang/String;

    .line 283
    move-result-object v2

    .line 284
    move v5, v6

    .line 285
    :goto_6
    move-object v11, v1

    .line 286
    move-object v1, v0

    .line 287
    move-object v0, v11

    .line 288
    .line 289
    goto/16 :goto_11

    .line 290
    .line 291
    :pswitch_6
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 292
    .line 293
    new-array v2, v2, [Ljava/lang/Object;

    .line 294
    .line 295
    iget v4, p1, Lcom/narvii/notice/Notice;->objectType:I

    .line 296
    .line 297
    iget v5, p1, Lcom/narvii/notice/Notice;->objectSubtype:I

    .line 298
    .line 299
    .line 300
    invoke-direct {p0, v4, v5}, Lcom/narvii/notice/NoticeListFragment$Adapter;->getContentType(II)Ljava/lang/String;

    .line 301
    move-result-object v4

    .line 302
    .line 303
    aput-object v4, v2, v3

    .line 304
    .line 305
    .line 306
    invoke-virtual {v0, v10, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 307
    move-result-object v0

    .line 308
    .line 309
    .line 310
    invoke-direct {p0, p1}, Lcom/narvii/notice/NoticeListFragment$Adapter;->getContentText(Lcom/narvii/notice/Notice;)Ljava/lang/String;

    .line 311
    move-result-object v2

    .line 312
    .line 313
    .line 314
    const v5, 0x7f080390

    .line 315
    goto :goto_6

    .line 316
    .line 317
    :pswitch_7
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v0, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 321
    move-result-object v0

    .line 322
    .line 323
    .line 324
    invoke-direct {p0, p1}, Lcom/narvii/notice/NoticeListFragment$Adapter;->getContentText(Lcom/narvii/notice/Notice;)Ljava/lang/String;

    .line 325
    move-result-object v2

    .line 326
    .line 327
    .line 328
    const v5, 0x7f08037e

    .line 329
    goto :goto_6

    .line 330
    .line 331
    :pswitch_8
    iget v0, p1, Lcom/narvii/notice/Notice;->objectSubtype:I

    .line 332
    .line 333
    if-ne v0, v4, :cond_8

    .line 334
    .line 335
    .line 336
    const v4, 0x7f080385

    .line 337
    :goto_7
    move v5, v4

    .line 338
    goto :goto_8

    .line 339
    .line 340
    .line 341
    :cond_8
    const v4, 0x7f080388

    .line 342
    goto :goto_7

    .line 343
    .line 344
    :goto_8
    iget-object v4, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 345
    .line 346
    new-array v2, v2, [Ljava/lang/Object;

    .line 347
    .line 348
    iget v6, p1, Lcom/narvii/notice/Notice;->objectType:I

    .line 349
    .line 350
    .line 351
    invoke-direct {p0, v6, v0}, Lcom/narvii/notice/NoticeListFragment$Adapter;->getContentType(II)Ljava/lang/String;

    .line 352
    move-result-object v0

    .line 353
    .line 354
    aput-object v0, v2, v3

    .line 355
    .line 356
    .line 357
    invoke-virtual {v4, v10, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 358
    move-result-object v0

    .line 359
    .line 360
    .line 361
    invoke-direct {p0, p1}, Lcom/narvii/notice/NoticeListFragment$Adapter;->getContentText(Lcom/narvii/notice/Notice;)Ljava/lang/String;

    .line 362
    move-result-object v2

    .line 363
    goto :goto_6

    .line 364
    .line 365
    :pswitch_9
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 366
    .line 367
    .line 368
    const v2, 0x7f12010a

    .line 369
    .line 370
    .line 371
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 372
    move-result-object v0

    .line 373
    :goto_9
    move-object v2, v1

    .line 374
    .line 375
    goto/16 :goto_3

    .line 376
    .line 377
    :pswitch_a
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 378
    .line 379
    .line 380
    const v2, 0x7f120109

    .line 381
    .line 382
    .line 383
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 384
    move-result-object v0

    .line 385
    goto :goto_9

    .line 386
    .line 387
    .line 388
    :pswitch_b
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 389
    move-result-object v0

    .line 390
    .line 391
    iget v2, p1, Lcom/narvii/notice/Notice;->contextValue:I

    .line 392
    .line 393
    .line 394
    const v4, 0x7f120108

    .line 395
    .line 396
    .line 397
    const v5, 0x7f120107

    .line 398
    .line 399
    .line 400
    invoke-static {v0, v2, v4, v5}, Lcom/narvii/util/text/TextUtils;->getCountText(Landroid/content/Context;III)Ljava/lang/String;

    .line 401
    move-result-object v0

    .line 402
    .line 403
    .line 404
    const v5, 0x7f08038d

    .line 405
    goto :goto_9

    .line 406
    .line 407
    .line 408
    :pswitch_c
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 409
    move-result-object v0

    .line 410
    .line 411
    iget v2, p1, Lcom/narvii/notice/Notice;->contextValue:I

    .line 412
    .line 413
    .line 414
    const v4, 0x7f12011f

    .line 415
    .line 416
    .line 417
    const v5, 0x7f120120

    .line 418
    .line 419
    .line 420
    invoke-static {v0, v2, v4, v5}, Lcom/narvii/util/text/TextUtils;->getCountText(Landroid/content/Context;III)Ljava/lang/String;

    .line 421
    move-result-object v0

    .line 422
    .line 423
    .line 424
    const v5, 0x7f08038a

    .line 425
    goto :goto_9

    .line 426
    .line 427
    :pswitch_d
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 428
    .line 429
    .line 430
    const v2, 0x7f12011a

    .line 431
    .line 432
    .line 433
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 434
    move-result-object v0

    .line 435
    .line 436
    .line 437
    invoke-direct {p0, p1}, Lcom/narvii/notice/NoticeListFragment$Adapter;->getContentText(Lcom/narvii/notice/Notice;)Ljava/lang/String;

    .line 438
    move-result-object v2

    .line 439
    :goto_a
    move v5, v9

    .line 440
    .line 441
    goto/16 :goto_6

    .line 442
    .line 443
    :pswitch_e
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 444
    .line 445
    .line 446
    const v2, 0x7f120113

    .line 447
    .line 448
    .line 449
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 450
    move-result-object v0

    .line 451
    .line 452
    .line 453
    invoke-direct {p0, p1}, Lcom/narvii/notice/NoticeListFragment$Adapter;->getContentText(Lcom/narvii/notice/Notice;)Ljava/lang/String;

    .line 454
    move-result-object v2

    .line 455
    goto :goto_a

    .line 456
    .line 457
    :pswitch_f
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 458
    .line 459
    .line 460
    invoke-virtual {v0, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 461
    move-result-object v0

    .line 462
    .line 463
    .line 464
    invoke-direct {p0, p1}, Lcom/narvii/notice/NoticeListFragment$Adapter;->getContentText(Lcom/narvii/notice/Notice;)Ljava/lang/String;

    .line 465
    move-result-object v2

    .line 466
    goto :goto_a

    .line 467
    .line 468
    :pswitch_10
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 469
    .line 470
    new-array v2, v2, [Ljava/lang/Object;

    .line 471
    .line 472
    iget v4, p1, Lcom/narvii/notice/Notice;->objectType:I

    .line 473
    .line 474
    iget v6, p1, Lcom/narvii/notice/Notice;->objectSubtype:I

    .line 475
    .line 476
    .line 477
    invoke-direct {p0, v4, v6}, Lcom/narvii/notice/NoticeListFragment$Adapter;->getContentType(II)Ljava/lang/String;

    .line 478
    move-result-object v4

    .line 479
    .line 480
    aput-object v4, v2, v3

    .line 481
    .line 482
    .line 483
    invoke-virtual {v0, v10, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 484
    move-result-object v0

    .line 485
    .line 486
    .line 487
    invoke-direct {p0, p1}, Lcom/narvii/notice/NoticeListFragment$Adapter;->getContentText(Lcom/narvii/notice/Notice;)Ljava/lang/String;

    .line 488
    move-result-object v2

    .line 489
    .line 490
    goto/16 :goto_6

    .line 491
    .line 492
    :pswitch_11
    iget v0, p1, Lcom/narvii/notice/Notice;->objectSubtype:I

    .line 493
    .line 494
    if-ne v0, v4, :cond_9

    .line 495
    move v5, v8

    .line 496
    goto :goto_b

    .line 497
    .line 498
    .line 499
    :cond_9
    const v4, 0x7f080387

    .line 500
    move v5, v4

    .line 501
    .line 502
    :goto_b
    iget-object v4, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 503
    .line 504
    new-array v2, v2, [Ljava/lang/Object;

    .line 505
    .line 506
    iget v6, p1, Lcom/narvii/notice/Notice;->objectType:I

    .line 507
    .line 508
    .line 509
    invoke-direct {p0, v6, v0}, Lcom/narvii/notice/NoticeListFragment$Adapter;->getContentType(II)Ljava/lang/String;

    .line 510
    move-result-object v0

    .line 511
    .line 512
    aput-object v0, v2, v3

    .line 513
    .line 514
    .line 515
    invoke-virtual {v4, v10, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 516
    move-result-object v0

    .line 517
    .line 518
    .line 519
    invoke-direct {p0, p1}, Lcom/narvii/notice/NoticeListFragment$Adapter;->getContentText(Lcom/narvii/notice/Notice;)Ljava/lang/String;

    .line 520
    move-result-object v2

    .line 521
    .line 522
    goto/16 :goto_6

    .line 523
    .line 524
    :pswitch_12
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 525
    .line 526
    .line 527
    const v2, 0x7f12010f

    .line 528
    .line 529
    .line 530
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 531
    move-result-object v0

    .line 532
    .line 533
    .line 534
    invoke-direct {p0, p1}, Lcom/narvii/notice/NoticeListFragment$Adapter;->getContentText(Lcom/narvii/notice/Notice;)Ljava/lang/String;

    .line 535
    move-result-object v2

    .line 536
    :goto_c
    move v5, v7

    .line 537
    .line 538
    goto/16 :goto_6

    .line 539
    .line 540
    :pswitch_13
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 541
    .line 542
    .line 543
    const v2, 0x7f12010e

    .line 544
    .line 545
    .line 546
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 547
    move-result-object v0

    .line 548
    .line 549
    .line 550
    invoke-direct {p0, p1}, Lcom/narvii/notice/NoticeListFragment$Adapter;->getContentText(Lcom/narvii/notice/Notice;)Ljava/lang/String;

    .line 551
    move-result-object v2

    .line 552
    goto :goto_c

    .line 553
    .line 554
    :pswitch_14
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 555
    .line 556
    .line 557
    const v2, 0x7f120121

    .line 558
    .line 559
    .line 560
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 561
    move-result-object v0

    .line 562
    .line 563
    .line 564
    invoke-direct {p0, p1}, Lcom/narvii/notice/NoticeListFragment$Adapter;->getParentContentText(Lcom/narvii/notice/Notice;)Ljava/lang/String;

    .line 565
    move-result-object v2

    .line 566
    :goto_d
    move v5, v8

    .line 567
    .line 568
    goto/16 :goto_6

    .line 569
    .line 570
    :pswitch_15
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 571
    .line 572
    .line 573
    const v2, 0x7f120106

    .line 574
    .line 575
    .line 576
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 577
    move-result-object v0

    .line 578
    .line 579
    .line 580
    invoke-direct {p0, p1}, Lcom/narvii/notice/NoticeListFragment$Adapter;->getParentContentText(Lcom/narvii/notice/Notice;)Ljava/lang/String;

    .line 581
    move-result-object v2

    .line 582
    goto :goto_d

    .line 583
    .line 584
    :pswitch_16
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 585
    .line 586
    new-array v2, v2, [Ljava/lang/Object;

    .line 587
    .line 588
    .line 589
    invoke-direct {p0, p1}, Lcom/narvii/notice/NoticeListFragment$Adapter;->getContentText(Lcom/narvii/notice/Notice;)Ljava/lang/String;

    .line 590
    move-result-object v4

    .line 591
    .line 592
    aput-object v4, v2, v3

    .line 593
    .line 594
    .line 595
    const v4, 0x7f120111

    .line 596
    .line 597
    .line 598
    invoke-virtual {v0, v4, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 599
    move-result-object v0

    .line 600
    .line 601
    .line 602
    invoke-direct {p0, p1}, Lcom/narvii/notice/NoticeListFragment$Adapter;->getParentContentText(Lcom/narvii/notice/Notice;)Ljava/lang/String;

    .line 603
    move-result-object v2

    .line 604
    goto :goto_d

    .line 605
    .line 606
    :cond_a
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 607
    .line 608
    new-array v2, v2, [Ljava/lang/Object;

    .line 609
    .line 610
    .line 611
    invoke-direct {p0, p1}, Lcom/narvii/notice/NoticeListFragment$Adapter;->getContentText(Lcom/narvii/notice/Notice;)Ljava/lang/String;

    .line 612
    move-result-object v4

    .line 613
    .line 614
    aput-object v4, v2, v3

    .line 615
    .line 616
    .line 617
    const v4, 0x7f120118

    .line 618
    .line 619
    .line 620
    invoke-virtual {v0, v4, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 621
    move-result-object v0

    .line 622
    .line 623
    iget v2, p1, Lcom/narvii/notice/Notice;->parentType:I

    .line 624
    .line 625
    if-eqz v2, :cond_b

    .line 626
    .line 627
    .line 628
    invoke-direct {p0, p1}, Lcom/narvii/notice/NoticeListFragment$Adapter;->getParentContentText(Lcom/narvii/notice/Notice;)Ljava/lang/String;

    .line 629
    move-result-object v2

    .line 630
    goto :goto_c

    .line 631
    :cond_b
    :goto_e
    move-object v2, v1

    .line 632
    move v5, v7

    .line 633
    .line 634
    goto/16 :goto_3

    .line 635
    .line 636
    :cond_c
    iget v0, p1, Lcom/narvii/notice/Notice;->parentType:I

    .line 637
    .line 638
    if-nez v0, :cond_d

    .line 639
    .line 640
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 641
    .line 642
    new-array v2, v2, [Ljava/lang/Object;

    .line 643
    .line 644
    .line 645
    invoke-direct {p0, p1}, Lcom/narvii/notice/NoticeListFragment$Adapter;->getContentText(Lcom/narvii/notice/Notice;)Ljava/lang/String;

    .line 646
    move-result-object v4

    .line 647
    .line 648
    aput-object v4, v2, v3

    .line 649
    .line 650
    .line 651
    const v4, 0x7f12010c

    .line 652
    .line 653
    .line 654
    invoke-virtual {v0, v4, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 655
    move-result-object v0

    .line 656
    goto :goto_e

    .line 657
    .line 658
    :cond_d
    if-eq v0, v2, :cond_f

    .line 659
    const/4 v4, 0x2

    .line 660
    .line 661
    if-eq v0, v4, :cond_f

    .line 662
    .line 663
    const/16 v4, 0x6d

    .line 664
    .line 665
    if-ne v0, v4, :cond_e

    .line 666
    goto :goto_f

    .line 667
    :cond_e
    move-object v0, v1

    .line 668
    move-object v2, v0

    .line 669
    move v5, v7

    .line 670
    goto :goto_11

    .line 671
    .line 672
    :cond_f
    :goto_f
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 673
    .line 674
    new-array v2, v2, [Ljava/lang/Object;

    .line 675
    .line 676
    .line 677
    invoke-direct {p0, p1}, Lcom/narvii/notice/NoticeListFragment$Adapter;->getContentText(Lcom/narvii/notice/Notice;)Ljava/lang/String;

    .line 678
    move-result-object v4

    .line 679
    .line 680
    aput-object v4, v2, v3

    .line 681
    .line 682
    .line 683
    const v4, 0x7f12010b

    .line 684
    .line 685
    .line 686
    invoke-virtual {v0, v4, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 687
    move-result-object v0

    .line 688
    .line 689
    .line 690
    invoke-direct {p0, p1}, Lcom/narvii/notice/NoticeListFragment$Adapter;->getParentContentText(Lcom/narvii/notice/Notice;)Ljava/lang/String;

    .line 691
    move-result-object v2

    .line 692
    .line 693
    goto/16 :goto_c

    .line 694
    .line 695
    :cond_10
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 696
    .line 697
    .line 698
    const v2, 0x7f12011d

    .line 699
    .line 700
    .line 701
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 702
    move-result-object v0

    .line 703
    :goto_10
    move-object v2, v1

    .line 704
    move v5, v6

    .line 705
    .line 706
    goto/16 :goto_3

    .line 707
    .line 708
    :cond_11
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 709
    .line 710
    .line 711
    const v2, 0x7f12011c

    .line 712
    .line 713
    .line 714
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 715
    move-result-object v0

    .line 716
    goto :goto_10

    .line 717
    .line 718
    :cond_12
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 719
    .line 720
    .line 721
    const v2, 0x7f12011b

    .line 722
    .line 723
    .line 724
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 725
    move-result-object v0

    .line 726
    .line 727
    .line 728
    invoke-direct {p0, p1}, Lcom/narvii/notice/NoticeListFragment$Adapter;->getContentText(Lcom/narvii/notice/Notice;)Ljava/lang/String;

    .line 729
    move-result-object v2

    .line 730
    .line 731
    goto/16 :goto_6

    .line 732
    .line 733
    :cond_13
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 734
    .line 735
    new-array v2, v2, [Ljava/lang/Object;

    .line 736
    .line 737
    iget v4, p1, Lcom/narvii/notice/Notice;->objectType:I

    .line 738
    .line 739
    iget v5, p1, Lcom/narvii/notice/Notice;->objectSubtype:I

    .line 740
    .line 741
    .line 742
    invoke-direct {p0, v4, v5}, Lcom/narvii/notice/NoticeListFragment$Adapter;->getContentType(II)Ljava/lang/String;

    .line 743
    move-result-object v4

    .line 744
    .line 745
    aput-object v4, v2, v3

    .line 746
    .line 747
    .line 748
    const v4, 0x7f120112

    .line 749
    .line 750
    .line 751
    invoke-virtual {v0, v4, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 752
    move-result-object v0

    .line 753
    .line 754
    .line 755
    invoke-direct {p0, p1}, Lcom/narvii/notice/NoticeListFragment$Adapter;->getContentText(Lcom/narvii/notice/Notice;)Ljava/lang/String;

    .line 756
    move-result-object v2

    .line 757
    .line 758
    .line 759
    const v5, 0x7f080383

    .line 760
    .line 761
    goto/16 :goto_6

    .line 762
    .line 763
    :cond_14
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 764
    .line 765
    .line 766
    const v2, 0x7f120110

    .line 767
    .line 768
    .line 769
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 770
    move-result-object v0

    .line 771
    .line 772
    .line 773
    const v5, 0x7f080382

    .line 774
    .line 775
    goto/16 :goto_9

    .line 776
    .line 777
    :goto_11
    if-nez v1, :cond_15

    .line 778
    .line 779
    iget-object v1, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 780
    .line 781
    .line 782
    const v4, 0x7f120dbb

    .line 783
    .line 784
    .line 785
    invoke-virtual {v1, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 786
    move-result-object v1

    .line 787
    .line 788
    .line 789
    :cond_15
    const v4, 0x7f0a06d5

    .line 790
    .line 791
    .line 792
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 793
    move-result-object v6

    .line 794
    .line 795
    check-cast v6, Landroid/widget/ImageView;

    .line 796
    .line 797
    .line 798
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 799
    .line 800
    .line 801
    const v6, 0x7f0a0171

    .line 802
    .line 803
    .line 804
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 805
    move-result-object v6

    .line 806
    .line 807
    check-cast v6, Lcom/narvii/widget/ThumbImageView;

    .line 808
    .line 809
    iget-object v7, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 810
    .line 811
    .line 812
    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 813
    .line 814
    .line 815
    const v6, 0x7f0a0f36

    .line 816
    .line 817
    .line 818
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 819
    move-result-object v6

    .line 820
    .line 821
    check-cast v6, Lcom/narvii/widget/UserAvatarLayout;

    .line 822
    .line 823
    .line 824
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 825
    move-result-object v4

    .line 826
    .line 827
    check-cast v4, Landroid/widget/ImageView;

    .line 828
    .line 829
    .line 830
    const v7, 0x7f0a06d6

    .line 831
    .line 832
    .line 833
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 834
    move-result-object v7

    .line 835
    .line 836
    check-cast v7, Landroid/widget/ImageView;

    .line 837
    .line 838
    .line 839
    const v8, 0x7f0a036b

    .line 840
    .line 841
    .line 842
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 843
    move-result-object v8

    .line 844
    .line 845
    check-cast v8, Lcom/narvii/widget/CommunityIconView;

    .line 846
    .line 847
    const/16 v9, 0x8

    .line 848
    .line 849
    if-eqz v0, :cond_16

    .line 850
    .line 851
    .line 852
    invoke-virtual {v8, v3}, Landroid/view/View;->setVisibility(I)V

    .line 853
    .line 854
    .line 855
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 856
    .line 857
    .line 858
    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 859
    .line 860
    .line 861
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 862
    .line 863
    .line 864
    invoke-virtual {v8, v0}, Lcom/narvii/widget/CommunityIconView;->setCommunity(Lcom/narvii/model/Community;)V

    .line 865
    .line 866
    iget-object p3, v0, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 867
    goto :goto_12

    .line 868
    .line 869
    :cond_16
    iget-object v0, p1, Lcom/narvii/notice/Notice;->operator:Lcom/narvii/model/User;

    .line 870
    .line 871
    if-eqz v0, :cond_18

    .line 872
    .line 873
    .line 874
    invoke-virtual {v0}, Lcom/narvii/model/User;->isSystem()Z

    .line 875
    move-result v0

    .line 876
    .line 877
    if-nez v0, :cond_17

    .line 878
    .line 879
    iget-object v0, p1, Lcom/narvii/notice/Notice;->operator:Lcom/narvii/model/User;

    .line 880
    .line 881
    .line 882
    invoke-virtual {v0}, Lcom/narvii/model/User;->isModerator()Z

    .line 883
    move-result v0

    .line 884
    .line 885
    if-eqz v0, :cond_18

    .line 886
    .line 887
    :cond_17
    if-eqz v5, :cond_18

    .line 888
    .line 889
    .line 890
    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 891
    .line 892
    .line 893
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 894
    .line 895
    .line 896
    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 897
    .line 898
    .line 899
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 900
    .line 901
    .line 902
    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 903
    goto :goto_12

    .line 904
    .line 905
    .line 906
    :cond_18
    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 907
    .line 908
    .line 909
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 910
    .line 911
    .line 912
    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 913
    .line 914
    .line 915
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 916
    .line 917
    .line 918
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 919
    .line 920
    iget-object v0, p1, Lcom/narvii/notice/Notice;->operator:Lcom/narvii/model/User;

    .line 921
    .line 922
    .line 923
    invoke-virtual {v6, v0}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 924
    .line 925
    .line 926
    :goto_12
    const v0, 0x7f0a09d3

    .line 927
    .line 928
    .line 929
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 930
    move-result-object v0

    .line 931
    .line 932
    check-cast v0, Landroid/widget/TextView;

    .line 933
    .line 934
    .line 935
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 936
    .line 937
    .line 938
    const p3, 0x7f0a0408

    .line 939
    .line 940
    .line 941
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 942
    move-result-object p3

    .line 943
    .line 944
    check-cast p3, Landroid/widget/TextView;

    .line 945
    .line 946
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->fmt:Lcom/narvii/util/DateTimeFormatter;

    .line 947
    .line 948
    iget-object v4, p1, Lcom/narvii/notice/Notice;->createdTime:Ljava/util/Date;

    .line 949
    .line 950
    .line 951
    invoke-virtual {v0, v4}, Lcom/narvii/util/DateTimeFormatter;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 952
    move-result-object v0

    .line 953
    .line 954
    .line 955
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 956
    .line 957
    .line 958
    const p3, 0x7f0a0e51

    .line 959
    .line 960
    .line 961
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 962
    move-result-object p3

    .line 963
    .line 964
    check-cast p3, Landroid/widget/TextView;

    .line 965
    .line 966
    .line 967
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 968
    .line 969
    .line 970
    const p3, 0x7f0a0e53

    .line 971
    .line 972
    .line 973
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 974
    move-result-object p3

    .line 975
    .line 976
    check-cast p3, Landroid/widget/TextView;

    .line 977
    .line 978
    .line 979
    const v0, 0x7f0a0e54

    .line 980
    .line 981
    .line 982
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 983
    move-result-object v0

    .line 984
    .line 985
    .line 986
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 987
    move-result v1

    .line 988
    .line 989
    if-eqz v1, :cond_19

    .line 990
    .line 991
    .line 992
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 993
    goto :goto_13

    .line 994
    .line 995
    .line 996
    :cond_19
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 997
    .line 998
    .line 999
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1000
    .line 1001
    :goto_13
    iget-object p3, p1, Lcom/narvii/notice/Notice;->createdTime:Ljava/util/Date;

    .line 1002
    .line 1003
    .line 1004
    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    .line 1005
    move-result-wide v0

    .line 1006
    .line 1007
    iget-object p3, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 1008
    .line 1009
    iget-wide v4, p3, Lcom/narvii/notice/NoticeListFragment;->readTime:J

    .line 1010
    .line 1011
    cmp-long v0, v0, v4

    .line 1012
    .line 1013
    if-lez v0, :cond_1c

    .line 1014
    .line 1015
    iget-object p3, p3, Lcom/narvii/notice/NoticeListFragment;->readList:Ljava/util/Set;

    .line 1016
    .line 1017
    if-eqz p3, :cond_1a

    .line 1018
    .line 1019
    iget-object p1, p1, Lcom/narvii/notice/Notice;->notificationId:Ljava/lang/String;

    .line 1020
    .line 1021
    .line 1022
    invoke-interface {p3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 1023
    move-result p1

    .line 1024
    .line 1025
    if-eqz p1, :cond_1a

    .line 1026
    goto :goto_15

    .line 1027
    .line 1028
    .line 1029
    :cond_1a
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isDarkNVTheme()Z

    .line 1030
    move-result p1

    .line 1031
    .line 1032
    if-eqz p1, :cond_1b

    .line 1033
    .line 1034
    .line 1035
    const p1, 0x19ffffff

    .line 1036
    goto :goto_14

    .line 1037
    .line 1038
    .line 1039
    :cond_1b
    const p1, -0x3071b

    .line 1040
    .line 1041
    .line 1042
    :goto_14
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1043
    goto :goto_16

    .line 1044
    .line 1045
    .line 1046
    :cond_1c
    :goto_15
    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1047
    :goto_16
    return-object p2

    .line 1048
    nop

    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_13
    .end packed-switch

    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    :pswitch_data_1
    .packed-switch 0x1a
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_e
        :pswitch_d
        :pswitch_b
        :pswitch_e
        :pswitch_d
    .end packed-switch

    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    :pswitch_data_2
    .packed-switch 0x3c
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    :pswitch_data_3
    .packed-switch 0x45
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/notice/NoticeListFragment;->C(Lcom/narvii/notice/NoticeListFragment;)V

    .line 9
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 10

    .line 1
    instance-of v0, p3, Lcom/narvii/notice/Notice;

    if-nez v0, :cond_0

    .line 2
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    move-object p1, p3

    check-cast p1, Lcom/narvii/notice/Notice;

    const/4 p2, 0x0

    const-string p4, "Source"

    const-string v0, "Alerts"

    const/4 v1, 0x1

    if-eqz p5, :cond_3

    .line 4
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0a0171

    if-ne v2, v3, :cond_3

    .line 5
    invoke-virtual {p5, p2}, Landroid/view/View;->setClickable(Z)V

    .line 6
    iget-object p1, p1, Lcom/narvii/notice/Notice;->operator:Lcom/narvii/model/User;

    if-eqz p1, :cond_2

    .line 7
    invoke-static {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    .line 8
    :cond_1
    invoke-virtual {p1, p4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    invoke-static {p0, p1}, Lcom/narvii/notice/NoticeListFragment$Adapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 10
    :cond_2
    invoke-virtual {p5, v1}, Landroid/view/View;->setClickable(Z)V

    return v1

    :cond_3
    const-string p5, "statistics"

    .line 11
    invoke-virtual {p0, p5}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/narvii/util/statistics/StatisticsService;

    const-string v2, "Notification Opened"

    .line 12
    invoke-interface {p5, v2}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object p5

    const-string v2, "Notifications Opxened Total"

    invoke-virtual {p5, v2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object p5

    iget-object v2, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    invoke-virtual {v2, p1}, Lcom/narvii/notice/NoticeListFragment;->getNoticeType(Lcom/narvii/notice/Notice;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Type"

    invoke-virtual {p5, v3, v2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 13
    sget-object p5, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, p3, p5}, Lcom/narvii/list/NVAdapter;->getClickEventBuilder(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p3

    iget p5, p1, Lcom/narvii/notice/Notice;->type:I

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const-string v2, "alertType"

    invoke-virtual {p3, v2, p5}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p3

    invoke-virtual {p3}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 14
    new-instance p3, Lcom/narvii/chat/video/VVChatEntryHelper;

    invoke-direct {p3, p0}, Lcom/narvii/chat/video/VVChatEntryHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 15
    iget p5, p1, Lcom/narvii/notice/Notice;->contextNdcId:I

    const-string v2, "/"

    if-nez p5, :cond_4

    const-string p5, "ndc://g/"

    goto :goto_0

    :cond_4
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ndc://x"

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/narvii/notice/Notice;->contextNdcId:I

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 16
    :goto_0
    iget v3, p1, Lcom/narvii/notice/Notice;->type:I

    const-string v4, "android.intent.action.VIEW"

    if-eq v3, v1, :cond_10

    const/4 v5, 0x2

    if-eq v3, v5, :cond_f

    const-string v5, "comment/"

    const-string v6, "g-comment/"

    const/4 v7, 0x4

    const/4 v8, 0x3

    if-eq v3, v8, :cond_a

    if-eq v3, v7, :cond_a

    const/16 v9, 0x18

    if-eq v3, v9, :cond_f

    const/16 v9, 0x37

    if-eq v3, v9, :cond_f

    const/16 v9, 0x39

    if-eq v3, v9, :cond_f

    packed-switch v3, :pswitch_data_0

    const/4 v2, 0x0

    packed-switch v3, :pswitch_data_1

    packed-switch v3, :pswitch_data_2

    packed-switch v3, :pswitch_data_3

    goto/16 :goto_2

    :pswitch_0
    const-class p3, Lcom/narvii/monetization/coupons/CouponListFragment;

    .line 17
    invoke-static {p3}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    goto/16 :goto_2

    :pswitch_1
    const-class p3, Lcom/narvii/influencer/MySubscriptionListFragment;

    .line 18
    invoke-static {p3}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    goto/16 :goto_2

    :pswitch_2
    const-class p3, Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 19
    invoke-static {p3}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    goto/16 :goto_2

    :pswitch_3
    iget-object p3, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    const-string p5, "community"

    .line 20
    invoke-virtual {p3, p5}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-class v3, Lcom/narvii/model/Community;

    invoke-static {p3, v3}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/model/Community;

    if-eqz p3, :cond_5

    .line 21
    iget v3, p3, Lcom/narvii/model/Community;->id:I

    iget v4, p1, Lcom/narvii/notice/Notice;->contextNdcId:I

    if-eq v3, v4, :cond_6

    .line 22
    :cond_5
    invoke-virtual {p0, p5}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/community/CommunityService;

    .line 23
    iget p5, p1, Lcom/narvii/notice/Notice;->contextNdcId:I

    invoke-virtual {p3, p5}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object p3

    :cond_6
    iget-object p5, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 24
    invoke-static {p5, p3}, Lcom/narvii/notice/NoticeListFragment;->A(Lcom/narvii/notice/NoticeListFragment;Lcom/narvii/model/Community;)V

    goto/16 :goto_2

    .line 25
    :pswitch_4
    invoke-direct {p0, p5, p1}, Lcom/narvii/notice/NoticeListFragment$Adapter;->getDefaultNdcLink(Ljava/lang/String;Lcom/narvii/notice/Notice;)Ljava/lang/String;

    move-result-object p3

    .line 26
    new-instance v2, Landroid/content/Intent;

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-direct {v2, v4, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto/16 :goto_2

    :pswitch_5
    const-class p3, Lcom/narvii/influencer/FansListFragment;

    .line 27
    invoke-static {p3}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    .line 28
    iget-object p3, p1, Lcom/narvii/notice/Notice;->objectId:Ljava/lang/String;

    .line 29
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-eqz p5, :cond_7

    const-string p3, "account"

    .line 30
    invoke-virtual {p0, p3}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/account/AccountService;

    .line 31
    invoke-virtual {p3}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object p3

    :cond_7
    const-string p5, "id"

    .line 32
    invoke-virtual {v2, p5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    invoke-virtual {v2, p4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    :pswitch_6
    const/4 p5, 0x5

    .line 34
    iget-object v3, p1, Lcom/narvii/notice/Notice;->objectId:Ljava/lang/String;

    invoke-virtual {p3, p5, v2, v3, v0}, Lcom/narvii/chat/video/VVChatEntryHelper;->getBaseBundle(ILcom/narvii/model/ChatThread;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p5

    .line 35
    invoke-virtual {p3, p5, v1}, Lcom/narvii/chat/video/VVChatEntryHelper;->getLaunchIntent(Landroid/os/Bundle;Z)Landroid/content/Intent;

    move-result-object v2

    goto/16 :goto_2

    .line 36
    :pswitch_7
    invoke-direct {p0, p5, p1}, Lcom/narvii/notice/NoticeListFragment$Adapter;->getDefaultNdcLink(Ljava/lang/String;Lcom/narvii/notice/Notice;)Ljava/lang/String;

    move-result-object p3

    .line 37
    new-instance v2, Landroid/content/Intent;

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-direct {v2, v4, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto/16 :goto_2

    .line 38
    :pswitch_8
    iget-object p5, p1, Lcom/narvii/notice/Notice;->objectId:Ljava/lang/String;

    invoke-virtual {p3, v8, v2, p5, v0}, Lcom/narvii/chat/video/VVChatEntryHelper;->getBaseBundle(ILcom/narvii/model/ChatThread;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p5

    .line 39
    invoke-virtual {p3, p5, v1}, Lcom/narvii/chat/video/VVChatEntryHelper;->getLaunchIntent(Landroid/os/Bundle;Z)Landroid/content/Intent;

    move-result-object v2

    goto/16 :goto_2

    .line 40
    :pswitch_9
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p5, 0x6a

    invoke-static {p5}, Lcom/narvii/model/NVObject;->objectTypeName(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "/?notification-id="

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/narvii/notice/Notice;->id()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 41
    new-instance v2, Landroid/content/Intent;

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-direct {v2, v4, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto/16 :goto_2

    .line 42
    :pswitch_a
    iget-object p5, p1, Lcom/narvii/notice/Notice;->objectId:Ljava/lang/String;

    invoke-virtual {p3, v7, v2, p5, v0}, Lcom/narvii/chat/video/VVChatEntryHelper;->getBaseBundle(ILcom/narvii/model/ChatThread;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p5

    .line 43
    invoke-virtual {p3, p5, v1}, Lcom/narvii/chat/video/VVChatEntryHelper;->getLaunchIntent(Landroid/os/Bundle;Z)Landroid/content/Intent;

    move-result-object v2

    goto/16 :goto_2

    .line 44
    :pswitch_b
    iget-object p5, p1, Lcom/narvii/notice/Notice;->objectId:Ljava/lang/String;

    invoke-virtual {p3, v1, v2, p5, v0}, Lcom/narvii/chat/video/VVChatEntryHelper;->getBaseBundle(ILcom/narvii/model/ChatThread;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p5

    .line 45
    invoke-virtual {p3, p5, v1}, Lcom/narvii/chat/video/VVChatEntryHelper;->getLaunchIntent(Landroid/os/Bundle;Z)Landroid/content/Intent;

    move-result-object v2

    goto/16 :goto_2

    .line 46
    :pswitch_c
    invoke-direct {p0, p5, p1}, Lcom/narvii/notice/NoticeListFragment$Adapter;->getDefaultNdcLink(Ljava/lang/String;Lcom/narvii/notice/Notice;)Ljava/lang/String;

    move-result-object p3

    .line 47
    new-instance v2, Landroid/content/Intent;

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-direct {v2, v4, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto/16 :goto_2

    .line 48
    :pswitch_d
    invoke-direct {p0, p5, p1}, Lcom/narvii/notice/NoticeListFragment$Adapter;->getDefaultNdcLink(Ljava/lang/String;Lcom/narvii/notice/Notice;)Ljava/lang/String;

    move-result-object p3

    .line 49
    new-instance v2, Landroid/content/Intent;

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-direct {v2, v4, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto/16 :goto_2

    .line 50
    :pswitch_e
    iget p3, p1, Lcom/narvii/notice/Notice;->objectType:I

    if-ne p3, v8, :cond_9

    .line 51
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p5, p1, Lcom/narvii/notice/Notice;->ndcId:I

    if-nez p5, :cond_8

    move-object v5, v6

    :cond_8
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p1, Lcom/narvii/notice/Notice;->objectId:Ljava/lang/String;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p5, p1, Lcom/narvii/notice/Notice;->parentType:I

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p1, Lcom/narvii/notice/Notice;->parentId:Ljava/lang/String;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 52
    new-instance v2, Landroid/content/Intent;

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-direct {v2, v4, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p3, "show_reply"

    .line 53
    invoke-virtual {v2, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_2

    .line 54
    :cond_9
    invoke-direct {p0, p5, p1}, Lcom/narvii/notice/NoticeListFragment$Adapter;->getDefaultNdcLink(Ljava/lang/String;Lcom/narvii/notice/Notice;)Ljava/lang/String;

    move-result-object p3

    .line 55
    new-instance v2, Landroid/content/Intent;

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-direct {v2, v4, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto/16 :goto_2

    .line 56
    :cond_a
    :pswitch_f
    iget p3, p1, Lcom/narvii/notice/Notice;->parentType:I

    if-nez p3, :cond_b

    const-string p3, "user-profile"

    goto :goto_1

    .line 57
    :cond_b
    invoke-static {p3}, Lcom/narvii/model/NVObject;->objectTypeName(I)Ljava/lang/String;

    move-result-object p3

    .line 58
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p1, Lcom/narvii/notice/Notice;->parentId:Ljava/lang/String;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 59
    iget v3, p1, Lcom/narvii/notice/Notice;->type:I

    if-eq v3, v8, :cond_c

    if-ne v3, v7, :cond_e

    .line 60
    :cond_c
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p5, p1, Lcom/narvii/notice/Notice;->ndcId:I

    if-nez p5, :cond_d

    move-object v5, v6

    :cond_d
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p1, Lcom/narvii/notice/Notice;->objectId:Ljava/lang/String;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p5, p1, Lcom/narvii/notice/Notice;->parentType:I

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p1, Lcom/narvii/notice/Notice;->parentId:Ljava/lang/String;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 61
    :cond_e
    new-instance v2, Landroid/content/Intent;

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-direct {v2, v4, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_2

    .line 62
    :cond_f
    :pswitch_10
    invoke-direct {p0, p5, p1}, Lcom/narvii/notice/NoticeListFragment$Adapter;->getDefaultNdcLink(Ljava/lang/String;Lcom/narvii/notice/Notice;)Ljava/lang/String;

    move-result-object p3

    .line 63
    new-instance v2, Landroid/content/Intent;

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-direct {v2, v4, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_2

    .line 64
    :cond_10
    :pswitch_11
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "user-profile/"

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/narvii/notice/Notice;->uid()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 65
    new-instance v2, Landroid/content/Intent;

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-direct {v2, v4, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :goto_2
    :try_start_0
    const-string p3, "navigator"

    .line 66
    invoke-virtual {p0, p3}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/navigator/Navigator;

    .line 67
    invoke-interface {p3, v2}, Lcom/narvii/navigator/Navigator;->intentMapping(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p3

    .line 68
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p5

    if-nez p5, :cond_11

    .line 69
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to open "

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", type="

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/narvii/notice/Notice;->type:I

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", objectType="

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/narvii/notice/Notice;->objectType:I

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 70
    :cond_11
    invoke-virtual {p3, p4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p5

    if-nez p5, :cond_12

    .line 71
    invoke-virtual {p3, p4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_12
    const-string p4, "__communityId"

    .line 72
    iget p5, p1, Lcom/narvii/notice/Notice;->contextNdcId:I

    invoke-virtual {p3, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 73
    iget p4, p1, Lcom/narvii/notice/Notice;->ndcId:I

    if-nez p4, :cond_13

    const-string p4, "fromHeadline"

    .line 74
    invoke-virtual {p3, p4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_13
    const-string p4, "__interactionScope"

    .line 75
    iget p5, p1, Lcom/narvii/notice/Notice;->ndcId:I

    if-nez p5, :cond_14

    move p2, v1

    :cond_14
    invoke-virtual {p3, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 76
    invoke-static {p0, p3}, Lcom/narvii/notice/NoticeListFragment$Adapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p2, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 77
    iget-object p2, p2, Lcom/narvii/notice/NoticeListFragment;->readList:Ljava/util/Set;

    iget-object p1, p1, Lcom/narvii/notice/Notice;->notificationId:Ljava/lang/String;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_e
        :pswitch_e
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_10
        :pswitch_10
        :pswitch_10
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1a
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3c
        :pswitch_5
        :pswitch_11
        :pswitch_d
        :pswitch_c
        :pswitch_d
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x45
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/notice/Notice;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 7
    .line 8
    check-cast p3, Lcom/narvii/notice/Notice;

    .line 9
    const/4 p2, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p3, p2}, Lcom/narvii/notice/NoticeListFragment;->delete(Lcom/narvii/notice/Notice;Z)V

    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 18
    move-result p1

    .line 19
    return p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 3
    .line 4
    instance-of v0, v0, Lcom/narvii/notice/Notice;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    .line 11
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/notice/NoticeListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/notice/NoticeListFragment$Adapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/notice/NoticeListResponse;I)V

    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/notice/NoticeListResponse;I)V
    .locals 4

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    const-string p3, "start0"

    .line 3
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "push"

    .line 4
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/pushservice/PushService;

    iget-object p3, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 5
    iget p3, p3, Lcom/narvii/notice/NoticeListFragment;->cid:I

    const/4 v0, 0x1

    invoke-virtual {p1, p3, v0}, Lcom/narvii/pushservice/PushService;->dismissNotification(II)V

    const-string p1, "account"

    .line 6
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 7
    iget p3, p2, Lcom/narvii/notice/NoticeListResponse;->notificationCount:I

    if-nez p3, :cond_0

    iget-object p3, p2, Lcom/narvii/notice/NoticeListResponse;->notificationList:Ljava/util/List;

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    iget p3, p2, Lcom/narvii/notice/NoticeListResponse;->notificationCount:I

    :goto_0
    iget-object v1, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 8
    iget v1, v1, Lcom/narvii/notice/NoticeListFragment;->cid:I

    if-nez v1, :cond_1

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-static {v2}, Lcom/narvii/util/DateTimeFormatter;->parseISO8601(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "-noticeListResponse"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "globalNotificationCount"

    invoke-static {v2, v1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 10
    iget v1, v1, Lcom/narvii/notice/NoticeListFragment;->cid:I

    iget-object v2, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-virtual {p1, v1, p3, v2, v0}, Lcom/narvii/account/AccountService;->updateNotificationCount(IILjava/lang/String;Z)V

    .line 11
    iget-object p2, p2, Lcom/narvii/notice/NoticeListResponse;->lastCheckTime:Ljava/util/Date;

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 12
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object p2, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    iget-wide v2, p2, Lcom/narvii/notice/NoticeListFragment;->readTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p3, Lcom/narvii/notice/NoticeListFragment;->readTime:J

    .line 13
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object p2

    .line 14
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    iget-object p3, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    iget p3, p3, Lcom/narvii/notice/NoticeListFragment;->cid:I

    const-string v0, "notificationReadTime"

    invoke-virtual {p1, p3, v0}, Lcom/narvii/account/AccountService;->getPrefsKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    iget-wide v0, p3, Lcom/narvii/notice/NoticeListFragment;->readTime:J

    invoke-interface {p2, p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 15
    invoke-virtual {p0}, Lcom/narvii/notice/NoticeListFragment$Adapter;->notifyDataSetChanged()V

    :cond_2
    iget-object p1, p0, Lcom/narvii/notice/NoticeListFragment$Adapter;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 16
    invoke-virtual {p1}, Lcom/narvii/notice/NoticeListFragment;->requestCheckNotification()V

    :cond_3
    return-void
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/notice/NoticeListResponse;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/notice/NoticeListResponse;

    return-object v0
.end method

.method protected supportNVTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
