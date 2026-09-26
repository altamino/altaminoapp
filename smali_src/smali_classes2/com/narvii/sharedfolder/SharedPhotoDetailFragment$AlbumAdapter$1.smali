.class Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter$1;->this$1:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter$1;->this$1:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;->m(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;Z)V

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter$1;->this$1:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;

    .line 9
    const/4 v0, 0x1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lcom/narvii/list/NVPagedAdapter;->loadNextPage(Z)V

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter$1;->this$1:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$AlbumAdapter;->notifyDataSetChanged()V

    .line 18
    return-void
.end method
