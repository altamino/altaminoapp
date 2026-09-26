.class public Lcom/narvii/catalog/AllItemAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


# instance fields
.field public count:I

.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Item;",
            ">;"
        }
    .end annotation
.end field

.field final listener:Lcom/narvii/util/http/ApiResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/http/ApiResponseListener<",
            "Lcom/narvii/model/api/ItemListResponse;",
            ">;"
        }
    .end annotation
.end field

.field public showLoading:Z

.field final uid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    const/4 p1, -0x1

    .line 5
    .line 6
    iput p1, p0, Lcom/narvii/catalog/AllItemAdapter;->count:I

    .line 7
    .line 8
    new-instance p1, Lcom/narvii/catalog/AllItemAdapter$1;

    .line 9
    .line 10
    const-class v0, Lcom/narvii/model/api/ItemListResponse;

    .line 11
    .line 12
    .line 13
    invoke-direct {p1, p0, v0}, Lcom/narvii/catalog/AllItemAdapter$1;-><init>(Lcom/narvii/catalog/AllItemAdapter;Ljava/lang/Class;)V

    .line 14
    .line 15
    iput-object p1, p0, Lcom/narvii/catalog/AllItemAdapter;->listener:Lcom/narvii/util/http/ApiResponseListener;

    .line 16
    .line 17
    iput-object p2, p0, Lcom/narvii/catalog/AllItemAdapter;->uid:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/catalog/AllItemAdapter;->list:Ljava/util/List;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/narvii/catalog/AllItemAdapter;->showLoading:Z

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    :cond_0
    move v1, v2

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    :cond_2
    :goto_0
    return v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    move-object p1, p0

    .line 4
    goto :goto_0

    .line 5
    .line 6
    :cond_0
    sget-object p1, Lcom/narvii/detail/DetailAdapter;->DIVIDER:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 7
    :goto_0
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 6
    move-result p1

    .line 7
    int-to-long v0, p1

    .line 8
    goto :goto_0

    .line 9
    .line 10
    :cond_0
    const-wide/16 v0, 0x3

    .line 11
    :goto_0
    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .line 1
    .line 2
    if-nez p1, :cond_b

    .line 3
    .line 4
    .line 5
    const p1, 0x7f0d008b

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    const p2, 0x7f0a0799

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    check-cast p2, Landroid/widget/TextView;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 22
    move-result-object p3

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/catalog/AllItemAdapter;->uid:Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    move-result v0

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    .line 33
    const v0, 0x7f120129

    .line 34
    goto :goto_0

    .line 35
    .line 36
    .line 37
    :cond_0
    const v0, 0x7f12012a

    .line 38
    .line 39
    .line 40
    :goto_0
    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 41
    move-result-object p3

    .line 42
    .line 43
    iget v0, p0, Lcom/narvii/catalog/AllItemAdapter;->count:I

    .line 44
    const/4 v1, 0x0

    .line 45
    .line 46
    if-gez v0, :cond_1

    .line 47
    move-object v0, v1

    .line 48
    goto :goto_1

    .line 49
    .line 50
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    const-string v2, ""

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    iget v2, p0, Lcom/narvii/catalog/AllItemAdapter;->count:I

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    :goto_1
    iget-object v2, p0, Lcom/narvii/catalog/AllItemAdapter;->uid:Ljava/lang/String;

    .line 70
    const/4 v3, 0x1

    .line 71
    const/4 v4, 0x0

    .line 72
    .line 73
    if-nez v2, :cond_2

    .line 74
    move v2, v3

    .line 75
    goto :goto_2

    .line 76
    :cond_2
    move v2, v4

    .line 77
    .line 78
    .line 79
    :goto_2
    invoke-static {p3, v0, v2}, Lcom/narvii/catalog/CategoryListAdapter;->buildLabel(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/CharSequence;

    .line 80
    move-result-object p3

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    .line 85
    .line 86
    const p2, 0x7f0a0e51

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 90
    move-result-object p2

    .line 91
    .line 92
    check-cast p2, Landroid/widget/TextView;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    .line 97
    iget-object p2, p0, Lcom/narvii/catalog/AllItemAdapter;->list:Ljava/util/List;

    .line 98
    .line 99
    if-nez p2, :cond_3

    .line 100
    .line 101
    iget p2, p0, Lcom/narvii/catalog/AllItemAdapter;->count:I

    .line 102
    goto :goto_3

    .line 103
    .line 104
    .line 105
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 106
    move-result p2

    .line 107
    .line 108
    :goto_3
    iget-object p3, p0, Lcom/narvii/catalog/AllItemAdapter;->uid:Ljava/lang/String;

    .line 109
    .line 110
    if-nez p3, :cond_4

    .line 111
    .line 112
    sget-object v1, Lcom/narvii/catalog/CategoryListAdapter;->EMPTY_GOLD:Lcom/narvii/model/Item;

    .line 113
    .line 114
    .line 115
    :cond_4
    const p3, 0x7f0a0757

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 119
    move-result-object p3

    .line 120
    .line 121
    check-cast p3, Lcom/narvii/widget/CardView;

    .line 122
    .line 123
    .line 124
    const v0, 0x7f0a0758

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 128
    move-result-object v0

    .line 129
    .line 130
    check-cast v0, Lcom/narvii/widget/CardView;

    .line 131
    .line 132
    .line 133
    const v2, 0x7f0a0759

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 137
    move-result-object v2

    .line 138
    .line 139
    check-cast v2, Lcom/narvii/widget/CardView;

    .line 140
    const/4 v5, 0x4

    .line 141
    .line 142
    if-lez p2, :cond_5

    .line 143
    move v6, v4

    .line 144
    goto :goto_4

    .line 145
    :cond_5
    move v6, v5

    .line 146
    .line 147
    .line 148
    :goto_4
    invoke-virtual {p3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 149
    .line 150
    if-le p2, v3, :cond_6

    .line 151
    move v6, v4

    .line 152
    goto :goto_5

    .line 153
    :cond_6
    move v6, v5

    .line 154
    .line 155
    .line 156
    :goto_5
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 157
    const/4 v6, 0x2

    .line 158
    .line 159
    if-le p2, v6, :cond_7

    .line 160
    move v5, v4

    .line 161
    .line 162
    .line 163
    :cond_7
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 164
    .line 165
    iget-object v5, p0, Lcom/narvii/catalog/AllItemAdapter;->list:Ljava/util/List;

    .line 166
    .line 167
    if-eqz v5, :cond_8

    .line 168
    .line 169
    if-lez p2, :cond_8

    .line 170
    .line 171
    .line 172
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 173
    move-result-object v4

    .line 174
    .line 175
    check-cast v4, Lcom/narvii/model/Item;

    .line 176
    goto :goto_6

    .line 177
    :cond_8
    move-object v4, v1

    .line 178
    .line 179
    .line 180
    :goto_6
    invoke-virtual {p3, v4}, Lcom/narvii/widget/CardView;->setItem(Lcom/narvii/model/Item;)V

    .line 181
    .line 182
    iget-object p3, p0, Lcom/narvii/catalog/AllItemAdapter;->list:Ljava/util/List;

    .line 183
    .line 184
    if-eqz p3, :cond_9

    .line 185
    .line 186
    if-le p2, v3, :cond_9

    .line 187
    .line 188
    .line 189
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 190
    move-result-object p3

    .line 191
    .line 192
    check-cast p3, Lcom/narvii/model/Item;

    .line 193
    goto :goto_7

    .line 194
    :cond_9
    move-object p3, v1

    .line 195
    .line 196
    .line 197
    :goto_7
    invoke-virtual {v0, p3}, Lcom/narvii/widget/CardView;->setItem(Lcom/narvii/model/Item;)V

    .line 198
    .line 199
    iget-object p3, p0, Lcom/narvii/catalog/AllItemAdapter;->list:Ljava/util/List;

    .line 200
    .line 201
    if-eqz p3, :cond_a

    .line 202
    .line 203
    if-le p2, v6, :cond_a

    .line 204
    .line 205
    .line 206
    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 207
    move-result-object p2

    .line 208
    move-object v1, p2

    .line 209
    .line 210
    check-cast v1, Lcom/narvii/model/Item;

    .line 211
    .line 212
    .line 213
    :cond_a
    invoke-virtual {v2, v1}, Lcom/narvii/widget/CardView;->setItem(Lcom/narvii/model/Item;)V

    .line 214
    return-object p1

    .line 215
    .line 216
    .line 217
    :cond_b
    const p1, 0x7f0d04e5

    .line 218
    .line 219
    .line 220
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 221
    move-result-object p1

    .line 222
    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onAttach()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/catalog/AllItemAdapter;->list:Ljava/util/List;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/catalog/AllItemAdapter;->sendReqeust()V

    .line 11
    :cond_0
    return-void
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->refreshMonitorStart(ILcom/narvii/util/Callback;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/catalog/AllItemAdapter;->sendReqeust()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->refreshMonitorEnd()V

    .line 10
    return-void
.end method

.method sendReqeust()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "/item"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/catalog/AllItemAdapter;->uid:Ljava/lang/String;

    .line 13
    .line 14
    const-string v2, "type"

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    const-string v1, "catalog-all"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    const-string v1, "user-all"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 28
    .line 29
    const-string v1, "uid"

    .line 30
    .line 31
    iget-object v2, p0, Lcom/narvii/catalog/AllItemAdapter;->uid:Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 35
    :goto_0
    const/4 v1, 0x0

    .line 36
    .line 37
    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    const-string v2, "start"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 45
    const/4 v1, 0x4

    .line 46
    .line 47
    .line 48
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    const-string v2, "size"

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 55
    .line 56
    const-string v1, "cv"

    .line 57
    .line 58
    const-string v2, "1.2"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 62
    .line 63
    const-string v1, "api"

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 67
    move-result-object v1

    .line 68
    .line 69
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    iget-object v2, p0, Lcom/narvii/catalog/AllItemAdapter;->listener:Lcom/narvii/util/http/ApiResponseListener;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 79
    return-void
.end method
