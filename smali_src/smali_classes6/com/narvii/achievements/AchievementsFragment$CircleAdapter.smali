.class Lcom/narvii/achievements/AchievementsFragment$CircleAdapter;
.super Lcom/narvii/detail/DetailAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/achievements/AchievementsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CircleAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/detail/DetailAdapter<",
        "Lcom/narvii/achievements/AchievementsItem;",
        "Lcom/narvii/achievements/AchievementsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field achievementsItem:Lcom/narvii/achievements/AchievementsItem;

.field final synthetic this$0:Lcom/narvii/achievements/AchievementsFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/achievements/AchievementsFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/achievements/AchievementsFragment$CircleAdapter;->this$0:Lcom/narvii/achievements/AchievementsFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/detail/DetailAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method protected buildCells(Ljava/util/List;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/achievements/AchievementsFragment$CircleAdapter;->achievementsItem:Lcom/narvii/achievements/AchievementsItem;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Lcom/narvii/achievements/AchievementsFragment;->ACHIEVEMENTS:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_0
    return-void
.end method

.method protected createRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    const-string v2, "/user-profile/"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/narvii/achievements/AchievementsFragment$CircleAdapter;->this$0:Lcom/narvii/achievements/AchievementsFragment;

    .line 17
    .line 18
    const-string v3, "id"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v2, "/achievements"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 42
    move-result-object v0

    .line 43
    return-object v0
.end method

.method protected getCell(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/achievements/AchievementsFragment;->ACHIEVEMENTS:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 3
    .line 4
    if-ne p1, v0, :cond_1

    .line 5
    .line 6
    .line 7
    const p1, 0x7f0d04a9

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    iget-object p2, p0, Lcom/narvii/achievements/AchievementsFragment$CircleAdapter;->this$0:Lcom/narvii/achievements/AchievementsFragment;

    .line 14
    .line 15
    .line 16
    invoke-static {p2}, Lcom/narvii/achievements/AchievementsFragment;->v(Lcom/narvii/achievements/AchievementsFragment;)Z

    .line 17
    move-result p2

    .line 18
    .line 19
    .line 20
    const p3, 0x7f0a09d0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    move-result-object p3

    .line 25
    .line 26
    check-cast p3, Landroid/widget/TextView;

    .line 27
    .line 28
    if-eqz p2, :cond_0

    .line 29
    .line 30
    .line 31
    const v0, 0x7f120d1f

    .line 32
    goto :goto_0

    .line 33
    .line 34
    .line 35
    :cond_0
    const v0, 0x7f120b61

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(I)V

    .line 39
    .line 40
    const-string p3, "config"

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p3}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    move-result-object p3

    .line 45
    .line 46
    check-cast p3, Lcom/narvii/config/ConfigService;

    .line 47
    .line 48
    const-string v0, "stats"

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    check-cast v0, Lcom/narvii/util/stats/StatsService;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p3}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 58
    move-result p3

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p3}, Lcom/narvii/util/stats/StatsService;->getCachedTime(I)I

    .line 62
    move-result p3

    .line 63
    .line 64
    .line 65
    const v0, 0x7f0a07ae

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 69
    move-result-object v0

    .line 70
    .line 71
    check-cast v0, Landroid/widget/TextView;

    .line 72
    .line 73
    iget-object v1, p0, Lcom/narvii/achievements/AchievementsFragment$CircleAdapter;->this$0:Lcom/narvii/achievements/AchievementsFragment;

    .line 74
    .line 75
    iget-object v1, v1, Lcom/narvii/achievements/AchievementsFragment;->numberFormat:Ljava/text/NumberFormat;

    .line 76
    .line 77
    iget-object v2, p0, Lcom/narvii/achievements/AchievementsFragment$CircleAdapter;->achievementsItem:Lcom/narvii/achievements/AchievementsItem;

    .line 78
    .line 79
    iget v2, v2, Lcom/narvii/achievements/AchievementsItem;->secondsSpentOfLast24Hours:I

    .line 80
    add-int/2addr v2, p3

    .line 81
    .line 82
    div-int/lit8 v2, v2, 0x3c

    .line 83
    int-to-long v2, v2

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    .line 87
    move-result-object v1

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    .line 92
    .line 93
    const v0, 0x7f0a07af

    .line 94
    .line 95
    .line 96
    invoke-static {p1, v0, p2}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    .line 97
    .line 98
    .line 99
    const v0, 0x7f0a07b3

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 103
    move-result-object v0

    .line 104
    .line 105
    check-cast v0, Landroid/widget/TextView;

    .line 106
    .line 107
    iget-object v1, p0, Lcom/narvii/achievements/AchievementsFragment$CircleAdapter;->this$0:Lcom/narvii/achievements/AchievementsFragment;

    .line 108
    .line 109
    iget-object v1, v1, Lcom/narvii/achievements/AchievementsFragment;->numberFormat:Ljava/text/NumberFormat;

    .line 110
    .line 111
    iget-object v2, p0, Lcom/narvii/achievements/AchievementsFragment$CircleAdapter;->achievementsItem:Lcom/narvii/achievements/AchievementsItem;

    .line 112
    .line 113
    iget v2, v2, Lcom/narvii/achievements/AchievementsItem;->secondsSpentOfLast7Days:I

    .line 114
    add-int/2addr v2, p3

    .line 115
    .line 116
    div-int/lit8 v2, v2, 0x3c

    .line 117
    int-to-long v2, v2

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    .line 121
    move-result-object p3

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    .line 126
    .line 127
    const p3, 0x7f0a07b4

    .line 128
    .line 129
    .line 130
    invoke-static {p1, p3, p2}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    .line 131
    .line 132
    .line 133
    const p2, 0x7f0a0b79

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 137
    move-result-object p2

    .line 138
    .line 139
    check-cast p2, Landroid/widget/TextView;

    .line 140
    .line 141
    iget-object p3, p0, Lcom/narvii/achievements/AchievementsFragment$CircleAdapter;->this$0:Lcom/narvii/achievements/AchievementsFragment;

    .line 142
    .line 143
    iget-object p3, p3, Lcom/narvii/achievements/AchievementsFragment;->numberFormat:Ljava/text/NumberFormat;

    .line 144
    .line 145
    iget-object v0, p0, Lcom/narvii/achievements/AchievementsFragment$CircleAdapter;->achievementsItem:Lcom/narvii/achievements/AchievementsItem;

    .line 146
    .line 147
    iget v0, v0, Lcom/narvii/achievements/AchievementsItem;->numberOfPostsCreated:I

    .line 148
    int-to-long v0, v0

    .line 149
    .line 150
    .line 151
    invoke-virtual {p3, v0, v1}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    .line 152
    move-result-object p3

    .line 153
    .line 154
    .line 155
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    .line 157
    .line 158
    const p2, 0x7f0a05f1

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 162
    move-result-object p2

    .line 163
    .line 164
    check-cast p2, Landroid/widget/TextView;

    .line 165
    .line 166
    iget-object p3, p0, Lcom/narvii/achievements/AchievementsFragment$CircleAdapter;->this$0:Lcom/narvii/achievements/AchievementsFragment;

    .line 167
    .line 168
    iget-object p3, p3, Lcom/narvii/achievements/AchievementsFragment;->numberFormat:Ljava/text/NumberFormat;

    .line 169
    .line 170
    iget-object v0, p0, Lcom/narvii/achievements/AchievementsFragment$CircleAdapter;->achievementsItem:Lcom/narvii/achievements/AchievementsItem;

    .line 171
    .line 172
    iget v0, v0, Lcom/narvii/achievements/AchievementsItem;->numberOfMembersCount:I

    .line 173
    int-to-long v0, v0

    .line 174
    .line 175
    .line 176
    invoke-virtual {p3, v0, v1}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    .line 177
    move-result-object p3

    .line 178
    .line 179
    .line 180
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    return-object p1

    .line 182
    .line 183
    .line 184
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/detail/DetailAdapter;->getCell(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 185
    move-result-object p1

    .line 186
    return-object p1
.end method

.method protected getCellTypes(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/detail/DetailAdapter$CellType;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailAdapter;->getCellTypes(Ljava/util/List;)V

    .line 4
    .line 5
    sget-object v0, Lcom/narvii/achievements/AchievementsFragment;->ACHIEVEMENTS:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 6
    .line 7
    .line 8
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    return-void
.end method

.method public objectType()Ljava/lang/Class;
    .locals 1

    const-class v0, Lcom/narvii/achievements/AchievementsItem;

    return-object v0
.end method

.method protected onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/detail/DetailAdapter;->onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 8
    const/4 p3, 0x1

    .line 9
    .line 10
    .line 11
    invoke-static {p1, p2, p3}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 16
    return-void
.end method

.method protected onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/achievements/AchievementsResponse;)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/DetailAdapter;->onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ObjectResponse;)V

    .line 3
    iget-object p1, p2, Lcom/narvii/achievements/AchievementsResponse;->achievements:Lcom/narvii/achievements/AchievementsItem;

    iput-object p1, p0, Lcom/narvii/achievements/AchievementsFragment$CircleAdapter;->achievementsItem:Lcom/narvii/achievements/AchievementsItem;

    .line 4
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected bridge synthetic onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ObjectResponse;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/achievements/AchievementsResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/achievements/AchievementsFragment$CircleAdapter;->onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/achievements/AchievementsResponse;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "achievementsItem"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    const-class v0, Lcom/narvii/achievements/AchievementsItem;

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    check-cast p1, Lcom/narvii/achievements/AchievementsItem;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/narvii/achievements/AchievementsFragment$CircleAdapter;->achievementsItem:Lcom/narvii/achievements/AchievementsItem;

    .line 20
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/detail/DetailAdapter;->onSaveInstanceState()Landroid/os/Bundle;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/achievements/AchievementsFragment$CircleAdapter;->achievementsItem:Lcom/narvii/achievements/AchievementsItem;

    .line 7
    .line 8
    .line 9
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    const-string v2, "achievementsItem"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    return-object v0
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1

    const-class v0, Lcom/narvii/achievements/AchievementsResponse;

    return-object v0
.end method

.method public setObject(Lcom/narvii/achievements/AchievementsItem;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/narvii/achievements/AchievementsResponse;

    invoke-direct {v0}, Lcom/narvii/achievements/AchievementsResponse;-><init>()V

    iput-object p1, v0, Lcom/narvii/achievements/AchievementsResponse;->achievements:Lcom/narvii/achievements/AchievementsItem;

    .line 3
    invoke-virtual {p0, v0}, Lcom/narvii/detail/DetailAdapter;->setResponse(Lcom/narvii/model/api/ObjectResponse;)V

    return-void
.end method

.method public bridge synthetic setObject(Lcom/narvii/model/NVObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/achievements/AchievementsItem;

    invoke-virtual {p0, p1}, Lcom/narvii/achievements/AchievementsFragment$CircleAdapter;->setObject(Lcom/narvii/achievements/AchievementsItem;)V

    return-void
.end method
