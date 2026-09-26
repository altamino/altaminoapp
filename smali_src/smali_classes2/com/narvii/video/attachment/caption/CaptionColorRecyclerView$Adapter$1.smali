.class Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter$1;->this$1:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter$1;->this$1:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;->this$0:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 8
    move-result p1

    .line 9
    const/4 v0, -0x1

    .line 10
    .line 11
    if-eq p1, v0, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter$1;->this$1:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;->this$0:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->access$000(Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;)Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    iget-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter$1;->this$1:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;->this$0:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;

    .line 28
    const/4 v0, 0x0

    .line 29
    .line 30
    .line 31
    invoke-static {p1, v0}, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->access$102(Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;Z)Z

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter$1;->this$1:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p1}, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;->getItemColor(I)I

    .line 38
    move-result p1

    .line 39
    .line 40
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter$1;->this$1:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;->this$0:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;

    .line 43
    .line 44
    .line 45
    invoke-static {v0, p1}, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->access$202(Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;I)I

    .line 46
    .line 47
    iget-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter$1;->this$1:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;

    .line 48
    .line 49
    iget-object p1, p1, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;->this$0:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;

    .line 50
    const/4 v0, 0x1

    .line 51
    .line 52
    .line 53
    invoke-static {p1, v0}, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->access$102(Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;Z)Z

    .line 54
    .line 55
    :goto_0
    iget-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter$1;->this$1:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;

    .line 56
    .line 57
    iget-object p1, p1, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;->this$0:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;

    .line 58
    .line 59
    .line 60
    invoke-static {p1}, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->access$300(Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;)Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$OnColorSelectedListener;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    if-eqz p1, :cond_1

    .line 64
    .line 65
    iget-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter$1;->this$1:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;

    .line 66
    .line 67
    iget-object p1, p1, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;->this$0:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;

    .line 68
    .line 69
    .line 70
    invoke-static {p1}, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->access$300(Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;)Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$OnColorSelectedListener;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter$1;->this$1:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;

    .line 74
    .line 75
    iget-object v0, v0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;->this$0:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;

    .line 76
    .line 77
    .line 78
    invoke-static {v0}, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->access$200(Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;)I

    .line 79
    move-result v0

    .line 80
    .line 81
    iget-object v1, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter$1;->this$1:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;

    .line 82
    .line 83
    iget-object v1, v1, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;->this$0:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;

    .line 84
    .line 85
    .line 86
    invoke-static {v1}, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->access$100(Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;)Z

    .line 87
    move-result v1

    .line 88
    .line 89
    .line 90
    invoke-interface {p1, v0, v1}, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$OnColorSelectedListener;->onColorSelected(IZ)V

    .line 91
    .line 92
    :cond_1
    iget-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter$1;->this$1:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;

    .line 93
    .line 94
    iget-object p1, p1, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;->this$0:Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;

    .line 95
    .line 96
    .line 97
    invoke-static {p1}, Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;->access$400(Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView;)Lcom/narvii/video/attachment/caption/CaptionColorRecyclerView$Adapter;

    .line 98
    move-result-object p1

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 102
    :cond_2
    return-void
.end method
