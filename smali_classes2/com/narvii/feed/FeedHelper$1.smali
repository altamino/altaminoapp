.class Lcom/narvii/feed/FeedHelper$1;
.super Ljava/lang/Object;
.source "FeedHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/feed/FeedHelper;->showShareFeedDialog(Lcom/narvii/model/Feed;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/feed/FeedHelper;

.field final synthetic val$feed:Lcom/narvii/model/Feed;

.field final synthetic val$ops:[I


# direct methods
.method constructor <init>(Lcom/narvii/feed/FeedHelper;[ILcom/narvii/model/Feed;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/narvii/feed/FeedHelper$1;->this$0:Lcom/narvii/feed/FeedHelper;

    iput-object p2, p0, Lcom/narvii/feed/FeedHelper$1;->val$ops:[I

    iput-object p3, p0, Lcom/narvii/feed/FeedHelper$1;->val$feed:Lcom/narvii/model/Feed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 238
    iget-object p1, p0, Lcom/narvii/feed/FeedHelper$1;->val$ops:[I

    aget p1, p1, p2

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 267
    :sswitch_0
    iget-object p1, p0, Lcom/narvii/feed/FeedHelper$1;->this$0:Lcom/narvii/feed/FeedHelper;

    iget-object p2, p0, Lcom/narvii/feed/FeedHelper$1;->val$feed:Lcom/narvii/model/Feed;

    new-instance v0, Lcom/narvii/feed/FeedHelper$1$2;

    invoke-direct {v0, p0}, Lcom/narvii/feed/FeedHelper$1$2;-><init>(Lcom/narvii/feed/FeedHelper$1;)V

    invoke-virtual {p1, p2, v0}, Lcom/narvii/feed/FeedHelper;->unBookmark(Lcom/narvii/model/Feed;Lcom/narvii/util/Callback;)V

    goto :goto_0

    .line 243
    :sswitch_1
    iget-object p1, p0, Lcom/narvii/feed/FeedHelper$1;->this$0:Lcom/narvii/feed/FeedHelper;

    iget-object p2, p0, Lcom/narvii/feed/FeedHelper$1;->val$feed:Lcom/narvii/model/Feed;

    invoke-virtual {p1, p2}, Lcom/narvii/feed/FeedHelper;->repost(Lcom/narvii/model/Feed;)V

    goto :goto_0

    .line 251
    :sswitch_2
    iget-object p1, p0, Lcom/narvii/feed/FeedHelper$1;->this$0:Lcom/narvii/feed/FeedHelper;

    iget-object p2, p0, Lcom/narvii/feed/FeedHelper$1;->val$feed:Lcom/narvii/model/Feed;

    invoke-virtual {p1, p2}, Lcom/narvii/feed/FeedHelper;->flagForReview(Lcom/narvii/model/Feed;)V

    goto :goto_0

    .line 240
    :sswitch_3
    iget-object p1, p0, Lcom/narvii/feed/FeedHelper$1;->this$0:Lcom/narvii/feed/FeedHelper;

    iget-object p2, p0, Lcom/narvii/feed/FeedHelper$1;->val$feed:Lcom/narvii/model/Feed;

    invoke-virtual {p1, p2}, Lcom/narvii/feed/FeedHelper;->refreshAndEdit(Lcom/narvii/model/Feed;)V

    goto :goto_0

    .line 246
    :sswitch_4
    new-instance p1, Lcom/narvii/share/ShareViewHelper;

    iget-object p2, p0, Lcom/narvii/feed/FeedHelper$1;->this$0:Lcom/narvii/feed/FeedHelper;

    invoke-static {p2}, Lcom/narvii/feed/FeedHelper;->access$000(Lcom/narvii/feed/FeedHelper;)Lcom/narvii/app/NVContext;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/share/ShareViewHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 247
    iget-object p2, p0, Lcom/narvii/feed/FeedHelper$1;->this$0:Lcom/narvii/feed/FeedHelper;

    iget-object p2, p2, Lcom/narvii/feed/FeedHelper;->source:Ljava/lang/String;

    iput-object p2, p1, Lcom/narvii/share/ShareViewHelper;->source:Ljava/lang/String;

    .line 248
    iget-object p2, p0, Lcom/narvii/feed/FeedHelper$1;->val$feed:Lcom/narvii/model/Feed;

    invoke-virtual {p1, p2}, Lcom/narvii/share/ShareViewHelper;->copyLink(Lcom/narvii/model/NVObject;)V

    goto :goto_0

    .line 258
    :sswitch_5
    new-instance p1, Lcom/narvii/feed/FeedHelper;

    iget-object p2, p0, Lcom/narvii/feed/FeedHelper$1;->this$0:Lcom/narvii/feed/FeedHelper;

    invoke-static {p2}, Lcom/narvii/feed/FeedHelper;->access$000(Lcom/narvii/feed/FeedHelper;)Lcom/narvii/app/NVContext;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    const-string p2, "Feed"

    .line 259
    invoke-virtual {p1, p2}, Lcom/narvii/feed/FeedHelper;->source(Ljava/lang/String;)Lcom/narvii/feed/FeedHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/feed/FeedHelper$1;->val$feed:Lcom/narvii/model/Feed;

    new-instance v0, Lcom/narvii/feed/FeedHelper$1$1;

    invoke-direct {v0, p0}, Lcom/narvii/feed/FeedHelper$1$1;-><init>(Lcom/narvii/feed/FeedHelper$1;)V

    invoke-virtual {p1, p2, v0}, Lcom/narvii/feed/FeedHelper;->bookmark(Lcom/narvii/model/Feed;Lcom/narvii/util/Callback;)V

    goto :goto_0

    .line 254
    :sswitch_6
    new-instance p1, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;

    iget-object p2, p0, Lcom/narvii/feed/FeedHelper$1;->this$0:Lcom/narvii/feed/FeedHelper;

    invoke-static {p2}, Lcom/narvii/feed/FeedHelper;->access$000(Lcom/narvii/feed/FeedHelper;)Lcom/narvii/app/NVContext;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object p2, p0, Lcom/narvii/feed/FeedHelper$1;->val$feed:Lcom/narvii/model/Feed;

    invoke-virtual {p1, p2}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->build()Lcom/narvii/poweruser/AdvancedOptionDialog;

    move-result-object p1

    .line 255
    invoke-virtual {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->show()V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0f0094 -> :sswitch_6
        0x7f0f0170 -> :sswitch_5
        0x7f0f02f5 -> :sswitch_4
        0x7f0f03cd -> :sswitch_3
        0x7f0f06d5 -> :sswitch_2
        0x7f0f0ee0 -> :sswitch_1
        0x7f0f10fb -> :sswitch_0
    .end sparse-switch
.end method
