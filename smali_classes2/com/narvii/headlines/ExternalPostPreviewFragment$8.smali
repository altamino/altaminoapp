.class Lcom/narvii/headlines/ExternalPostPreviewFragment$8;
.super Ljava/lang/Object;
.source "ExternalPostPreviewFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/headlines/ExternalPostPreviewFragment;->voteFeed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/headlines/ExternalPostPreviewFragment;


# direct methods
.method constructor <init>(Lcom/narvii/headlines/ExternalPostPreviewFragment;)V
    .locals 0

    .line 419
    iput-object p1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment$8;->this$0:Lcom/narvii/headlines/ExternalPostPreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 1

    .line 422
    iget-object p1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment$8;->this$0:Lcom/narvii/headlines/ExternalPostPreviewFragment;

    invoke-static {p1}, Lcom/narvii/headlines/ExternalPostPreviewFragment;->access$500(Lcom/narvii/headlines/ExternalPostPreviewFragment;)Lcom/narvii/widget/BottomVoteIcon;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 423
    iget-object p1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment$8;->this$0:Lcom/narvii/headlines/ExternalPostPreviewFragment;

    invoke-static {p1}, Lcom/narvii/headlines/ExternalPostPreviewFragment;->access$600(Lcom/narvii/headlines/ExternalPostPreviewFragment;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
