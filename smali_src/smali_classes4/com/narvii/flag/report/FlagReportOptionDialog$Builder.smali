.class public Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p1, v1}, Lcom/narvii/flag/report/FlagReportOptionDialog;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/flag/report/g;)V

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->optionDialog:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 12
    return-void
.end method


# virtual methods
.method public addItem(ILandroid/view/View$OnClickListener;)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->optionDialog:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/narvii/flag/report/FlagReportOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 6
    return-object p0
.end method

.method public build()Lcom/narvii/flag/report/FlagReportOptionDialog;
    .locals 1

    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->optionDialog:Lcom/narvii/flag/report/FlagReportOptionDialog;

    return-object v0
.end method

.method public flagPreview(Lcom/narvii/flag/report/FlagReportOptionDialog$FlagPreview;)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->optionDialog:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->p(Lcom/narvii/flag/report/FlagReportOptionDialog;Lcom/narvii/flag/report/FlagReportOptionDialog$FlagPreview;)V

    .line 6
    return-object p0
.end method

.method public miniProfile(Z)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->optionDialog:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->t(Lcom/narvii/flag/report/FlagReportOptionDialog;Z)V

    .line 6
    return-object p0
.end method

.method public nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->optionDialog:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->r(Lcom/narvii/flag/report/FlagReportOptionDialog;Lcom/narvii/model/NVObject;)V

    .line 6
    .line 7
    instance-of v0, p1, Lcom/narvii/model/Feed;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->optionDialog:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 12
    .line 13
    check-cast p1, Lcom/narvii/model/Feed;

    .line 14
    .line 15
    .line 16
    invoke-static {v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->G(Lcom/narvii/flag/report/FlagReportOptionDialog;Lcom/narvii/model/Feed;)V

    .line 17
    .line 18
    goto/16 :goto_0

    .line 19
    .line 20
    :cond_0
    instance-of v0, p1, Lcom/narvii/model/Comment;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->optionDialog:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 25
    .line 26
    check-cast p1, Lcom/narvii/model/Comment;

    .line 27
    .line 28
    .line 29
    invoke-static {v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->E(Lcom/narvii/flag/report/FlagReportOptionDialog;Lcom/narvii/model/Comment;)V

    .line 30
    .line 31
    goto/16 :goto_0

    .line 32
    .line 33
    :cond_1
    instance-of v0, p1, Lcom/narvii/model/ChatMessage;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->optionDialog:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 38
    .line 39
    check-cast p1, Lcom/narvii/model/ChatMessage;

    .line 40
    .line 41
    .line 42
    invoke-static {v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->C(Lcom/narvii/flag/report/FlagReportOptionDialog;Lcom/narvii/model/ChatMessage;)V

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_2
    instance-of v0, p1, Lcom/narvii/model/ChatThread;

    .line 46
    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->optionDialog:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 50
    .line 51
    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 52
    .line 53
    .line 54
    invoke-static {v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->D(Lcom/narvii/flag/report/FlagReportOptionDialog;Lcom/narvii/model/ChatThread;)V

    .line 55
    goto :goto_0

    .line 56
    .line 57
    :cond_3
    instance-of v0, p1, Lcom/narvii/model/Community;

    .line 58
    .line 59
    if-eqz v0, :cond_4

    .line 60
    .line 61
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->optionDialog:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 62
    .line 63
    check-cast p1, Lcom/narvii/model/Community;

    .line 64
    .line 65
    .line 66
    invoke-static {v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->F(Lcom/narvii/flag/report/FlagReportOptionDialog;Lcom/narvii/model/Community;)V

    .line 67
    goto :goto_0

    .line 68
    .line 69
    :cond_4
    instance-of v0, p1, Lcom/narvii/model/User;

    .line 70
    .line 71
    if-eqz v0, :cond_5

    .line 72
    .line 73
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->optionDialog:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 74
    .line 75
    check-cast p1, Lcom/narvii/model/User;

    .line 76
    .line 77
    .line 78
    invoke-static {v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->M(Lcom/narvii/flag/report/FlagReportOptionDialog;Lcom/narvii/model/User;)V

    .line 79
    goto :goto_0

    .line 80
    .line 81
    :cond_5
    instance-of v0, p1, Lcom/narvii/model/QuizQuestion;

    .line 82
    .line 83
    if-eqz v0, :cond_6

    .line 84
    .line 85
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->optionDialog:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 86
    .line 87
    check-cast p1, Lcom/narvii/model/QuizQuestion;

    .line 88
    .line 89
    .line 90
    invoke-static {v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->H(Lcom/narvii/flag/report/FlagReportOptionDialog;Lcom/narvii/model/QuizQuestion;)V

    .line 91
    goto :goto_0

    .line 92
    .line 93
    :cond_6
    instance-of v0, p1, Lcom/narvii/model/SharedFile;

    .line 94
    .line 95
    if-eqz v0, :cond_7

    .line 96
    .line 97
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->optionDialog:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 98
    .line 99
    check-cast p1, Lcom/narvii/model/SharedFile;

    .line 100
    .line 101
    .line 102
    invoke-static {v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->I(Lcom/narvii/flag/report/FlagReportOptionDialog;Lcom/narvii/model/SharedFile;)V

    .line 103
    goto :goto_0

    .line 104
    .line 105
    :cond_7
    instance-of v0, p1, Lcom/narvii/model/Sticker;

    .line 106
    .line 107
    if-eqz v0, :cond_8

    .line 108
    .line 109
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->optionDialog:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 110
    .line 111
    check-cast p1, Lcom/narvii/model/Sticker;

    .line 112
    .line 113
    .line 114
    invoke-static {v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->K(Lcom/narvii/flag/report/FlagReportOptionDialog;Lcom/narvii/model/Sticker;)V

    .line 115
    goto :goto_0

    .line 116
    .line 117
    :cond_8
    instance-of v0, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 118
    .line 119
    if-eqz v0, :cond_9

    .line 120
    .line 121
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->optionDialog:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 122
    .line 123
    check-cast p1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 124
    .line 125
    .line 126
    invoke-static {v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->J(Lcom/narvii/flag/report/FlagReportOptionDialog;Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    .line 127
    goto :goto_0

    .line 128
    .line 129
    :cond_9
    instance-of v0, p1, Lcom/narvii/model/story/StoryTopic;

    .line 130
    .line 131
    if-eqz v0, :cond_a

    .line 132
    .line 133
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->optionDialog:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 134
    .line 135
    check-cast p1, Lcom/narvii/model/story/StoryTopic;

    .line 136
    .line 137
    .line 138
    invoke-static {v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->L(Lcom/narvii/flag/report/FlagReportOptionDialog;Lcom/narvii/model/story/StoryTopic;)V

    .line 139
    :cond_a
    :goto_0
    return-object p0
.end method

.method public refMediaUrl(Ljava/lang/String;)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->optionDialog:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->u(Lcom/narvii/flag/report/FlagReportOptionDialog;Ljava/lang/String;)V

    .line 6
    return-object p0
.end method

.method public screenShotFlag(Z)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->optionDialog:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->w(Lcom/narvii/flag/report/FlagReportOptionDialog;Z)V

    .line 6
    return-object p0
.end method

.method public showBlockUser(Z)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->optionDialog:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->x(Lcom/narvii/flag/report/FlagReportOptionDialog;Z)V

    .line 6
    return-object p0
.end method
