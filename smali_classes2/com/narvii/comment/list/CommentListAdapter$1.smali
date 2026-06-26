.class Lcom/narvii/comment/list/CommentListAdapter$1;
.super Lcom/narvii/community/CommunityHelper;
.source "CommentListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/comment/list/CommentListAdapter;-><init>(Lcom/narvii/app/NVContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/comment/list/CommentListAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/comment/list/CommentListAdapter;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter$1;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    invoke-direct {p0, p2}, Lcom/narvii/community/CommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected startActivity(Landroid/content/Intent;)V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter$1;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    invoke-virtual {v0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
