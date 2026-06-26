.class Lcom/narvii/sharedfolder/SharedAlbumTagView$1;
.super Ljava/lang/Object;
.source "SharedAlbumTagView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/SharedAlbumTagView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/sharedfolder/SharedAlbumTagView;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/SharedAlbumTagView;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumTagView$1;->this$0:Lcom/narvii/sharedfolder/SharedAlbumTagView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 31
    const-class p1, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 32
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumTagView$1;->this$0:Lcom/narvii/sharedfolder/SharedAlbumTagView;

    iget-object v0, v0, Lcom/narvii/sharedfolder/SharedAlbumTagView;->sharedAlbum:Lcom/narvii/model/SharedAlbum;

    invoke-virtual {v0}, Lcom/narvii/model/SharedAlbum;->id()Ljava/lang/String;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumTagView$1;->this$0:Lcom/narvii/sharedfolder/SharedAlbumTagView;

    iget-object v0, v0, Lcom/narvii/sharedfolder/SharedAlbumTagView;->sharedAlbum:Lcom/narvii/model/SharedAlbum;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "prefetch"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Source"

    const-string v1, "Shared Folder Media Tag"

    .line 34
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumTagView$1;->this$0:Lcom/narvii/sharedfolder/SharedAlbumTagView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
