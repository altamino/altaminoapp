.class final Lcom/narvii/video/BaseViceTimeLineFragment$innerInitViceTimeLine$1;
.super Ljava/lang/Object;
.source "BaseViceTimeLineFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/BaseViceTimeLineFragment;->innerInitViceTimeLine(IIZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $trackIndex:I

.field final synthetic this$0:Lcom/narvii/video/BaseViceTimeLineFragment;


# direct methods
.method constructor <init>(Lcom/narvii/video/BaseViceTimeLineFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/BaseViceTimeLineFragment$innerInitViceTimeLine$1;->this$0:Lcom/narvii/video/BaseViceTimeLineFragment;

    iput p2, p0, Lcom/narvii/video/BaseViceTimeLineFragment$innerInitViceTimeLine$1;->$trackIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 250
    iget-object p1, p0, Lcom/narvii/video/BaseViceTimeLineFragment$innerInitViceTimeLine$1;->this$0:Lcom/narvii/video/BaseViceTimeLineFragment;

    iget v0, p0, Lcom/narvii/video/BaseViceTimeLineFragment$innerInitViceTimeLine$1;->$trackIndex:I

    invoke-virtual {p1, v0}, Lcom/narvii/video/BaseViceTimeLineFragment;->onViceTrackClicked(I)V

    return-void
.end method
