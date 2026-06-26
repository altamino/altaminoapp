.class Lcom/narvii/comment/list/CommentListAdapter$CommentTagClickListener;
.super Lcom/narvii/util/text/DefaultTagClickListener;
.source "CommentListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/comment/list/CommentListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommentTagClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/comment/list/CommentListAdapter;


# direct methods
.method private constructor <init>(Lcom/narvii/comment/list/CommentListAdapter;)V
    .locals 0

    .line 586
    iput-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter$CommentTagClickListener;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    invoke-direct {p0}, Lcom/narvii/util/text/DefaultTagClickListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/comment/list/CommentListAdapter;Lcom/narvii/comment/list/CommentListAdapter$1;)V
    .locals 0

    .line 586
    invoke-direct {p0, p1}, Lcom/narvii/comment/list/CommentListAdapter$CommentTagClickListener;-><init>(Lcom/narvii/comment/list/CommentListAdapter;)V

    return-void
.end method


# virtual methods
.method protected startActivity(Landroid/view/View;Landroid/content/Intent;)V
    .locals 0

    .line 589
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter$CommentTagClickListener;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    invoke-virtual {p1, p2}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
