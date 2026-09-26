.class public final synthetic Lcom/narvii/video/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/video/interfaces/OnSeekingPositionListener;


# instance fields
.field public final synthetic a:Lcom/narvii/video/BaseMediaEditorFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/video/BaseMediaEditorFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/q;->a:Lcom/narvii/video/BaseMediaEditorFragment;

    return-void
.end method


# virtual methods
.method public final onSeekingPositionChanged(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/video/q;->a:Lcom/narvii/video/BaseMediaEditorFragment;

    invoke-static {v0, p1, p2}, Lcom/narvii/video/BaseMediaEditorFragment;->s(Lcom/narvii/video/BaseMediaEditorFragment;J)V

    return-void
.end method
