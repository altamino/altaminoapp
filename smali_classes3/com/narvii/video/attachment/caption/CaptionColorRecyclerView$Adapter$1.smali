.class Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter$1;
.super Ljava/lang/Object;
.source "CaptionColorRecyclerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;


# direct methods
.method constructor <init>(Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter$1;->this$1:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter$1;->this$1:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;

    iget-object v0, v0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;->this$0:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 99
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter$1;->this$1:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;

    iget-object v0, v0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;->this$0:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;

    invoke-static {v0}, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->access$000(Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 100
    iget-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter$1;->this$1:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;

    iget-object p1, p1, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;->this$0:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->access$102(Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;Z)Z

    goto :goto_0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter$1;->this$1:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;

    invoke-virtual {v0, p1}, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;->getItemColor(I)I

    move-result p1

    .line 103
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter$1;->this$1:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;

    iget-object v0, v0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;->this$0:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;

    invoke-static {v0, p1}, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->access$202(Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;I)I

    .line 104
    iget-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter$1;->this$1:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;

    iget-object p1, p1, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;->this$0:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->access$102(Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;Z)Z

    .line 106
    :goto_0
    iget-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter$1;->this$1:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;

    iget-object p1, p1, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;->this$0:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;

    invoke-static {p1}, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->access$300(Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;)Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$OnColorSelectedListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 107
    iget-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter$1;->this$1:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;

    iget-object p1, p1, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;->this$0:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;

    invoke-static {p1}, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->access$300(Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;)Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$OnColorSelectedListener;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter$1;->this$1:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;

    iget-object v0, v0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;->this$0:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;

    invoke-static {v0}, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->access$200(Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;)I

    move-result v0

    iget-object v1, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter$1;->this$1:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;

    iget-object v1, v1, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;->this$0:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;

    invoke-static {v1}, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->access$100(Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;)Z

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$OnColorSelectedListener;->onColorSelected(IZ)V

    .line 109
    :cond_1
    iget-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter$1;->this$1:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;

    iget-object p1, p1, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;->this$0:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;

    invoke-static {p1}, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->access$400(Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;)Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method
