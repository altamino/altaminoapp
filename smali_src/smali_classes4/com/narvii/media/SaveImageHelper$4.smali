.class Lcom/narvii/media/SaveImageHelper$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/media/SaveImageHelper;->saveGifImage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/media/SaveImageHelper;

.field final synthetic val$gl:Lcom/narvii/util/drawables/gif/GifLoader;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/media/SaveImageHelper;Ljava/lang/String;Lcom/narvii/util/drawables/gif/GifLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/SaveImageHelper$4;->this$0:Lcom/narvii/media/SaveImageHelper;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/media/SaveImageHelper$4;->val$url:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/media/SaveImageHelper$4;->val$gl:Lcom/narvii/util/drawables/gif/GifLoader;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/SaveImageHelper$4;->this$0:Lcom/narvii/media/SaveImageHelper;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/media/SaveImageHelper;->d(Lcom/narvii/media/SaveImageHelper;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/media/SaveImageHelper$4;->val$url:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/narvii/media/SaveImageHelper$4;->val$gl:Lcom/narvii/util/drawables/gif/GifLoader;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/media/SaveImageHelper$4;->val$url:Ljava/lang/String;

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
    if-eq v0, v1, :cond_3

    .line 27
    const/4 v1, 0x2

    .line 28
    .line 29
    if-eq v0, v1, :cond_3

    .line 30
    const/4 v1, 0x3

    .line 31
    .line 32
    if-eq v0, v1, :cond_3

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/media/SaveImageHelper$4;->this$0:Lcom/narvii/media/SaveImageHelper;

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Lcom/narvii/media/SaveImageHelper;->b(Lcom/narvii/media/SaveImageHelper;)Landroid/app/Dialog;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 42
    .line 43
    iget-object v0, p0, Lcom/narvii/media/SaveImageHelper$4;->val$gl:Lcom/narvii/util/drawables/gif/GifLoader;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/narvii/media/SaveImageHelper$4;->val$url:Ljava/lang/String;

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
    if-eqz v1, :cond_1

    .line 56
    .line 57
    :try_start_0
    iget-object v1, p0, Lcom/narvii/media/SaveImageHelper$4;->this$0:Lcom/narvii/media/SaveImageHelper;

    .line 58
    .line 59
    iget-object v2, p0, Lcom/narvii/media/SaveImageHelper$4;->val$url:Ljava/lang/String;

    .line 60
    .line 61
    const-string v3, "image/gif"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v0, v2, v3}, Lcom/narvii/media/SaveImageHelper;->saveToGallery(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 65
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    goto :goto_0

    .line 67
    :catch_0
    move-exception v1

    .line 68
    .line 69
    const-string v2, "fail to save gif image to gallery"

    .line 70
    .line 71
    .line 72
    invoke-static {v2, v1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    :cond_1
    const/4 v1, 0x0

    .line 74
    .line 75
    :goto_0
    if-nez v1, :cond_2

    .line 76
    .line 77
    iget-object v0, p0, Lcom/narvii/media/SaveImageHelper$4;->this$0:Lcom/narvii/media/SaveImageHelper;

    .line 78
    .line 79
    iget-object v1, p0, Lcom/narvii/media/SaveImageHelper$4;->val$url:Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    invoke-static {v0, v1}, Lcom/narvii/media/SaveImageHelper;->h(Lcom/narvii/media/SaveImageHelper;Ljava/lang/String;)V

    .line 83
    goto :goto_1

    .line 84
    .line 85
    :cond_2
    iget-object v2, p0, Lcom/narvii/media/SaveImageHelper$4;->this$0:Lcom/narvii/media/SaveImageHelper;

    .line 86
    .line 87
    iget-object v3, p0, Lcom/narvii/media/SaveImageHelper$4;->val$url:Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    invoke-static {v2, v1, v0, v3}, Lcom/narvii/media/SaveImageHelper;->i(Lcom/narvii/media/SaveImageHelper;Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;)V

    .line 91
    goto :goto_1

    .line 92
    .line 93
    :cond_3
    const-wide/16 v0, 0x190

    .line 94
    .line 95
    .line 96
    invoke-static {p0, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 97
    :goto_1
    return-void
.end method
