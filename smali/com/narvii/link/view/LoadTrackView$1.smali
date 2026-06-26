.class Lcom/narvii/link/view/LoadTrackView$1;
.super Ljava/lang/Object;
.source "LoadTrackView.java"

# interfaces
.implements Lcom/narvii/image/ImageLoadTrackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/link/view/LoadTrackView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/link/view/LoadTrackView;


# direct methods
.method constructor <init>(Lcom/narvii/link/view/LoadTrackView;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/narvii/link/view/LoadTrackView$1;->this$0:Lcom/narvii/link/view/LoadTrackView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFinished()V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/narvii/link/view/LoadTrackView$1;->this$0:Lcom/narvii/link/view/LoadTrackView;

    invoke-virtual {v0}, Lcom/narvii/link/view/LoadTrackView;->checkIfAllLoadFinished()V

    return-void
.end method
