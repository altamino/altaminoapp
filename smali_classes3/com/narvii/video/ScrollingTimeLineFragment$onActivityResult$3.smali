.class final Lcom/narvii/video/ScrollingTimeLineFragment$onActivityResult$3;
.super Ljava/lang/Object;
.source "ScrollingTimeLineFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/ScrollingTimeLineFragment;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $newActiveClipIndex:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic this$0:Lcom/narvii/video/ScrollingTimeLineFragment;


# direct methods
.method constructor <init>(Lcom/narvii/video/ScrollingTimeLineFragment;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/ScrollingTimeLineFragment$onActivityResult$3;->this$0:Lcom/narvii/video/ScrollingTimeLineFragment;

    iput-object p2, p0, Lcom/narvii/video/ScrollingTimeLineFragment$onActivityResult$3;->$newActiveClipIndex:Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 155
    iget-object v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment$onActivityResult$3;->this$0:Lcom/narvii/video/ScrollingTimeLineFragment;

    iget-object v1, p0, Lcom/narvii/video/ScrollingTimeLineFragment$onActivityResult$3;->$newActiveClipIndex:Lkotlin/jvm/internal/Ref$IntRef;

    iget v1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/narvii/video/ScrollingTimeLineFragment;->updateVideoTimeLineInfo(ZI)V

    .line 156
    iget-object v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment$onActivityResult$3;->this$0:Lcom/narvii/video/ScrollingTimeLineFragment;

    iget-object v1, p0, Lcom/narvii/video/ScrollingTimeLineFragment$onActivityResult$3;->$newActiveClipIndex:Lkotlin/jvm/internal/Ref$IntRef;

    iget v1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v0, v1, v2}, Lcom/narvii/video/BaseMediaEditorFragment;->safeSeekTo(II)V

    return-void
.end method
