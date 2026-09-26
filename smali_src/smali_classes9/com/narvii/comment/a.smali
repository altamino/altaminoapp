.class public final synthetic Lcom/narvii/comment/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/comment/CommentListFooterAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/comment/CommentListFooterAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/comment/a;->a:Lcom/narvii/comment/CommentListFooterAdapter;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/comment/a;->a:Lcom/narvii/comment/CommentListFooterAdapter;

    invoke-static {v0, p1}, Lcom/narvii/comment/CommentListFooterAdapter;->f(Lcom/narvii/comment/CommentListFooterAdapter;Landroid/view/View;)V

    return-void
.end method
