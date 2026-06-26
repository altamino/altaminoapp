.class Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$2;
.super Ljava/lang/Object;
.source "SharedAlbumInfoPostActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 172
    :cond_0
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;

    invoke-virtual {p1}, Lcom/narvii/post/BasePostActivity;->startPost()V

    goto :goto_0

    .line 169
    :cond_1
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;

    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->finish()V

    :goto_0
    return-void
.end method
