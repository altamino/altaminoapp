.class public Lcom/narvii/paging/storage/ListPageStorage;
.super Lcom/narvii/paging/storage/PageStorage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/narvii/model/NVObject;",
        ">",
        "Lcom/narvii/paging/storage/PageStorage<",
        "TT;>;"
    }
.end annotation


# instance fields
.field pageData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/paging/storage/PageStorage;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-object v0, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    .line 7
    return-void
.end method

.method private mergeTop(Ljava/util/ArrayList;Ljava/util/List;[Z)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;[Z)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    return-object p1

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    aput-boolean v2, p3, v1

    .line 14
    .line 15
    new-instance p1, Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 19
    return-object p1

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 23
    move-result v0

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    aput-boolean v2, p3, v1

    .line 28
    .line 29
    new-instance p1, Ljava/util/ArrayList;

    .line 30
    .line 31
    .line 32
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 33
    return-object p1

    .line 34
    .line 35
    .line 36
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 37
    move-result v0

    .line 38
    .line 39
    .line 40
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 41
    move-result v3

    .line 42
    .line 43
    if-lt v0, v3, :cond_6

    .line 44
    .line 45
    .line 46
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 47
    move-result v0

    .line 48
    sub-int/2addr v0, v2

    .line 49
    .line 50
    .line 51
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 52
    move-result-object v3

    .line 53
    .line 54
    check-cast v3, Lcom/narvii/model/NVObject;

    .line 55
    move v4, v1

    .line 56
    .line 57
    .line 58
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 59
    move-result v5

    .line 60
    .line 61
    if-ge v4, v5, :cond_5

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 65
    move-result-object v5

    .line 66
    .line 67
    check-cast v5, Lcom/narvii/model/NVObject;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 71
    move-result-object v6

    .line 72
    .line 73
    .line 74
    invoke-virtual {v5}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 75
    move-result-object v5

    .line 76
    .line 77
    .line 78
    invoke-static {v6, v5}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 79
    move-result v5

    .line 80
    .line 81
    if-eqz v5, :cond_4

    .line 82
    .line 83
    new-instance p3, Ljava/util/ArrayList;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 87
    move-result v1

    .line 88
    sub-int/2addr v0, v4

    .line 89
    add-int/2addr v1, v0

    .line 90
    .line 91
    .line 92
    invoke-direct {p3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 96
    add-int/2addr v4, v2

    .line 97
    .line 98
    .line 99
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 100
    move-result p2

    .line 101
    .line 102
    if-ge v4, p2, :cond_3

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 106
    move-result-object p2

    .line 107
    .line 108
    check-cast p2, Lcom/narvii/model/NVObject;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    add-int/lit8 v4, v4, 0x1

    .line 114
    goto :goto_1

    .line 115
    :cond_3
    return-object p3

    .line 116
    .line 117
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 118
    goto :goto_0

    .line 119
    .line 120
    :cond_5
    aput-boolean v2, p3, v1

    .line 121
    .line 122
    new-instance p3, Ljava/util/ArrayList;

    .line 123
    .line 124
    .line 125
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 129
    .line 130
    .line 131
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 132
    return-object p3

    .line 133
    .line 134
    .line 135
    :cond_6
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 136
    move-result-object v0

    .line 137
    .line 138
    check-cast v0, Lcom/narvii/model/NVObject;

    .line 139
    move v3, v1

    .line 140
    .line 141
    .line 142
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 143
    move-result v4

    .line 144
    .line 145
    if-ge v3, v4, :cond_a

    .line 146
    .line 147
    .line 148
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 149
    move-result-object v4

    .line 150
    .line 151
    check-cast v4, Lcom/narvii/model/NVObject;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 155
    move-result-object v5

    .line 156
    .line 157
    .line 158
    invoke-virtual {v4}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 159
    move-result-object v4

    .line 160
    .line 161
    .line 162
    invoke-static {v5, v4}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 163
    move-result v4

    .line 164
    .line 165
    if-eqz v4, :cond_9

    .line 166
    .line 167
    if-nez v3, :cond_7

    .line 168
    return-object p1

    .line 169
    .line 170
    :cond_7
    new-instance p3, Ljava/util/ArrayList;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 174
    move-result v0

    .line 175
    add-int/2addr v0, v3

    .line 176
    .line 177
    .line 178
    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 179
    .line 180
    :goto_3
    if-ge v1, v3, :cond_8

    .line 181
    .line 182
    .line 183
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 184
    move-result-object v0

    .line 185
    .line 186
    check-cast v0, Lcom/narvii/model/NVObject;

    .line 187
    .line 188
    .line 189
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    .line 191
    add-int/lit8 v1, v1, 0x1

    .line 192
    goto :goto_3

    .line 193
    .line 194
    .line 195
    :cond_8
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 196
    return-object p3

    .line 197
    .line 198
    :cond_9
    add-int/lit8 v3, v3, 0x1

    .line 199
    goto :goto_2

    .line 200
    .line 201
    :cond_a
    aput-boolean v2, p3, v1

    .line 202
    .line 203
    new-instance p3, Ljava/util/ArrayList;

    .line 204
    .line 205
    .line 206
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 210
    .line 211
    .line 212
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 213
    return-object p3
.end method


# virtual methods
.method public appendPage(Ljava/util/List;Lcom/narvii/paging/storage/PageOperationCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/narvii/paging/storage/PageOperationCallback;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 7
    move-result v0

    .line 8
    .line 9
    if-nez v0, :cond_3

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    .line 12
    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    new-instance p1, Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    iput-object p1, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    .line 21
    .line 22
    :cond_1
    if-eqz p2, :cond_2

    .line 23
    .line 24
    .line 25
    invoke-interface {p2}, Lcom/narvii/paging/storage/PageOperationCallback;->onEmptyPageAppended()V

    .line 26
    :cond_2
    return-void

    .line 27
    .line 28
    :cond_3
    iget-object v0, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    .line 29
    .line 30
    if-nez v0, :cond_4

    .line 31
    .line 32
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    .line 34
    .line 35
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    iput-object v0, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    .line 38
    .line 39
    :cond_4
    iget-object v0, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 43
    .line 44
    if-eqz p2, :cond_5

    .line 45
    .line 46
    .line 47
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 48
    move-result p1

    .line 49
    .line 50
    .line 51
    invoke-interface {p2, p1}, Lcom/narvii/paging/storage/PageOperationCallback;->onPageAppended(I)V

    .line 52
    :cond_5
    return-void
.end method

.method public get(I)Lcom/narvii/model/NVObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/NVObject;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/narvii/paging/storage/ListPageStorage;->get(I)Lcom/narvii/model/NVObject;

    move-result-object p1

    return-object p1
.end method

.method public getDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getItemById(Ljava/lang/String;)Lcom/narvii/model/NVObject;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_3

    .line 4
    .line 5
    iget-object v1, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    goto :goto_2

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    .line 11
    :goto_0
    iget-object v2, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 15
    move-result v2

    .line 16
    .line 17
    if-ge v1, v2, :cond_3

    .line 18
    .line 19
    iget-object v2, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    check-cast v2, Lcom/narvii/model/NVObject;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    .line 32
    invoke-static {p1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    move-result v2

    .line 34
    .line 35
    if-nez v2, :cond_2

    .line 36
    .line 37
    iget-object v2, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    move-result-object v2

    .line 42
    .line 43
    instance-of v2, v2, Lcom/narvii/model/RefHost;

    .line 44
    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    iget-object v2, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 51
    move-result-object v2

    .line 52
    .line 53
    check-cast v2, Lcom/narvii/model/RefHost;

    .line 54
    .line 55
    .line 56
    invoke-interface {v2}, Lcom/narvii/model/RefHost;->refId()Ljava/lang/String;

    .line 57
    move-result-object v2

    .line 58
    .line 59
    .line 60
    invoke-static {p1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    move-result v2

    .line 62
    .line 63
    if-eqz v2, :cond_1

    .line 64
    goto :goto_1

    .line 65
    .line 66
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 67
    goto :goto_0

    .line 68
    .line 69
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 73
    move-result-object p1

    .line 74
    .line 75
    check-cast p1, Lcom/narvii/model/NVObject;

    .line 76
    return-object p1

    .line 77
    :cond_3
    :goto_2
    return-object v0
.end method

.method public getPosition(Lcom/narvii/model/NVObject;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    const/4 v0, -0x1

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    iget-object v1, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    goto :goto_1

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    .line 11
    :goto_0
    iget-object v2, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 15
    move-result v2

    .line 16
    .line 17
    if-ge v1, v2, :cond_2

    .line 18
    .line 19
    iget-object v2, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    check-cast v2, Lcom/narvii/model/NVObject;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 33
    move-result-object v3

    .line 34
    .line 35
    .line 36
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    move-result v2

    .line 38
    .line 39
    if-eqz v2, :cond_1

    .line 40
    return v1

    .line 41
    .line 42
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    :goto_1
    return v0
.end method

.method public initPage(Ljava/util/List;Lcom/narvii/paging/storage/PageOperationCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/narvii/paging/storage/PageOperationCallback;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    .line 15
    .line 16
    :cond_1
    iget-object v0, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 25
    .line 26
    if-eqz p2, :cond_2

    .line 27
    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 30
    move-result p1

    .line 31
    .line 32
    .line 33
    invoke-interface {p2, p1}, Lcom/narvii/paging/storage/PageOperationCallback;->onInitialized(I)V

    .line 34
    :cond_2
    return-void
.end method

.method public prependPage(Ljava/util/List;ZLcom/narvii/paging/storage/PageOperationCallback;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;Z",
            "Lcom/narvii/paging/storage/PageOperationCallback;",
            ")Z"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 8
    move-result v1

    .line 9
    .line 10
    if-eqz v1, :cond_3

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    .line 13
    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    new-instance p1, Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    iput-object p1, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    .line 22
    .line 23
    :cond_1
    if-eqz p3, :cond_2

    .line 24
    .line 25
    .line 26
    invoke-interface {p3}, Lcom/narvii/paging/storage/PageOperationCallback;->onEmptyPagePrepend()V

    .line 27
    :cond_2
    return v0

    .line 28
    :cond_3
    const/4 v1, 0x1

    .line 29
    .line 30
    new-array v1, v1, [Z

    .line 31
    .line 32
    iget-object v2, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    .line 33
    .line 34
    if-nez v2, :cond_4

    .line 35
    .line 36
    new-instance v2, Ljava/util/ArrayList;

    .line 37
    .line 38
    .line 39
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    iput-object v2, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    .line 42
    .line 43
    :cond_4
    if-eqz p2, :cond_6

    .line 44
    .line 45
    iget-object p2, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    .line 46
    .line 47
    .line 48
    invoke-direct {p0, p2, p1, v1}, Lcom/narvii/paging/storage/ListPageStorage;->mergeTop(Ljava/util/ArrayList;Ljava/util/List;[Z)Ljava/util/ArrayList;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    iget-object p2, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 55
    move-result p2

    .line 56
    .line 57
    iput-object p1, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    .line 58
    .line 59
    if-eqz p3, :cond_7

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 63
    move-result v2

    .line 64
    sub-int/2addr v2, p2

    .line 65
    .line 66
    if-nez v2, :cond_5

    .line 67
    .line 68
    .line 69
    invoke-interface {p3}, Lcom/narvii/paging/storage/PageOperationCallback;->onEmptyPagePrepend()V

    .line 70
    goto :goto_0

    .line 71
    .line 72
    .line 73
    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 74
    move-result p1

    .line 75
    sub-int/2addr p1, p2

    .line 76
    .line 77
    .line 78
    invoke-interface {p3, p1}, Lcom/narvii/paging/storage/PageOperationCallback;->onPagePrepend(I)V

    .line 79
    goto :goto_0

    .line 80
    .line 81
    :cond_6
    iget-object p2, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2, v0, p1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 85
    .line 86
    if-eqz p3, :cond_7

    .line 87
    .line 88
    .line 89
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 90
    move-result p1

    .line 91
    .line 92
    .line 93
    invoke-interface {p3, p1}, Lcom/narvii/paging/storage/PageOperationCallback;->onPagePrepend(I)V

    .line 94
    .line 95
    :cond_7
    :goto_0
    aget-boolean p1, v1, v0

    .line 96
    return p1
.end method

.method public remove(I)Lcom/narvii/model/NVObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/NVObject;

    :goto_0
    return-object p1
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/narvii/paging/storage/ListPageStorage;->remove(I)Lcom/narvii/model/NVObject;

    move-result-object p1

    return-object p1
.end method

.method public removeItem(Lcom/narvii/model/NVObject;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    const/4 v0, -0x1

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    iget-object v1, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-static {v1, p1}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 14
    move-result p1

    .line 15
    .line 16
    if-gez p1, :cond_1

    .line 17
    return v0

    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 23
    return p1
.end method

.method public resetPageData()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8
    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

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
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v0

    .line 11
    :goto_0
    return v0
.end method

.method public updateItem(Lcom/narvii/model/NVObject;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    const/4 v0, -0x1

    .line 2
    .line 3
    if-eqz p1, :cond_3

    .line 4
    .line 5
    iget-object v1, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    goto :goto_1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    .line 15
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 16
    move-result v1

    .line 17
    .line 18
    if-gez v1, :cond_1

    .line 19
    return v0

    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    check-cast v0, Lcom/narvii/model/NVObject;

    .line 28
    .line 29
    instance-of v2, v0, Lcom/narvii/model/StrategyObject;

    .line 30
    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    instance-of v2, p1, Lcom/narvii/model/StrategyObject;

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    check-cast v0, Lcom/narvii/model/StrategyObject;

    .line 38
    .line 39
    .line 40
    invoke-interface {v0}, Lcom/narvii/model/StrategyObject;->getStrategyInfo()Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    .line 46
    :try_start_0
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    .line 47
    move-result-object v2

    .line 48
    move-object v3, v2

    .line 49
    .line 50
    check-cast v3, Lcom/narvii/model/StrategyObject;

    .line 51
    .line 52
    .line 53
    invoke-interface {v3, v0}, Lcom/narvii/model/StrategyObject;->setStrategyInfo(Ljava/lang/String;)V

    .line 54
    .line 55
    iget-object v0, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .line 62
    const-string v2, "replace object"

    .line 63
    .line 64
    .line 65
    invoke-static {v2, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    .line 67
    :cond_2
    iget-object v0, p0, Lcom/narvii/paging/storage/ListPageStorage;->pageData:Ljava/util/ArrayList;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 71
    :goto_0
    return v1

    .line 72
    :cond_3
    :goto_1
    return v0
.end method
