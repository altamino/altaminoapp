.class Lcom/narvii/sharedfolder/AddAlbumDialogCallback$2;
.super Ljava/lang/Object;
.source "AddAlbumDialogCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/AddAlbumDialogCallback;->call(Lcom/narvii/app/NVActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/sharedfolder/AddAlbumDialogCallback;

.field final synthetic val$builder:Landroid/app/AlertDialog$Builder;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/AddAlbumDialogCallback;Landroid/app/AlertDialog$Builder;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/narvii/sharedfolder/AddAlbumDialogCallback$2;->this$0:Lcom/narvii/sharedfolder/AddAlbumDialogCallback;

    iput-object p2, p0, Lcom/narvii/sharedfolder/AddAlbumDialogCallback$2;->val$builder:Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/narvii/sharedfolder/AddAlbumDialogCallback$2;->val$builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
