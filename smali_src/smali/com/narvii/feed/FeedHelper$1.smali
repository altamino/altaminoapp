.class Lcom/narvii/feed/FeedHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/feed/FeedHelper$1;->this$0:Lcom/narvii/feed/FeedHelper;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/feed/FeedHelper$1;->val$ops:[I

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/feed/FeedHelper$1;->val$feed:Lcom/narvii/model/Feed;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/feed/FeedHelper$1;->val$ops:[I

    .line 3
    .line 4
    aget p1, p1, p2

    .line 5
    .line 6
    .line 7
    sparse-switch p1, :sswitch_data_0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    :sswitch_0
    iget-object p1, p0, Lcom/narvii/feed/FeedHelper$1;->this$0:Lcom/narvii/feed/FeedHelper;

    .line 11
    .line 12
    iget-object p2, p0, Lcom/narvii/feed/FeedHelper$1;->val$feed:Lcom/narvii/model/Feed;

    .line 13
    .line 14
    new-instance v0, Lcom/narvii/feed/FeedHelper$1$2;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/narvii/feed/FeedHelper$1$2;-><init>(Lcom/narvii/feed/FeedHelper$1;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2, v0}, Lcom/narvii/feed/FeedHelper;->unBookmark(Lcom/narvii/model/Feed;Lcom/narvii/util/Callback;)V

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :sswitch_1
    iget-object p1, p0, Lcom/narvii/feed/FeedHelper$1;->this$0:Lcom/narvii/feed/FeedHelper;

    .line 24
    .line 25
    iget-object p2, p0, Lcom/narvii/feed/FeedHelper$1;->val$feed:Lcom/narvii/model/Feed;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p2}, Lcom/narvii/feed/FeedHelper;->repost(Lcom/narvii/model/Feed;)V

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :sswitch_2
    iget-object p1, p0, Lcom/narvii/feed/FeedHelper$1;->this$0:Lcom/narvii/feed/FeedHelper;

    .line 32
    .line 33
    iget-object p2, p0, Lcom/narvii/feed/FeedHelper$1;->val$feed:Lcom/narvii/model/Feed;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Lcom/narvii/feed/FeedHelper;->flagForReview(Lcom/narvii/model/Feed;)V

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :sswitch_3
    iget-object p1, p0, Lcom/narvii/feed/FeedHelper$1;->this$0:Lcom/narvii/feed/FeedHelper;

    .line 40
    .line 41
    iget-object p2, p0, Lcom/narvii/feed/FeedHelper$1;->val$feed:Lcom/narvii/model/Feed;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p2}, Lcom/narvii/feed/FeedHelper;->refreshAndEdit(Lcom/narvii/model/Feed;)V

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :sswitch_4
    new-instance p1, Lcom/narvii/share/ShareViewHelper;

    .line 48
    .line 49
    iget-object p2, p0, Lcom/narvii/feed/FeedHelper$1;->this$0:Lcom/narvii/feed/FeedHelper;

    .line 50
    .line 51
    .line 52
    invoke-static {p2}, Lcom/narvii/feed/FeedHelper;->a(Lcom/narvii/feed/FeedHelper;)Lcom/narvii/app/NVContext;

    .line 53
    move-result-object p2

    .line 54
    .line 55
    .line 56
    invoke-direct {p1, p2}, Lcom/narvii/share/ShareViewHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 57
    .line 58
    iget-object p2, p0, Lcom/narvii/feed/FeedHelper$1;->this$0:Lcom/narvii/feed/FeedHelper;

    .line 59
    .line 60
    iget-object p2, p2, Lcom/narvii/feed/FeedHelper;->source:Ljava/lang/String;

    .line 61
    .line 62
    iput-object p2, p1, Lcom/narvii/share/ShareViewHelper;->source:Ljava/lang/String;

    .line 63
    .line 64
    iget-object p2, p0, Lcom/narvii/feed/FeedHelper$1;->val$feed:Lcom/narvii/model/Feed;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, p2}, Lcom/narvii/share/ShareViewHelper;->copyLink(Lcom/narvii/model/NVObject;)V

    .line 68
    goto :goto_0

    .line 69
    .line 70
    :sswitch_5
    new-instance p1, Lcom/narvii/feed/FeedHelper;

    .line 71
    .line 72
    iget-object p2, p0, Lcom/narvii/feed/FeedHelper$1;->this$0:Lcom/narvii/feed/FeedHelper;

    .line 73
    .line 74
    .line 75
    invoke-static {p2}, Lcom/narvii/feed/FeedHelper;->a(Lcom/narvii/feed/FeedHelper;)Lcom/narvii/app/NVContext;

    .line 76
    move-result-object p2

    .line 77
    .line 78
    .line 79
    invoke-direct {p1, p2}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 80
    .line 81
    const-string p2, "Feed"

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p2}, Lcom/narvii/feed/FeedHelper;->source(Ljava/lang/String;)Lcom/narvii/feed/FeedHelper;

    .line 85
    move-result-object p1

    .line 86
    .line 87
    iget-object p2, p0, Lcom/narvii/feed/FeedHelper$1;->val$feed:Lcom/narvii/model/Feed;

    .line 88
    .line 89
    new-instance v0, Lcom/narvii/feed/FeedHelper$1$1;

    .line 90
    .line 91
    .line 92
    invoke-direct {v0, p0}, Lcom/narvii/feed/FeedHelper$1$1;-><init>(Lcom/narvii/feed/FeedHelper$1;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, p2, v0}, Lcom/narvii/feed/FeedHelper;->bookmark(Lcom/narvii/model/Feed;Lcom/narvii/util/Callback;)V

    .line 96
    goto :goto_0

    .line 97
    .line 98
    :sswitch_6
    new-instance p1, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;

    .line 99
    .line 100
    iget-object p2, p0, Lcom/narvii/feed/FeedHelper$1;->this$0:Lcom/narvii/feed/FeedHelper;

    .line 101
    .line 102
    .line 103
    invoke-static {p2}, Lcom/narvii/feed/FeedHelper;->a(Lcom/narvii/feed/FeedHelper;)Lcom/narvii/app/NVContext;

    .line 104
    move-result-object p2

    .line 105
    .line 106
    .line 107
    invoke-direct {p1, p2}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    .line 108
    .line 109
    iget-object p2, p0, Lcom/narvii/feed/FeedHelper$1;->val$feed:Lcom/narvii/model/Feed;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, p2}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;

    .line 113
    move-result-object p1

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->build()Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 117
    move-result-object p1

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->show()V

    .line 121
    :goto_0
    return-void

    .line 122
    nop

    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    :sswitch_data_0
    .sparse-switch
        0x7f12009d -> :sswitch_6
        0x7f1201bb -> :sswitch_5
        0x7f120349 -> :sswitch_4
        0x7f120438 -> :sswitch_3
        0x7f120781 -> :sswitch_2
        0x7f120ff9 -> :sswitch_1
        0x7f121204 -> :sswitch_0
    .end sparse-switch
.end method
