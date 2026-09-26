.class public final synthetic Lcom/narvii/video/widget/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/video/interfaces/ITimelineClip;

.field public final synthetic b:Lcom/narvii/video/widget/MediaTimeLineComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/video/interfaces/ITimelineClip;Lcom/narvii/video/widget/MediaTimeLineComponent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/p;->a:Lcom/narvii/video/interfaces/ITimelineClip;

    iput-object p2, p0, Lcom/narvii/video/widget/p;->b:Lcom/narvii/video/widget/MediaTimeLineComponent;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/video/widget/p;->a:Lcom/narvii/video/interfaces/ITimelineClip;

    iget-object v1, p0, Lcom/narvii/video/widget/p;->b:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v0, v1, p1}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->g(Lcom/narvii/video/interfaces/ITimelineClip;Lcom/narvii/video/widget/MediaTimeLineComponent;Landroid/view/View;)V

    return-void
.end method
