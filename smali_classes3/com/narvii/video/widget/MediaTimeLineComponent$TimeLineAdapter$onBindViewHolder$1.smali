.class final Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter$onBindViewHolder$1;
.super Ljava/lang/Object;
.source "MediaTimeLineComponent.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->onBindViewHolder(Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaTimeLineComponent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaTimeLineComponent.kt\ncom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter$onBindViewHolder$1\n*L\n1#1,1175:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $targetMediaClip:Lcom/narvii/video/interfaces/ITimelineClip;

.field final synthetic this$0:Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;Lcom/narvii/video/interfaces/ITimelineClip;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter$onBindViewHolder$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;

    iput-object p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter$onBindViewHolder$1;->$targetMediaClip:Lcom/narvii/video/interfaces/ITimelineClip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1034
    iget-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter$onBindViewHolder$1;->$targetMediaClip:Lcom/narvii/video/interfaces/ITimelineClip;

    if-eqz p1, :cond_0

    .line 1035
    iget-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter$onBindViewHolder$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;

    iget-object p1, p1, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {p1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getTimeLineCallback$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter$onBindViewHolder$1;->$targetMediaClip:Lcom/narvii/video/interfaces/ITimelineClip;

    invoke-interface {p1, v0}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;->onTimeLineClicked(Lcom/narvii/video/interfaces/ITimelineClip;)V

    :cond_0
    return-void
.end method
