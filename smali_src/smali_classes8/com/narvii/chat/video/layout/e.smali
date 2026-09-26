.class public final synthetic Lcom/narvii/chat/video/layout/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/chat/video/layout/VideoPresenterItemView$SubViewClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/video/layout/VideoPresenterLayout;

.field public final synthetic b:Lcom/narvii/chat/video/layout/VideoPresenterItemView;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/video/layout/VideoPresenterLayout;Lcom/narvii/chat/video/layout/VideoPresenterItemView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/video/layout/e;->a:Lcom/narvii/chat/video/layout/VideoPresenterLayout;

    iput-object p2, p0, Lcom/narvii/chat/video/layout/e;->b:Lcom/narvii/chat/video/layout/VideoPresenterItemView;

    return-void
.end method


# virtual methods
.method public final onSubViewCliekedd(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/video/layout/e;->a:Lcom/narvii/chat/video/layout/VideoPresenterLayout;

    iget-object v1, p0, Lcom/narvii/chat/video/layout/e;->b:Lcom/narvii/chat/video/layout/VideoPresenterItemView;

    invoke-static {v0, v1, p1}, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->a(Lcom/narvii/chat/video/layout/VideoPresenterLayout;Lcom/narvii/chat/video/layout/VideoPresenterItemView;Landroid/view/View;)V

    return-void
.end method
