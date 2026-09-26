.class public final synthetic Lcom/narvii/notice/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/notice/NoticeListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/notice/NoticeListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/notice/d;->a:Lcom/narvii/notice/NoticeListFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/notice/d;->a:Lcom/narvii/notice/NoticeListFragment;

    invoke-static {v0, p1}, Lcom/narvii/notice/NoticeListFragment;->v(Lcom/narvii/notice/NoticeListFragment;Landroid/view/View;)V

    return-void
.end method
