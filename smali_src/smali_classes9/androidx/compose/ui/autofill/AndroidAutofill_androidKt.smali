.class public final Landroidx/compose/ui/autofill/AndroidAutofill_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidAutofill.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidAutofill.android.kt\nandroidx/compose/ui/autofill/AndroidAutofill_androidKt\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,217:1\n126#2,3:218\n32#2,4:221\n129#2,2:225\n37#2:227\n131#2:228\n37#3:229\n36#3,3:230\n*S KotlinDebug\n*F\n+ 1 AndroidAutofill.android.kt\nandroidx/compose/ui/autofill/AndroidAutofill_androidKt\n*L\n89#1:218,3\n89#1:221,4\n89#1:225,2\n89#1:227\n89#1:228\n89#1:229\n89#1:230,3\n*E\n"
.end annotation


# direct methods
.method public static final a(Landroidx/compose/ui/autofill/AndroidAutofill;Landroid/util/SparseArray;)V
    .locals 6
    .param p0    # Landroidx/compose/ui/autofill/AndroidAutofill;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/util/SparseArray;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .annotation runtime Landroidx/compose/ui/ExperimentalComposeUiApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/autofill/AndroidAutofill;",
            "Landroid/util/SparseArray<",
            "Landroid/view/autofill/AutofillValue;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "values"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    :goto_0
    if-ge v1, v0, :cond_4

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 21
    move-result v2

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v3

    .line 26
    .line 27
    .line 28
    invoke-static {v3}, Lu/d;->a(Ljava/lang/Object;)Landroid/view/autofill/AutofillValue;

    .line 29
    move-result-object v3

    .line 30
    .line 31
    sget-object v4, Landroidx/compose/ui/autofill/AutofillApi26Helper;->INSTANCE:Landroidx/compose/ui/autofill/AutofillApi26Helper;

    .line 32
    .line 33
    const-string v5, "value"

    .line 34
    .line 35
    .line 36
    invoke-static {v3, v5}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4, v3}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->d(Landroid/view/autofill/AutofillValue;)Z

    .line 40
    move-result v5

    .line 41
    .line 42
    if-eqz v5, :cond_0

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/compose/ui/autofill/AndroidAutofill;->b()Landroidx/compose/ui/autofill/AutofillTree;

    .line 46
    move-result-object v5

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4, v3}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->i(Landroid/view/autofill/AutofillValue;)Ljava/lang/CharSequence;

    .line 50
    move-result-object v3

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 54
    move-result-object v3

    .line 55
    .line 56
    .line 57
    invoke-virtual {v5, v2, v3}, Landroidx/compose/ui/autofill/AutofillTree;->b(ILjava/lang/String;)Lw7/l0;

    .line 58
    goto :goto_1

    .line 59
    .line 60
    .line 61
    :cond_0
    invoke-virtual {v4, v3}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->b(Landroid/view/autofill/AutofillValue;)Z

    .line 62
    move-result v2

    .line 63
    .line 64
    const-string v5, "An operation is not implemented: "

    .line 65
    .line 66
    if-nez v2, :cond_3

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4, v3}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->c(Landroid/view/autofill/AutofillValue;)Z

    .line 70
    move-result v2

    .line 71
    .line 72
    if-nez v2, :cond_2

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4, v3}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->e(Landroid/view/autofill/AutofillValue;)Z

    .line 76
    move-result v2

    .line 77
    .line 78
    if-nez v2, :cond_1

    .line 79
    .line 80
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 81
    goto :goto_0

    .line 82
    .line 83
    :cond_1
    new-instance p0, Lw7/t;

    .line 84
    .line 85
    new-instance p1, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string v0, "b/138604541:  Add onFill() callback for toggle"

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    move-result-object p1

    .line 101
    .line 102
    .line 103
    invoke-direct {p0, p1}, Lw7/t;-><init>(Ljava/lang/String;)V

    .line 104
    throw p0

    .line 105
    .line 106
    :cond_2
    new-instance p0, Lw7/t;

    .line 107
    .line 108
    new-instance p1, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    const-string v0, "b/138604541: Add onFill() callback for list"

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    move-result-object p1

    .line 124
    .line 125
    .line 126
    invoke-direct {p0, p1}, Lw7/t;-><init>(Ljava/lang/String;)V

    .line 127
    throw p0

    .line 128
    .line 129
    :cond_3
    new-instance p0, Lw7/t;

    .line 130
    .line 131
    new-instance p1, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    const-string v0, "b/138604541: Add onFill() callback for date"

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    move-result-object p1

    .line 147
    .line 148
    .line 149
    invoke-direct {p0, p1}, Lw7/t;-><init>(Ljava/lang/String;)V

    .line 150
    throw p0

    .line 151
    :cond_4
    return-void
.end method

.method public static final b(Landroidx/compose/ui/autofill/AndroidAutofill;Landroid/view/ViewStructure;)V
    .locals 17
    .param p0    # Landroidx/compose/ui/autofill/AndroidAutofill;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewStructure;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .annotation runtime Landroidx/compose/ui/ExperimentalComposeUiApi;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p1

    .line 3
    .line 4
    const-string v1, "<this>"

    .line 5
    .line 6
    move-object/from16 v2, p0

    .line 7
    .line 8
    .line 9
    invoke-static {v2, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    const-string v1, "root"

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    sget-object v1, Landroidx/compose/ui/autofill/AutofillApi23Helper;->INSTANCE:Landroidx/compose/ui/autofill/AutofillApi23Helper;

    .line 17
    .line 18
    .line 19
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/autofill/AndroidAutofill;->b()Landroidx/compose/ui/autofill/AutofillTree;

    .line 20
    move-result-object v3

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3}, Landroidx/compose/ui/autofill/AutofillTree;->a()Ljava/util/Map;

    .line 24
    move-result-object v3

    .line 25
    .line 26
    .line 27
    invoke-interface {v3}, Ljava/util/Map;->size()I

    .line 28
    move-result v3

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v0, v3}, Landroidx/compose/ui/autofill/AutofillApi23Helper;->a(Landroid/view/ViewStructure;I)I

    .line 32
    move-result v1

    .line 33
    .line 34
    .line 35
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/autofill/AndroidAutofill;->b()Landroidx/compose/ui/autofill/AutofillTree;

    .line 36
    move-result-object v3

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Landroidx/compose/ui/autofill/AutofillTree;->a()Ljava/util/Map;

    .line 40
    move-result-object v3

    .line 41
    .line 42
    .line 43
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 44
    move-result-object v3

    .line 45
    .line 46
    .line 47
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 48
    move-result-object v3

    .line 49
    .line 50
    .line 51
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    move-result v4

    .line 53
    .line 54
    if-eqz v4, :cond_4

    .line 55
    .line 56
    .line 57
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    move-result-object v4

    .line 59
    .line 60
    check-cast v4, Ljava/util/Map$Entry;

    .line 61
    .line 62
    .line 63
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 64
    move-result-object v5

    .line 65
    .line 66
    check-cast v5, Ljava/lang/Number;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 70
    move-result v8

    .line 71
    .line 72
    .line 73
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 74
    move-result-object v4

    .line 75
    .line 76
    check-cast v4, Landroidx/compose/ui/autofill/AutofillNode;

    .line 77
    .line 78
    sget-object v6, Landroidx/compose/ui/autofill/AutofillApi23Helper;->INSTANCE:Landroidx/compose/ui/autofill/AutofillApi23Helper;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v6, v0, v1}, Landroidx/compose/ui/autofill/AutofillApi23Helper;->b(Landroid/view/ViewStructure;I)Landroid/view/ViewStructure;

    .line 82
    move-result-object v5

    .line 83
    .line 84
    if-eqz v5, :cond_3

    .line 85
    .line 86
    sget-object v12, Landroidx/compose/ui/autofill/AutofillApi26Helper;->INSTANCE:Landroidx/compose/ui/autofill/AutofillApi26Helper;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v12, v0}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->a(Landroid/view/ViewStructure;)Landroid/view/autofill/AutofillId;

    .line 90
    move-result-object v7

    .line 91
    .line 92
    .line 93
    invoke-static {v7}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v12, v5, v7, v8}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->g(Landroid/view/ViewStructure;Landroid/view/autofill/AutofillId;I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/autofill/AndroidAutofill;->c()Landroid/view/View;

    .line 100
    move-result-object v7

    .line 101
    .line 102
    .line 103
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 104
    move-result-object v7

    .line 105
    .line 106
    .line 107
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 108
    move-result-object v9

    .line 109
    const/4 v10, 0x0

    .line 110
    const/4 v11, 0x0

    .line 111
    move-object v7, v5

    .line 112
    .line 113
    .line 114
    invoke-virtual/range {v6 .. v11}, Landroidx/compose/ui/autofill/AutofillApi23Helper;->d(Landroid/view/ViewStructure;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const/4 v6, 0x1

    .line 116
    .line 117
    .line 118
    invoke-virtual {v12, v5, v6}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->h(Landroid/view/ViewStructure;I)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v4}, Landroidx/compose/ui/autofill/AutofillNode;->c()Ljava/util/List;

    .line 122
    move-result-object v6

    .line 123
    .line 124
    new-instance v7, Ljava/util/ArrayList;

    .line 125
    .line 126
    .line 127
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 128
    move-result v8

    .line 129
    .line 130
    .line 131
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 132
    .line 133
    .line 134
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 135
    move-result v8

    .line 136
    const/4 v9, 0x0

    .line 137
    move v10, v9

    .line 138
    .line 139
    :goto_1
    if-ge v10, v8, :cond_0

    .line 140
    .line 141
    .line 142
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 143
    move-result-object v11

    .line 144
    .line 145
    check-cast v11, Landroidx/compose/ui/autofill/AutofillType;

    .line 146
    .line 147
    .line 148
    invoke-static {v11}, Landroidx/compose/ui/autofill/AndroidAutofillType_androidKt;->a(Landroidx/compose/ui/autofill/AutofillType;)Ljava/lang/String;

    .line 149
    move-result-object v11

    .line 150
    .line 151
    .line 152
    invoke-interface {v7, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 153
    .line 154
    add-int/lit8 v10, v10, 0x1

    .line 155
    goto :goto_1

    .line 156
    .line 157
    :cond_0
    new-array v6, v9, [Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    invoke-interface {v7, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 161
    move-result-object v6

    .line 162
    .line 163
    if-eqz v6, :cond_2

    .line 164
    .line 165
    check-cast v6, [Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v12, v5, v6}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->f(Landroid/view/ViewStructure;[Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v4}, Landroidx/compose/ui/autofill/AutofillNode;->d()Landroidx/compose/ui/geometry/Rect;

    .line 172
    move-result-object v6

    .line 173
    .line 174
    if-nez v6, :cond_1

    .line 175
    .line 176
    const-string v6, "Autofill Warning"

    .line 177
    .line 178
    const-string v7, "Bounding box not set.\n                        Did you call perform autofillTree before the component was positioned? "

    .line 179
    .line 180
    .line 181
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    .line 183
    .line 184
    :cond_1
    invoke-virtual {v4}, Landroidx/compose/ui/autofill/AutofillNode;->d()Landroidx/compose/ui/geometry/Rect;

    .line 185
    move-result-object v4

    .line 186
    .line 187
    if-eqz v4, :cond_3

    .line 188
    .line 189
    .line 190
    invoke-static {v4}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->a(Landroidx/compose/ui/geometry/Rect;)Landroid/graphics/Rect;

    .line 191
    move-result-object v4

    .line 192
    .line 193
    if-eqz v4, :cond_3

    .line 194
    .line 195
    sget-object v9, Landroidx/compose/ui/autofill/AutofillApi23Helper;->INSTANCE:Landroidx/compose/ui/autofill/AutofillApi23Helper;

    .line 196
    .line 197
    iget v11, v4, Landroid/graphics/Rect;->left:I

    .line 198
    .line 199
    iget v12, v4, Landroid/graphics/Rect;->top:I

    .line 200
    const/4 v13, 0x0

    .line 201
    const/4 v14, 0x0

    .line 202
    .line 203
    .line 204
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 205
    move-result v15

    .line 206
    .line 207
    .line 208
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 209
    move-result v16

    .line 210
    move-object v10, v5

    .line 211
    .line 212
    .line 213
    invoke-virtual/range {v9 .. v16}, Landroidx/compose/ui/autofill/AutofillApi23Helper;->c(Landroid/view/ViewStructure;IIIIII)V

    .line 214
    goto :goto_2

    .line 215
    .line 216
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    .line 217
    .line 218
    const-string v1, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    .line 219
    .line 220
    .line 221
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 222
    throw v0

    .line 223
    .line 224
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 225
    .line 226
    goto/16 :goto_0

    .line 227
    :cond_4
    return-void
.end method
