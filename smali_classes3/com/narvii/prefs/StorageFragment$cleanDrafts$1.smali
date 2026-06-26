.class final Lcom/narvii/prefs/StorageFragment$cleanDrafts$1;
.super Ljava/lang/Object;
.source "StorageFragment.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/prefs/StorageFragment;->cleanDrafts(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStorageFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StorageFragment.kt\ncom/narvii/prefs/StorageFragment$cleanDrafts$1\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,353:1\n10894#2,2:354\n*E\n*S KotlinDebug\n*F\n+ 1 StorageFragment.kt\ncom/narvii/prefs/StorageFragment$cleanDrafts$1\n*L\n334#1,2:354\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/prefs/StorageFragment;


# direct methods
.method constructor <init>(Lcom/narvii/prefs/StorageFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/prefs/StorageFragment$cleanDrafts$1;->this$0:Lcom/narvii/prefs/StorageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 333
    iget-object p1, p0, Lcom/narvii/prefs/StorageFragment$cleanDrafts$1;->this$0:Lcom/narvii/prefs/StorageFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/post/DraftManager;->getDraftsRootDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->deleteDir(Ljava/io/File;)Z

    .line 334
    iget-object p1, p0, Lcom/narvii/prefs/StorageFragment$cleanDrafts$1;->this$0:Lcom/narvii/prefs/StorageFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/post/DraftManager;->listArchiveFiles(Landroid/content/Context;)[Ljava/io/File;

    move-result-object p1

    const-string p2, "DraftManager.listArchiveFiles(context)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 354
    array-length p2, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    aget-object v2, p1, v1

    .line 334
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 335
    :cond_0
    new-instance p1, Lcom/narvii/prefs/StorageFragment$StorageAsyncTask;

    iget-object p2, p0, Lcom/narvii/prefs/StorageFragment$cleanDrafts$1;->this$0:Lcom/narvii/prefs/StorageFragment;

    const/4 v1, 0x2

    invoke-direct {p1, p2, v1}, Lcom/narvii/prefs/StorageFragment$StorageAsyncTask;-><init>(Lcom/narvii/prefs/StorageFragment;I)V

    new-array p2, v0, [Ljava/lang/Void;

    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
