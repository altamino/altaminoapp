.class Lcom/narvii/headlines/ExternalPostPreviewFragment$8;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment$8;->this$0:Lcom/narvii/headlines/ExternalPostPreviewFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment$8;->this$0:Lcom/narvii/headlines/ExternalPostPreviewFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/headlines/ExternalPostPreviewFragment;->w(Lcom/narvii/headlines/ExternalPostPreviewFragment;)Lcom/narvii/widget/BottomVoteIcon;

    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x4

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment$8;->this$0:Lcom/narvii/headlines/ExternalPostPreviewFragment;

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lcom/narvii/headlines/ExternalPostPreviewFragment;->x(Lcom/narvii/headlines/ExternalPostPreviewFragment;)Landroid/view/View;

    .line 16
    move-result-object p1

    .line 17
    const/4 v0, 0x0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 21
    return-void
.end method
