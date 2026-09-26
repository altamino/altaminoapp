.class public Lcom/narvii/util/image/MediaStoreUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final rotationCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/narvii/util/image/MediaStoreUtils;->rotationCache:Ljava/util/HashMap;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static addStandaloneEditorVideo(Landroid/content/Context;Ljava/io/File;JII)Landroid/net/Uri;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    .line 4
    const/4 v2, 0x7

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    move-result-wide v2

    .line 12
    .line 13
    .line 14
    const-string/jumbo v4, "title"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 18
    move-result-object v5

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    const-string v4, "_display_name"

    .line 24
    .line 25
    const-string v5, "Storyboard"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    const-string v4, "datetaken"

    .line 31
    .line 32
    .line 33
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 38
    .line 39
    const-string v2, "mime_type"

    .line 40
    .line 41
    .line 42
    const-string/jumbo v3, "video/mp4"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    const-string v2, "_data"

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 51
    move-result-object v3

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    const-string v2, "duration"

    .line 57
    .line 58
    .line 59
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 60
    move-result-object p2

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 64
    .line 65
    if-lez p4, :cond_0

    .line 66
    .line 67
    .line 68
    const-string/jumbo p2, "width"

    .line 69
    .line 70
    .line 71
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    move-result-object p3

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 76
    goto :goto_0

    .line 77
    :catch_0
    move-exception p0

    .line 78
    goto :goto_2

    .line 79
    .line 80
    :cond_0
    :goto_0
    if-lez p5, :cond_1

    .line 81
    .line 82
    const-string p2, "height"

    .line 83
    .line 84
    .line 85
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    move-result-object p3

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 90
    .line 91
    .line 92
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 93
    move-result-object p0

    .line 94
    .line 95
    sget-object p2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 96
    const/4 v4, 0x0

    .line 97
    .line 98
    const-string v5, "_data=?"

    .line 99
    const/4 p3, 0x1

    .line 100
    .line 101
    new-array v6, p3, [Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 105
    move-result-object p1

    .line 106
    const/4 p3, 0x0

    .line 107
    .line 108
    aput-object p1, v6, p3

    .line 109
    const/4 v7, 0x0

    .line 110
    move-object v2, p0

    .line 111
    move-object v3, p2

    .line 112
    .line 113
    .line 114
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 115
    move-result-object p1

    .line 116
    .line 117
    .line 118
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 119
    move-result p3

    .line 120
    .line 121
    if-eqz p3, :cond_2

    .line 122
    .line 123
    const-string p3, "_id"

    .line 124
    .line 125
    .line 126
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 127
    move-result p3

    .line 128
    .line 129
    .line 130
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getLong(I)J

    .line 131
    move-result-wide p3

    .line 132
    .line 133
    new-instance p5, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .line 138
    const-string v2, ""

    .line 139
    .line 140
    .line 141
    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    move-result-object p3

    .line 149
    .line 150
    .line 151
    invoke-static {p2, p3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 152
    move-result-object p2

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0, p2, v1, v0, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 156
    move-object v0, p2

    .line 157
    goto :goto_1

    .line 158
    .line 159
    .line 160
    :cond_2
    invoke-virtual {p0, p2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 161
    move-result-object p0

    .line 162
    move-object v0, p0

    .line 163
    .line 164
    .line 165
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    goto :goto_3

    .line 167
    .line 168
    .line 169
    :goto_2
    const-string/jumbo p1, "unable to save video to content provider"

    .line 170
    .line 171
    .line 172
    invoke-static {p1, p0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 173
    :goto_3
    return-object v0
.end method

.method public static addVideo(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0, v1}, Lcom/narvii/util/image/MediaStoreUtils;->addVideo(Landroid/content/Context;Ljava/io/File;J)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static addVideo(Landroid/content/Context;Ljava/io/File;J)Landroid/net/Uri;
    .locals 8

    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    const-string/jumbo v2, "title"

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Amino_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_display_name"

    const-string v3, "Amino Video"

    .line 4
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "datetaken"

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "mime_type"

    const-string/jumbo v3, "video/avc"

    .line 6
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_data"

    .line 7
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-lez v2, :cond_0

    const-string v2, "duration"

    .line 8
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    .line 9
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 10
    sget-object p2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "_data=?"

    const/4 p3, 0x1

    new-array v6, p3, [Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    aput-object p1, v6, p3

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p2

    .line 12
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 13
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p3, "_id"

    .line 14
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 15
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 16
    invoke-virtual {p0, p2, v1, v0, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-object v0, p2

    goto :goto_1

    .line 17
    :cond_1
    invoke-virtual {p0, p2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    move-object v0, p0

    .line 18
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    const-string/jumbo p1, "unable to save video to content provider"

    .line 19
    invoke-static {p1, p0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-object v0
.end method

.method public static applyOrientation(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-static {p0, p1, v0, v0}, Lcom/narvii/util/image/MediaStoreUtils;->applyOrientationAndSize(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public static applyOrientationAndSize(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 8

    .line 1
    const/4 v0, 0x3

    .line 2
    .line 3
    if-eq p1, v0, :cond_2

    .line 4
    const/4 v0, 0x6

    .line 5
    .line 6
    if-eq p1, v0, :cond_1

    .line 7
    .line 8
    const/16 v0, 0x8

    .line 9
    .line 10
    if-eq p1, v0, :cond_0

    .line 11
    const/4 p1, 0x0

    .line 12
    goto :goto_1

    .line 13
    .line 14
    :cond_0
    const/16 p1, 0x10e

    .line 15
    :goto_0
    move v7, p3

    .line 16
    move p3, p2

    .line 17
    move p2, v7

    .line 18
    goto :goto_1

    .line 19
    .line 20
    :cond_1
    const/16 p1, 0x5a

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_2
    const/16 p1, 0xb4

    .line 24
    .line 25
    .line 26
    :goto_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 27
    move-result v3

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 31
    move-result v4

    .line 32
    .line 33
    const/high16 v0, 0x3f800000    # 1.0f

    .line 34
    .line 35
    if-lez p2, :cond_3

    .line 36
    .line 37
    if-lez p3, :cond_3

    .line 38
    int-to-float p2, p2

    .line 39
    mul-float/2addr p2, v0

    .line 40
    int-to-float v1, v3

    .line 41
    div-float/2addr p2, v1

    .line 42
    int-to-float p3, p3

    .line 43
    mul-float/2addr p3, v0

    .line 44
    int-to-float v1, v4

    .line 45
    div-float/2addr p3, v1

    .line 46
    .line 47
    .line 48
    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    .line 49
    move-result p2

    .line 50
    .line 51
    .line 52
    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    .line 53
    move-result p2

    .line 54
    goto :goto_2

    .line 55
    :cond_3
    move p2, v0

    .line 56
    .line 57
    :goto_2
    if-nez p1, :cond_4

    .line 58
    .line 59
    cmpl-float p3, p2, v0

    .line 60
    .line 61
    if-nez p3, :cond_4

    .line 62
    return-object p0

    .line 63
    .line 64
    :cond_4
    new-instance v5, Landroid/graphics/Matrix;

    .line 65
    .line 66
    .line 67
    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v5, p2, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 71
    int-to-float p1, p1

    .line 72
    .line 73
    .line 74
    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 75
    const/4 v1, 0x0

    .line 76
    const/4 v2, 0x0

    .line 77
    const/4 v6, 0x1

    .line 78
    move-object v0, p0

    .line 79
    .line 80
    .line 81
    :try_start_0
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    .line 82
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    return-object p0

    .line 84
    :catch_0
    move-exception p1

    .line 85
    .line 86
    .line 87
    invoke-static {p1}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    .line 88
    return-object p0
.end method

.method public static getImageId(Ljava/lang/String;)J
    .locals 4

    .line 1
    .line 2
    const-string v0, "mediastore://"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    const-wide/16 v1, 0x0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/16 v0, 0x7c

    .line 13
    .line 14
    const/16 v3, 0xd

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->indexOf(II)I

    .line 18
    move-result v0

    .line 19
    .line 20
    if-lez v0, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 25
    .line 26
    .line 27
    invoke-static {p0, v1, v2}, Lcom/narvii/util/StringUtils;->parseLong(Ljava/lang/String;J)J

    .line 28
    move-result-wide v0

    .line 29
    return-wide v0

    .line 30
    :cond_0
    return-wide v1
.end method

.method public static getImagePath(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 1
    .line 2
    const-string v0, "mediastore://"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    const/16 v0, 0x7c

    .line 11
    .line 12
    const/16 v1, 0xd

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(II)I

    .line 16
    move-result v0

    .line 17
    .line 18
    if-lez v0, :cond_1

    .line 19
    .line 20
    add-int/lit8 v0, v0, 0x1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 25
    .line 26
    const-string v0, "#"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 30
    move-result v0

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 36
    move-result v0

    .line 37
    .line 38
    add-int/lit8 v0, v0, -0x1

    .line 39
    const/4 v1, 0x0

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 43
    move-result-object p0

    .line 44
    .line 45
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    return-object v0

    .line 50
    :cond_1
    const/4 p0, 0x0

    .line 51
    return-object p0
.end method

.method public static getMediastoreUrl(JLjava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "mediastore://"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string/jumbo p0, "|"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string p0, ""

    .line 22
    .line 23
    if-nez p2, :cond_0

    .line 24
    move-object p2, p0

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    if-eqz p3, :cond_1

    .line 30
    .line 31
    const-string p0, "#"

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method

.method public static getRotation(Landroid/content/ContentResolver;J)I
    .locals 8

    sget-object v0, Lcom/narvii/util/image/MediaStoreUtils;->rotationCache:Ljava/util/HashMap;

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 v1, 0x0

    .line 5
    :try_start_0
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const-string v5, "_data"

    aput-object v5, v4, v1

    const-string v5, "_id=?"

    new-array v6, v2, [Ljava/lang/String;

    .line 6
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v1

    const/4 v7, 0x0

    move-object v2, p0

    .line 7
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 8
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 9
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 10
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 12
    new-instance p0, Landroid/media/ExifInterface;

    invoke-direct {p0, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v2, "Orientation"

    .line 13
    invoke-virtual {p0, v2, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0

    .line 14
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_1
    return v1
.end method

.method public static getRotation(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string p0, "Orientation"

    .line 2
    invoke-virtual {v1, p0, v0}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public static getThumbnailFromMediaStore(Landroid/content/ContentResolver;JIZ)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-static {p0, p1, p2, p3, v0}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 7
    move-result-object p3

    .line 8
    goto :goto_1

    .line 9
    :catch_0
    move-exception p3

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-static {p0, p1, p2, p3, v0}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 14
    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    goto :goto_1

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-static {p3}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    .line 19
    :catch_1
    move-object p3, v0

    .line 20
    .line 21
    :goto_1
    if-nez p3, :cond_1

    .line 22
    return-object v0

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/narvii/util/image/MediaStoreUtils;->getRotation(Landroid/content/ContentResolver;J)I

    .line 26
    move-result p0

    .line 27
    .line 28
    .line 29
    invoke-static {p3, p0}, Lcom/narvii/util/image/MediaStoreUtils;->applyOrientation(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method public static isVideo(Ljava/lang/String;)Z
    .locals 1

    .line 1
    .line 2
    const-string v0, "#"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method
