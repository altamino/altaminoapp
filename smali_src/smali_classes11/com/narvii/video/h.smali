.class public final synthetic Lcom/narvii/video/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/video/AudioEditorFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/video/AudioEditorFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/h;->a:Lcom/narvii/video/AudioEditorFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/video/h;->a:Lcom/narvii/video/AudioEditorFragment;

    invoke-static {v0}, Lcom/narvii/video/AudioEditorFragment;->L(Lcom/narvii/video/AudioEditorFragment;)V

    return-void
.end method
