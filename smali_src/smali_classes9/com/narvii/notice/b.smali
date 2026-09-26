.class public final synthetic Lcom/narvii/notice/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/notice/NoticeListFragment;

.field public final synthetic b:Lcom/narvii/model/Community;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/notice/NoticeListFragment;Lcom/narvii/model/Community;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/notice/b;->a:Lcom/narvii/notice/NoticeListFragment;

    iput-object p2, p0, Lcom/narvii/notice/b;->b:Lcom/narvii/model/Community;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/notice/b;->a:Lcom/narvii/notice/NoticeListFragment;

    iget-object v1, p0, Lcom/narvii/notice/b;->b:Lcom/narvii/model/Community;

    invoke-static {v0, v1, p1}, Lcom/narvii/notice/NoticeListFragment;->t(Lcom/narvii/notice/NoticeListFragment;Lcom/narvii/model/Community;Landroid/view/View;)V

    return-void
.end method
