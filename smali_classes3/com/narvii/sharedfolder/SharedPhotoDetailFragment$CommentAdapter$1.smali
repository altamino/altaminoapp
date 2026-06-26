.class Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter$1;
.super Ljava/lang/Object;
.source "SharedPhotoDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;)V
    .locals 0

    .line 1100
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter$1;->this$1:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1103
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter$1;->this$1:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;

    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    invoke-static {p1}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->access$800(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;)V

    return-void
.end method
