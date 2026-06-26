.class final Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$1;
.super Ljava/lang/Object;
.source "BaseMediaEditorFragment.kt"

# interfaces
.implements Lcom/narvii/video/interfaces/OnSeekingPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/BaseMediaEditorFragment;->initMediaPlayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/BaseMediaEditorFragment;


# direct methods
.method constructor <init>(Lcom/narvii/video/BaseMediaEditorFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$1;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSeekingPositionChanged(J)V
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/narvii/video/BaseMediaEditorFragment$initMediaPlayer$1;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/video/BaseMediaEditorFragment;->onVideoSeekingPositionChanged(J)V

    return-void
.end method
