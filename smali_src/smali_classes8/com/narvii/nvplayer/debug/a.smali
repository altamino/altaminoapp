.class public final synthetic Lcom/narvii/nvplayer/debug/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/nvplayer/debug/VideoResolutionFragment;

.field public final synthetic b:I

.field public final synthetic c:Lcom/narvii/nvplayer/debug/VideoResolutionFragment$MyAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/nvplayer/debug/VideoResolutionFragment;ILcom/narvii/nvplayer/debug/VideoResolutionFragment$MyAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/nvplayer/debug/a;->a:Lcom/narvii/nvplayer/debug/VideoResolutionFragment;

    iput p2, p0, Lcom/narvii/nvplayer/debug/a;->b:I

    iput-object p3, p0, Lcom/narvii/nvplayer/debug/a;->c:Lcom/narvii/nvplayer/debug/VideoResolutionFragment$MyAdapter;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/narvii/nvplayer/debug/a;->a:Lcom/narvii/nvplayer/debug/VideoResolutionFragment;

    iget v1, p0, Lcom/narvii/nvplayer/debug/a;->b:I

    iget-object v2, p0, Lcom/narvii/nvplayer/debug/a;->c:Lcom/narvii/nvplayer/debug/VideoResolutionFragment$MyAdapter;

    invoke-static {v0, v1, v2, p1}, Lcom/narvii/nvplayer/debug/VideoResolutionFragment$MyAdapter;->f(Lcom/narvii/nvplayer/debug/VideoResolutionFragment;ILcom/narvii/nvplayer/debug/VideoResolutionFragment$MyAdapter;Landroid/view/View;)V

    return-void
.end method
