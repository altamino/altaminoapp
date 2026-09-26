.class public final synthetic Lcom/narvii/video/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/video/BaseMediaEditorFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/video/BaseMediaEditorFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/s;->a:Lcom/narvii/video/BaseMediaEditorFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/video/s;->a:Lcom/narvii/video/BaseMediaEditorFragment;

    invoke-static {v0, p1}, Lcom/narvii/video/BaseMediaEditorFragment;->v(Lcom/narvii/video/BaseMediaEditorFragment;Landroid/view/View;)V

    return-void
.end method
