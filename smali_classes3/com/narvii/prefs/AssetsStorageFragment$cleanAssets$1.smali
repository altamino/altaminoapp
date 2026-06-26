.class final Lcom/narvii/prefs/AssetsStorageFragment$cleanAssets$1;
.super Ljava/lang/Object;
.source "AssetsStorageFragment.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/prefs/AssetsStorageFragment;->cleanAssets(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAssetsStorageFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AssetsStorageFragment.kt\ncom/narvii/prefs/AssetsStorageFragment$cleanAssets$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,281:1\n1587#2,2:282\n*E\n*S KotlinDebug\n*F\n+ 1 AssetsStorageFragment.kt\ncom/narvii/prefs/AssetsStorageFragment$cleanAssets$1\n*L\n228#1,2:282\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/prefs/AssetsStorageFragment;


# direct methods
.method constructor <init>(Lcom/narvii/prefs/AssetsStorageFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/prefs/AssetsStorageFragment$cleanAssets$1;->this$0:Lcom/narvii/prefs/AssetsStorageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 228
    iget-object p1, p0, Lcom/narvii/prefs/AssetsStorageFragment$cleanAssets$1;->this$0:Lcom/narvii/prefs/AssetsStorageFragment;

    invoke-static {p1}, Lcom/narvii/prefs/AssetsStorageFragment;->access$getList$p(Lcom/narvii/prefs/AssetsStorageFragment;)Ljava/util/List;

    move-result-object p1

    .line 282
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;

    .line 229
    invoke-virtual {p2}, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->getSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    invoke-virtual {p2}, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->getClearCache()Lkotlin/jvm/functions/Function0;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 231
    invoke-virtual {p2, v0}, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->setSelected(Z)V

    const-wide/16 v0, 0x0

    .line 232
    invoke-virtual {p2, v0, v1}, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->setSize(J)V

    goto :goto_0

    .line 235
    :cond_1
    iget-object p1, p0, Lcom/narvii/prefs/AssetsStorageFragment$cleanAssets$1;->this$0:Lcom/narvii/prefs/AssetsStorageFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0f1083

    invoke-static {p1, p2, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 236
    iget-object p1, p0, Lcom/narvii/prefs/AssetsStorageFragment$cleanAssets$1;->this$0:Lcom/narvii/prefs/AssetsStorageFragment;

    invoke-static {p1}, Lcom/narvii/prefs/AssetsStorageFragment;->access$getAssetsAdapter$p(Lcom/narvii/prefs/AssetsStorageFragment;)Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/list/prefs/PrefsAdapter;->notifyDataSetChanged()V

    .line 237
    iget-object p1, p0, Lcom/narvii/prefs/AssetsStorageFragment$cleanAssets$1;->this$0:Lcom/narvii/prefs/AssetsStorageFragment;

    invoke-static {p1, v0}, Lcom/narvii/prefs/AssetsStorageFragment;->access$updateSelectAllView(Lcom/narvii/prefs/AssetsStorageFragment;Z)V

    .line 238
    iget-object p1, p0, Lcom/narvii/prefs/AssetsStorageFragment$cleanAssets$1;->this$0:Lcom/narvii/prefs/AssetsStorageFragment;

    invoke-static {p1, v0}, Lcom/narvii/prefs/AssetsStorageFragment;->access$updateDeleteBtn(Lcom/narvii/prefs/AssetsStorageFragment;Z)V

    return-void
.end method
