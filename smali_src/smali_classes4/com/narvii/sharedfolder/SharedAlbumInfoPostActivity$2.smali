.class Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    .line 2
    if-eqz p2, :cond_1

    .line 3
    const/4 p1, 0x1

    .line 4
    .line 5
    if-eq p2, p1, :cond_0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    :cond_0
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/narvii/post/BasePostActivity;->startPost()V

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_1
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$2;->this$0:Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->finish()V

    .line 18
    :goto_0
    return-void
.end method
