.class public Lcom/narvii/comment/list/CommentListAdapter$ReadMore;
.super Ljava/lang/Object;
.source "CommentListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/comment/list/CommentListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReadMore"
.end annotation


# instance fields
.field head:Lcom/narvii/model/Comment;


# direct methods
.method constructor <init>(Lcom/narvii/model/Comment;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter$ReadMore;->head:Lcom/narvii/model/Comment;

    return-void
.end method
