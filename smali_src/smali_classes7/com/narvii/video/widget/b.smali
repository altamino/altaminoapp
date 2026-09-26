.class public final synthetic Lcom/narvii/video/widget/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/video/widget/AudioEditorPanel;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/video/widget/AudioEditorPanel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/b;->a:Lcom/narvii/video/widget/AudioEditorPanel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/video/widget/b;->a:Lcom/narvii/video/widget/AudioEditorPanel;

    invoke-static {v0}, Lcom/narvii/video/widget/AudioEditorPanel;->b(Lcom/narvii/video/widget/AudioEditorPanel;)V

    return-void
.end method
