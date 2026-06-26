.class Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$1;
.super Ljava/lang/Object;
.source "SharedAlbumInfoPostActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 93
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$1;->this$0:Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 96
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity$1;->this$0:Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;

    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedAlbumInfoPostActivity;->post:Lcom/narvii/sharedfolder/AlbumInfoPost;

    if-eqz p2, :cond_0

    const/4 p2, 0x4

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput p2, p1, Lcom/narvii/sharedfolder/AlbumInfoPost;->status:I

    return-void
.end method
