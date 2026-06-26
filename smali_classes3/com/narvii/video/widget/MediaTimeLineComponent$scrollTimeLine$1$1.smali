.class final Lcom/narvii/video/widget/MediaTimeLineComponent$scrollTimeLine$1$1;
.super Ljava/lang/Object;
.source "MediaTimeLineComponent.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/widget/MediaTimeLineComponent;->scrollTimeLine(IZZZZIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $it:Lcom/narvii/widget/HorizontalRecyclerView;


# direct methods
.method constructor <init>(Lcom/narvii/widget/HorizontalRecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$scrollTimeLine$1$1;->$it:Lcom/narvii/widget/HorizontalRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 654
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$scrollTimeLine$1$1;->$it:Lcom/narvii/widget/HorizontalRecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;

    invoke-virtual {v0}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->refreshVisibleArea()V

    return-void

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.narvii.video.widget.MediaTimeLineComponent.TimeLineAdapter"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
