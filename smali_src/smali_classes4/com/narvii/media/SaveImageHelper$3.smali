.class Lcom/narvii/media/SaveImageHelper$3;
.super Lcom/android/volley/Request;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/media/SaveImageHelper;->saveHttpImage(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/volley/Request<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/media/SaveImageHelper;

.field uri:Landroid/net/Uri;

.field final synthetic val$origUrl:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/media/SaveImageHelper;ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/SaveImageHelper$3;->this$0:Lcom/narvii/media/SaveImageHelper;

    .line 3
    .line 4
    iput-object p5, p0, Lcom/narvii/media/SaveImageHelper$3;->val$origUrl:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p6, p0, Lcom/narvii/media/SaveImageHelper$3;->val$url:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p2, p3, p4}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 10
    return-void
.end method


# virtual methods
.method protected deliverResponse(Ljava/io/File;)V
    .locals 3

    iget-object v0, p0, Lcom/narvii/media/SaveImageHelper$3;->this$0:Lcom/narvii/media/SaveImageHelper;

    .line 2
    invoke-static {v0}, Lcom/narvii/media/SaveImageHelper;->b(Lcom/narvii/media/SaveImageHelper;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/narvii/media/SaveImageHelper$3;->this$0:Lcom/narvii/media/SaveImageHelper;

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Lcom/narvii/media/SaveImageHelper;->e(Lcom/narvii/media/SaveImageHelper;Lcom/android/volley/Request;)V

    iget-object v0, p0, Lcom/narvii/media/SaveImageHelper$3;->this$0:Lcom/narvii/media/SaveImageHelper;

    iget-object v1, p0, Lcom/narvii/media/SaveImageHelper$3;->uri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/narvii/media/SaveImageHelper$3;->val$origUrl:Ljava/lang/String;

    .line 4
    invoke-static {v0, v1, p1, v2}, Lcom/narvii/media/SaveImageHelper;->i(Lcom/narvii/media/SaveImageHelper;Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/narvii/media/SaveImageHelper$3;->deliverResponse(Ljava/io/File;)V

    return-void
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    :try_start_0
    iget v0, p1, Lcom/android/volley/NetworkResponse;->statusCode:I

    .line 3
    .line 4
    div-int/lit8 v1, v0, 0x64

    .line 5
    const/4 v2, 0x2

    .line 6
    .line 7
    if-eq v1, v2, :cond_1

    .line 8
    .line 9
    const/16 v1, 0x130

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    new-instance v0, Lcom/android/volley/VolleyError;

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    const-string v2, "fail to   image data: "

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    iget p1, p1, Lcom/android/volley/NetworkResponse;->statusCode:I

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, p1}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    .line 40
    move-result-object p1

    .line 41
    return-object p1

    .line 42
    :catch_0
    move-exception p1

    .line 43
    goto :goto_1

    .line 44
    .line 45
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/narvii/media/SaveImageHelper$3;->this$0:Lcom/narvii/media/SaveImageHelper;

    .line 46
    .line 47
    iget-object p1, p1, Lcom/android/volley/NetworkResponse;->data:[B

    .line 48
    .line 49
    iget-object v1, p0, Lcom/narvii/media/SaveImageHelper$3;->val$origUrl:Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p1, v1}, Lcom/narvii/media/SaveImageHelper;->addWatermark([BLjava/lang/String;)[B

    .line 53
    move-result-object p1

    .line 54
    .line 55
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    .line 56
    .line 57
    .line 58
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 59
    const/4 v1, 0x1

    .line 60
    .line 61
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 62
    array-length v1, p1

    .line 63
    const/4 v2, 0x0

    .line 64
    .line 65
    .line 66
    invoke-static {p1, v2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 67
    .line 68
    iget-object v1, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 69
    .line 70
    if-eqz v1, :cond_3

    .line 71
    .line 72
    iget-object v2, p0, Lcom/narvii/media/SaveImageHelper$3;->this$0:Lcom/narvii/media/SaveImageHelper;

    .line 73
    .line 74
    .line 75
    invoke-static {v2, v1}, Lcom/narvii/media/SaveImageHelper;->g(Lcom/narvii/media/SaveImageHelper;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    move-result-object v1

    .line 77
    .line 78
    iget-object v2, p0, Lcom/narvii/media/SaveImageHelper$3;->this$0:Lcom/narvii/media/SaveImageHelper;

    .line 79
    .line 80
    .line 81
    invoke-static {v2}, Lcom/narvii/media/SaveImageHelper;->a(Lcom/narvii/media/SaveImageHelper;)Lcom/narvii/app/NVContext;

    .line 82
    move-result-object v2

    .line 83
    .line 84
    .line 85
    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 86
    move-result-object v2

    .line 87
    .line 88
    .line 89
    invoke-static {v2, v1}, Lcom/narvii/media/SaveImageHelper;->getNewFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    .line 90
    move-result-object v1

    .line 91
    .line 92
    new-instance v2, Ljava/io/FileOutputStream;

    .line 93
    .line 94
    .line 95
    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 102
    .line 103
    iget-object p1, p0, Lcom/narvii/media/SaveImageHelper$3;->this$0:Lcom/narvii/media/SaveImageHelper;

    .line 104
    .line 105
    iget-object v2, p0, Lcom/narvii/media/SaveImageHelper$3;->val$origUrl:Ljava/lang/String;

    .line 106
    .line 107
    iget-object v0, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, v1, v2, v0}, Lcom/narvii/media/SaveImageHelper;->saveToGallery(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 111
    move-result-object p1

    .line 112
    .line 113
    iput-object p1, p0, Lcom/narvii/media/SaveImageHelper$3;->uri:Landroid/net/Uri;

    .line 114
    .line 115
    if-nez p1, :cond_2

    .line 116
    .line 117
    new-instance p1, Lcom/android/volley/VolleyError;

    .line 118
    .line 119
    const-string v0, "fail to save image to gallery"

    .line 120
    .line 121
    .line 122
    invoke-direct {p1, v0}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-static {p1}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    .line 126
    move-result-object p1

    .line 127
    return-object p1

    .line 128
    :cond_2
    const/4 p1, 0x0

    .line 129
    .line 130
    .line 131
    invoke-static {v1, p1}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    .line 132
    move-result-object p1

    .line 133
    return-object p1

    .line 134
    .line 135
    :cond_3
    new-instance p1, Lcom/android/volley/VolleyError;

    .line 136
    .line 137
    const-string v0, "malformed image data"

    .line 138
    .line 139
    .line 140
    invoke-direct {p1, v0}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-static {p1}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    .line 144
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    return-object p1

    .line 146
    .line 147
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .line 152
    const-string v1, "fail to decode downloaded image data from "

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    iget-object v1, p0, Lcom/narvii/media/SaveImageHelper$3;->val$url:Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    move-result-object v0

    .line 165
    .line 166
    .line 167
    invoke-static {v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 168
    .line 169
    new-instance v0, Lcom/android/volley/VolleyError;

    .line 170
    .line 171
    .line 172
    invoke-direct {v0, p1}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    .line 173
    .line 174
    .line 175
    invoke-static {v0}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    .line 176
    move-result-object p1

    .line 177
    return-object p1
.end method
