.class public Lcom/narvii/util/emojione/EmojioneLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final executor:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field bmp:Landroid/graphics/Bitmap;

.field emoji:Ljava/lang/String;

.field iv:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    const-string v1, "emojione"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->createThreadPoolExecutor(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    sput-object v0, Lcom/narvii/util/emojione/EmojioneLoader;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/util/emojione/EmojioneLoader;->emoji:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/util/emojione/EmojioneLoader;->iv:Landroid/widget/ImageView;

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/emojione/EmojioneLoader;->bmp:Landroid/graphics/Bitmap;

    .line 3
    .line 4
    if-nez v0, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/util/emojione/EmojioneLoader;->iv:Landroid/widget/ImageView;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/util/emojione/EmojioneLoader;->emoji:Ljava/lang/String;

    .line 13
    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/narvii/util/emojione/EmojionePng;->getAssetsPath(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    :try_start_0
    iget-object v1, p0, Lcom/narvii/util/emojione/EmojioneLoader;->iv:Landroid/widget/ImageView;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    iput-object v1, p0, Lcom/narvii/util/emojione/EmojioneLoader;->bmp:Landroid/graphics/Bitmap;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    .line 49
    .line 50
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/narvii/util/emojione/EmojioneLoader;->bmp:Landroid/graphics/Bitmap;

    .line 51
    .line 52
    if-eqz v0, :cond_4

    .line 53
    .line 54
    iget-object v0, p0, Lcom/narvii/util/emojione/EmojioneLoader;->iv:Landroid/widget/ImageView;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    iget-object v1, p0, Lcom/narvii/util/emojione/EmojioneLoader;->emoji:Ljava/lang/String;

    .line 61
    .line 62
    if-ne v0, v1, :cond_1

    .line 63
    .line 64
    .line 65
    invoke-static {p0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 66
    goto :goto_1

    .line 67
    .line 68
    :cond_1
    iget-object v0, p0, Lcom/narvii/util/emojione/EmojioneLoader;->bmp:Landroid/graphics/Bitmap;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 72
    goto :goto_1

    .line 73
    .line 74
    :cond_2
    iget-object v0, p0, Lcom/narvii/util/emojione/EmojioneLoader;->iv:Landroid/widget/ImageView;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 78
    move-result-object v0

    .line 79
    .line 80
    iget-object v1, p0, Lcom/narvii/util/emojione/EmojioneLoader;->emoji:Ljava/lang/String;

    .line 81
    .line 82
    if-ne v0, v1, :cond_3

    .line 83
    .line 84
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 85
    .line 86
    iget-object v1, p0, Lcom/narvii/util/emojione/EmojioneLoader;->bmp:Landroid/graphics/Bitmap;

    .line 87
    .line 88
    .line 89
    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 90
    .line 91
    iget-object v1, p0, Lcom/narvii/util/emojione/EmojioneLoader;->iv:Landroid/widget/ImageView;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    goto :goto_1

    .line 96
    .line 97
    :cond_3
    iget-object v0, p0, Lcom/narvii/util/emojione/EmojioneLoader;->bmp:Landroid/graphics/Bitmap;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 101
    :cond_4
    :goto_1
    return-void
.end method
