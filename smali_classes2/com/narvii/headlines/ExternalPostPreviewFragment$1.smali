.class Lcom/narvii/headlines/ExternalPostPreviewFragment$1;
.super Ljava/lang/Object;
.source "ExternalPostPreviewFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/headlines/ExternalPostPreviewFragment;->moreOptions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/headlines/ExternalPostPreviewFragment;

.field final synthetic val$ops:[I


# direct methods
.method constructor <init>(Lcom/narvii/headlines/ExternalPostPreviewFragment;[I)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment$1;->this$0:Lcom/narvii/headlines/ExternalPostPreviewFragment;

    iput-object p2, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment$1;->val$ops:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 256
    iget-object p1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment$1;->val$ops:[I

    aget p1, p1, p2

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 258
    :sswitch_0
    iget-object p1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment$1;->this$0:Lcom/narvii/headlines/ExternalPostPreviewFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/narvii/headlines/ExternalPostPreviewFragment;->access$000(Lcom/narvii/headlines/ExternalPostPreviewFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 270
    :sswitch_1
    iget-object p1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment$1;->this$0:Lcom/narvii/headlines/ExternalPostPreviewFragment;

    invoke-static {p1}, Lcom/narvii/headlines/ExternalPostPreviewFragment;->access$400(Lcom/narvii/headlines/ExternalPostPreviewFragment;)V

    goto :goto_0

    .line 264
    :sswitch_2
    iget-object p1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment$1;->this$0:Lcom/narvii/headlines/ExternalPostPreviewFragment;

    invoke-static {p1}, Lcom/narvii/headlines/ExternalPostPreviewFragment;->access$200(Lcom/narvii/headlines/ExternalPostPreviewFragment;)V

    goto :goto_0

    .line 267
    :sswitch_3
    new-instance p1, Lcom/narvii/feed/FeedHelper;

    iget-object p2, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment$1;->this$0:Lcom/narvii/headlines/ExternalPostPreviewFragment;

    invoke-direct {p1, p2}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object p2, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment$1;->this$0:Lcom/narvii/headlines/ExternalPostPreviewFragment;

    invoke-static {p2}, Lcom/narvii/headlines/ExternalPostPreviewFragment;->access$300(Lcom/narvii/headlines/ExternalPostPreviewFragment;)Lcom/narvii/model/Blog;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/feed/FeedHelper;->flagForReview(Lcom/narvii/model/Feed;)V

    goto :goto_0

    .line 261
    :sswitch_4
    iget-object p1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment$1;->this$0:Lcom/narvii/headlines/ExternalPostPreviewFragment;

    invoke-static {p1}, Lcom/narvii/headlines/ExternalPostPreviewFragment;->access$100(Lcom/narvii/headlines/ExternalPostPreviewFragment;)V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0f0170 -> :sswitch_4
        0x7f0f06d5 -> :sswitch_3
        0x7f0f0c55 -> :sswitch_2
        0x7f0f0cfc -> :sswitch_1
        0x7f0f0fa2 -> :sswitch_0
    .end sparse-switch
.end method
