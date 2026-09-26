.class public abstract Lcom/narvii/app/NVScrollableTabFragment;
.super Lcom/narvii/app/NVBaseScrollableTabFragment;
.source "SourceFile"


# static fields
.field private static final MAX_TABS:I = 0x8


# instance fields
.field private positionToIndexMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private realPositions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroid/util/SparseArray;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/app/NVScrollableTabFragment;->realPositions:Landroid/util/SparseArray;

    .line 11
    .line 12
    new-instance v0, Landroid/util/SparseArray;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/app/NVScrollableTabFragment;->positionToIndexMap:Landroid/util/SparseArray;

    .line 18
    return-void
.end method


# virtual methods
.method protected createAdapter()Lcom/narvii/app/NVScrollablePagerAdapter;
    .locals 11

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVScrollableTabFragment;->realPositions:Landroid/util/SparseArray;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/app/NVScrollableTabFragment;->positionToIndexMap:Landroid/util/SparseArray;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 19
    move-result v1

    .line 20
    .line 21
    const-string v2, "_"

    .line 22
    const/4 v3, 0x0

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    const/4 v1, 0x7

    .line 26
    .line 27
    :goto_0
    if-ltz v1, :cond_5

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVScrollableTabFragment;->getTabLabel(I)Ljava/lang/String;

    .line 31
    move-result-object v6

    .line 32
    .line 33
    if-eqz v6, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVScrollableTabFragment;->getFragment(I)Ljava/lang/Class;

    .line 37
    move-result-object v8

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVScrollableTabFragment;->getBundles(I)Landroid/os/Bundle;

    .line 41
    move-result-object v9

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVScrollableTabFragment;->getIconDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 45
    move-result-object v4

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v6, v4}, Lcom/narvii/app/NVScrollableTabFragment;->getTabView(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/view/View;

    .line 49
    move-result-object v4

    .line 50
    .line 51
    if-nez v4, :cond_0

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVScrollableTabFragment;->getIconDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 55
    move-result-object v4

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v1, v6, v4}, Lcom/narvii/app/NVScrollableTabFragment;->getTabView(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/view/View;

    .line 59
    move-result-object v4

    .line 60
    :cond_0
    move-object v7, v4

    .line 61
    .line 62
    new-instance v4, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 75
    move-result-object v5

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object v5

    .line 83
    .line 84
    new-instance v10, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;

    .line 85
    move-object v4, v10

    .line 86
    .line 87
    .line 88
    invoke-direct/range {v4 .. v9}, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    iget-object v4, p0, Lcom/narvii/app/NVScrollableTabFragment;->realPositions:Landroid/util/SparseArray;

    .line 94
    .line 95
    .line 96
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    move-result-object v5

    .line 98
    .line 99
    .line 100
    invoke-virtual {v4, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 101
    .line 102
    iget-object v4, p0, Lcom/narvii/app/NVScrollableTabFragment;->positionToIndexMap:Landroid/util/SparseArray;

    .line 103
    .line 104
    .line 105
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    move-result-object v5

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 110
    .line 111
    add-int/lit8 v3, v3, 0x1

    .line 112
    .line 113
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 114
    goto :goto_0

    .line 115
    :cond_2
    move v1, v3

    .line 116
    .line 117
    :goto_1
    const/16 v4, 0x8

    .line 118
    .line 119
    if-ge v3, v4, :cond_5

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVScrollableTabFragment;->getTabLabel(I)Ljava/lang/String;

    .line 123
    move-result-object v7

    .line 124
    .line 125
    if-eqz v7, :cond_4

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVScrollableTabFragment;->getFragment(I)Ljava/lang/Class;

    .line 129
    move-result-object v9

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVScrollableTabFragment;->getBundles(I)Landroid/os/Bundle;

    .line 133
    move-result-object v10

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVScrollableTabFragment;->getIconDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 137
    move-result-object v4

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0, v7, v4}, Lcom/narvii/app/NVScrollableTabFragment;->getTabView(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/view/View;

    .line 141
    move-result-object v4

    .line 142
    .line 143
    if-nez v4, :cond_3

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVScrollableTabFragment;->getIconDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 147
    move-result-object v4

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0, v3, v7, v4}, Lcom/narvii/app/NVScrollableTabFragment;->getTabView(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/view/View;

    .line 151
    move-result-object v4

    .line 152
    :cond_3
    move-object v8, v4

    .line 153
    .line 154
    new-instance v4, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 167
    move-result-object v5

    .line 168
    .line 169
    .line 170
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    move-result-object v6

    .line 175
    .line 176
    new-instance v4, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;

    .line 177
    move-object v5, v4

    .line 178
    .line 179
    .line 180
    invoke-direct/range {v5 .. v10}, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    .line 185
    iget-object v4, p0, Lcom/narvii/app/NVScrollableTabFragment;->realPositions:Landroid/util/SparseArray;

    .line 186
    .line 187
    .line 188
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 189
    move-result-object v5

    .line 190
    .line 191
    .line 192
    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 193
    .line 194
    iget-object v4, p0, Lcom/narvii/app/NVScrollableTabFragment;->positionToIndexMap:Landroid/util/SparseArray;

    .line 195
    .line 196
    .line 197
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 198
    move-result-object v5

    .line 199
    .line 200
    .line 201
    invoke-virtual {v4, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 202
    .line 203
    add-int/lit8 v1, v1, 0x1

    .line 204
    .line 205
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 206
    goto :goto_1

    .line 207
    .line 208
    :cond_5
    new-instance v1, Lcom/narvii/app/NVScrollableTabFragment$1;

    .line 209
    .line 210
    .line 211
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 212
    move-result-object v2

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 216
    move-result-object v3

    .line 217
    .line 218
    .line 219
    invoke-direct {v1, p0, v2, v3}, Lcom/narvii/app/NVScrollableTabFragment$1;-><init>(Lcom/narvii/app/NVScrollableTabFragment;Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v1, v0}, Lcom/narvii/app/NVScrollablePagerAdapter;->setTabs(Ljava/util/List;)V

    .line 223
    return-object v1
.end method

.method protected getBundles(I)Landroid/os/Bundle;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method protected abstract getFragment(I)Ljava/lang/Class;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/app/NVFragment;",
            ">;"
        }
    .end annotation
.end method

.method protected getIconDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getIndexOfRealPosition(I)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVScrollableTabFragment;->positionToIndexMap:Landroid/util/SparseArray;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Ljava/lang/Integer;

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    const/4 p1, -0x1

    .line 12
    return p1

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public getRealPositionOfIndex(I)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVScrollableTabFragment;->realPositions:Landroid/util/SparseArray;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Ljava/lang/Integer;

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    const/4 p1, -0x1

    .line 12
    return p1

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method protected abstract getTabLabel(I)Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method protected getTabView(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/view/View;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getTabView(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/view/View;
    .locals 0

    .line 2
    const/4 p1, 0x0

    return-object p1
.end method

.method protected onInstantiateItem(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
