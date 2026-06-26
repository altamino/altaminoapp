.class public Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;
.super Ljava/lang/Object;
.source "FlagReportOptionDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/flag/report/FlagReportOptionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field optionDialog:Lcom/narvii/flag/report/FlagReportOptionDialog;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 2

    .line 741
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 742
    new-instance v0, Lcom/narvii/flag/report/FlagReportOptionDialog;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/narvii/flag/report/FlagReportOptionDialog;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/flag/report/FlagReportOptionDialog$1;)V

    iput-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->optionDialog:Lcom/narvii/flag/report/FlagReportOptionDialog;

    return-void
.end method


# virtual methods
.method public addItem(ILandroid/view/View$OnClickListener;)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;
    .locals 1

    .line 780
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->optionDialog:Lcom/narvii/flag/report/FlagReportOptionDialog;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public build()Lcom/narvii/flag/report/FlagReportOptionDialog;
    .locals 1

    .line 805
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->optionDialog:Lcom/narvii/flag/report/FlagReportOptionDialog;

    return-object v0
.end method

.method public flagPreview(Lcom/narvii/flag/report/FlagReportOptionDialog$FlagPreview;)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;
    .locals 1

    .line 775
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->optionDialog:Lcom/narvii/flag/report/FlagReportOptionDialog;

    invoke-static {v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->access$902(Lcom/narvii/flag/report/FlagReportOptionDialog;Lcom/narvii/flag/report/FlagReportOptionDialog$FlagPreview;)Lcom/narvii/flag/report/FlagReportOptionDialog$FlagPreview;

    return-object p0
.end method

.method public miniProfile(Z)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;
    .locals 1

    .line 795
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->optionDialog:Lcom/narvii/flag/report/FlagReportOptionDialog;

    invoke-static {v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->access$3202(Lcom/narvii/flag/report/FlagReportOptionDialog;Z)Z

    return-object p0
.end method

.method public nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;
    .locals 1

    .line 746
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->optionDialog:Lcom/narvii/flag/report/FlagReportOptionDialog;

    invoke-static {v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->access$702(Lcom/narvii/flag/report/FlagReportOptionDialog;Lcom/narvii/model/NVObject;)Lcom/narvii/model/NVObject;

    .line 747
    instance-of v0, p1, Lcom/narvii/model/Feed;

    if-eqz v0, :cond_0

    .line 748
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->optionDialog:Lcom/narvii/flag/report/FlagReportOptionDialog;

    check-cast p1, Lcom/narvii/model/Feed;

    invoke-static {v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->access$2100(Lcom/narvii/flag/report/FlagReportOptionDialog;Lcom/narvii/model/Feed;)V

    goto/16 :goto_0

    .line 749
    :cond_0
    instance-of v0, p1, Lcom/narvii/model/Comment;

    if-eqz v0, :cond_1

    .line 750
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->optionDialog:Lcom/narvii/flag/report/FlagReportOptionDialog;

    check-cast p1, Lcom/narvii/model/Comment;

    invoke-static {v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->access$2200(Lcom/narvii/flag/report/FlagReportOptionDialog;Lcom/narvii/model/Comment;)V

    goto/16 :goto_0

    .line 751
    :cond_1
    instance-of v0, p1, Lcom/narvii/model/ChatMessage;

    if-eqz v0, :cond_2

    .line 752
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->optionDialog:Lcom/narvii/flag/report/FlagReportOptionDialog;

    check-cast p1, Lcom/narvii/model/ChatMessage;

    invoke-static {v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->access$2300(Lcom/narvii/flag/report/FlagReportOptionDialog;Lcom/narvii/model/ChatMessage;)V

    goto :goto_0

    .line 753
    :cond_2
    instance-of v0, p1, Lcom/narvii/model/ChatThread;

    if-eqz v0, :cond_3

    .line 754
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->optionDialog:Lcom/narvii/flag/report/FlagReportOptionDialog;

    check-cast p1, Lcom/narvii/model/ChatThread;

    invoke-static {v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->access$2400(Lcom/narvii/flag/report/FlagReportOptionDialog;Lcom/narvii/model/ChatThread;)V

    goto :goto_0

    .line 755
    :cond_3
    instance-of v0, p1, Lcom/narvii/model/Community;

    if-eqz v0, :cond_4

    .line 756
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->optionDialog:Lcom/narvii/flag/report/FlagReportOptionDialog;

    check-cast p1, Lcom/narvii/model/Community;

    invoke-static {v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->access$2500(Lcom/narvii/flag/report/FlagReportOptionDialog;Lcom/narvii/model/Community;)V

    goto :goto_0

    .line 757
    :cond_4
    instance-of v0, p1, Lcom/narvii/model/User;

    if-eqz v0, :cond_5

    .line 758
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->optionDialog:Lcom/narvii/flag/report/FlagReportOptionDialog;

    check-cast p1, Lcom/narvii/model/User;

    invoke-static {v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->access$2600(Lcom/narvii/flag/report/FlagReportOptionDialog;Lcom/narvii/model/User;)V

    goto :goto_0

    .line 759
    :cond_5
    instance-of v0, p1, Lcom/narvii/model/QuizQuestion;

    if-eqz v0, :cond_6

    .line 760
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->optionDialog:Lcom/narvii/flag/report/FlagReportOptionDialog;

    check-cast p1, Lcom/narvii/model/QuizQuestion;

    invoke-static {v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->access$2700(Lcom/narvii/flag/report/FlagReportOptionDialog;Lcom/narvii/model/QuizQuestion;)V

    goto :goto_0

    .line 761
    :cond_6
    instance-of v0, p1, Lcom/narvii/model/SharedFile;

    if-eqz v0, :cond_7

    .line 762
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->optionDialog:Lcom/narvii/flag/report/FlagReportOptionDialog;

    check-cast p1, Lcom/narvii/model/SharedFile;

    invoke-static {v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->access$2800(Lcom/narvii/flag/report/FlagReportOptionDialog;Lcom/narvii/model/SharedFile;)V

    goto :goto_0

    .line 763
    :cond_7
    instance-of v0, p1, Lcom/narvii/model/Sticker;

    if-eqz v0, :cond_8

    .line 764
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->optionDialog:Lcom/narvii/flag/report/FlagReportOptionDialog;

    check-cast p1, Lcom/narvii/model/Sticker;

    invoke-static {v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->access$2900(Lcom/narvii/flag/report/FlagReportOptionDialog;Lcom/narvii/model/Sticker;)V

    goto :goto_0

    .line 765
    :cond_8
    instance-of v0, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    if-eqz v0, :cond_9

    .line 766
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->optionDialog:Lcom/narvii/flag/report/FlagReportOptionDialog;

    check-cast p1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-static {v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->access$3000(Lcom/narvii/flag/report/FlagReportOptionDialog;Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    goto :goto_0

    .line 767
    :cond_9
    instance-of v0, p1, Lcom/narvii/model/story/StoryTopic;

    if-eqz v0, :cond_a

    .line 768
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->optionDialog:Lcom/narvii/flag/report/FlagReportOptionDialog;

    check-cast p1, Lcom/narvii/model/story/StoryTopic;

    invoke-static {v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->access$3100(Lcom/narvii/flag/report/FlagReportOptionDialog;Lcom/narvii/model/story/StoryTopic;)V

    :cond_a
    :goto_0
    return-object p0
.end method

.method public refMediaUrl(Ljava/lang/String;)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;
    .locals 1

    .line 790
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->optionDialog:Lcom/narvii/flag/report/FlagReportOptionDialog;

    invoke-static {v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->access$1602(Lcom/narvii/flag/report/FlagReportOptionDialog;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public screenShotFlag(Z)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;
    .locals 1

    .line 800
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->optionDialog:Lcom/narvii/flag/report/FlagReportOptionDialog;

    invoke-static {v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->access$3302(Lcom/narvii/flag/report/FlagReportOptionDialog;Z)Z

    return-object p0
.end method

.method public showBlockUser(Z)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;
    .locals 1

    .line 785
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->optionDialog:Lcom/narvii/flag/report/FlagReportOptionDialog;

    invoke-static {v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->access$1702(Lcom/narvii/flag/report/FlagReportOptionDialog;Z)Z

    return-object p0
.end method
