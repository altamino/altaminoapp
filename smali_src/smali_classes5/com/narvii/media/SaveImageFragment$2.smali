.class Lcom/narvii/media/SaveImageFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/media/SaveImageFragment;->saveGifImage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/media/SaveImageFragment;

.field final synthetic val$gl:Lcom/narvii/util/drawables/gif/GifLoader;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/media/SaveImageFragment;Ljava/lang/String;Lcom/narvii/util/drawables/gif/GifLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/SaveImageFragment$2;->this$0:Lcom/narvii/media/SaveImageFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/media/SaveImageFragment$2;->val$url:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/media/SaveImageFragment$2;->val$gl:Lcom/narvii/util/drawables/gif/GifLoader;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/SaveImageFragment$2;->this$0:Lcom/narvii/media/SaveImageFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/media/SaveImageFragment;->s(Lcom/narvii/media/SaveImageFragment;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/media/SaveImageFragment$2;->val$url:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    return-void

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/narvii/media/SaveImageFragment$2;->val$gl:Lcom/narvii/util/drawables/gif/GifLoader;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/media/SaveImageFragment$2;->val$url:Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/narvii/util/drawables/gif/GifLoader;->getLoadingState(Ljava/lang/String;)I

    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x1

    .line 25
    .line 26
    if-eq v0, v1, :cond_4

    .line 27
    const/4 v1, 0x2

    .line 28
    .line 29
    if-eq v0, v1, :cond_4

    .line 30
    const/4 v1, 0x3

    .line 31
    .line 32
    if-eq v0, v1, :cond_4

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/media/SaveImageFragment$2;->this$0:Lcom/narvii/media/SaveImageFragment;

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Lcom/narvii/media/SaveImageFragment;->r(Lcom/narvii/media/SaveImageFragment;)Landroid/app/Dialog;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 42
    .line 43
    iget-object v0, p0, Lcom/narvii/media/SaveImageFragment$2;->val$gl:Lcom/narvii/util/drawables/gif/GifLoader;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/narvii/media/SaveImageFragment$2;->val$url:Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/narvii/util/drawables/gif/GifLoader;->getFile(Ljava/lang/String;)Ljava/io/File;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Lcom/narvii/media/SaveImageHelper;->isNotEmpty(Ljava/io/File;)Z

    .line 53
    move-result v1

    .line 54
    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    :try_start_0
    iget-object v1, p0, Lcom/narvii/media/SaveImageFragment$2;->this$0:Lcom/narvii/media/SaveImageFragment;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 61
    move-result-object v1

    .line 62
    .line 63
    const-string v2, ".gif"

    .line 64
    .line 65
    .line 66
    invoke-static {v1, v2}, Lcom/narvii/media/SaveImageHelper;->getNewFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    .line 67
    move-result-object v1

    .line 68
    .line 69
    new-instance v2, Ljava/io/FileInputStream;

    .line 70
    .line 71
    .line 72
    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 73
    .line 74
    new-instance v3, Ljava/io/FileOutputStream;

    .line 75
    .line 76
    .line 77
    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 78
    .line 79
    const/16 v4, 0x1000

    .line 80
    .line 81
    new-array v4, v4, [B

    .line 82
    .line 83
    .line 84
    :goto_0
    invoke-virtual {v2, v4}, Ljava/io/FileInputStream;->read([B)I

    .line 85
    move-result v5

    .line 86
    const/4 v6, -0x1

    .line 87
    .line 88
    if-eq v5, v6, :cond_1

    .line 89
    const/4 v6, 0x0

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3, v4, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V

    .line 93
    goto :goto_0

    .line 94
    :catch_0
    move-exception v1

    .line 95
    goto :goto_1

    .line 96
    .line 97
    .line 98
    :cond_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 102
    .line 103
    iget-object v2, p0, Lcom/narvii/media/SaveImageFragment$2;->this$0:Lcom/narvii/media/SaveImageFragment;

    .line 104
    .line 105
    iget-object v2, v2, Lcom/narvii/media/SaveImageFragment;->saveImageHelper:Lcom/narvii/media/SaveImageHelper;

    .line 106
    .line 107
    iget-object v3, p0, Lcom/narvii/media/SaveImageFragment$2;->val$url:Ljava/lang/String;

    .line 108
    .line 109
    const-string v4, "image/gif"

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2, v1, v3, v4}, Lcom/narvii/media/SaveImageHelper;->saveToGallery(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 113
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    goto :goto_2

    .line 115
    .line 116
    :goto_1
    const-string v2, "fail to save gif image to gallery"

    .line 117
    .line 118
    .line 119
    invoke-static {v2, v1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 120
    :cond_2
    const/4 v1, 0x0

    .line 121
    .line 122
    :goto_2
    if-nez v1, :cond_3

    .line 123
    .line 124
    iget-object v1, p0, Lcom/narvii/media/SaveImageFragment$2;->this$0:Lcom/narvii/media/SaveImageFragment;

    .line 125
    .line 126
    iget-object v2, p0, Lcom/narvii/media/SaveImageFragment$2;->val$url:Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    invoke-static {v1, v2, v0}, Lcom/narvii/media/SaveImageFragment;->x(Lcom/narvii/media/SaveImageFragment;Ljava/lang/String;Ljava/io/File;)V

    .line 130
    goto :goto_3

    .line 131
    .line 132
    :cond_3
    iget-object v2, p0, Lcom/narvii/media/SaveImageFragment$2;->this$0:Lcom/narvii/media/SaveImageFragment;

    .line 133
    .line 134
    iget-object v3, p0, Lcom/narvii/media/SaveImageFragment$2;->val$url:Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    invoke-static {v2, v3, v1, v0}, Lcom/narvii/media/SaveImageFragment;->y(Lcom/narvii/media/SaveImageFragment;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Object;)V

    .line 138
    goto :goto_3

    .line 139
    .line 140
    :cond_4
    const-wide/16 v0, 0x190

    .line 141
    .line 142
    .line 143
    invoke-static {p0, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 144
    :goto_3
    return-void
.end method
