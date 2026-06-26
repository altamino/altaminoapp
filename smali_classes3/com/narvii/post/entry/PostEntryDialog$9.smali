.class Lcom/narvii/post/entry/PostEntryDialog$9;
.super Ljava/lang/Object;
.source "PostEntryDialog.java"

# interfaces
.implements Lcom/narvii/post/entry/EntryItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/post/entry/PostEntryDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/post/entry/PostEntryDialog;


# direct methods
.method constructor <init>(Lcom/narvii/post/entry/PostEntryDialog;)V
    .locals 0

    .line 447
    iput-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog$9;->this$0:Lcom/narvii/post/entry/PostEntryDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEntryItemClicked(Ljava/lang/String;Lcom/narvii/modulization/entry/EntryEligibleCheckResult;)V
    .locals 1

    const-string p2, "story"

    .line 451
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 452
    iget-object p2, p0, Lcom/narvii/post/entry/PostEntryDialog$9;->this$0:Lcom/narvii/post/entry/PostEntryDialog;

    const/16 v0, 0x16

    invoke-virtual {p2, v0, p1}, Lcom/narvii/post/entry/PostEntryDialog;->doPost(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    const-string p2, "post_publicChat"

    .line 453
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 454
    iget-object p2, p0, Lcom/narvii/post/entry/PostEntryDialog$9;->this$0:Lcom/narvii/post/entry/PostEntryDialog;

    const/16 v0, 0x14

    invoke-virtual {p2, v0, p1}, Lcom/narvii/post/entry/PostEntryDialog;->doPost(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const-string p2, "go_live"

    .line 455
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 456
    iget-object p2, p0, Lcom/narvii/post/entry/PostEntryDialog$9;->this$0:Lcom/narvii/post/entry/PostEntryDialog;

    const/16 v0, 0x17

    invoke-virtual {p2, v0, p1}, Lcom/narvii/post/entry/PostEntryDialog;->doPost(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const-string p2, "image"

    .line 457
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 458
    iget-object p2, p0, Lcom/narvii/post/entry/PostEntryDialog$9;->this$0:Lcom/narvii/post/entry/PostEntryDialog;

    const/4 v0, 0x5

    invoke-virtual {p2, v0, p1}, Lcom/narvii/post/entry/PostEntryDialog;->doPost(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string p2, "blog"

    .line 459
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_4

    .line 460
    iget-object p2, p0, Lcom/narvii/post/entry/PostEntryDialog$9;->this$0:Lcom/narvii/post/entry/PostEntryDialog;

    invoke-virtual {p2, v0, p1}, Lcom/narvii/post/entry/PostEntryDialog;->doPost(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string p2, "quiz"

    .line 461
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 462
    iget-object p2, p0, Lcom/narvii/post/entry/PostEntryDialog$9;->this$0:Lcom/narvii/post/entry/PostEntryDialog;

    const/4 v0, 0x3

    invoke-virtual {p2, v0, p1}, Lcom/narvii/post/entry/PostEntryDialog;->doPost(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string p2, "webLink"

    .line 463
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 464
    iget-object p2, p0, Lcom/narvii/post/entry/PostEntryDialog$9;->this$0:Lcom/narvii/post/entry/PostEntryDialog;

    const/4 v0, 0x4

    invoke-virtual {p2, v0, p1}, Lcom/narvii/post/entry/PostEntryDialog;->doPost(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string p2, "poll"

    .line 465
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 466
    iget-object p2, p0, Lcom/narvii/post/entry/PostEntryDialog$9;->this$0:Lcom/narvii/post/entry/PostEntryDialog;

    iget-object p2, p2, Lcom/narvii/post/entry/PostEntryDialog;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {p2}, Lcom/narvii/modulization/CommunityConfigHelper;->isCatalogEnable()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 467
    iget-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog$9;->this$0:Lcom/narvii/post/entry/PostEntryDialog;

    const/16 p2, 0xa

    invoke-static {p1, p2, v0}, Lcom/narvii/post/entry/PostEntryDialog;->access$200(Lcom/narvii/post/entry/PostEntryDialog;IZ)V

    goto :goto_0

    .line 469
    :cond_7
    iget-object p2, p0, Lcom/narvii/post/entry/PostEntryDialog$9;->this$0:Lcom/narvii/post/entry/PostEntryDialog;

    const/16 v0, 0xf

    invoke-virtual {p2, v0, p1}, Lcom/narvii/post/entry/PostEntryDialog;->doPost(ILjava/lang/String;)V

    goto :goto_0

    :cond_8
    const-string p2, "question"

    .line 471
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 472
    iget-object p2, p0, Lcom/narvii/post/entry/PostEntryDialog$9;->this$0:Lcom/narvii/post/entry/PostEntryDialog;

    const/16 v0, 0xc

    invoke-virtual {p2, v0, p1}, Lcom/narvii/post/entry/PostEntryDialog;->doPost(ILjava/lang/String;)V

    goto :goto_0

    :cond_9
    const-string p2, "wikiEntry"

    .line 473
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 474
    iget-object p2, p0, Lcom/narvii/post/entry/PostEntryDialog$9;->this$0:Lcom/narvii/post/entry/PostEntryDialog;

    const/4 v0, 0x2

    invoke-virtual {p2, v0, p1}, Lcom/narvii/post/entry/PostEntryDialog;->doPost(ILjava/lang/String;)V

    goto :goto_0

    :cond_a
    const-string p2, "draft"

    .line 475
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 476
    iget-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog$9;->this$0:Lcom/narvii/post/entry/PostEntryDialog;

    sget-object p2, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p1, p2}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string p2, "Drafts"

    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 478
    const-class p1, Lcom/narvii/post/draft/DraftListFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 479
    iget-object p2, p0, Lcom/narvii/post/entry/PostEntryDialog$9;->this$0:Lcom/narvii/post/entry/PostEntryDialog;

    invoke-static {p2}, Lcom/narvii/post/entry/PostEntryDialog;->access$300(Lcom/narvii/post/entry/PostEntryDialog;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 480
    iget-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog$9;->this$0:Lcom/narvii/post/entry/PostEntryDialog;

    invoke-virtual {p1}, Lcom/narvii/post/entry/PostEntryDialog;->dismiss()V

    :cond_b
    :goto_0
    return-void
.end method
