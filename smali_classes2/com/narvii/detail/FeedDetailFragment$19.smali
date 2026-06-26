.class Lcom/narvii/detail/FeedDetailFragment$19;
.super Ljava/lang/Object;
.source "FeedDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/detail/FeedDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/detail/FeedDetailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/detail/FeedDetailFragment;)V
    .locals 0

    .line 1395
    iput-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$19;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1398
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 1426
    :sswitch_0
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$19;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-virtual {p1}, Lcom/narvii/detail/FeedDetailFragment;->bottomActionVote()V

    goto/16 :goto_0

    .line 1432
    :sswitch_1
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$19;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-virtual {p1}, Lcom/narvii/detail/FeedDetailFragment;->bottomActionShare()V

    goto/16 :goto_0

    :sswitch_2
    const/4 p1, 0x7

    new-array p1, p1, [I

    .line 1437
    new-instance v0, Lcom/narvii/util/dialog/ActionSheetDialog;

    iget-object v1, p0, Lcom/narvii/detail/FeedDetailFragment$19;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    const v2, 0x7f0f0fa2

    const/4 v3, 0x0

    aput v2, p1, v3

    .line 1439
    invoke-virtual {v0, v2, v3}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 1440
    iget-object v2, p0, Lcom/narvii/detail/FeedDetailFragment$19;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    const-string v4, "affiliations"

    invoke-virtual {v2, v4}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/community/AffiliationsService;

    .line 1441
    iget-object v4, p0, Lcom/narvii/detail/FeedDetailFragment$19;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-virtual {v4}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/narvii/detail/FeedDetailFragment$19;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-virtual {v4}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/narvii/detail/FeedDetailFragment$19;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-virtual {v4}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v4

    iget v4, v4, Lcom/narvii/model/Feed;->ndcId:I

    invoke-virtual {v2, v4}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    const v4, 0x7f0f0170

    aput v4, p1, v1

    .line 1443
    invoke-virtual {v0, v4, v3}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    const/4 v1, 0x2

    :cond_0
    const v2, 0x7f0f06d5

    .line 1445
    aput v2, p1, v1

    .line 1446
    invoke-virtual {v0, v2, v3}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 1447
    new-instance v1, Lcom/narvii/detail/FeedDetailFragment$19$1;

    invoke-direct {v1, p0, p1}, Lcom/narvii/detail/FeedDetailFragment$19$1;-><init>(Lcom/narvii/detail/FeedDetailFragment$19;[I)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 1463
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    goto :goto_0

    .line 1429
    :sswitch_3
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$19;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-virtual {p1}, Lcom/narvii/detail/FeedDetailFragment;->bottomComment()V

    goto :goto_0

    .line 1410
    :sswitch_4
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$19;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-virtual {p1}, Lcom/narvii/detail/FeedDetailFragment;->bottomActionVote()V

    goto :goto_0

    .line 1400
    :sswitch_5
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$19;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-virtual {p1}, Lcom/narvii/detail/FeedDetailFragment;->bottomActionTipping()V

    goto :goto_0

    .line 1403
    :sswitch_6
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$19;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-virtual {p1}, Lcom/narvii/detail/FeedDetailFragment;->bottomActionShare()V

    goto :goto_0

    .line 1406
    :sswitch_7
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$19;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    sget-object v0, Lcom/narvii/logging/ActSemantic;->save:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p1, v0}, Lcom/narvii/detail/FeedDetailFragment;->sendSBBLogEvent(Lcom/narvii/logging/ActSemantic;)V

    .line 1407
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$19;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    const-string v0, "Post Detail SBB"

    invoke-virtual {p1, v0}, Lcom/narvii/detail/FeedDetailFragment;->bookmark(Ljava/lang/String;)V

    goto :goto_0

    .line 1417
    :sswitch_8
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$19;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-virtual {p1}, Lcom/narvii/detail/FeedDetailFragment;->bottomActionModMenu()V

    goto :goto_0

    .line 1414
    :sswitch_9
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$19;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-virtual {p1}, Lcom/narvii/detail/FeedDetailFragment;->bottomActionGoNext()V

    goto :goto_0

    .line 1420
    :sswitch_a
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$19;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-virtual {p1}, Lcom/narvii/detail/FeedDetailFragment;->bottomActionFeaturePost()V

    goto :goto_0

    .line 1423
    :sswitch_b
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$19;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-virtual {p1}, Lcom/narvii/detail/FeedDetailFragment;->bottomActionBroadCast()V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f09014a -> :sswitch_b
        0x7f090151 -> :sswitch_a
        0x7f090153 -> :sswitch_9
        0x7f090155 -> :sswitch_9
        0x7f090159 -> :sswitch_8
        0x7f09015d -> :sswitch_7
        0x7f09015e -> :sswitch_6
        0x7f090162 -> :sswitch_5
        0x7f090165 -> :sswitch_4
        0x7f090505 -> :sswitch_3
        0x7f090506 -> :sswitch_2
        0x7f090507 -> :sswitch_1
        0x7f090508 -> :sswitch_0
    .end sparse-switch
.end method
