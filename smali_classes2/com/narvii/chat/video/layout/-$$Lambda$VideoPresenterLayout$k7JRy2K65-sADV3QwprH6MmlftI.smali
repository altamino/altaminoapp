.class public final synthetic Lcom/narvii/chat/video/layout/-$$Lambda$VideoPresenterLayout$k7JRy2K65-sADV3QwprH6MmlftI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/narvii/chat/video/layout/VideoPresenterItemView$SubViewClickListener;


# instance fields
.field private final synthetic f$0:Lcom/narvii/chat/video/layout/VideoPresenterLayout;

.field private final synthetic f$1:Lcom/narvii/chat/video/layout/VideoPresenterItemView;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/video/layout/VideoPresenterLayout;Lcom/narvii/chat/video/layout/VideoPresenterItemView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/video/layout/-$$Lambda$VideoPresenterLayout$k7JRy2K65-sADV3QwprH6MmlftI;->f$0:Lcom/narvii/chat/video/layout/VideoPresenterLayout;

    iput-object p2, p0, Lcom/narvii/chat/video/layout/-$$Lambda$VideoPresenterLayout$k7JRy2K65-sADV3QwprH6MmlftI;->f$1:Lcom/narvii/chat/video/layout/VideoPresenterItemView;

    return-void
.end method


# virtual methods
.method public final onSubViewCliekedd(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/narvii/chat/video/layout/-$$Lambda$VideoPresenterLayout$k7JRy2K65-sADV3QwprH6MmlftI;->f$0:Lcom/narvii/chat/video/layout/VideoPresenterLayout;

    iget-object v1, p0, Lcom/narvii/chat/video/layout/-$$Lambda$VideoPresenterLayout$k7JRy2K65-sADV3QwprH6MmlftI;->f$1:Lcom/narvii/chat/video/layout/VideoPresenterItemView;

    invoke-virtual {v0, v1, p1}, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->lambda$configListener$0$VideoPresenterLayout(Lcom/narvii/chat/video/layout/VideoPresenterItemView;Landroid/view/View;)V

    return-void
.end method
