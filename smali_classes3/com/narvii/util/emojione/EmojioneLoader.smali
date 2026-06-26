.class public Lcom/narvii/util/emojione/EmojioneLoader;
.super Ljava/lang/Object;
.source "EmojioneLoader.java"

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

    const/4 v0, 0x2

    const-string v1, "emojione"

    .line 20
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->createThreadPoolExecutor(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    sput-object v0, Lcom/narvii/util/emojione/EmojioneLoader;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/narvii/util/emojione/EmojioneLoader;->emoji:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/narvii/util/emojione/EmojioneLoader;->iv:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/narvii/util/emojione/EmojioneLoader;->bmp:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 34
    iget-object v0, p0, Lcom/narvii/util/emojione/EmojioneLoader;->iv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/util/emojione/EmojioneLoader;->emoji:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    .line 35
    invoke-static {v1}, Lcom/narvii/util/emojione/EmojionePng;->getAssetsPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    :try_start_0
    iget-object v1, p0, Lcom/narvii/util/emojione/EmojioneLoader;->iv:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 39
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/util/emojione/EmojioneLoader;->bmp:Landroid/graphics/Bitmap;

    .line 40
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 42
    invoke-static {v0}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    .line 46
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/narvii/util/emojione/EmojioneLoader;->bmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 47
    iget-object v0, p0, Lcom/narvii/util/emojione/EmojioneLoader;->iv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/util/emojione/EmojioneLoader;->emoji:Ljava/lang/String;

    if-ne v0, v1, :cond_1

    .line 48
    invoke-static {p0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/narvii/util/emojione/EmojioneLoader;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 54
    :cond_2
    iget-object v0, p0, Lcom/narvii/util/emojione/EmojioneLoader;->iv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/util/emojione/EmojioneLoader;->emoji:Ljava/lang/String;

    if-ne v0, v1, :cond_3

    .line 55
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/narvii/util/emojione/EmojioneLoader;->bmp:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 56
    iget-object v1, p0, Lcom/narvii/util/emojione/EmojioneLoader;->iv:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 58
    :cond_3
    iget-object v0, p0, Lcom/narvii/util/emojione/EmojioneLoader;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    :goto_1
    return-void
.end method
