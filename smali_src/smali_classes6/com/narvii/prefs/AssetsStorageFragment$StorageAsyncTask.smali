.class public final Lcom/narvii/prefs/AssetsStorageFragment$StorageAsyncTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/prefs/AssetsStorageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StorageAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[J>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAssetsStorageFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AssetsStorageFragment.kt\ncom/narvii/prefs/AssetsStorageFragment$StorageAsyncTask\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,281:1\n1864#2,3:282\n*S KotlinDebug\n*F\n+ 1 AssetsStorageFragment.kt\ncom/narvii/prefs/AssetsStorageFragment$StorageAsyncTask\n*L\n264#1:282,3\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/prefs/AssetsStorageFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/prefs/AssetsStorageFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/prefs/AssetsStorageFragment$StorageAsyncTask;->this$0:Lcom/narvii/prefs/AssetsStorageFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/narvii/prefs/AssetsStorageFragment$StorageAsyncTask;->doInBackground([Ljava/lang/Void;)[J

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[J
    .locals 5
    .param p1    # [Ljava/lang/Void;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x4

    new-array p1, p1, [J

    .line 2
    new-instance v0, Lcom/narvii/media/online/audio/AudioDownloader;

    iget-object v1, p0, Lcom/narvii/prefs/AssetsStorageFragment$StorageAsyncTask;->this$0:Lcom/narvii/prefs/AssetsStorageFragment;

    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/media/online/audio/AudioDownloader;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {v0}, Lcom/narvii/util/fileloader/FileLoader;->getDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getFolderSize(Ljava/io/File;)J

    move-result-wide v0

    const/4 v2, 0x0

    aput-wide v0, p1, v2

    iget-object v0, p0, Lcom/narvii/prefs/AssetsStorageFragment$StorageAsyncTask;->this$0:Lcom/narvii/prefs/AssetsStorageFragment;

    .line 3
    invoke-static {v0}, Lcom/narvii/prefs/AssetsStorageFragment;->access$getCaptionFont$p(Lcom/narvii/prefs/AssetsStorageFragment;)Lcom/narvii/asset/AssetDownloader;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/util/fileloader/FileLoader;->getCacheSize()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    const/4 v0, 0x1

    aput-wide v3, p1, v0

    iget-object v0, p0, Lcom/narvii/prefs/AssetsStorageFragment$StorageAsyncTask;->this$0:Lcom/narvii/prefs/AssetsStorageFragment;

    .line 4
    invoke-static {v0}, Lcom/narvii/prefs/AssetsStorageFragment;->access$getCaptionStyle$p(Lcom/narvii/prefs/AssetsStorageFragment;)Lcom/narvii/asset/AssetDownloader;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/narvii/util/fileloader/FileLoader;->getCacheSize()J

    move-result-wide v3

    goto :goto_1

    :cond_1
    move-wide v3, v1

    :goto_1
    const/4 v0, 0x2

    aput-wide v3, p1, v0

    iget-object v0, p0, Lcom/narvii/prefs/AssetsStorageFragment$StorageAsyncTask;->this$0:Lcom/narvii/prefs/AssetsStorageFragment;

    .line 5
    invoke-static {v0}, Lcom/narvii/prefs/AssetsStorageFragment;->access$getStickerHelper$p(Lcom/narvii/prefs/AssetsStorageFragment;)Lcom/narvii/scene/helper/StickerHelper;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/narvii/scene/helper/StickerHelper;->getCacheSize()J

    move-result-wide v1

    :cond_2
    const/4 v0, 0x3

    aput-wide v1, p1, v0

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, [J

    invoke-virtual {p0, p1}, Lcom/narvii/prefs/AssetsStorageFragment$StorageAsyncTask;->onPostExecute([J)V

    return-void
.end method

.method protected onPostExecute([J)V
    .locals 7
    .param p1    # [J
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/narvii/prefs/AssetsStorageFragment$StorageAsyncTask;->this$0:Lcom/narvii/prefs/AssetsStorageFragment;

    .line 2
    invoke-static {v0}, Lcom/narvii/prefs/AssetsStorageFragment;->access$getList$p(Lcom/narvii/prefs/AssetsStorageFragment;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "list"

    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    check-cast v0, Ljava/lang/Iterable;

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_1

    invoke-static {}, Lkotlin/collections/t;->w()V

    :cond_1
    check-cast v3, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;

    .line 4
    aget-wide v5, p1, v2

    invoke-virtual {v3, v5, v6}, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->setSize(J)V

    move v2, v4

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/narvii/prefs/AssetsStorageFragment$StorageAsyncTask;->this$0:Lcom/narvii/prefs/AssetsStorageFragment;

    .line 5
    invoke-static {p1}, Lcom/narvii/prefs/AssetsStorageFragment;->access$getAssetsAdapter$p(Lcom/narvii/prefs/AssetsStorageFragment;)Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;

    move-result-object p1

    if-nez p1, :cond_3

    const-string p1, "assetsAdapter"

    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v1, p1

    :goto_1
    invoke-virtual {v1}, Lcom/narvii/list/prefs/PrefsAdapter;->notifyDataSetChanged()V

    :cond_4
    return-void
.end method
