.class public final Landroidx/compose/ui/graphics/AndroidMatrixConversions_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidMatrixConversions.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidMatrixConversions.android.kt\nandroidx/compose/ui/graphics/AndroidMatrixConversions_androidKt\n+ 2 Matrix.kt\nandroidx/compose/ui/graphics/Matrix\n*L\n1#1,112:1\n39#2:113\n39#2:114\n39#2:115\n39#2:116\n39#2:117\n39#2:118\n39#2:119\n*S KotlinDebug\n*F\n+ 1 AndroidMatrixConversions.android.kt\nandroidx/compose/ui/graphics/AndroidMatrixConversions_androidKt\n*L\n58#1:113\n59#1:114\n60#1:115\n61#1:116\n62#1:117\n63#1:118\n64#1:119\n*E\n"
.end annotation


# direct methods
.method public static final a(Landroid/graphics/Matrix;[F)V
    .locals 23
    .param p0    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    move-object/from16 v0, p1

    .line 3
    .line 4
    const-string v1, "$this$setFrom"

    .line 5
    .line 6
    move-object/from16 v2, p0

    .line 7
    .line 8
    .line 9
    invoke-static {v2, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    const-string v1, "matrix"

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    const/4 v1, 0x2

    .line 16
    .line 17
    aget v3, v0, v1

    .line 18
    const/4 v4, 0x0

    .line 19
    .line 20
    cmpg-float v5, v3, v4

    .line 21
    .line 22
    if-nez v5, :cond_0

    .line 23
    const/4 v5, 0x6

    .line 24
    .line 25
    aget v6, v0, v5

    .line 26
    .line 27
    cmpg-float v7, v6, v4

    .line 28
    .line 29
    if-nez v7, :cond_0

    .line 30
    .line 31
    const/16 v7, 0xa

    .line 32
    .line 33
    aget v7, v0, v7

    .line 34
    .line 35
    const/high16 v8, 0x3f800000    # 1.0f

    .line 36
    .line 37
    cmpg-float v7, v7, v8

    .line 38
    .line 39
    if-nez v7, :cond_0

    .line 40
    .line 41
    const/16 v7, 0xe

    .line 42
    .line 43
    aget v7, v0, v7

    .line 44
    .line 45
    cmpg-float v7, v7, v4

    .line 46
    .line 47
    if-nez v7, :cond_0

    .line 48
    .line 49
    const/16 v7, 0x8

    .line 50
    .line 51
    aget v8, v0, v7

    .line 52
    .line 53
    cmpg-float v9, v8, v4

    .line 54
    .line 55
    if-nez v9, :cond_0

    .line 56
    .line 57
    const/16 v9, 0x9

    .line 58
    .line 59
    aget v9, v0, v9

    .line 60
    .line 61
    cmpg-float v9, v9, v4

    .line 62
    .line 63
    if-nez v9, :cond_0

    .line 64
    .line 65
    const/16 v9, 0xb

    .line 66
    .line 67
    aget v9, v0, v9

    .line 68
    .line 69
    cmpg-float v4, v9, v4

    .line 70
    .line 71
    if-nez v4, :cond_0

    .line 72
    const/4 v4, 0x0

    .line 73
    .line 74
    aget v9, v0, v4

    .line 75
    const/4 v10, 0x1

    .line 76
    .line 77
    aget v11, v0, v10

    .line 78
    const/4 v12, 0x3

    .line 79
    .line 80
    aget v13, v0, v12

    .line 81
    const/4 v14, 0x4

    .line 82
    .line 83
    aget v15, v0, v14

    .line 84
    .line 85
    const/16 v16, 0x5

    .line 86
    .line 87
    aget v17, v0, v16

    .line 88
    .line 89
    const/16 v18, 0x7

    .line 90
    .line 91
    aget v19, v0, v18

    .line 92
    .line 93
    const/16 v20, 0xc

    .line 94
    .line 95
    aget v20, v0, v20

    .line 96
    .line 97
    const/16 v21, 0xd

    .line 98
    .line 99
    aget v21, v0, v21

    .line 100
    .line 101
    const/16 v22, 0xf

    .line 102
    .line 103
    aget v22, v0, v22

    .line 104
    .line 105
    aput v9, v0, v4

    .line 106
    .line 107
    aput v15, v0, v10

    .line 108
    .line 109
    aput v20, v0, v1

    .line 110
    .line 111
    aput v11, v0, v12

    .line 112
    .line 113
    aput v17, v0, v14

    .line 114
    .line 115
    aput v21, v0, v16

    .line 116
    .line 117
    aput v13, v0, v5

    .line 118
    .line 119
    aput v19, v0, v18

    .line 120
    .line 121
    aput v22, v0, v7

    .line 122
    .line 123
    .line 124
    invoke-virtual/range {p0 .. p1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 125
    .line 126
    aput v9, v0, v4

    .line 127
    .line 128
    aput v11, v0, v10

    .line 129
    .line 130
    aput v3, v0, v1

    .line 131
    .line 132
    aput v13, v0, v12

    .line 133
    .line 134
    aput v15, v0, v14

    .line 135
    .line 136
    aput v17, v0, v16

    .line 137
    .line 138
    aput v6, v0, v5

    .line 139
    .line 140
    aput v19, v0, v18

    .line 141
    .line 142
    aput v8, v0, v7

    .line 143
    return-void

    .line 144
    .line 145
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 146
    .line 147
    const-string v1, "Android does not support arbitrary transforms"

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 151
    move-result-object v1

    .line 152
    .line 153
    .line 154
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 155
    throw v0
.end method

.method public static final b([FLandroid/graphics/Matrix;)V
    .locals 19
    .param p0    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    const-string v2, "$this$setFrom"

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    const-string v2, "matrix"

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 18
    const/4 v1, 0x0

    .line 19
    .line 20
    aget v2, v0, v1

    .line 21
    const/4 v3, 0x1

    .line 22
    .line 23
    aget v4, v0, v3

    .line 24
    const/4 v5, 0x2

    .line 25
    .line 26
    aget v6, v0, v5

    .line 27
    const/4 v7, 0x3

    .line 28
    .line 29
    aget v8, v0, v7

    .line 30
    const/4 v9, 0x4

    .line 31
    .line 32
    aget v10, v0, v9

    .line 33
    const/4 v11, 0x5

    .line 34
    .line 35
    aget v12, v0, v11

    .line 36
    const/4 v13, 0x6

    .line 37
    .line 38
    aget v14, v0, v13

    .line 39
    const/4 v15, 0x7

    .line 40
    .line 41
    aget v16, v0, v15

    .line 42
    .line 43
    const/16 v17, 0x8

    .line 44
    .line 45
    aget v18, v0, v17

    .line 46
    .line 47
    aput v2, v0, v1

    .line 48
    .line 49
    aput v8, v0, v3

    .line 50
    const/4 v1, 0x0

    .line 51
    .line 52
    aput v1, v0, v5

    .line 53
    .line 54
    aput v14, v0, v7

    .line 55
    .line 56
    aput v4, v0, v9

    .line 57
    .line 58
    aput v10, v0, v11

    .line 59
    .line 60
    aput v1, v0, v13

    .line 61
    .line 62
    aput v16, v0, v15

    .line 63
    .line 64
    aput v1, v0, v17

    .line 65
    .line 66
    const/16 v2, 0x9

    .line 67
    .line 68
    aput v1, v0, v2

    .line 69
    .line 70
    const/16 v2, 0xa

    .line 71
    .line 72
    const/high16 v3, 0x3f800000    # 1.0f

    .line 73
    .line 74
    aput v3, v0, v2

    .line 75
    .line 76
    const/16 v2, 0xb

    .line 77
    .line 78
    aput v1, v0, v2

    .line 79
    .line 80
    const/16 v2, 0xc

    .line 81
    .line 82
    aput v6, v0, v2

    .line 83
    .line 84
    const/16 v2, 0xd

    .line 85
    .line 86
    aput v12, v0, v2

    .line 87
    .line 88
    const/16 v2, 0xe

    .line 89
    .line 90
    aput v1, v0, v2

    .line 91
    .line 92
    const/16 v1, 0xf

    .line 93
    .line 94
    aput v18, v0, v1

    .line 95
    return-void
.end method
