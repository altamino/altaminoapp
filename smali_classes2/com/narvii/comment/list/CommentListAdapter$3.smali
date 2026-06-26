.class Lcom/narvii/comment/list/CommentListAdapter$3;
.super Ljava/lang/Object;
.source "CommentListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/comment/list/CommentListAdapter;->createListEndItem(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/comment/list/CommentListAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/comment/list/CommentListAdapter;)V
    .locals 0

    .line 624
    iput-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter$3;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 627
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter$3;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    return-void
.end method
