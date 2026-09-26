.class Lcom/narvii/media/SaveImageFragment$1;
.super Lcom/android/volley/Request;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/media/SaveImageFragment;->saveHttpImage(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/volley/Request<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/media/SaveImageFragment;

.field uri:Landroid/net/Uri;

.field final synthetic val$origUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/media/SaveImageFragment;ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/SaveImageFragment$1;->this$0:Lcom/narvii/media/SaveImageFragment;

    .line 3
    .line 4
    iput-object p5, p0, Lcom/narvii/media/SaveImageFragment$1;->val$origUrl:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2, p3, p4}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 8
    return-void
.end method


# virtual methods
.method protected deliverResponse(Ljava/lang/Object;)V
    .locals 3

    .line 1
    .line 2
    instance-of v0, p1, Ljava/io/File;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/media/SaveImageFragment$1;->this$0:Lcom/narvii/media/SaveImageFragment;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/narvii/media/SaveImageFragment;->r(Lcom/narvii/media/SaveImageFragment;)Landroid/app/Dialog;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/media/SaveImageFragment$1;->this$0:Lcom/narvii/media/SaveImageFragment;

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/narvii/media/SaveImageFragment;->t(Lcom/narvii/media/SaveImageFragment;Lcom/android/volley/Request;)V

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/media/SaveImageFragment$1;->this$0:Lcom/narvii/media/SaveImageFragment;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/narvii/media/SaveImageFragment$1;->val$origUrl:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/narvii/media/SaveImageFragment$1;->uri:Landroid/net/Uri;

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1, v2, p1}, Lcom/narvii/media/SaveImageFragment;->y(Lcom/narvii/media/SaveImageFragment;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Object;)V

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :cond_0
    iget-object p1, p0, Lcom/narvii/media/SaveImageFragment$1;->this$0:Lcom/narvii/media/SaveImageFragment;

    .line 32
    .line 33
    .line 34
    invoke-static {p1, v1}, Lcom/narvii/media/SaveImageFragment;->t(Lcom/narvii/media/SaveImageFragment;Lcom/android/volley/Request;)V

    .line 35
    .line 36
    iget-object p1, p0, Lcom/narvii/media/SaveImageFragment$1;->this$0:Lcom/narvii/media/SaveImageFragment;

    .line 37
    .line 38
    .line 39
    invoke-static {p1, p0}, Lcom/narvii/media/SaveImageFragment;->z(Lcom/narvii/media/SaveImageFragment;Lcom/android/volley/Request;)V

    .line 40
    :goto_0
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
            "Ljava/lang/Object;",
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
    iget-object v0, p0, Lcom/narvii/media/SaveImageFragment$1;->this$0:Lcom/narvii/media/SaveImageFragment;

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    const-string v2, "fail to download image data: "

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
    invoke-static {v0, p1}, Lcom/narvii/media/SaveImageFragment;->v(Lcom/narvii/media/SaveImageFragment;Ljava/lang/String;)Lcom/android/volley/Response;

    .line 37
    move-result-object p1

    .line 38
    return-object p1

    .line 39
    :catch_0
    move-exception p1

    .line 40
    goto :goto_1

    .line 41
    .line 42
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/narvii/media/SaveImageFragment$1;->this$0:Lcom/narvii/media/SaveImageFragment;

    .line 43
    .line 44
    iget-object p1, p1, Lcom/android/volley/NetworkResponse;->data:[B

    .line 45
    .line 46
    iget-object v1, p0, Lcom/narvii/media/SaveImageFragment$1;->val$origUrl:Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p1, v1}, Lcom/narvii/media/SaveImageFragment;->addWatermark([BLjava/lang/String;)[B

    .line 50
    move-result-object p1

    .line 51
    .line 52
    iget-object v0, p0, Lcom/narvii/media/SaveImageFragment$1;->this$0:Lcom/narvii/media/SaveImageFragment;

    .line 53
    .line 54
    .line 55
    invoke-static {v0, p1}, Lcom/narvii/media/SaveImageFragment;->u(Lcom/narvii/media/SaveImageFragment;[B)Landroid/graphics/BitmapFactory$Options;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    iget-object v1, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 61
    .line 62
    if-eqz v1, :cond_3

    .line 63
    .line 64
    iget-object v1, p0, Lcom/narvii/media/SaveImageFragment$1;->this$0:Lcom/narvii/media/SaveImageFragment;

    .line 65
    .line 66
    .line 67
    invoke-static {v1, p1, v0}, Lcom/narvii/media/SaveImageFragment;->A(Lcom/narvii/media/SaveImageFragment;[BLandroid/graphics/BitmapFactory$Options;)Ljava/io/File;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    iget-object v1, p0, Lcom/narvii/media/SaveImageFragment$1;->this$0:Lcom/narvii/media/SaveImageFragment;

    .line 71
    .line 72
    iget-object v1, v1, Lcom/narvii/media/SaveImageFragment;->saveImageHelper:Lcom/narvii/media/SaveImageHelper;

    .line 73
    .line 74
    iget-object v2, p0, Lcom/narvii/media/SaveImageFragment$1;->val$origUrl:Ljava/lang/String;

    .line 75
    .line 76
    iget-object v0, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, p1, v2, v0}, Lcom/narvii/media/SaveImageHelper;->saveToGallery(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 80
    move-result-object p1

    .line 81
    .line 82
    iput-object p1, p0, Lcom/narvii/media/SaveImageFragment$1;->uri:Landroid/net/Uri;

    .line 83
    .line 84
    if-nez p1, :cond_2

    .line 85
    .line 86
    iget-object p1, p0, Lcom/narvii/media/SaveImageFragment$1;->this$0:Lcom/narvii/media/SaveImageFragment;

    .line 87
    .line 88
    const-string v0, "fail to save image to gallery"

    .line 89
    .line 90
    .line 91
    invoke-static {p1, v0}, Lcom/narvii/media/SaveImageFragment;->v(Lcom/narvii/media/SaveImageFragment;Ljava/lang/String;)Lcom/android/volley/Response;

    .line 92
    move-result-object p1

    .line 93
    return-object p1

    .line 94
    .line 95
    :cond_2
    new-instance p1, Ljava/io/File;

    .line 96
    .line 97
    iget-object v0, p0, Lcom/narvii/media/SaveImageFragment$1;->uri:Landroid/net/Uri;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 101
    move-result-object v0

    .line 102
    .line 103
    .line 104
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    const/4 v0, 0x0

    .line 109
    .line 110
    .line 111
    invoke-static {p1, v0}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    .line 112
    move-result-object p1

    .line 113
    return-object p1

    .line 114
    .line 115
    :cond_3
    iget-object p1, p0, Lcom/narvii/media/SaveImageFragment$1;->this$0:Lcom/narvii/media/SaveImageFragment;

    .line 116
    .line 117
    const-string v0, "malformed image data"

    .line 118
    .line 119
    .line 120
    invoke-static {p1, v0}, Lcom/narvii/media/SaveImageFragment;->v(Lcom/narvii/media/SaveImageFragment;Ljava/lang/String;)Lcom/android/volley/Response;

    .line 121
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    return-object p1

    .line 123
    .line 124
    :goto_1
    iget-object v0, p0, Lcom/narvii/media/SaveImageFragment$1;->this$0:Lcom/narvii/media/SaveImageFragment;

    .line 125
    .line 126
    iget-object v1, p0, Lcom/narvii/media/SaveImageFragment$1;->val$origUrl:Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    invoke-static {v0, v1, p1}, Lcom/narvii/media/SaveImageFragment;->w(Lcom/narvii/media/SaveImageFragment;Ljava/lang/String;Ljava/lang/Exception;)Lcom/android/volley/Response;

    .line 130
    move-result-object p1

    .line 131
    return-object p1
.end method
