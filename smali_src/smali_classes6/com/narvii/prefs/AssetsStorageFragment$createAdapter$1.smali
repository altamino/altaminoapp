.class final Lcom/narvii/prefs/AssetsStorageFragment$createAdapter$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/prefs/AssetsStorageFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/a<",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/prefs/AssetsStorageFragment;


# direct methods
.method constructor <init>(Lcom/narvii/prefs/AssetsStorageFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/prefs/AssetsStorageFragment$createAdapter$1;->this$0:Lcom/narvii/prefs/AssetsStorageFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/narvii/prefs/AssetsStorageFragment$createAdapter$1;->invoke()V

    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 2
    new-instance v0, Lcom/narvii/media/online/audio/AudioDownloader;

    iget-object v1, p0, Lcom/narvii/prefs/AssetsStorageFragment$createAdapter$1;->this$0:Lcom/narvii/prefs/AssetsStorageFragment;

    invoke-direct {v0, v1}, Lcom/narvii/media/online/audio/AudioDownloader;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {v0}, Lcom/narvii/util/fileloader/FileLoader;->getDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->deleteDir(Ljava/io/File;)Z

    return-void
.end method
