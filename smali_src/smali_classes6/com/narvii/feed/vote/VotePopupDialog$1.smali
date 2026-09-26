.class Lcom/narvii/feed/vote/VotePopupDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/feed/vote/VotePopupDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/feed/vote/VotePopupDialog;


# direct methods
.method constructor <init>(Lcom/narvii/feed/vote/VotePopupDialog;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/feed/vote/VotePopupDialog$1;->this$0:Lcom/narvii/feed/vote/VotePopupDialog;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/vote/VotePopupDialog$1;->this$0:Lcom/narvii/feed/vote/VotePopupDialog;

    .line 3
    .line 4
    iget-object v1, v0, Lcom/narvii/feed/vote/VotePopupDialog;->listener:Lcom/narvii/util/Callback;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 10
    return-void

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 14
    move-result p1

    .line 15
    .line 16
    .line 17
    packed-switch p1, :pswitch_data_0

    .line 18
    return-void

    .line 19
    :pswitch_0
    const/4 p1, 0x3

    .line 20
    goto :goto_0

    .line 21
    :pswitch_1
    const/4 p1, 0x2

    .line 22
    goto :goto_0

    .line 23
    :pswitch_2
    const/4 p1, 0x1

    .line 24
    goto :goto_0

    .line 25
    :pswitch_3
    const/4 p1, 0x4

    .line 26
    goto :goto_0

    .line 27
    :pswitch_4
    const/4 p1, -0x1

    .line 28
    .line 29
    :goto_0
    iget-object v0, p0, Lcom/narvii/feed/vote/VotePopupDialog$1;->this$0:Lcom/narvii/feed/vote/VotePopupDialog;

    .line 30
    .line 31
    iget-object v1, v0, Lcom/narvii/feed/vote/VotePopupDialog;->feed:Lcom/narvii/model/NVObject;

    .line 32
    .line 33
    instance-of v2, v1, Lcom/narvii/model/Blog;

    .line 34
    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    check-cast v1, Lcom/narvii/model/Blog;

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Lcom/narvii/feed/vote/VotePopupDialog;->a(Lcom/narvii/feed/vote/VotePopupDialog;)Lcom/narvii/app/NVContext;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Lcom/narvii/util/Utils;->isGlobalInteractionScope(Lcom/narvii/app/NVContext;)Z

    .line 45
    move-result v0

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v0}, Lcom/narvii/model/Feed;->getVotedValue(Z)I

    .line 49
    move-result v0

    .line 50
    goto :goto_1

    .line 51
    .line 52
    :cond_1
    instance-of v2, v1, Lcom/narvii/model/Item;

    .line 53
    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    check-cast v1, Lcom/narvii/model/Item;

    .line 57
    .line 58
    .line 59
    invoke-static {v0}, Lcom/narvii/feed/vote/VotePopupDialog;->a(Lcom/narvii/feed/vote/VotePopupDialog;)Lcom/narvii/app/NVContext;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    .line 63
    invoke-static {v0}, Lcom/narvii/util/Utils;->isGlobalInteractionScope(Lcom/narvii/app/NVContext;)Z

    .line 64
    move-result v0

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v0}, Lcom/narvii/model/Feed;->getVotedValue(Z)I

    .line 68
    move-result v0

    .line 69
    goto :goto_1

    .line 70
    .line 71
    :cond_2
    instance-of v0, v1, Lcom/narvii/model/SharedFile;

    .line 72
    .line 73
    if-eqz v0, :cond_4

    .line 74
    .line 75
    check-cast v1, Lcom/narvii/model/SharedFile;

    .line 76
    .line 77
    iget v0, v1, Lcom/narvii/model/SharedFile;->votedValue:I

    .line 78
    .line 79
    :goto_1
    if-ne p1, v0, :cond_3

    .line 80
    .line 81
    iget-object p1, p0, Lcom/narvii/feed/vote/VotePopupDialog$1;->this$0:Lcom/narvii/feed/vote/VotePopupDialog;

    .line 82
    .line 83
    iget-object p1, p1, Lcom/narvii/feed/vote/VotePopupDialog;->listener:Lcom/narvii/util/Callback;

    .line 84
    const/4 v0, 0x0

    .line 85
    .line 86
    .line 87
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    move-result-object v0

    .line 89
    .line 90
    .line 91
    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 92
    goto :goto_2

    .line 93
    .line 94
    :cond_3
    iget-object v0, p0, Lcom/narvii/feed/vote/VotePopupDialog$1;->this$0:Lcom/narvii/feed/vote/VotePopupDialog;

    .line 95
    .line 96
    iget-object v0, v0, Lcom/narvii/feed/vote/VotePopupDialog;->listener:Lcom/narvii/util/Callback;

    .line 97
    .line 98
    .line 99
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    move-result-object p1

    .line 101
    .line 102
    .line 103
    invoke-interface {v0, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 104
    .line 105
    :goto_2
    iget-object p1, p0, Lcom/narvii/feed/vote/VotePopupDialog$1;->this$0:Lcom/narvii/feed/vote/VotePopupDialog;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 109
    :cond_4
    return-void

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0592
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
