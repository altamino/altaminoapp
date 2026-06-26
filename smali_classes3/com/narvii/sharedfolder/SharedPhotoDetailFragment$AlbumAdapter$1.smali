.class Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter$1;
.super Ljava/lang/Object;
.source "SharedPhotoDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;)V
    .locals 0

    .line 943
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter$1;->this$1:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 946
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter$1;->this$1:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;->access$702(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;Z)Z

    .line 947
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter$1;->this$1:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/narvii/list/NVPagedAdapter;->loadNextPage(Z)V

    .line 948
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter$1;->this$1:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;

    invoke-virtual {p1}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;->notifyDataSetChanged()V

    return-void
.end method
