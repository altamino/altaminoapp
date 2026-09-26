.class public abstract Lcom/narvii/master/search/trending/FlowLayoutAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/narvii/list/AdriftAdapter;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFlowLayoutAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FlowLayoutAdapter.kt\ncom/narvii/master/search/trending/FlowLayoutAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,86:1\n1864#2,3:87\n*S KotlinDebug\n*F\n+ 1 FlowLayoutAdapter.kt\ncom/narvii/master/search/trending/FlowLayoutAdapter\n*L\n69#1:87,3\n*E\n"
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 9
    .line 10
    new-instance p1, Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    iput-object p1, p0, Lcom/narvii/master/search/trending/FlowLayoutAdapter;->list:Ljava/util/List;

    .line 16
    return-void
.end method


# virtual methods
.method public abstract createChildView(Landroid/view/ViewGroup;)Landroid/view/View;
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method protected createMoreButton(Lcom/narvii/util/layouts/NVFlowLayout;)Landroid/view/View;
    .locals 1
    .param p1    # Lcom/narvii/util/layouts/NVFlowLayout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "flowLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/search/trending/FlowLayoutAdapter;->list:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    xor-int/lit8 v0, v0, 0x1

    .line 9
    return v0
.end method

.method protected final getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/search/trending/FlowLayoutAdapter;->list:Ljava/util/List;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0d0051

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 7
    move-result-object p2

    .line 8
    .line 9
    .line 10
    const p3, 0x7f0a05de

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object p3

    .line 15
    .line 16
    check-cast p3, Lcom/narvii/util/layouts/NVFlowLayout;

    .line 17
    .line 18
    .line 19
    invoke-static {p3}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p3}, Lcom/narvii/master/search/trending/FlowLayoutAdapter;->updateFlowLayout(Lcom/narvii/util/layouts/NVFlowLayout;)V

    .line 23
    .line 24
    const-string v0, "more_view"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    .line 33
    invoke-virtual {p3, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 34
    .line 35
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    .line 36
    .line 37
    .line 38
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 42
    move-result v3

    .line 43
    const/4 v4, 0x0

    .line 44
    move v5, v4

    .line 45
    .line 46
    .line 47
    :goto_0
    const v6, 0x7f0a05df

    .line 48
    .line 49
    if-ge v5, v3, :cond_2

    .line 50
    .line 51
    .line 52
    invoke-virtual {p3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 53
    move-result-object v7

    .line 54
    .line 55
    .line 56
    invoke-virtual {v7, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 57
    move-result-object v6

    .line 58
    .line 59
    if-eqz v6, :cond_1

    .line 60
    .line 61
    .line 62
    invoke-static {v7}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 68
    goto :goto_0

    .line 69
    .line 70
    :cond_2
    iget-object v3, p0, Lcom/narvii/master/search/trending/FlowLayoutAdapter;->list:Ljava/util/List;

    .line 71
    .line 72
    .line 73
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 74
    move-result v3

    .line 75
    .line 76
    .line 77
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 78
    move-result v5

    .line 79
    .line 80
    if-ge v3, v5, :cond_4

    .line 81
    .line 82
    .line 83
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 84
    move-result-object p1

    .line 85
    move v3, v4

    .line 86
    .line 87
    .line 88
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    move-result v5

    .line 90
    .line 91
    if-eqz v5, :cond_5

    .line 92
    .line 93
    .line 94
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    move-result-object v5

    .line 96
    .line 97
    check-cast v5, Landroid/view/View;

    .line 98
    .line 99
    iget-object v6, p0, Lcom/narvii/master/search/trending/FlowLayoutAdapter;->list:Ljava/util/List;

    .line 100
    .line 101
    .line 102
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 103
    move-result v6

    .line 104
    .line 105
    if-lt v3, v6, :cond_3

    .line 106
    .line 107
    .line 108
    invoke-virtual {p3, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 109
    .line 110
    .line 111
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 112
    .line 113
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 114
    goto :goto_1

    .line 115
    .line 116
    :cond_4
    iget-object v3, p0, Lcom/narvii/master/search/trending/FlowLayoutAdapter;->list:Ljava/util/List;

    .line 117
    .line 118
    .line 119
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 120
    move-result v3

    .line 121
    .line 122
    .line 123
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 124
    move-result v5

    .line 125
    .line 126
    if-le v3, v5, :cond_5

    .line 127
    .line 128
    iget-object v3, p0, Lcom/narvii/master/search/trending/FlowLayoutAdapter;->list:Ljava/util/List;

    .line 129
    .line 130
    .line 131
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 132
    move-result v3

    .line 133
    .line 134
    .line 135
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 136
    move-result v5

    .line 137
    sub-int/2addr v3, v5

    .line 138
    move v5, v4

    .line 139
    .line 140
    :goto_2
    if-ge v5, v3, :cond_5

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0, p3}, Lcom/narvii/master/search/trending/FlowLayoutAdapter;->createChildView(Landroid/view/ViewGroup;)Landroid/view/View;

    .line 144
    move-result-object v7

    .line 145
    .line 146
    .line 147
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 148
    move-result-object v8

    .line 149
    .line 150
    .line 151
    invoke-virtual {v7, v6, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    invoke-virtual {p3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 158
    .line 159
    add-int/lit8 v5, v5, 0x1

    .line 160
    goto :goto_2

    .line 161
    .line 162
    :cond_5
    iget-object p1, p0, Lcom/narvii/master/search/trending/FlowLayoutAdapter;->list:Ljava/util/List;

    .line 163
    .line 164
    check-cast p1, Ljava/lang/Iterable;

    .line 165
    .line 166
    .line 167
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 168
    move-result-object p1

    .line 169
    .line 170
    .line 171
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 172
    move-result v3

    .line 173
    .line 174
    if-eqz v3, :cond_7

    .line 175
    .line 176
    .line 177
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 178
    move-result-object v3

    .line 179
    .line 180
    add-int/lit8 v5, v4, 0x1

    .line 181
    .line 182
    if-gez v4, :cond_6

    .line 183
    .line 184
    .line 185
    invoke-static {}, Lkotlin/collections/t;->w()V

    .line 186
    .line 187
    .line 188
    :cond_6
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 189
    move-result-object v4

    .line 190
    .line 191
    check-cast v4, Landroid/view/View;

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0, v3, v4}, Lcom/narvii/master/search/trending/FlowLayoutAdapter;->updateChildView(Ljava/lang/Object;Landroid/view/View;)V

    .line 195
    move v4, v5

    .line 196
    goto :goto_3

    .line 197
    .line 198
    .line 199
    :cond_7
    invoke-virtual {p0}, Lcom/narvii/master/search/trending/FlowLayoutAdapter;->hasMoreButton()Z

    .line 200
    move-result p1

    .line 201
    .line 202
    if-eqz p1, :cond_9

    .line 203
    .line 204
    if-nez v1, :cond_8

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0, p3}, Lcom/narvii/master/search/trending/FlowLayoutAdapter;->createMoreButton(Lcom/narvii/util/layouts/NVFlowLayout;)Landroid/view/View;

    .line 208
    move-result-object v1

    .line 209
    .line 210
    :cond_8
    if-eqz v1, :cond_9

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p3, v1}, Lcom/narvii/util/layouts/NVFlowLayout;->addMoreView(Landroid/view/View;)V

    .line 217
    .line 218
    .line 219
    :cond_9
    invoke-virtual {p0}, Lcom/narvii/master/search/trending/FlowLayoutAdapter;->hasMoreButton()Z

    .line 220
    move-result p1

    .line 221
    .line 222
    .line 223
    invoke-virtual {p3, p1}, Lcom/narvii/util/layouts/NVFlowLayout;->setShowMore(Z)V

    .line 224
    .line 225
    .line 226
    const p1, 0x7f0a0019

    .line 227
    .line 228
    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 229
    .line 230
    .line 231
    invoke-virtual {p2, p1, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    invoke-static {p2, p0}, Lcom/narvii/logging/LogUtils;->setShownInAdapter(Landroid/view/View;Lcom/narvii/logging/Area;)V

    .line 235
    .line 236
    .line 237
    invoke-static {p2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 238
    return-object p2
.end method

.method protected hasMoreButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final setList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/master/search/trending/FlowLayoutAdapter;->list:Ljava/util/List;

    return-void
.end method

.method public abstract updateChildView(Ljava/lang/Object;Landroid/view/View;)V
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation
.end method

.method protected updateFlowLayout(Lcom/narvii/util/layouts/NVFlowLayout;)V
    .locals 1
    .param p1    # Lcom/narvii/util/layouts/NVFlowLayout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "cell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
