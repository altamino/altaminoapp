.class public final Lcom/narvii/prefs/StorageFragment$StorageAsyncTask;
.super Landroid/os/AsyncTask;
.source "StorageFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/prefs/StorageFragment;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final pos:I

.field final synthetic this$0:Lcom/narvii/prefs/StorageFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/prefs/StorageFragment;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 180
    iput-object p1, p0, Lcom/narvii/prefs/StorageFragment$StorageAsyncTask;->this$0:Lcom/narvii/prefs/StorageFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput p2, p0, Lcom/narvii/prefs/StorageFragment$StorageAsyncTask;->pos:I

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 180
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/narvii/prefs/StorageFragment$StorageAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 1

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    iget p1, p0, Lcom/narvii/prefs/StorageFragment$StorageAsyncTask;->pos:I

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 191
    :cond_0
    iget-object p1, p0, Lcom/narvii/prefs/StorageFragment$StorageAsyncTask;->this$0:Lcom/narvii/prefs/StorageFragment;

    invoke-static {p1}, Lcom/narvii/prefs/StorageFragment;->access$getDraftsSize(Lcom/narvii/prefs/StorageFragment;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 188
    :cond_1
    iget-object p1, p0, Lcom/narvii/prefs/StorageFragment$StorageAsyncTask;->this$0:Lcom/narvii/prefs/StorageFragment;

    invoke-static {p1}, Lcom/narvii/prefs/StorageFragment;->access$getAssetsSize(Lcom/narvii/prefs/StorageFragment;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 185
    :cond_2
    iget-object p1, p0, Lcom/narvii/prefs/StorageFragment$StorageAsyncTask;->this$0:Lcom/narvii/prefs/StorageFragment;

    invoke-static {p1}, Lcom/narvii/prefs/StorageFragment;->access$getCacheSize(Lcom/narvii/prefs/StorageFragment;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final getPos()I
    .locals 1

    .line 180
    iget v0, p0, Lcom/narvii/prefs/StorageFragment$StorageAsyncTask;->pos:I

    return v0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 180
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/narvii/prefs/StorageFragment$StorageAsyncTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 199
    iget-object v0, p0, Lcom/narvii/prefs/StorageFragment$StorageAsyncTask;->this$0:Lcom/narvii/prefs/StorageFragment;

    invoke-static {v0}, Lcom/narvii/prefs/StorageFragment;->access$getList$p(Lcom/narvii/prefs/StorageFragment;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/narvii/prefs/StorageFragment$StorageAsyncTask;->pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/prefs/StorageFragment$StorageModel;

    invoke-virtual {v0, p1}, Lcom/narvii/prefs/StorageFragment$StorageModel;->setStorageSize(Ljava/lang/String;)V

    .line 200
    iget-object p1, p0, Lcom/narvii/prefs/StorageFragment$StorageAsyncTask;->this$0:Lcom/narvii/prefs/StorageFragment;

    invoke-static {p1}, Lcom/narvii/prefs/StorageFragment;->access$getAdapter$p(Lcom/narvii/prefs/StorageFragment;)Lcom/narvii/prefs/StorageFragment$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/list/prefs/PrefsAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
